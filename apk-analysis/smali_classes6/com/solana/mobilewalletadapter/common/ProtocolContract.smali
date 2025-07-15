.class public Lcom/solana/mobilewalletadapter/common/ProtocolContract;
.super Ljava/lang/Object;
.source "ProtocolContract.java"


# static fields
.field public static final CHAIN_SOLANA_DEVNET:Ljava/lang/String; = "solana:devnet"

.field public static final CHAIN_SOLANA_MAINNET:Ljava/lang/String; = "solana:mainnet"

.field public static final CHAIN_SOLANA_TESTNET:Ljava/lang/String; = "solana:testnet"

.field public static final CLUSTER_DEVNET:Ljava/lang/String; = "devnet"

.field public static final CLUSTER_MAINNET_BETA:Ljava/lang/String; = "mainnet-beta"

.field public static final CLUSTER_TESTNET:Ljava/lang/String; = "testnet"

.field public static final DATA_INVALID_PAYLOADS_VALID:Ljava/lang/String; = "valid"

.field public static final DATA_NOT_SUBMITTED_SIGNATURES:Ljava/lang/String; = "signatures"

.field public static final ERROR_ATTEST_ORIGIN_ANDROID:I = -0x64

.field public static final ERROR_AUTHORIZATION_FAILED:I = -0x1

.field public static final ERROR_CLUSTER_NOT_SUPPORTED:I = -0x7

.field public static final ERROR_INVALID_PAYLOADS:I = -0x2

.field public static final ERROR_NOT_CLONED:I = -0x5

.field public static final ERROR_NOT_SIGNED:I = -0x3

.field public static final ERROR_NOT_SUBMITTED:I = -0x4

.field public static final ERROR_TOO_MANY_PAYLOADS:I = -0x6

.field public static final FEATURE_ID_CLONE_AUTHORIZATION:Ljava/lang/String; = "solana:cloneAuthorization"

.field public static final FEATURE_ID_SIGN_AND_SEND_TRANSACTIONS:Ljava/lang/String; = "solana:signAndSendTransaction"

.field public static final FEATURE_ID_SIGN_IN_WITH_SOLANA:Ljava/lang/String; = "solana:signInWithSolana"

.field public static final FEATURE_ID_SIGN_MESSAGES:Ljava/lang/String; = "solana:signMessages"

.field public static final FEATURE_ID_SIGN_TRANSACTIONS:Ljava/lang/String; = "solana:signTransactions"

.field public static final METHOD_AUTHORIZE:Ljava/lang/String; = "authorize"

.field public static final METHOD_CLONE_AUTHORIZATION:Ljava/lang/String; = "clone_authorization"

.field public static final METHOD_DEAUTHORIZE:Ljava/lang/String; = "deauthorize"

.field public static final METHOD_GET_CAPABILITIES:Ljava/lang/String; = "get_capabilities"

.field public static final METHOD_REAUTHORIZE:Ljava/lang/String; = "reauthorize"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final METHOD_SIGN_AND_SEND_TRANSACTIONS:Ljava/lang/String; = "sign_and_send_transactions"

.field public static final METHOD_SIGN_MESSAGES:Ljava/lang/String; = "sign_messages"

.field public static final METHOD_SIGN_TRANSACTIONS:Ljava/lang/String; = "sign_transactions"
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "2.0.0"
    .end annotation
.end field

.field public static final NAMESPACE_SOLANA:Ljava/lang/String; = "solana"

.field public static final PARAMETER_ADDRESSES:Ljava/lang/String; = "addresses"

.field public static final PARAMETER_AUTH_TOKEN:Ljava/lang/String; = "auth_token"

.field public static final PARAMETER_CHAIN:Ljava/lang/String; = "chain"

.field public static final PARAMETER_CLUSTER:Ljava/lang/String; = "cluster"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PARAMETER_FEATURES:Ljava/lang/String; = "features"

.field public static final PARAMETER_IDENTITY:Ljava/lang/String; = "identity"

.field public static final PARAMETER_IDENTITY_ICON:Ljava/lang/String; = "icon"

.field public static final PARAMETER_IDENTITY_NAME:Ljava/lang/String; = "name"

.field public static final PARAMETER_IDENTITY_URI:Ljava/lang/String; = "uri"

.field public static final PARAMETER_OPTIONS:Ljava/lang/String; = "options"

.field public static final PARAMETER_OPTIONS_COMMITMENT:Ljava/lang/String; = "commitment"

.field public static final PARAMETER_OPTIONS_MAX_RETRIES:Ljava/lang/String; = "max_retries"

.field public static final PARAMETER_OPTIONS_MIN_CONTEXT_SLOT:Ljava/lang/String; = "min_context_slot"

.field public static final PARAMETER_OPTIONS_SKIP_PREFLIGHT:Ljava/lang/String; = "skip_preflight"

.field public static final PARAMETER_OPTIONS_WAIT_FOR_COMMITMENT:Ljava/lang/String; = "wait_for_commitment_to_send_next_transaction"

.field public static final PARAMETER_PAYLOADS:Ljava/lang/String; = "payloads"

.field public static final PARAMETER_SIGN_IN_PAYLOAD:Ljava/lang/String; = "sign_in_payload"

.field public static final RESULT_ACCOUNTS:Ljava/lang/String; = "accounts"

.field public static final RESULT_ACCOUNTS_ADDRESS:Ljava/lang/String; = "address"

.field public static final RESULT_ACCOUNTS_CHAINS:Ljava/lang/String; = "chains"

.field public static final RESULT_ACCOUNTS_DISPLAY_ADDRESS:Ljava/lang/String; = "display_address"

.field public static final RESULT_ACCOUNTS_DISPLAY_ADDRESS_FORMAT:Ljava/lang/String; = "display_address_format"

.field public static final RESULT_ACCOUNTS_ICON:Ljava/lang/String; = "icon"

.field public static final RESULT_ACCOUNTS_LABEL:Ljava/lang/String; = "label"

.field public static final RESULT_AUTH_TOKEN:Ljava/lang/String; = "auth_token"

.field public static final RESULT_MAX_MESSAGES_PER_REQUEST:Ljava/lang/String; = "max_messages_per_request"

.field public static final RESULT_MAX_TRANSACTIONS_PER_REQUEST:Ljava/lang/String; = "max_transactions_per_request"

.field public static final RESULT_SIGNATURES:Ljava/lang/String; = "signatures"

.field public static final RESULT_SIGNED_PAYLOADS:Ljava/lang/String; = "signed_payloads"

.field public static final RESULT_SIGN_IN:Ljava/lang/String; = "sign_in_result"

.field public static final RESULT_SIGN_IN_ADDRESS:Ljava/lang/String; = "address"

.field public static final RESULT_SIGN_IN_SIGNATURE:Ljava/lang/String; = "signature"

.field public static final RESULT_SIGN_IN_SIGNATURE_TYPE:Ljava/lang/String; = "signature_type"

.field public static final RESULT_SIGN_IN_SIGNED_MESSAGE:Ljava/lang/String; = "signed_message"

.field public static final RESULT_SUPPORTED_FEATURES:Ljava/lang/String; = "features"

.field public static final RESULT_SUPPORTED_TRANSACTION_VERSIONS:Ljava/lang/String; = "supported_transaction_versions"

.field public static final RESULT_SUPPORTS_CLONE_AUTHORIZATION:Ljava/lang/String; = "supports_clone_authorization"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RESULT_SUPPORTS_SIGN_AND_SEND_TRANSACTIONS:Ljava/lang/String; = "supports_sign_and_send_transactions"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RESULT_WALLET_ICON:Ljava/lang/String; = "wallet_icon"

.field public static final RESULT_WALLET_URI_BASE:Ljava/lang/String; = "wallet_uri_base"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
