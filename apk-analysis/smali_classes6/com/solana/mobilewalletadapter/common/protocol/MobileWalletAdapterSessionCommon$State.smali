.class final enum Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;
.super Ljava/lang/Enum;
.source "MobileWalletAdapterSessionCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;

.field public static final enum CLOSED:Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;

.field public static final enum ENCRYPTED_SESSION:Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;

.field public static final enum SESSION_ESTABLISHMENT:Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;

.field public static final enum WAITING_FOR_CONNECTION:Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;


# direct methods
.method private static synthetic $values()[Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;
    .locals 4

    .line 307
    sget-object v0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;->WAITING_FOR_CONNECTION:Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;

    sget-object v1, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;->SESSION_ESTABLISHMENT:Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;

    sget-object v2, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;->ENCRYPTED_SESSION:Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;

    sget-object v3, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;->CLOSED:Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;

    filled-new-array {v0, v1, v2, v3}, [Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 308
    new-instance v0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;

    const-string v1, "WAITING_FOR_CONNECTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;->WAITING_FOR_CONNECTION:Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;

    new-instance v0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;

    const-string v1, "SESSION_ESTABLISHMENT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;->SESSION_ESTABLISHMENT:Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;

    new-instance v0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;

    const-string v1, "ENCRYPTED_SESSION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;->ENCRYPTED_SESSION:Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;

    new-instance v0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;

    const-string v1, "CLOSED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;->CLOSED:Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;

    .line 307
    invoke-static {}, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;->$values()[Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;

    move-result-object v0

    sput-object v0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;->$VALUES:[Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 307
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 307
    const-class v0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;

    return-object v0
.end method

.method public static values()[Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;
    .locals 1

    .line 307
    sget-object v0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;->$VALUES:[Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;

    invoke-virtual {v0}, [Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;

    return-object v0
.end method
