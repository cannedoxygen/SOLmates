use anchor_lang::prelude::*;
use anchor_spl::{
    token::{Token, TokenAccount, Mint},
    metadata::{
        create_metadata_accounts_v3,
        mpl_token_metadata::types::{DataV2, Creator, Collection},
        CreateMetadataAccountsV3, Metadata,
    },
    associated_token::AssociatedToken,
};

declare_id!("8mJAkVVgBzD8VvKz5q9KP6XrY4nMbJuTZxGhKkEeHhzr");

#[program]
pub mod collab_badge {
    use super::*;

    pub fn initialize_badge_collection(
        ctx: Context<InitializeBadgeCollection>,
        name: String,
        symbol: String,
        uri: String,
    ) -> Result<()> {
        let collection_mint = &ctx.accounts.collection_mint;
        let metadata_account = &ctx.accounts.metadata_account;
        let mint_authority = &ctx.accounts.mint_authority;
        let payer = &ctx.accounts.payer;
        let update_authority = &ctx.accounts.update_authority;

        // Create metadata for the collection
        let data_v2 = DataV2 {
            name,
            symbol,
            uri,
            seller_fee_basis_points: 0,
            creators: Some(vec![Creator {
                address: update_authority.key(),
                verified: true,
                share: 100,
            }]),
            collection: None,
            uses: None,
        };

        let cpi_ctx = CpiContext::new(
            ctx.accounts.token_metadata_program.to_account_info(),
            CreateMetadataAccountsV3 {
                metadata: metadata_account.to_account_info(),
                mint: collection_mint.to_account_info(),
                mint_authority: mint_authority.to_account_info(),
                update_authority: update_authority.to_account_info(),
                payer: payer.to_account_info(),
                system_program: ctx.accounts.system_program.to_account_info(),
                rent: ctx.accounts.rent.to_account_info(),
            },
        );

        create_metadata_accounts_v3(cpi_ctx, data_v2, true, true, None)?;

        Ok(())
    }

    pub fn mint_collaboration_badge(
        ctx: Context<MintCollaborationBadge>,
        project_name: String,
        collaborators: Vec<Pubkey>,
        contribution_type: String,
        completion_date: i64,
    ) -> Result<()> {
        let badge_account = &mut ctx.accounts.badge_account;
        let recipient = &ctx.accounts.recipient;
        
        // Verify that recipient is in collaborators list
        require!(
            collaborators.contains(&recipient.key()),
            BadgeError::InvalidRecipient
        );

        // Initialize badge data
        badge_account.project_name = project_name;
        badge_account.collaborators = collaborators;
        badge_account.contribution_type = contribution_type;
        badge_account.completion_date = completion_date;
        badge_account.mint_date = Clock::get()?.unix_timestamp;
        badge_account.recipient = recipient.key();
        badge_account.is_soulbound = true;

        // Create metadata URI
        let metadata_uri = format!(
            "https://api.solmates.app/badge/{}/metadata",
            badge_account.key()
        );

        // Create the NFT metadata
        let data_v2 = DataV2 {
            name: format!("Solmates Collab Badge: {}", badge_account.project_name),
            symbol: "COLLAB".to_string(),
            uri: metadata_uri,
            seller_fee_basis_points: 0,
            creators: Some(vec![Creator {
                address: ctx.accounts.program_authority.key(),
                verified: true,
                share: 100,
            }]),
            collection: Some(Collection {
                verified: false,
                key: ctx.accounts.collection_mint.key(),
            }),
            uses: None,
        };

        let cpi_ctx = CpiContext::new(
            ctx.accounts.token_metadata_program.to_account_info(),
            CreateMetadataAccountsV3 {
                metadata: ctx.accounts.metadata_account.to_account_info(),
                mint: ctx.accounts.badge_mint.to_account_info(),
                mint_authority: ctx.accounts.program_authority.to_account_info(),
                update_authority: ctx.accounts.program_authority.to_account_info(),
                payer: ctx.accounts.payer.to_account_info(),
                system_program: ctx.accounts.system_program.to_account_info(),
                rent: ctx.accounts.rent.to_account_info(),
            },
        );

        create_metadata_accounts_v3(cpi_ctx, data_v2, true, true, None)?;

        emit!(BadgeMinted {
            badge_mint: ctx.accounts.badge_mint.key(),
            recipient: recipient.key(),
            project_name: badge_account.project_name.clone(),
            collaborators: badge_account.collaborators.clone(),
        });

        Ok(())
    }

    pub fn verify_collaboration(
        ctx: Context<VerifyCollaboration>,
        badge_mint: Pubkey,
    ) -> Result<()> {
        let badge_account = &ctx.accounts.badge_account;
        let verifier = &ctx.accounts.verifier;

        // Only collaborators can verify
        require!(
            badge_account.collaborators.contains(&verifier.key()),
            BadgeError::UnauthorizedVerifier
        );

        emit!(CollaborationVerified {
            badge_mint,
            verifier: verifier.key(),
            project_name: badge_account.project_name.clone(),
        });

        Ok(())
    }
}

#[derive(Accounts)]
pub struct InitializeBadgeCollection<'info> {
    #[account(
        init,
        payer = payer,
        mint::decimals = 0,
        mint::authority = mint_authority,
    )]
    pub collection_mint: Account<'info, Mint>,
    
    /// CHECK: This is the metadata account
    #[account(mut)]
    pub metadata_account: UncheckedAccount<'info>,
    
    pub mint_authority: Signer<'info>,
    pub update_authority: Signer<'info>,
    
    #[account(mut)]
    pub payer: Signer<'info>,
    
    pub system_program: Program<'info, System>,
    pub token_program: Program<'info, Token>,
    pub token_metadata_program: Program<'info, Metadata>,
    pub rent: Sysvar<'info, Rent>,
}

#[derive(Accounts)]
pub struct MintCollaborationBadge<'info> {
    #[account(
        init,
        payer = payer,
        space = 8 + BadgeAccount::LEN,
        seeds = [b"badge", badge_mint.key().as_ref()],
        bump
    )]
    pub badge_account: Account<'info, BadgeAccount>,
    
    #[account(
        init,
        payer = payer,
        mint::decimals = 0,
        mint::authority = program_authority,
    )]
    pub badge_mint: Account<'info, Mint>,
    
    #[account(
        init,
        payer = payer,
        associated_token::mint = badge_mint,
        associated_token::authority = recipient,
    )]
    pub recipient_token_account: Account<'info, TokenAccount>,
    
    /// CHECK: This is the metadata account
    #[account(mut)]
    pub metadata_account: UncheckedAccount<'info>,
    
    pub collection_mint: Account<'info, Mint>,
    pub recipient: Signer<'info>,
    
    /// CHECK: Program authority PDA
    #[account(
        seeds = [b"authority"],
        bump
    )]
    pub program_authority: UncheckedAccount<'info>,
    
    #[account(mut)]
    pub payer: Signer<'info>,
    
    pub system_program: Program<'info, System>,
    pub token_program: Program<'info, Token>,
    pub associated_token_program: Program<'info, AssociatedToken>,
    pub token_metadata_program: Program<'info, Metadata>,
    pub rent: Sysvar<'info, Rent>,
}

#[derive(Accounts)]
pub struct VerifyCollaboration<'info> {
    #[account(
        seeds = [b"badge", badge_mint.key().as_ref()],
        bump
    )]
    pub badge_account: Account<'info, BadgeAccount>,
    pub badge_mint: Account<'info, Mint>,
    pub verifier: Signer<'info>,
}

#[account]
pub struct BadgeAccount {
    pub project_name: String,
    pub collaborators: Vec<Pubkey>,
    pub contribution_type: String,
    pub completion_date: i64,
    pub mint_date: i64,
    pub recipient: Pubkey,
    pub is_soulbound: bool,
}

impl BadgeAccount {
    pub const LEN: usize = 
        4 + 50 +  // project_name (String)
        4 + (32 * 10) +  // collaborators (Vec<Pubkey>, max 10)
        4 + 50 +  // contribution_type (String)
        8 +  // completion_date (i64)
        8 +  // mint_date (i64)
        32 + // recipient (Pubkey)
        1;   // is_soulbound (bool)
}

#[event]
pub struct BadgeMinted {
    pub badge_mint: Pubkey,
    pub recipient: Pubkey,
    pub project_name: String,
    pub collaborators: Vec<Pubkey>,
}

#[event]
pub struct CollaborationVerified {
    pub badge_mint: Pubkey,
    pub verifier: Pubkey,
    pub project_name: String,
}

#[error_code]
pub enum BadgeError {
    #[msg("Recipient is not in the collaborators list")]
    InvalidRecipient,
    #[msg("Only collaborators can verify this badge")]
    UnauthorizedVerifier,
}