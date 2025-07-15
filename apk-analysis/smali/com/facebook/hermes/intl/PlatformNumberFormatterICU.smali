.class public Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;
.super Ljava/lang/Object;
.source "PlatformNumberFormatterICU.java"

# interfaces
.implements Lcom/facebook/hermes/intl/IPlatformNumberFormatter;


# instance fields
.field private mFinalFormat:Ljava/text/Format;

.field private mLocaleObject:Lcom/facebook/hermes/intl/LocaleObjectICU;

.field private mMeasureUnit:Landroid/icu/util/MeasureUnit;

.field private mNumberFormat:Landroid/icu/text/NumberFormat;

.field private mStyle:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 45
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

    .line 323
    :try_start_0
    invoke-static {p0}, Landroid/icu/util/Currency;->getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/Currency;->getDefaultFractionDigits()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lcom/facebook/hermes/intl/JSRangeErrorException;

    const-string v2, "Invalid currency code !"

    invoke-direct {v1, v2}, Lcom/facebook/hermes/intl/JSRangeErrorException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private initialize(Landroid/icu/text/NumberFormat;Lcom/facebook/hermes/intl/ILocaleObject;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;)V
    .locals 2
    .param p1, "numberFormat"    # Landroid/icu/text/NumberFormat;
    .param p3, "style"    # Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/NumberFormat;",
            "Lcom/facebook/hermes/intl/ILocaleObject<",
            "*>;",
            "Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;",
            ")V"
        }
    .end annotation

    .line 52
    .local p2, "localeObject":Lcom/facebook/hermes/intl/ILocaleObject;, "Lcom/facebook/hermes/intl/ILocaleObject<*>;"
    iput-object p1, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mNumberFormat:Landroid/icu/text/NumberFormat;

    .line 53
    iput-object p1, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mFinalFormat:Ljava/text/Format;

    .line 54
    move-object v0, p2

    check-cast v0, Lcom/facebook/hermes/intl/LocaleObjectICU;

    iput-object v0, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mLocaleObject:Lcom/facebook/hermes/intl/LocaleObjectICU;

    .line 55
    iput-object p3, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mStyle:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    .line 57
    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mNumberFormat:Landroid/icu/text/NumberFormat;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/icu/text/NumberFormat;->setRoundingMode(I)V

    .line 58
    return-void
.end method

.method private static parseUnit(Ljava/lang/String;)Landroid/icu/util/MeasureUnit;
    .locals 5
    .param p0, "inUnit"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 187
    invoke-static {}, Landroid/icu/util/MeasureUnit;->getAvailable()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/MeasureUnit;

    .line 189
    .local v1, "unit":Landroid/icu/util/MeasureUnit;
    invoke-virtual {v1}, Landroid/icu/util/MeasureUnit;->getSubtype()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 190
    invoke-virtual {v1}, Landroid/icu/util/MeasureUnit;->getSubtype()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/icu/util/MeasureUnit;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 191
    .end local v1    # "unit":Landroid/icu/util/MeasureUnit;
    :cond_0
    goto :goto_0

    .line 190
    .restart local v1    # "unit":Landroid/icu/util/MeasureUnit;
    :cond_1
    :goto_1
    return-object v1

    .line 193
    .end local v1    # "unit":Landroid/icu/util/MeasureUnit;
    :cond_2
    new-instance v0, Lcom/facebook/hermes/intl/JSRangeErrorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown unit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/hermes/intl/JSRangeErrorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic configure(Lcom/facebook/hermes/intl/ILocaleObject;Ljava/lang/String;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencySign;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Notation;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CompactDisplay;)Lcom/facebook/hermes/intl/IPlatformNumberFormatter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 37
    invoke-virtual/range {p0 .. p6}, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->configure(Lcom/facebook/hermes/intl/ILocaleObject;Ljava/lang/String;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencySign;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Notation;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CompactDisplay;)Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;

    move-result-object p1

    return-object p1
.end method

.method public configure(Lcom/facebook/hermes/intl/ILocaleObject;Ljava/lang/String;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencySign;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Notation;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CompactDisplay;)Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;
    .locals 4
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
            "Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 339
    .local p1, "localeObject":Lcom/facebook/hermes/intl/ILocaleObject;, "Lcom/facebook/hermes/intl/ILocaleObject<*>;"
    const-string v0, "Invalid numbering system: "

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 343
    nop

    .line 344
    :try_start_0
    invoke-static {p2}, Lcom/facebook/hermes/intl/JSObjects;->getJavaString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/text/NumberingSystem;->getInstanceByName(Ljava/lang/String;)Landroid/icu/text/NumberingSystem;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    .local v1, "numberingSystemObject":Landroid/icu/text/NumberingSystem;
    nop

    .line 349
    if-eqz v1, :cond_0

    .line 352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 353
    .local v0, "numberingSystemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p2}, Lcom/facebook/hermes/intl/JSObjects;->getJavaString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    const-string/jumbo v2, "nu"

    invoke-interface {p1, v2, v0}, Lcom/facebook/hermes/intl/ILocaleObject;->setUnicodeExtensions(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 350
    .end local v0    # "numberingSystemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    new-instance v2, Lcom/facebook/hermes/intl/JSRangeErrorException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/facebook/hermes/intl/JSRangeErrorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 345
    .end local v1    # "numberingSystemObject":Landroid/icu/text/NumberingSystem;
    :catch_0
    move-exception v1

    .line 346
    .local v1, "ex":Ljava/lang/RuntimeException;
    new-instance v2, Lcom/facebook/hermes/intl/JSRangeErrorException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/facebook/hermes/intl/JSRangeErrorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 358
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    sget-object v0, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Notation;->COMPACT:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Notation;

    if-ne p5, v0, :cond_4

    sget-object v0, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;->DECIMAL:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    if-eq p3, v0, :cond_2

    sget-object v0, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;->UNIT:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    if-ne p3, v0, :cond_4

    .line 364
    :cond_2
    sget-object v0, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CompactDisplay;->SHORT:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CompactDisplay;

    if-ne p6, v0, :cond_3

    .line 365
    sget-object v0, Landroid/icu/text/CompactDecimalFormat$CompactStyle;->SHORT:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    goto :goto_1

    .line 366
    :cond_3
    sget-object v0, Landroid/icu/text/CompactDecimalFormat$CompactStyle;->LONG:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    :goto_1
    nop

    .line 368
    .local v0, "compactStyle":Landroid/icu/text/CompactDecimalFormat$CompactStyle;
    nop

    .line 370
    invoke-interface {p1}, Lcom/facebook/hermes/intl/ILocaleObject;->getLocale()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/ULocale;

    .line 369
    invoke-static {v1, v0}, Landroid/icu/text/CompactDecimalFormat;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/CompactDecimalFormat$CompactStyle;)Landroid/icu/text/CompactDecimalFormat;

    move-result-object v1

    .line 371
    .local v1, "numberFormat":Landroid/icu/text/NumberFormat;
    invoke-direct {p0, v1, p1, p3}, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->initialize(Landroid/icu/text/NumberFormat;Lcom/facebook/hermes/intl/ILocaleObject;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;)V

    .line 372
    .end local v0    # "compactStyle":Landroid/icu/text/CompactDecimalFormat$CompactStyle;
    .end local v1    # "numberFormat":Landroid/icu/text/NumberFormat;
    goto :goto_2

    .line 373
    :cond_4
    invoke-virtual {p3, p5, p4}, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;->getInitialNumberFormatStyle(Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Notation;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencySign;)I

    move-result v0

    .line 374
    .local v0, "numberFormatStyle":I
    nop

    .line 375
    invoke-interface {p1}, Lcom/facebook/hermes/intl/ILocaleObject;->getLocale()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/ULocale;

    invoke-static {v1, v0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object v1

    .line 377
    .restart local v1    # "numberFormat":Landroid/icu/text/NumberFormat;
    sget-object v2, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Notation;->ENGINEERING:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Notation;

    if-ne p5, v2, :cond_5

    .line 380
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/icu/text/NumberFormat;->setMaximumIntegerDigits(I)V

    .line 383
    :cond_5
    invoke-direct {p0, v1, p1, p3}, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->initialize(Landroid/icu/text/NumberFormat;Lcom/facebook/hermes/intl/ILocaleObject;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;)V

    .line 386
    .end local v0    # "numberFormatStyle":I
    .end local v1    # "numberFormat":Landroid/icu/text/NumberFormat;
    :goto_2
    return-object p0
.end method

.method public fieldToString(Ljava/text/AttributedCharacterIterator$Attribute;D)Ljava/lang/String;
    .locals 2
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "x"    # D

    .line 238
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->SIGN:Landroid/icu/text/NumberFormat$Field;

    if-ne p1, v0, :cond_1

    .line 239
    const-wide/16 v0, 0x0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-ltz v0, :cond_0

    .line 240
    const-string/jumbo v0, "plusSign"

    return-object v0

    .line 242
    :cond_0
    const-string v0, "minusSign"

    return-object v0

    .line 244
    :cond_1
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    if-ne p1, v0, :cond_4

    .line 245
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    const-string v0, "nan"

    return-object v0

    .line 248
    :cond_2
    invoke-static {p2, p3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 249
    const-string v0, "infinity"

    return-object v0

    .line 251
    :cond_3
    const-string v0, "integer"

    return-object v0

    .line 253
    :cond_4
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->FRACTION:Landroid/icu/text/NumberFormat$Field;

    if-ne p1, v0, :cond_5

    .line 254
    const-string v0, "fraction"

    return-object v0

    .line 256
    :cond_5
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->EXPONENT:Landroid/icu/text/NumberFormat$Field;

    if-ne p1, v0, :cond_6

    .line 257
    const-string v0, "exponentInteger"

    return-object v0

    .line 259
    :cond_6
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Landroid/icu/text/NumberFormat$Field;

    if-ne p1, v0, :cond_7

    .line 260
    const-string v0, "exponentMinusSign"

    return-object v0

    .line 262
    :cond_7
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

    if-ne p1, v0, :cond_8

    .line 263
    const-string v0, "exponentSeparator"

    return-object v0

    .line 265
    :cond_8
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    if-ne p1, v0, :cond_9

    .line 266
    const-string v0, "decimal"

    return-object v0

    .line 268
    :cond_9
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    if-ne p1, v0, :cond_a

    .line 269
    const-string v0, "group"

    return-object v0

    .line 271
    :cond_a
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->PERCENT:Landroid/icu/text/NumberFormat$Field;

    if-ne p1, v0, :cond_b

    .line 272
    const-string/jumbo v0, "percentSign"

    return-object v0

    .line 274
    :cond_b
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->PERMILLE:Landroid/icu/text/NumberFormat$Field;

    if-ne p1, v0, :cond_c

    .line 275
    const-string/jumbo v0, "permilleSign"

    return-object v0

    .line 277
    :cond_c
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->CURRENCY:Landroid/icu/text/NumberFormat$Field;

    if-ne p1, v0, :cond_d

    .line 278
    const-string v0, "currency"

    return-object v0

    .line 282
    :cond_d
    invoke-virtual {p1}, Ljava/text/AttributedCharacterIterator$Attribute;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.icu.text.NumberFormat$Field(compact)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 283
    const-string v0, "compact"

    return-object v0

    .line 286
    :cond_e
    const-string v0, "literal"

    return-object v0
.end method

.method public format(D)Ljava/lang/String;
    .locals 4
    .param p1, "n"    # D

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mFinalFormat:Ljava/text/Format;

    instance-of v0, v0, Landroid/icu/text/MeasureFormat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mMeasureUnit:Landroid/icu/util/MeasureUnit;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mFinalFormat:Ljava/text/Format;

    new-instance v1, Landroid/icu/util/Measure;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mMeasureUnit:Landroid/icu/util/MeasureUnit;

    invoke-direct {v1, v2, v3}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v0, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "result":Ljava/lang/String;
    goto :goto_0

    .line 217
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mFinalFormat:Ljava/text/Format;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .restart local v0    # "result":Ljava/lang/String;
    :goto_0
    nop

    .line 232
    return-object v0

    .line 218
    .end local v0    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 226
    .local v0, "ex":Ljava/lang/NumberFormatException;
    :try_start_1
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/icu/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 227
    :catch_1
    move-exception v1

    .line 228
    .local v1, "ex2":Ljava/lang/RuntimeException;
    const-string v2, "en"

    invoke-static {v2}, Landroid/icu/util/ULocale;->forLanguageTag(Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object v2

    invoke-static {v2}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/icu/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public formatToParts(D)Ljava/text/AttributedCharacterIterator;
    .locals 5
    .param p1, "n"    # D

    .line 294
    const-string v0, "en"

    :try_start_0
    iget-object v1, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mFinalFormat:Ljava/text/Format;

    instance-of v1, v1, Landroid/icu/text/MeasureFormat;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mMeasureUnit:Landroid/icu/util/MeasureUnit;

    if-eqz v1, :cond_0

    .line 295
    iget-object v1, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mFinalFormat:Ljava/text/Format;

    new-instance v2, Landroid/icu/util/Measure;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mMeasureUnit:Landroid/icu/util/MeasureUnit;

    invoke-direct {v2, v3, v4}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v1, v2}, Ljava/text/Format;->formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    .local v0, "iterator":Ljava/text/AttributedCharacterIterator;
    goto :goto_0

    .line 297
    .end local v0    # "iterator":Ljava/text/AttributedCharacterIterator;
    :cond_0
    iget-object v1, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mFinalFormat:Ljava/text/Format;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/Format;->formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    .restart local v0    # "iterator":Ljava/text/AttributedCharacterIterator;
    :goto_0
    nop

    .line 317
    return-object v0

    .line 311
    .end local v0    # "iterator":Ljava/text/AttributedCharacterIterator;
    :catch_0
    move-exception v1

    .line 314
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/icu/util/ULocale;->forLanguageTag(Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/icu/text/NumberFormat;->formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    return-object v0

    .line 299
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 307
    .local v1, "ex":Ljava/lang/NumberFormatException;
    :try_start_1
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v2

    invoke-static {v2}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/icu/text/NumberFormat;->formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v0

    .line 308
    :catch_2
    move-exception v2

    .line 309
    .local v2, "ex2":Ljava/lang/RuntimeException;
    invoke-static {v0}, Landroid/icu/util/ULocale;->forLanguageTag(Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/icu/text/NumberFormat;->formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableLocales()[Ljava/lang/String;
    .locals 6

    .line 392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 404
    .local v0, "availableLocaleIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Landroid/icu/util/ULocale;->getAvailableLocales()[Landroid/icu/util/ULocale;

    move-result-object v1

    .line 406
    .local v1, "availableLocales":[Landroid/icu/util/ULocale;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 407
    .local v4, "locale":Landroid/icu/util/ULocale;
    invoke-virtual {v4}, Landroid/icu/util/ULocale;->toLanguageTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    .end local v4    # "locale":Landroid/icu/util/ULocale;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 410
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 411
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 418
    .local p1, "localeObject":Lcom/facebook/hermes/intl/ILocaleObject;, "Lcom/facebook/hermes/intl/ILocaleObject<*>;"
    invoke-interface {p1}, Lcom/facebook/hermes/intl/ILocaleObject;->getLocale()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/ULocale;

    invoke-static {v0}, Landroid/icu/text/NumberingSystem;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberingSystem;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/NumberingSystem;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setCurrency(Ljava/lang/String;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencyDisplay;)Lcom/facebook/hermes/intl/IPlatformNumberFormatter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->setCurrency(Ljava/lang/String;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencyDisplay;)Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;

    move-result-object p1

    return-object p1
.end method

.method public setCurrency(Ljava/lang/String;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencyDisplay;)Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;
    .locals 4
    .param p1, "currencyCode"    # Ljava/lang/String;
    .param p2, "currencyDisplay"    # Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencyDisplay;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mStyle:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    sget-object v1, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;->CURRENCY:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    if-ne v0, v1, :cond_1

    .line 67
    invoke-static {p1}, Landroid/icu/util/Currency;->getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;

    move-result-object v0

    .line 68
    .local v0, "currency":Landroid/icu/util/Currency;
    iget-object v1, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mNumberFormat:Landroid/icu/text/NumberFormat;

    invoke-virtual {v1, v0}, Landroid/icu/text/NumberFormat;->setCurrency(Landroid/icu/util/Currency;)V

    .line 71
    sget-object v1, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencyDisplay;->CODE:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencyDisplay;

    if-ne p2, v1, :cond_0

    move-object v1, p1

    .local v1, "currencySymbol":Ljava/lang/String;
    goto :goto_0

    .line 73
    .end local v1    # "currencySymbol":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mLocaleObject:Lcom/facebook/hermes/intl/LocaleObjectICU;

    .line 74
    invoke-virtual {v1}, Lcom/facebook/hermes/intl/LocaleObjectICU;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {p2}, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencyDisplay;->getNameStyle()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/util/Currency;->getName(Landroid/icu/util/ULocale;I[Z)Ljava/lang/String;

    move-result-object v1

    .line 76
    .restart local v1    # "currencySymbol":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mNumberFormat:Landroid/icu/text/NumberFormat;

    instance-of v2, v2, Landroid/icu/text/DecimalFormat;

    if-eqz v2, :cond_1

    .line 77
    iget-object v2, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mNumberFormat:Landroid/icu/text/NumberFormat;

    check-cast v2, Landroid/icu/text/DecimalFormat;

    .line 79
    .local v2, "decimalFormat":Landroid/icu/text/DecimalFormat;
    invoke-virtual {v2}, Landroid/icu/text/DecimalFormat;->getDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v3

    .line 80
    .local v3, "symbols":Landroid/icu/text/DecimalFormatSymbols;
    invoke-virtual {v3, v1}, Landroid/icu/text/DecimalFormatSymbols;->setCurrencySymbol(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v2, v3}, Landroid/icu/text/DecimalFormat;->setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V

    .line 85
    .end local v0    # "currency":Landroid/icu/util/Currency;
    .end local v1    # "currencySymbol":Ljava/lang/String;
    .end local v2    # "decimalFormat":Landroid/icu/text/DecimalFormat;
    .end local v3    # "symbols":Landroid/icu/text/DecimalFormatSymbols;
    :cond_1
    return-object p0
.end method

.method public bridge synthetic setFractionDigits(Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;II)Lcom/facebook/hermes/intl/IPlatformNumberFormatter;
    .locals 0

    .line 37
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->setFractionDigits(Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;II)Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;

    move-result-object p1

    return-object p1
.end method

.method public setFractionDigits(Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;II)Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;
    .locals 2
    .param p1, "roundingType"    # Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;
    .param p2, "minimumFractionDigits"    # I
    .param p3, "maximumFractionDigits"    # I

    .line 137
    sget-object v0, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;->FRACTION_DIGITS:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;

    if-ne p1, v0, :cond_2

    .line 138
    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mNumberFormat:Landroid/icu/text/NumberFormat;

    invoke-virtual {v0, p2}, Landroid/icu/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 140
    :cond_0
    if-ltz p3, :cond_1

    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mNumberFormat:Landroid/icu/text/NumberFormat;

    invoke-virtual {v0, p3}, Landroid/icu/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mNumberFormat:Landroid/icu/text/NumberFormat;

    instance-of v0, v0, Landroid/icu/text/DecimalFormat;

    if-eqz v0, :cond_2

    .line 143
    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mNumberFormat:Landroid/icu/text/NumberFormat;

    check-cast v0, Landroid/icu/text/DecimalFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setSignificantDigitsUsed(Z)V

    .line 147
    :cond_2
    return-object p0
.end method

.method public bridge synthetic setGrouping(Z)Lcom/facebook/hermes/intl/IPlatformNumberFormatter;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->setGrouping(Z)Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;

    move-result-object p1

    return-object p1
.end method

.method public setGrouping(Z)Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;
    .locals 1
    .param p1, "mGroupingUsed"    # Z

    .line 91
    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mNumberFormat:Landroid/icu/text/NumberFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/NumberFormat;->setGroupingUsed(Z)V

    .line 92
    return-object p0
.end method

.method public bridge synthetic setMinIntergerDigits(I)Lcom/facebook/hermes/intl/IPlatformNumberFormatter;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->setMinIntergerDigits(I)Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;

    move-result-object p1

    return-object p1
.end method

.method public setMinIntergerDigits(I)Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;
    .locals 1
    .param p1, "minimumIntegerDigits"    # I

    .line 98
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mNumberFormat:Landroid/icu/text/NumberFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 100
    :cond_0
    return-object p0
.end method

.method public bridge synthetic setSignDisplay(Lcom/facebook/hermes/intl/IPlatformNumberFormatter$SignDisplay;)Lcom/facebook/hermes/intl/IPlatformNumberFormatter;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->setSignDisplay(Lcom/facebook/hermes/intl/IPlatformNumberFormatter$SignDisplay;)Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;

    move-result-object p1

    return-object p1
.end method

.method public setSignDisplay(Lcom/facebook/hermes/intl/IPlatformNumberFormatter$SignDisplay;)Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;
    .locals 7
    .param p1, "signDisplay"    # Lcom/facebook/hermes/intl/IPlatformNumberFormatter$SignDisplay;

    .line 154
    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mNumberFormat:Landroid/icu/text/NumberFormat;

    instance-of v0, v0, Landroid/icu/text/DecimalFormat;

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mNumberFormat:Landroid/icu/text/NumberFormat;

    check-cast v0, Landroid/icu/text/DecimalFormat;

    .line 156
    .local v0, "decimalFormat":Landroid/icu/text/DecimalFormat;
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v1

    .line 158
    .local v1, "symbols":Landroid/icu/text/DecimalFormatSymbols;
    sget-object v2, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformNumberFormatter$SignDisplay:[I

    invoke-virtual {p1}, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$SignDisplay;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 169
    :pswitch_0
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    .line 170
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getPlusSign()C

    move-result v5

    new-array v6, v4, [C

    aput-char v5, v6, v3

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v2}, Landroid/icu/text/DecimalFormat;->setPositivePrefix(Ljava/lang/String;)V

    .line 172
    :cond_0
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 173
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getPlusSign()C

    move-result v5

    new-array v4, v4, [C

    aput-char v5, v4, v3

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v2}, Landroid/icu/text/DecimalFormat;->setPositiveSuffix(Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :pswitch_1
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/icu/text/DecimalFormat;->setPositivePrefix(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0, v2}, Landroid/icu/text/DecimalFormat;->setPositiveSuffix(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0, v2}, Landroid/icu/text/DecimalFormat;->setNegativePrefix(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0, v2}, Landroid/icu/text/DecimalFormat;->setNegativeSuffix(Ljava/lang/String;)V

    .line 166
    nop

    .line 179
    .end local v0    # "decimalFormat":Landroid/icu/text/DecimalFormat;
    .end local v1    # "symbols":Landroid/icu/text/DecimalFormatSymbols;
    :cond_1
    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic setSignificantDigits(Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;II)Lcom/facebook/hermes/intl/IPlatformNumberFormatter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 37
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->setSignificantDigits(Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;II)Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;

    move-result-object p1

    return-object p1
.end method

.method public setSignificantDigits(Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;II)Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;
    .locals 3
    .param p1, "roundingType"    # Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;
    .param p2, "minimumSignificantDigits"    # I
    .param p3, "maximumSignificantDigits"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mNumberFormat:Landroid/icu/text/NumberFormat;

    instance-of v0, v0, Landroid/icu/text/DecimalFormat;

    if-eqz v0, :cond_3

    .line 111
    sget-object v0, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;->SIGNIFICANT_DIGITS:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;

    if-ne p1, v0, :cond_3

    .line 112
    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mNumberFormat:Landroid/icu/text/NumberFormat;

    check-cast v0, Landroid/icu/text/DecimalFormat;

    .line 114
    .local v0, "decimalFormat":Landroid/icu/text/DecimalFormat;
    if-ltz p2, :cond_0

    .line 115
    invoke-virtual {v0, p2}, Landroid/icu/text/DecimalFormat;->setMinimumSignificantDigits(I)V

    .line 117
    :cond_0
    if-ltz p3, :cond_2

    .line 118
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getMinimumSignificantDigits()I

    move-result v1

    if-lt p3, v1, :cond_1

    .line 121
    invoke-virtual {v0, p3}, Landroid/icu/text/DecimalFormat;->setMaximumSignificantDigits(I)V

    goto :goto_0

    .line 119
    :cond_1
    new-instance v1, Lcom/facebook/hermes/intl/JSRangeErrorException;

    const-string v2, "maximumSignificantDigits should be at least equal to minimumSignificantDigits"

    invoke-direct {v1, v2}, Lcom/facebook/hermes/intl/JSRangeErrorException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 124
    :cond_2
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setSignificantDigitsUsed(Z)V

    .line 128
    .end local v0    # "decimalFormat":Landroid/icu/text/DecimalFormat;
    :cond_3
    return-object p0
.end method

.method public bridge synthetic setUnits(Ljava/lang/String;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$UnitDisplay;)Lcom/facebook/hermes/intl/IPlatformNumberFormatter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->setUnits(Ljava/lang/String;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$UnitDisplay;)Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;

    move-result-object p1

    return-object p1
.end method

.method public setUnits(Ljava/lang/String;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$UnitDisplay;)Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;
    .locals 3
    .param p1, "unit"    # Ljava/lang/String;
    .param p2, "unitDisplay"    # Lcom/facebook/hermes/intl/IPlatformNumberFormatter$UnitDisplay;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mStyle:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    sget-object v1, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;->UNIT:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    if-ne v0, v1, :cond_0

    .line 201
    invoke-static {p1}, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->parseUnit(Ljava/lang/String;)Landroid/icu/util/MeasureUnit;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mMeasureUnit:Landroid/icu/util/MeasureUnit;

    .line 202
    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mLocaleObject:Lcom/facebook/hermes/intl/LocaleObjectICU;

    .line 204
    invoke-virtual {v0}, Lcom/facebook/hermes/intl/LocaleObjectICU;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p2}, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$UnitDisplay;->getFormatWidth()Landroid/icu/text/MeasureFormat$FormatWidth;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mNumberFormat:Landroid/icu/text/NumberFormat;

    .line 203
    invoke-static {v0, v1, v2}, Landroid/icu/text/MeasureFormat;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/NumberFormat;)Landroid/icu/text/MeasureFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mFinalFormat:Ljava/text/Format;

    .line 207
    :cond_0
    return-object p0
.end method
