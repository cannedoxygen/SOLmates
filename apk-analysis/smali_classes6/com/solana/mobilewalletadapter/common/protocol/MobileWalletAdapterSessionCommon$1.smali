.class synthetic Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$1;
.super Ljava/lang/Object;
.source "MobileWalletAdapterSessionCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$solana$mobilewalletadapter$common$protocol$MobileWalletAdapterSessionCommon$State:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 128
    invoke-static {}, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;->values()[Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$1;->$SwitchMap$com$solana$mobilewalletadapter$common$protocol$MobileWalletAdapterSessionCommon$State:[I

    :try_start_0
    sget-object v0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$1;->$SwitchMap$com$solana$mobilewalletadapter$common$protocol$MobileWalletAdapterSessionCommon$State:[I

    sget-object v1, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;->WAITING_FOR_CONNECTION:Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;

    invoke-virtual {v1}, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$1;->$SwitchMap$com$solana$mobilewalletadapter$common$protocol$MobileWalletAdapterSessionCommon$State:[I

    sget-object v1, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;->SESSION_ESTABLISHMENT:Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;

    invoke-virtual {v1}, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$1;->$SwitchMap$com$solana$mobilewalletadapter$common$protocol$MobileWalletAdapterSessionCommon$State:[I

    sget-object v1, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;->ENCRYPTED_SESSION:Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;

    invoke-virtual {v1}, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    :try_start_3
    sget-object v0, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$1;->$SwitchMap$com$solana$mobilewalletadapter$common$protocol$MobileWalletAdapterSessionCommon$State:[I

    sget-object v1, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;->CLOSED:Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;

    invoke-virtual {v1}, Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    return-void
.end method
