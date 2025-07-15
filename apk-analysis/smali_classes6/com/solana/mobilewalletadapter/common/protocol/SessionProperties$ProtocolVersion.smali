.class public final enum Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;
.super Ljava/lang/Enum;
.source "SessionProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProtocolVersion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;

.field public static final enum LEGACY:Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;

.field public static final enum V1:Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;


# instance fields
.field final versionInt:I


# direct methods
.method private static synthetic $values()[Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;
    .locals 2

    .line 33
    sget-object v0, Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;->LEGACY:Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;

    sget-object v1, Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;->V1:Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;

    filled-new-array {v0, v1}, [Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 34
    new-instance v0, Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;

    const-string v1, "LEGACY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;->LEGACY:Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;

    new-instance v0, Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;

    const-string v1, "V1"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;->V1:Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;

    .line 33
    invoke-static {}, Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;->$values()[Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;

    move-result-object v0

    sput-object v0, Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;->$VALUES:[Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "versionInt"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput p3, p0, Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;->versionInt:I

    .line 40
    return-void
.end method

.method public static from(Ljava/lang/String;)Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;
    .locals 3
    .param p0, "versionString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string/jumbo v1, "v1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v1, "legacy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown/unsupported version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :pswitch_0
    sget-object v0, Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;->LEGACY:Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;

    return-object v0

    .line 57
    :pswitch_1
    sget-object v0, Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;->V1:Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x41f50c37 -> :sswitch_2
        0x31 -> :sswitch_1
        0xe7b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 33
    const-class v0, Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;

    return-object v0
.end method

.method public static values()[Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;
    .locals 1

    .line 33
    sget-object v0, Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;->$VALUES:[Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;

    invoke-virtual {v0}, [Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 45
    sget-object v0, Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$1;->$SwitchMap$com$solana$mobilewalletadapter$common$protocol$SessionProperties$ProtocolVersion:[I

    invoke-virtual {p0}, Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 49
    const-string v0, "legacy"

    return-object v0

    .line 47
    :pswitch_0
    const-string v0, "1"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
