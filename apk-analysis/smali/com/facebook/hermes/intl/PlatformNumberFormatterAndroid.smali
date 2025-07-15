.class public Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;
.super Ljava/lang/Object;
.source "PlatformNumberFormatterAndroid.java"

# interfaces
.implements Lcom/facebook/hermes/intl/IPlatformNumberFormatter;


# instance fields
.field private mDecimalFormat:Ljava/text/DecimalFormat;

.field private mFinalFormat:Ljava/text/Format;

.field private mLocaleObject:Lcom/facebook/hermes/intl/LocaleObjectAndroid;

.field private mStyle:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrencyDigits(Ljava/lang/String;)I
    .locals 3
    .param p0, "currencyCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 132
    :try_start_0
    invoke-static {p0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Currency;->getDefaultFractionDigits()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lcom/facebook/hermes/intl/JSRangeErrorException;

    const-string v2, "Invalid currency code !"

    invoke-direct {v1, v2}, Lcom/facebook/hermes/intl/JSRangeErrorException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private initialize(Ljava/text/DecimalFormat;Lcom/facebook/hermes/intl/ILocaleObject;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;)V
    .locals 1
    .param p1, "decimalFormat"    # Ljava/text/DecimalFormat;
    .param p3, "style"    # Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/text/DecimalFormat;",
            "Lcom/facebook/hermes/intl/ILocaleObject<",
            "*>;",
            "Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;",
            ")V"
        }
    .end annotation

    .line 35
    .local p2, "localeObject":Lcom/facebook/hermes/intl/ILocaleObject;, "Lcom/facebook/hermes/intl/ILocaleObject<*>;"
    iput-object p1, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->mDecimalFormat:Ljava/text/DecimalFormat;

    .line 36
    iput-object p1, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->mFinalFormat:Ljava/text/Format;

    .line 37
    move-object v0, p2

    check-cast v0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;

    iput-object v0, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->mLocaleObject:Lcom/facebook/hermes/intl/LocaleObjectAndroid;

    .line 38
    iput-object p3, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->mStyle:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    .line 39
    return-void
.end method


# virtual methods
.method public bridge synthetic configure(Lcom/facebook/hermes/intl/ILocaleObject;Ljava/lang/String;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencySign;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Notation;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CompactDisplay;)Lcom/facebook/hermes/intl/IPlatformNumberFormatter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 22
    invoke-virtual/range {p0 .. p6}, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->configure(Lcom/facebook/hermes/intl/ILocaleObject;Ljava/lang/String;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencySign;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Notation;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CompactDisplay;)Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;

    move-result-object p1

    return-object p1
.end method

.method public configure(Lcom/facebook/hermes/intl/ILocaleObject;Ljava/lang/String;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencySign;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Notation;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CompactDisplay;)Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;
    .locals 2
    .param p2, "numberingSystem"    # Ljava/lang/String;
    .param p3, "style"    # Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;
    .param p4, "currencySign"    # Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencySign;
    .param p5, "notation"    # Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Notation;
    .param p6, "compactDisplay"    # Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CompactDisplay;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/hermes/intl/ILocaleObject<",
            "*>;",
            "Ljava/lang/String;",
            "Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;",
            "Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencySign;",
            "Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Notation;",
            "Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CompactDisplay;",
            ")",
            "Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 179
    .local p1, "localeObject":Lcom/facebook/hermes/intl/ILocaleObject;, "Lcom/facebook/hermes/intl/ILocaleObject<*>;"
    invoke-interface {p1}, Lcom/facebook/hermes/intl/ILocaleObject;->getLocale()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    .line 180
    .local v0, "numberFormat":Ljava/text/NumberFormat;
    sget-object v1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 182
    move-object v1, v0

    check-cast v1, Ljava/text/DecimalFormat;

    invoke-direct {p0, v1, p1, p3}, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->initialize(Ljava/text/DecimalFormat;Lcom/facebook/hermes/intl/ILocaleObject;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;)V

    .line 184
    return-object p0
.end method

.method public fieldToString(Ljava/text/AttributedCharacterIterator$Attribute;D)Ljava/lang/String;
    .locals 1
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "x"    # D

    .line 146
    const-string v0, "literal"

    return-object v0
.end method

.method public format(D)Ljava/lang/String;
    .locals 2
    .param p1, "n"    # D

    .line 140
    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->mFinalFormat:Ljava/text/Format;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatToParts(D)Ljava/text/AttributedCharacterIterator;
    .locals 2
    .param p1, "n"    # D

    .line 151
    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->mFinalFormat:Ljava/text/Format;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/Format;->formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableLocales()[Ljava/lang/String;
    .locals 6

    .line 190
    nop

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v0, "availableLocaleIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Ljava/text/NumberFormat;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v1

    .line 198
    .local v1, "availableLocales":[Ljava/util/Locale;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 199
    .local v4, "locale":Ljava/util/Locale;
    invoke-virtual {v4}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    .end local v4    # "locale":Ljava/util/Locale;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 202
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 203
    .local v2, "availableLocaleIdsArray":[Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public getDefaultNumberingSystem(Lcom/facebook/hermes/intl/ILocaleObject;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/hermes/intl/ILocaleObject<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 208
    .local p1, "localeObject":Lcom/facebook/hermes/intl/ILocaleObject;, "Lcom/facebook/hermes/intl/ILocaleObject<*>;"
    const-string v0, "latn"

    return-object v0
.end method

.method public bridge synthetic setCurrency(Ljava/lang/String;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencyDisplay;)Lcom/facebook/hermes/intl/IPlatformNumberFormatter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->setCurrency(Ljava/lang/String;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencyDisplay;)Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;

    move-result-object p1

    return-object p1
.end method

.method public setCurrency(Ljava/lang/String;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencyDisplay;)Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;
    .locals 4
    .param p1, "currencyCode"    # Ljava/lang/String;
    .param p2, "currencyDisplay"    # Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencyDisplay;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->mStyle:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    sget-object v1, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;->CURRENCY:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    if-ne v0, v1, :cond_0

    .line 46
    invoke-static {p1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    .line 47
    .local v0, "currency":Ljava/util/Currency;
    iget-object v1, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->mDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v1, v0}, Ljava/text/DecimalFormat;->setCurrency(Ljava/util/Currency;)V

    .line 50
    sget-object v1, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformNumberFormatter$CurrencyDisplay:[I

    invoke-virtual {p2}, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencyDisplay;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 64
    iget-object v1, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->mLocaleObject:Lcom/facebook/hermes/intl/LocaleObjectAndroid;

    invoke-virtual {v1}, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .local v1, "currencySymbol":Ljava/lang/String;
    goto :goto_0

    .line 59
    .end local v1    # "currencySymbol":Ljava/lang/String;
    :pswitch_0
    move-object v1, p1

    .line 60
    .restart local v1    # "currencySymbol":Ljava/lang/String;
    goto :goto_0

    .line 52
    .end local v1    # "currencySymbol":Ljava/lang/String;
    :pswitch_1
    nop

    .line 53
    iget-object v1, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->mLocaleObject:Lcom/facebook/hermes/intl/LocaleObjectAndroid;

    invoke-virtual {v1}, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Currency;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .restart local v1    # "currencySymbol":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->mDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v2}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v2

    .line 69
    .local v2, "symbols":Ljava/text/DecimalFormatSymbols;
    invoke-virtual {v2, v1}, Ljava/text/DecimalFormatSymbols;->setCurrencySymbol(Ljava/lang/String;)V

    .line 70
    iget-object v3, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->mDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v3, v2}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    .line 72
    iget-object v3, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->mDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v3}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/text/DecimalFormatSymbols;->setCurrencySymbol(Ljava/lang/String;)V

    .line 75
    .end local v0    # "currency":Ljava/util/Currency;
    .end local v1    # "currencySymbol":Ljava/lang/String;
    .end local v2    # "symbols":Ljava/text/DecimalFormatSymbols;
    :cond_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic setFractionDigits(Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;II)Lcom/facebook/hermes/intl/IPlatformNumberFormatter;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->setFractionDigits(Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;II)Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;

    move-result-object p1

    return-object p1
.end method

.method public setFractionDigits(Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;II)Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;
    .locals 1
    .param p1, "roundingType"    # Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;
    .param p2, "minimumFractionDigits"    # I
    .param p3, "maximumFractionDigits"    # I

    .line 105
    sget-object v0, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;->FRACTION_DIGITS:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;

    if-ne p1, v0, :cond_1

    .line 106
    if-ltz p2, :cond_0

    .line 107
    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->mDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p2}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    .line 109
    :cond_0
    if-ltz p3, :cond_1

    .line 110
    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->mDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p3}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 113
    :cond_1
    return-object p0
.end method

.method public bridge synthetic setGrouping(Z)Lcom/facebook/hermes/intl/IPlatformNumberFormatter;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->setGrouping(Z)Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;

    move-result-object p1

    return-object p1
.end method

.method public setGrouping(Z)Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;
    .locals 1
    .param p1, "mGroupingUsed"    # Z

    .line 80
    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->mDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p1}, Ljava/text/DecimalFormat;->setGroupingUsed(Z)V

    .line 81
    return-object p0
.end method

.method public bridge synthetic setMinIntergerDigits(I)Lcom/facebook/hermes/intl/IPlatformNumberFormatter;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->setMinIntergerDigits(I)Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;

    move-result-object p1

    return-object p1
.end method

.method public setMinIntergerDigits(I)Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;
    .locals 1
    .param p1, "minimumIntegerDigits"    # I

    .line 86
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->mDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p1}, Ljava/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    .line 88
    :cond_0
    return-object p0
.end method

.method public bridge synthetic setSignDisplay(Lcom/facebook/hermes/intl/IPlatformNumberFormatter$SignDisplay;)Lcom/facebook/hermes/intl/IPlatformNumberFormatter;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->setSignDisplay(Lcom/facebook/hermes/intl/IPlatformNumberFormatter$SignDisplay;)Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;

    move-result-object p1

    return-object p1
.end method

.method public setSignDisplay(Lcom/facebook/hermes/intl/IPlatformNumberFormatter$SignDisplay;)Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;
    .locals 2
    .param p1, "signDisplay"    # Lcom/facebook/hermes/intl/IPlatformNumberFormatter$SignDisplay;

    .line 119
    sget-object v0, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$SignDisplay;->NEVER:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$SignDisplay;

    if-ne p1, v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->mDecimalFormat:Ljava/text/DecimalFormat;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setPositivePrefix(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->mDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setPositiveSuffix(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->mDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setNegativePrefix(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->mDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setNegativeSuffix(Ljava/lang/String;)V

    .line 127
    :cond_0
    return-object p0
.end method

.method public bridge synthetic setSignificantDigits(Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;II)Lcom/facebook/hermes/intl/IPlatformNumberFormatter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 22
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->setSignificantDigits(Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;II)Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;

    move-result-object p1

    return-object p1
.end method

.method public setSignificantDigits(Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;II)Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;
    .locals 0
    .param p1, "roundingType"    # Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;
    .param p2, "minimumSignificantDigits"    # I
    .param p3, "maximumSignificantDigits"    # I

    .line 97
    return-object p0
.end method

.method public bridge synthetic setUnits(Ljava/lang/String;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$UnitDisplay;)Lcom/facebook/hermes/intl/IPlatformNumberFormatter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->setUnits(Ljava/lang/String;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$UnitDisplay;)Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;

    move-result-object p1

    return-object p1
.end method

.method public setUnits(Ljava/lang/String;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$UnitDisplay;)Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;
    .locals 0
    .param p1, "unit"    # Ljava/lang/String;
    .param p2, "unitDisplay"    # Lcom/facebook/hermes/intl/IPlatformNumberFormatter$UnitDisplay;

    .line 158
    return-object p0
.end method
