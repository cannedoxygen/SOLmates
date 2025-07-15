.class public Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult;
.super Ljava/lang/Object;
.source "MobileWalletAdapterClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthorizationResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult$AuthorizedAccount;,
        Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult$SignInResult;
    }
.end annotation


# instance fields
.field public final accountLabel:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final accounts:[Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult$AuthorizedAccount;

.field public final authToken:Ljava/lang/String;

.field public final publicKey:[B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final signInResult:Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult$SignInResult;

.field public final walletIcon:Landroid/net/Uri;

.field public final walletUriBase:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Ljava/lang/String;[Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult$AuthorizedAccount;Landroid/net/Uri;Landroid/net/Uri;Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult$SignInResult;)V
    .locals 2
    .param p1, "authToken"    # Ljava/lang/String;
    .param p2, "accounts"    # [Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult$AuthorizedAccount;
    .param p3, "walletUriBase"    # Landroid/net/Uri;
    .param p4, "walletIcon"    # Landroid/net/Uri;
    .param p5, "signInResult"    # Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult$SignInResult;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p1, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult;->authToken:Ljava/lang/String;

    .line 161
    iput-object p4, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult;->walletIcon:Landroid/net/Uri;

    .line 162
    iput-object p3, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult;->walletUriBase:Landroid/net/Uri;

    .line 163
    iput-object p2, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult;->accounts:[Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult$AuthorizedAccount;

    .line 164
    iput-object p5, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult;->signInResult:Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult$SignInResult;

    .line 165
    const/4 v0, 0x0

    aget-object v1, p2, v0

    iget-object v1, v1, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult$AuthorizedAccount;->publicKey:[B

    iput-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult;->publicKey:[B

    .line 166
    aget-object v0, p2, v0

    iget-object v0, v0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult$AuthorizedAccount;->accountLabel:Ljava/lang/String;

    iput-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult;->accountLabel:Ljava/lang/String;

    .line 167
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;[Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult$AuthorizedAccount;Landroid/net/Uri;Landroid/net/Uri;Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult$SignInResult;Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult;-><init>(Ljava/lang/String;[Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult$AuthorizedAccount;Landroid/net/Uri;Landroid/net/Uri;Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult$SignInResult;)V

    return-void
.end method

.method public static create(Ljava/lang/String;[BLjava/lang/String;Landroid/net/Uri;)Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult;
    .locals 10
    .param p0, "authToken"    # Ljava/lang/String;
    .param p1, "publicKey"    # [B
    .param p2, "accountLabel"    # Ljava/lang/String;
    .param p3, "walletUriBase"    # Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 253
    const/4 v0, 0x1

    new-array v3, v0, [Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult$AuthorizedAccount;

    new-instance v0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult$AuthorizedAccount;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v4, v0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v4 .. v9}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult$AuthorizedAccount;-><init>([BLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult$AuthorizedAccount-IA;)V

    const/4 v1, 0x0

    aput-object v0, v3, v1

    .line 254
    .local v3, "accounts":[Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult$AuthorizedAccount;
    new-instance v0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult;-><init>(Ljava/lang/String;[Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult$AuthorizedAccount;Landroid/net/Uri;Landroid/net/Uri;Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult$SignInResult;)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;[Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult$AuthorizedAccount;Landroid/net/Uri;)Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult;
    .locals 7
    .param p0, "authToken"    # Ljava/lang/String;
    .param p1, "accounts"    # [Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult$AuthorizedAccount;
    .param p2, "walletUriBase"    # Landroid/net/Uri;

    .line 263
    new-instance v6, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult;-><init>(Ljava/lang/String;[Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult$AuthorizedAccount;Landroid/net/Uri;Landroid/net/Uri;Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult$SignInResult;)V

    return-object v6
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuthorizationResult{authToken=<REDACTED>, walletUriBase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult;->walletUriBase:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accounts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult;->accounts:[Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult$AuthorizedAccount;

    .line 175
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    return-object v0
.end method

.method public with(Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult$SignInResult;)Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult;
    .locals 7
    .param p1, "signInResult"    # Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult$SignInResult;

    .line 181
    new-instance v6, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult;

    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult;->authToken:Ljava/lang/String;

    iget-object v2, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult;->accounts:[Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult$AuthorizedAccount;

    iget-object v3, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult;->walletUriBase:Landroid/net/Uri;

    iget-object v4, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult;->walletIcon:Landroid/net/Uri;

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult;-><init>(Ljava/lang/String;[Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult$AuthorizedAccount;Landroid/net/Uri;Landroid/net/Uri;Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$AuthorizationResult$SignInResult;)V

    return-object v6
.end method
