.class public final enum Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;
.super Ljava/lang/Enum;
.source "IPlatformNumberFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/hermes/intl/IPlatformNumberFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

.field public static final enum CURRENCY:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

.field public static final enum DECIMAL:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

.field public static final enum PERCENT:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

.field public static final enum UNIT:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;


# direct methods
.method private static synthetic $values()[Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;
    .locals 4

    .line 30
    sget-object v0, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;->DECIMAL:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    sget-object v1, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;->PERCENT:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    sget-object v2, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;->CURRENCY:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    sget-object v3, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;->UNIT:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    filled-new-array {v0, v1, v2, v3}, [Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 31
    new-instance v0, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    const-string v1, "DECIMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;->DECIMAL:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    .line 32
    new-instance v0, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    const-string v1, "PERCENT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;->PERCENT:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    .line 33
    new-instance v0, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    const-string v1, "CURRENCY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;->CURRENCY:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    .line 34
    new-instance v0, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    const-string v1, "UNIT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;->UNIT:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    .line 30
    invoke-static {}, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;->$values()[Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    move-result-object v0

    sput-object v0, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;->$VALUES:[Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 30
    const-class v0, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    return-object v0
.end method

.method public static values()[Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;
    .locals 1

    .line 30
    sget-object v0, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;->$VALUES:[Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    invoke-virtual {v0}, [Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    return-object v0
.end method


# virtual methods
.method public getInitialNumberFormatStyle(Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Notation;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencySign;)I
    .locals 2
    .param p1, "notation"    # Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Notation;
    .param p2, "currencySign"    # Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencySign;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 55
    sget-object v0, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformNumberFormatter$Style:[I

    invoke-virtual {p0}, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 69
    sget-object v0, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Notation;->SCIENTIFIC:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Notation;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Notation;->ENGINEERING:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Notation;

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 57
    :pswitch_0
    sget-object v0, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencySign;->ACCOUNTING:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencySign;

    if-ne p2, v0, :cond_0

    const/4 v0, 0x7

    .local v0, "numberFormatStyle":I
    goto :goto_1

    .line 58
    .end local v0    # "numberFormatStyle":I
    :cond_0
    sget-object v0, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencySign;->STANDARD:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencySign;

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    .restart local v0    # "numberFormatStyle":I
    goto :goto_1

    .line 59
    .end local v0    # "numberFormatStyle":I
    :cond_1
    new-instance v0, Lcom/facebook/hermes/intl/JSRangeErrorException;

    const-string v1, "Unrecognized formatting style requested."

    invoke-direct {v0, v1}, Lcom/facebook/hermes/intl/JSRangeErrorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :pswitch_1
    const/4 v0, 0x2

    .line 64
    .restart local v0    # "numberFormatStyle":I
    goto :goto_1

    .line 72
    .end local v0    # "numberFormatStyle":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "numberFormatStyle":I
    goto :goto_1

    .line 70
    .end local v0    # "numberFormatStyle":I
    :cond_3
    :goto_0
    const/4 v0, 0x3

    .line 75
    .restart local v0    # "numberFormatStyle":I
    :goto_1
    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 38
    sget-object v0, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformNumberFormatter$Style:[I

    invoke-virtual {p0}, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 46
    :pswitch_0
    const-string/jumbo v0, "unit"

    return-object v0

    .line 44
    :pswitch_1
    const-string v0, "currency"

    return-object v0

    .line 42
    :pswitch_2
    const-string/jumbo v0, "percent"

    return-object v0

    .line 40
    :pswitch_3
    const-string v0, "decimal"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
