.class public final enum Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;
.super Ljava/lang/Enum;
.source "IPlatformDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TimeStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;

.field public static final enum FULL:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;

.field public static final enum LONG:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;

.field public static final enum MEDIUM:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;

.field public static final enum SHORT:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;

.field public static final enum UNDEFINED:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;


# direct methods
.method private static synthetic $values()[Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;
    .locals 5

    .line 437
    sget-object v0, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;->FULL:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;

    sget-object v1, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;->LONG:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;

    sget-object v2, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;->MEDIUM:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;

    sget-object v3, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;->SHORT:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;

    sget-object v4, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;->UNDEFINED:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 438
    new-instance v0, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;

    const-string v1, "FULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;->FULL:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;

    .line 439
    new-instance v0, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;

    const-string v1, "LONG"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;->LONG:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;

    .line 440
    new-instance v0, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;

    const-string v1, "MEDIUM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;->MEDIUM:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;

    .line 441
    new-instance v0, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;

    const-string v1, "SHORT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;->SHORT:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;

    .line 442
    new-instance v0, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;->UNDEFINED:Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;

    .line 437
    invoke-static {}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;->$values()[Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;

    move-result-object v0

    sput-object v0, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;->$VALUES:[Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 437
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 437
    const-class v0, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;

    return-object v0
.end method

.method public static values()[Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;
    .locals 1

    .line 437
    sget-object v0, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;->$VALUES:[Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;

    invoke-virtual {v0}, [Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 446
    sget-object v0, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformDateTimeFormatter$TimeStyle:[I

    invoke-virtual {p0}, Lcom/facebook/hermes/intl/IPlatformDateTimeFormatter$TimeStyle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 458
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 456
    :pswitch_0
    const-string v0, ""

    return-object v0

    .line 454
    :pswitch_1
    const-string/jumbo v0, "short"

    return-object v0

    .line 452
    :pswitch_2
    const-string v0, "medium"

    return-object v0

    .line 450
    :pswitch_3
    const-string v0, "long"

    return-object v0

    .line 448
    :pswitch_4
    const-string v0, "full"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
