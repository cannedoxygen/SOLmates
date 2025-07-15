.class public Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolanaContract;
.super Ljava/lang/Object;
.source "SignInWithSolanaContract.java"


# static fields
.field public static PAYLOAD_PARAMETER_ADDRESS:Ljava/lang/String;

.field public static PAYLOAD_PARAMETER_CHAIN_ID:Ljava/lang/String;

.field public static PAYLOAD_PARAMETER_DOMAIN:Ljava/lang/String;

.field public static PAYLOAD_PARAMETER_EXPIRATION_TIME:Ljava/lang/String;

.field public static PAYLOAD_PARAMETER_ISSUED_AT:Ljava/lang/String;

.field public static PAYLOAD_PARAMETER_NONCE:Ljava/lang/String;

.field public static PAYLOAD_PARAMETER_NOT_BEFORE:Ljava/lang/String;

.field public static PAYLOAD_PARAMETER_REQUEST_ID:Ljava/lang/String;

.field public static PAYLOAD_PARAMETER_RESOURCES:Ljava/lang/String;

.field public static PAYLOAD_PARAMETER_STATEMENT:Ljava/lang/String;

.field public static PAYLOAD_PARAMETER_URI:Ljava/lang/String;

.field public static PAYLOAD_PARAMETER_VERSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    const-string v0, "domain"

    sput-object v0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolanaContract;->PAYLOAD_PARAMETER_DOMAIN:Ljava/lang/String;

    .line 9
    const-string v0, "address"

    sput-object v0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolanaContract;->PAYLOAD_PARAMETER_ADDRESS:Ljava/lang/String;

    .line 12
    const-string/jumbo v0, "statement"

    sput-object v0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolanaContract;->PAYLOAD_PARAMETER_STATEMENT:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, "uri"

    sput-object v0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolanaContract;->PAYLOAD_PARAMETER_URI:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, "version"

    sput-object v0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolanaContract;->PAYLOAD_PARAMETER_VERSION:Ljava/lang/String;

    .line 23
    const-string v0, "chainId"

    sput-object v0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolanaContract;->PAYLOAD_PARAMETER_CHAIN_ID:Ljava/lang/String;

    .line 27
    const-string v0, "nonce"

    sput-object v0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolanaContract;->PAYLOAD_PARAMETER_NONCE:Ljava/lang/String;

    .line 30
    const-string v0, "issuedAt"

    sput-object v0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolanaContract;->PAYLOAD_PARAMETER_ISSUED_AT:Ljava/lang/String;

    .line 34
    const-string v0, "expirationTime"

    sput-object v0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolanaContract;->PAYLOAD_PARAMETER_EXPIRATION_TIME:Ljava/lang/String;

    .line 38
    const-string v0, "notBefore"

    sput-object v0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolanaContract;->PAYLOAD_PARAMETER_NOT_BEFORE:Ljava/lang/String;

    .line 42
    const-string v0, "requestId"

    sput-object v0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolanaContract;->PAYLOAD_PARAMETER_REQUEST_ID:Ljava/lang/String;

    .line 47
    const-string v0, "resources"

    sput-object v0, Lcom/solana/mobilewalletadapter/common/signin/SignInWithSolanaContract;->PAYLOAD_PARAMETER_RESOURCES:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
