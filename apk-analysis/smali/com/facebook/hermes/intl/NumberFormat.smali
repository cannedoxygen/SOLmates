.class public Lcom/facebook/hermes/intl/NumberFormat;
.super Ljava/lang/Object;
.source "NumberFormat.java"


# static fields
.field private static s_sanctionedSimpleUnitIdentifiers:[Ljava/lang/String;


# instance fields
.field private mGroupingUsed:Z

.field private mPlatformNumberFormatter:Lcom/facebook/hermes/intl/IPlatformNumberFormatter;

.field private mResolvedCompactDisplay:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CompactDisplay;

.field private mResolvedCurrency:Ljava/lang/String;

.field private mResolvedCurrencyDisplay:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencyDisplay;

.field private mResolvedCurrencySign:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencySign;

.field private mResolvedLocaleObject:Lcom/facebook/hermes/intl/ILocaleObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/hermes/intl/ILocaleObject<",
            "*>;"
        }
    .end annotation
.end field

.field private mResolvedLocaleObjectForResolvedOptions:Lcom/facebook/hermes/intl/ILocaleObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/hermes/intl/ILocaleObject<",
            "*>;"
        }
    .end annotation
.end field

.field private mResolvedMaximumFractionDigits:I

.field private mResolvedMaximumSignificantDigits:I

.field private mResolvedMinimumFractionDigits:I

.field private mResolvedMinimumIntegerDigits:I

.field private mResolvedMinimumSignificantDigits:I

.field private mResolvedNotation:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Notation;

.field private mResolvedNumberingSystem:Ljava/lang/String;

.field private mResolvedSignDisplay:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$SignDisplay;

.field private mResolvedStyle:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

.field private mResolvedUnit:Ljava/lang/String;

.field private mResolvedUnitDisplay:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$UnitDisplay;

.field private mRoundingType:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;

.field private mUseDefaultNumberSystem:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 82
    const/16 v0, 0x2b

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "acre"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "bit"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "byte"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "celsius"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "centimeter"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "day"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "degree"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "fahrenheit"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "fluid-ounce"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "foot"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "gallon"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "gigabit"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "gigabyte"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "gram"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "hectare"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "hour"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "inch"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "kilobit"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "kilobyte"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "kilogram"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "kilometer"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "liter"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "megabit"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "megabyte"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "meter"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "mile"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "mile-scandinavian"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "milliliter"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "millimeter"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "millisecond"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "minute"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "month"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "ounce"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "percent"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "petabyte"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string/jumbo v2, "pound"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string/jumbo v2, "second"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string/jumbo v2, "stone"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string/jumbo v2, "terabit"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string/jumbo v2, "terabyte"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string/jumbo v2, "week"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string/jumbo v2, "yard"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string/jumbo v2, "year"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/hermes/intl/NumberFormat;->s_sanctionedSimpleUnitIdentifiers:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 548
    .local p1, "locales":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedCurrency:Ljava/lang/String;

    .line 47
    sget-object v1, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencyDisplay;->SYMBOL:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencyDisplay;

    iput-object v1, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedCurrencyDisplay:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencyDisplay;

    .line 49
    sget-object v1, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencySign;->STANDARD:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencySign;

    iput-object v1, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedCurrencySign:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencySign;

    .line 52
    iput-object v0, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedUnit:Ljava/lang/String;

    .line 55
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/hermes/intl/NumberFormat;->mGroupingUsed:Z

    .line 57
    const/4 v1, -0x1

    iput v1, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedMinimumIntegerDigits:I

    iput v1, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedMinimumFractionDigits:I

    iput v1, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedMaximumFractionDigits:I

    .line 60
    iput v1, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedMinimumSignificantDigits:I

    iput v1, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedMaximumSignificantDigits:I

    .line 64
    sget-object v1, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$SignDisplay;->AUTO:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$SignDisplay;

    iput-object v1, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedSignDisplay:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$SignDisplay;

    .line 70
    iput-object v0, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedNumberingSystem:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedNotation:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Notation;

    .line 75
    iput-object v0, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedLocaleObject:Lcom/facebook/hermes/intl/ILocaleObject;

    .line 79
    iput-object v0, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedLocaleObjectForResolvedOptions:Lcom/facebook/hermes/intl/ILocaleObject;

    .line 549
    nop

    .line 550
    new-instance v0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;

    invoke-direct {v0}, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;-><init>()V

    iput-object v0, p0, Lcom/facebook/hermes/intl/NumberFormat;->mPlatformNumberFormatter:Lcom/facebook/hermes/intl/IPlatformNumberFormatter;

    .line 553
    invoke-direct {p0, p1, p2}, Lcom/facebook/hermes/intl/NumberFormat;->initializeNumberFormat(Ljava/util/List;Ljava/util/Map;)V

    .line 555
    iget-object v1, p0, Lcom/facebook/hermes/intl/NumberFormat;->mPlatformNumberFormatter:Lcom/facebook/hermes/intl/IPlatformNumberFormatter;

    iget-object v2, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedLocaleObject:Lcom/facebook/hermes/intl/ILocaleObject;

    .line 558
    iget-boolean v0, p0, Lcom/facebook/hermes/intl/NumberFormat;->mUseDefaultNumberSystem:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedNumberingSystem:Ljava/lang/String;

    :goto_0
    move-object v3, v0

    iget-object v4, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedStyle:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    iget-object v5, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedCurrencySign:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencySign;

    iget-object v6, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedNotation:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Notation;

    iget-object v7, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedCompactDisplay:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CompactDisplay;

    .line 556
    invoke-interface/range {v1 .. v7}, Lcom/facebook/hermes/intl/IPlatformNumberFormatter;->configure(Lcom/facebook/hermes/intl/ILocaleObject;Ljava/lang/String;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencySign;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Notation;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CompactDisplay;)Lcom/facebook/hermes/intl/IPlatformNumberFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedCurrency:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedCurrencyDisplay:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencyDisplay;

    .line 563
    invoke-interface {v0, v1, v2}, Lcom/facebook/hermes/intl/IPlatformNumberFormatter;->setCurrency(Ljava/lang/String;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencyDisplay;)Lcom/facebook/hermes/intl/IPlatformNumberFormatter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/facebook/hermes/intl/NumberFormat;->mGroupingUsed:Z

    .line 564
    invoke-interface {v0, v1}, Lcom/facebook/hermes/intl/IPlatformNumberFormatter;->setGrouping(Z)Lcom/facebook/hermes/intl/IPlatformNumberFormatter;

    move-result-object v0

    iget v1, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedMinimumIntegerDigits:I

    .line 565
    invoke-interface {v0, v1}, Lcom/facebook/hermes/intl/IPlatformNumberFormatter;->setMinIntergerDigits(I)Lcom/facebook/hermes/intl/IPlatformNumberFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/hermes/intl/NumberFormat;->mRoundingType:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;

    iget v2, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedMinimumSignificantDigits:I

    iget v3, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedMaximumSignificantDigits:I

    .line 566
    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/hermes/intl/IPlatformNumberFormatter;->setSignificantDigits(Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;II)Lcom/facebook/hermes/intl/IPlatformNumberFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/hermes/intl/NumberFormat;->mRoundingType:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;

    iget v2, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedMinimumFractionDigits:I

    iget v3, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedMaximumFractionDigits:I

    .line 568
    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/hermes/intl/IPlatformNumberFormatter;->setFractionDigits(Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;II)Lcom/facebook/hermes/intl/IPlatformNumberFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedSignDisplay:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$SignDisplay;

    .line 570
    invoke-interface {v0, v1}, Lcom/facebook/hermes/intl/IPlatformNumberFormatter;->setSignDisplay(Lcom/facebook/hermes/intl/IPlatformNumberFormatter$SignDisplay;)Lcom/facebook/hermes/intl/IPlatformNumberFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedUnit:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedUnitDisplay:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$UnitDisplay;

    .line 571
    invoke-interface {v0, v1, v2}, Lcom/facebook/hermes/intl/IPlatformNumberFormatter;->setUnits(Ljava/lang/String;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$UnitDisplay;)Lcom/facebook/hermes/intl/IPlatformNumberFormatter;

    .line 572
    return-void
.end method

.method private initializeNumberFormat(Ljava/util/List;Ljava/util/Map;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 427
    .local p1, "locales":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {}, Lcom/facebook/hermes/intl/JSObjects;->newObject()Ljava/lang/Object;

    move-result-object v2

    .line 429
    .local v2, "opt":Ljava/lang/Object;
    sget-object v3, Lcom/facebook/hermes/intl/OptionHelpers$OptionType;->STRING:Lcom/facebook/hermes/intl/OptionHelpers$OptionType;

    sget-object v4, Lcom/facebook/hermes/intl/Constants;->LOCALEMATCHER_POSSIBLE_VALUES:[Ljava/lang/String;

    .line 430
    const-string v5, "localeMatcher"

    const-string v6, "best fit"

    invoke-static {v1, v5, v3, v4, v6}, Lcom/facebook/hermes/intl/OptionHelpers;->GetOption(Ljava/lang/Object;Ljava/lang/String;Lcom/facebook/hermes/intl/OptionHelpers$OptionType;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 436
    .local v3, "matcher":Ljava/lang/Object;
    invoke-static {v2, v5, v3}, Lcom/facebook/hermes/intl/JSObjects;->Put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 438
    sget-object v4, Lcom/facebook/hermes/intl/OptionHelpers$OptionType;->STRING:Lcom/facebook/hermes/intl/OptionHelpers$OptionType;

    .line 443
    invoke-static {}, Lcom/facebook/hermes/intl/JSObjects;->Undefined()Ljava/lang/Object;

    move-result-object v5

    .line 444
    invoke-static {}, Lcom/facebook/hermes/intl/JSObjects;->Undefined()Ljava/lang/Object;

    move-result-object v6

    .line 439
    const-string/jumbo v7, "numberingSystem"

    invoke-static {v1, v7, v4, v5, v6}, Lcom/facebook/hermes/intl/OptionHelpers;->GetOption(Ljava/lang/Object;Ljava/lang/String;Lcom/facebook/hermes/intl/OptionHelpers$OptionType;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 445
    .local v4, "numberingSystem":Ljava/lang/Object;
    invoke-static {v4}, Lcom/facebook/hermes/intl/JSObjects;->isUndefined(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 446
    invoke-static {v4}, Lcom/facebook/hermes/intl/JSObjects;->getJavaString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/facebook/hermes/intl/NumberFormat;->isLocaleIdType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 447
    :cond_0
    new-instance v5, Lcom/facebook/hermes/intl/JSRangeErrorException;

    const-string v6, "Invalid numbering system !"

    invoke-direct {v5, v6}, Lcom/facebook/hermes/intl/JSRangeErrorException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 449
    :cond_1
    :goto_0
    const-string/jumbo v5, "nu"

    invoke-static {v2, v5, v4}, Lcom/facebook/hermes/intl/JSObjects;->Put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 453
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 455
    .local v6, "relevantExtensionKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v7, p1

    invoke-static {v7, v2, v6}, Lcom/facebook/hermes/intl/LocaleResolver;->resolveLocale(Ljava/util/List;Ljava/lang/Object;Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v8

    .line 457
    .local v8, "r":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {v8}, Lcom/facebook/hermes/intl/JSObjects;->getJavaMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v9

    const-string v10, "locale"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/facebook/hermes/intl/ILocaleObject;

    iput-object v9, v0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedLocaleObject:Lcom/facebook/hermes/intl/ILocaleObject;

    .line 458
    iget-object v9, v0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedLocaleObject:Lcom/facebook/hermes/intl/ILocaleObject;

    invoke-interface {v9}, Lcom/facebook/hermes/intl/ILocaleObject;->cloneObject()Lcom/facebook/hermes/intl/ILocaleObject;

    move-result-object v9

    iput-object v9, v0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedLocaleObjectForResolvedOptions:Lcom/facebook/hermes/intl/ILocaleObject;

    .line 460
    invoke-static {v8, v5}, Lcom/facebook/hermes/intl/JSObjects;->Get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 461
    .local v5, "numeringSystemResolved":Ljava/lang/Object;
    invoke-static {v5}, Lcom/facebook/hermes/intl/JSObjects;->isNull(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v9, :cond_2

    .line 462
    iput-boolean v10, v0, Lcom/facebook/hermes/intl/NumberFormat;->mUseDefaultNumberSystem:Z

    .line 463
    invoke-static {v5}, Lcom/facebook/hermes/intl/JSObjects;->getJavaString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedNumberingSystem:Ljava/lang/String;

    goto :goto_1

    .line 465
    :cond_2
    iput-boolean v11, v0, Lcom/facebook/hermes/intl/NumberFormat;->mUseDefaultNumberSystem:Z

    .line 466
    iget-object v9, v0, Lcom/facebook/hermes/intl/NumberFormat;->mPlatformNumberFormatter:Lcom/facebook/hermes/intl/IPlatformNumberFormatter;

    iget-object v12, v0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedLocaleObject:Lcom/facebook/hermes/intl/ILocaleObject;

    .line 467
    invoke-interface {v9, v12}, Lcom/facebook/hermes/intl/IPlatformNumberFormatter;->getDefaultNumberingSystem(Lcom/facebook/hermes/intl/ILocaleObject;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedNumberingSystem:Ljava/lang/String;

    .line 471
    :goto_1
    invoke-direct {v0, v1}, Lcom/facebook/hermes/intl/NumberFormat;->setNumberFormatUnitOptions(Ljava/util/Map;)V

    .line 476
    iget-object v9, v0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedStyle:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    sget-object v12, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;->CURRENCY:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    if-ne v9, v12, :cond_3

    .line 480
    nop

    .line 481
    iget-object v9, v0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedCurrency:Ljava/lang/String;

    invoke-static {v9}, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->getCurrencyDigits(Ljava/lang/String;)I

    move-result v9

    .line 486
    .local v9, "cDigits":I
    int-to-double v12, v9

    invoke-static {v12, v13}, Lcom/facebook/hermes/intl/JSObjects;->newNumber(D)Ljava/lang/Object;

    move-result-object v12

    .line 487
    .local v12, "mnfdDefault":Ljava/lang/Object;
    int-to-double v13, v9

    invoke-static {v13, v14}, Lcom/facebook/hermes/intl/JSObjects;->newNumber(D)Ljava/lang/Object;

    move-result-object v9

    .line 488
    .local v9, "mxfdDefault":Ljava/lang/Object;
    goto :goto_2

    .line 489
    .end local v9    # "mxfdDefault":Ljava/lang/Object;
    .end local v12    # "mnfdDefault":Ljava/lang/Object;
    :cond_3
    const-wide/16 v12, 0x0

    invoke-static {v12, v13}, Lcom/facebook/hermes/intl/JSObjects;->newNumber(D)Ljava/lang/Object;

    move-result-object v9

    .line 491
    .local v9, "mnfdDefault":Ljava/lang/Object;
    iget-object v14, v0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedStyle:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    sget-object v15, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;->PERCENT:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    if-ne v14, v15, :cond_4

    invoke-static {v12, v13}, Lcom/facebook/hermes/intl/JSObjects;->newNumber(D)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v22, v12

    move-object v12, v9

    move-object/from16 v9, v22

    .local v12, "mxfdDefault":Ljava/lang/Object;
    goto :goto_2

    .line 492
    .end local v12    # "mxfdDefault":Ljava/lang/Object;
    :cond_4
    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    invoke-static {v12, v13}, Lcom/facebook/hermes/intl/JSObjects;->newNumber(D)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v22, v12

    move-object v12, v9

    move-object/from16 v9, v22

    .line 496
    .local v9, "mxfdDefault":Ljava/lang/Object;
    .local v12, "mnfdDefault":Ljava/lang/Object;
    :goto_2
    sget-object v13, Lcom/facebook/hermes/intl/OptionHelpers$OptionType;->STRING:Lcom/facebook/hermes/intl/OptionHelpers$OptionType;

    const/4 v14, 0x4

    new-array v15, v14, [Ljava/lang/String;

    const-string/jumbo v14, "standard"

    aput-object v14, v15, v10

    const-string/jumbo v17, "scientific"

    aput-object v17, v15, v11

    const-string v17, "engineering"

    const/4 v11, 0x2

    aput-object v17, v15, v11

    const-string v17, "compact"

    const/16 v19, 0x3

    aput-object v17, v15, v19

    .line 497
    const-string/jumbo v10, "notation"

    invoke-static {v1, v10, v13, v15, v14}, Lcom/facebook/hermes/intl/OptionHelpers;->GetOption(Ljava/lang/Object;Ljava/lang/String;Lcom/facebook/hermes/intl/OptionHelpers$OptionType;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 503
    .local v10, "notation":Ljava/lang/Object;
    const-class v13, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Notation;

    .line 505
    invoke-static {v10}, Lcom/facebook/hermes/intl/JSObjects;->getJavaString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 504
    invoke-static {v13, v14}, Lcom/facebook/hermes/intl/OptionHelpers;->searchEnum(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v13

    check-cast v13, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Notation;

    iput-object v13, v0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedNotation:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Notation;

    .line 508
    invoke-direct {v0, v1, v12, v9}, Lcom/facebook/hermes/intl/NumberFormat;->setNumberFormatDigitOptions(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 511
    sget-object v13, Lcom/facebook/hermes/intl/OptionHelpers$OptionType;->STRING:Lcom/facebook/hermes/intl/OptionHelpers$OptionType;

    new-array v14, v11, [Ljava/lang/String;

    const-string/jumbo v15, "short"

    const/16 v17, 0x0

    aput-object v15, v14, v17

    const-string v20, "long"

    const/16 v18, 0x1

    aput-object v20, v14, v18

    .line 512
    const-string v11, "compactDisplay"

    invoke-static {v1, v11, v13, v14, v15}, Lcom/facebook/hermes/intl/OptionHelpers;->GetOption(Ljava/lang/Object;Ljava/lang/String;Lcom/facebook/hermes/intl/OptionHelpers$OptionType;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 518
    .local v11, "compactDisplay":Ljava/lang/Object;
    iget-object v13, v0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedNotation:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Notation;

    sget-object v14, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Notation;->COMPACT:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Notation;

    if-ne v13, v14, :cond_5

    .line 519
    const-class v13, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CompactDisplay;

    .line 522
    invoke-static {v11}, Lcom/facebook/hermes/intl/JSObjects;->getJavaString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 520
    invoke-static {v13, v14}, Lcom/facebook/hermes/intl/OptionHelpers;->searchEnum(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v13

    check-cast v13, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CompactDisplay;

    iput-object v13, v0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedCompactDisplay:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CompactDisplay;

    .line 525
    :cond_5
    sget-object v13, Lcom/facebook/hermes/intl/OptionHelpers$OptionType;->BOOLEAN:Lcom/facebook/hermes/intl/OptionHelpers$OptionType;

    .line 530
    invoke-static {}, Lcom/facebook/hermes/intl/JSObjects;->Undefined()Ljava/lang/Object;

    move-result-object v14

    .line 531
    move-object/from16 v21, v2

    const/4 v15, 0x1

    .end local v2    # "opt":Ljava/lang/Object;
    .local v21, "opt":Ljava/lang/Object;
    invoke-static {v15}, Lcom/facebook/hermes/intl/JSObjects;->newBoolean(Z)Ljava/lang/Object;

    move-result-object v2

    .line 526
    const-string/jumbo v15, "useGrouping"

    invoke-static {v1, v15, v13, v14, v2}, Lcom/facebook/hermes/intl/OptionHelpers;->GetOption(Ljava/lang/Object;Ljava/lang/String;Lcom/facebook/hermes/intl/OptionHelpers$OptionType;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 532
    .local v2, "groupingUsed":Ljava/lang/Object;
    invoke-static {v2}, Lcom/facebook/hermes/intl/JSObjects;->getJavaBoolean(Ljava/lang/Object;)Z

    move-result v13

    iput-boolean v13, v0, Lcom/facebook/hermes/intl/NumberFormat;->mGroupingUsed:Z

    .line 534
    sget-object v13, Lcom/facebook/hermes/intl/OptionHelpers$OptionType;->STRING:Lcom/facebook/hermes/intl/OptionHelpers$OptionType;

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/String;

    const-string v15, "auto"

    const/16 v16, 0x0

    aput-object v15, v14, v16

    const-string v16, "never"

    const/16 v17, 0x1

    aput-object v16, v14, v17

    const-string v16, "always"

    const/16 v17, 0x2

    aput-object v16, v14, v17

    const-string v16, "exceptZero"

    aput-object v16, v14, v19

    .line 535
    move-object/from16 v16, v2

    .end local v2    # "groupingUsed":Ljava/lang/Object;
    .local v16, "groupingUsed":Ljava/lang/Object;
    const-string/jumbo v2, "signDisplay"

    invoke-static {v1, v2, v13, v14, v15}, Lcom/facebook/hermes/intl/OptionHelpers;->GetOption(Ljava/lang/Object;Ljava/lang/String;Lcom/facebook/hermes/intl/OptionHelpers$OptionType;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 541
    .local v2, "signDisplay":Ljava/lang/Object;
    const-class v13, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$SignDisplay;

    .line 543
    invoke-static {v2}, Lcom/facebook/hermes/intl/JSObjects;->getJavaString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 542
    invoke-static {v13, v14}, Lcom/facebook/hermes/intl/OptionHelpers;->searchEnum(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v13

    check-cast v13, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$SignDisplay;

    iput-object v13, v0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedSignDisplay:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$SignDisplay;

    .line 544
    return-void
.end method

.method private isLocaleIdType(Ljava/lang/String;)Z
    .locals 2
    .param p1, "token"    # Ljava/lang/String;

    .line 421
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/facebook/hermes/intl/IntlTextUtils;->isUnicodeExtensionKeyTypeItem(Ljava/lang/CharSequence;II)Z

    move-result v0

    return v0
.end method

.method private isSanctionedSimpleUnitIdentifier(Ljava/lang/String;)Z
    .locals 1
    .param p1, "unitIdentifier"    # Ljava/lang/String;

    .line 129
    sget-object v0, Lcom/facebook/hermes/intl/NumberFormat;->s_sanctionedSimpleUnitIdentifiers:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isWellFormedCurrencyCode(Ljava/lang/String;)Z
    .locals 2
    .param p1, "currencyCode"    # Ljava/lang/String;

    .line 175
    invoke-direct {p0, p1}, Lcom/facebook/hermes/intl/NumberFormat;->normalizeCurrencyCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "normalized":Ljava/lang/String;
    const-string v1, "^[A-Z][A-Z][A-Z]$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private isWellFormedUnitIdentifier(Ljava/lang/String;)Z
    .locals 7
    .param p1, "unitIdentifier"    # Ljava/lang/String;

    .line 134
    invoke-direct {p0, p1}, Lcom/facebook/hermes/intl/NumberFormat;->isSanctionedSimpleUnitIdentifier(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 136
    :cond_0
    const-string v0, "-per-"

    .line 137
    .local v0, "per":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 140
    .local v2, "indexOfPer":I
    const/4 v3, 0x0

    if-gez v2, :cond_1

    return v3

    .line 142
    :cond_1
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-ltz v4, :cond_2

    return v3

    .line 145
    :cond_2
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 146
    .local v4, "numerator":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/facebook/hermes/intl/NumberFormat;->isSanctionedSimpleUnitIdentifier(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    return v3

    .line 149
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 150
    .local v5, "denominator":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/facebook/hermes/intl/NumberFormat;->isSanctionedSimpleUnitIdentifier(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    return v3

    .line 153
    :cond_4
    return v1
.end method

.method private normalizeCurrencyCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "currencyCode"    # Ljava/lang/String;

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 160
    .local v0, "normalized":Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    .line 161
    .local v1, "offset":I
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 162
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 163
    .local v3, "c":C
    const/16 v4, 0x61

    if-lt v3, v4, :cond_0

    const/16 v4, 0x7a

    if-gt v3, v4, :cond_0

    .line 164
    sub-int v4, v3, v1

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 166
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    .end local v3    # "c":C
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 170
    .end local v2    # "idx":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private setNumberFormatDigitOptions(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 17
    .param p2, "mnfdDefault"    # Ljava/lang/Object;
    .param p3, "mxfdDefault"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 291
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 295
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3}, Lcom/facebook/hermes/intl/JSObjects;->newNumber(D)Ljava/lang/Object;

    move-result-object v4

    .line 296
    const-wide/high16 v5, 0x4035000000000000L    # 21.0

    invoke-static {v5, v6}, Lcom/facebook/hermes/intl/JSObjects;->newNumber(D)Ljava/lang/Object;

    move-result-object v7

    .line 297
    invoke-static {v2, v3}, Lcom/facebook/hermes/intl/JSObjects;->newNumber(D)Ljava/lang/Object;

    move-result-object v8

    .line 292
    const-string v9, "minimumIntegerDigits"

    invoke-static {v1, v9, v4, v7, v8}, Lcom/facebook/hermes/intl/OptionHelpers;->GetNumberOption(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 300
    .local v4, "mnid":Ljava/lang/Object;
    const-string v7, "minimumFractionDigits"

    invoke-static {v1, v7}, Lcom/facebook/hermes/intl/JSObjects;->Get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 302
    .local v8, "mnfd":Ljava/lang/Object;
    const-string v9, "maximumFractionDigits"

    invoke-static {v1, v9}, Lcom/facebook/hermes/intl/JSObjects;->Get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 305
    .local v10, "mxfd":Ljava/lang/Object;
    const-string v11, "minimumSignificantDigits"

    invoke-static {v1, v11}, Lcom/facebook/hermes/intl/JSObjects;->Get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 307
    .local v12, "mnsd":Ljava/lang/Object;
    const-string v13, "maximumSignificantDigits"

    invoke-static {v1, v13}, Lcom/facebook/hermes/intl/JSObjects;->Get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 310
    .local v14, "mxsd":Ljava/lang/Object;
    invoke-static {v4}, Lcom/facebook/hermes/intl/JSObjects;->getJavaDouble(Ljava/lang/Object;)D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    iput v5, v0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedMinimumIntegerDigits:I

    .line 313
    invoke-static {v12}, Lcom/facebook/hermes/intl/JSObjects;->isUndefined(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {v14}, Lcom/facebook/hermes/intl/JSObjects;->isUndefined(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_2

    .line 341
    :cond_0
    invoke-static {v8}, Lcom/facebook/hermes/intl/JSObjects;->isUndefined(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v10}, Lcom/facebook/hermes/intl/JSObjects;->isUndefined(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 389
    :cond_1
    iget-object v2, v0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedNotation:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Notation;

    sget-object v3, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Notation;->COMPACT:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Notation;

    if-ne v2, v3, :cond_2

    .line 391
    sget-object v2, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;->COMPACT_ROUNDING:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;

    iput-object v2, v0, Lcom/facebook/hermes/intl/NumberFormat;->mRoundingType:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;

    goto/16 :goto_3

    .line 392
    :cond_2
    iget-object v2, v0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedNotation:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Notation;

    sget-object v3, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Notation;->ENGINEERING:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Notation;

    if-ne v2, v3, :cond_3

    .line 406
    sget-object v2, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;->FRACTION_DIGITS:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;

    iput-object v2, v0, Lcom/facebook/hermes/intl/NumberFormat;->mRoundingType:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;

    .line 407
    const/4 v2, 0x5

    iput v2, v0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedMaximumFractionDigits:I

    goto/16 :goto_3

    .line 412
    :cond_3
    sget-object v2, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;->FRACTION_DIGITS:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;

    iput-object v2, v0, Lcom/facebook/hermes/intl/NumberFormat;->mRoundingType:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;

    .line 414
    invoke-static/range {p2 .. p2}, Lcom/facebook/hermes/intl/JSObjects;->getJavaDouble(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedMinimumFractionDigits:I

    .line 416
    invoke-static/range {p3 .. p3}, Lcom/facebook/hermes/intl/JSObjects;->getJavaDouble(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedMaximumFractionDigits:I

    goto/16 :goto_3

    .line 344
    :cond_4
    :goto_0
    sget-object v2, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;->FRACTION_DIGITS:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;

    iput-object v2, v0, Lcom/facebook/hermes/intl/NumberFormat;->mRoundingType:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;

    .line 347
    nop

    .line 351
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Lcom/facebook/hermes/intl/JSObjects;->newNumber(D)Ljava/lang/Object;

    move-result-object v5

    .line 352
    const-wide/high16 v15, 0x4034000000000000L    # 20.0

    invoke-static/range {v15 .. v16}, Lcom/facebook/hermes/intl/JSObjects;->newNumber(D)Ljava/lang/Object;

    move-result-object v6

    .line 353
    invoke-static {}, Lcom/facebook/hermes/intl/JSObjects;->Undefined()Ljava/lang/Object;

    move-result-object v11

    .line 348
    invoke-static {v7, v8, v5, v6, v11}, Lcom/facebook/hermes/intl/OptionHelpers;->DefaultNumberOption(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 355
    .end local v8    # "mnfd":Ljava/lang/Object;
    .local v5, "mnfd":Ljava/lang/Object;
    nop

    .line 359
    invoke-static {v2, v3}, Lcom/facebook/hermes/intl/JSObjects;->newNumber(D)Ljava/lang/Object;

    move-result-object v2

    .line 360
    invoke-static/range {v15 .. v16}, Lcom/facebook/hermes/intl/JSObjects;->newNumber(D)Ljava/lang/Object;

    move-result-object v3

    .line 361
    invoke-static {}, Lcom/facebook/hermes/intl/JSObjects;->Undefined()Ljava/lang/Object;

    move-result-object v6

    .line 356
    invoke-static {v9, v10, v2, v3, v6}, Lcom/facebook/hermes/intl/OptionHelpers;->DefaultNumberOption(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 364
    .end local v10    # "mxfd":Ljava/lang/Object;
    .local v2, "mxfd":Ljava/lang/Object;
    invoke-static {v5}, Lcom/facebook/hermes/intl/JSObjects;->isUndefined(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 365
    nop

    .line 367
    invoke-static/range {p2 .. p2}, Lcom/facebook/hermes/intl/JSObjects;->getJavaDouble(Ljava/lang/Object;)D

    move-result-wide v6

    invoke-static {v2}, Lcom/facebook/hermes/intl/JSObjects;->getJavaDouble(Ljava/lang/Object;)D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    .line 366
    invoke-static {v6, v7}, Lcom/facebook/hermes/intl/JSObjects;->newNumber(D)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v2

    move-object v8, v3

    .end local v5    # "mnfd":Ljava/lang/Object;
    .local v3, "mnfd":Ljava/lang/Object;
    goto :goto_1

    .line 369
    .end local v3    # "mnfd":Ljava/lang/Object;
    .restart local v5    # "mnfd":Ljava/lang/Object;
    :cond_5
    invoke-static {v2}, Lcom/facebook/hermes/intl/JSObjects;->isUndefined(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 370
    nop

    .line 372
    invoke-static/range {p3 .. p3}, Lcom/facebook/hermes/intl/JSObjects;->getJavaDouble(Ljava/lang/Object;)D

    move-result-wide v6

    invoke-static {v5}, Lcom/facebook/hermes/intl/JSObjects;->getJavaDouble(Ljava/lang/Object;)D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 371
    invoke-static {v6, v7}, Lcom/facebook/hermes/intl/JSObjects;->newNumber(D)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    move-object v8, v5

    goto :goto_1

    .line 374
    :cond_6
    invoke-static {v5}, Lcom/facebook/hermes/intl/JSObjects;->getJavaDouble(Ljava/lang/Object;)D

    move-result-wide v6

    .line 375
    .local v6, "mnfdValue":D
    invoke-static {v2}, Lcom/facebook/hermes/intl/JSObjects;->getJavaDouble(Ljava/lang/Object;)D

    move-result-wide v8

    .line 377
    .local v8, "mxfdValue":D
    cmpl-double v3, v6, v8

    if-gtz v3, :cond_7

    move-object v10, v2

    move-object v8, v5

    .line 384
    .end local v2    # "mxfd":Ljava/lang/Object;
    .end local v5    # "mnfd":Ljava/lang/Object;
    .end local v6    # "mnfdValue":D
    .local v8, "mnfd":Ljava/lang/Object;
    .restart local v10    # "mxfd":Ljava/lang/Object;
    :goto_1
    invoke-static {v8}, Lcom/facebook/hermes/intl/JSObjects;->getJavaDouble(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedMinimumFractionDigits:I

    .line 386
    invoke-static {v10}, Lcom/facebook/hermes/intl/JSObjects;->getJavaDouble(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedMaximumFractionDigits:I

    goto :goto_3

    .line 378
    .end local v10    # "mxfd":Ljava/lang/Object;
    .restart local v2    # "mxfd":Ljava/lang/Object;
    .restart local v5    # "mnfd":Ljava/lang/Object;
    .restart local v6    # "mnfdValue":D
    .local v8, "mxfdValue":D
    :cond_7
    new-instance v3, Lcom/facebook/hermes/intl/JSRangeErrorException;

    const-string v10, "minimumFractionDigits is greater than maximumFractionDigits"

    invoke-direct {v3, v10}, Lcom/facebook/hermes/intl/JSRangeErrorException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 316
    .end local v2    # "mxfd":Ljava/lang/Object;
    .end local v5    # "mnfd":Ljava/lang/Object;
    .end local v6    # "mnfdValue":D
    .local v8, "mnfd":Ljava/lang/Object;
    .restart local v10    # "mxfd":Ljava/lang/Object;
    :cond_8
    :goto_2
    sget-object v5, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;->SIGNIFICANT_DIGITS:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;

    iput-object v5, v0, Lcom/facebook/hermes/intl/NumberFormat;->mRoundingType:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;

    .line 319
    nop

    .line 323
    invoke-static {v2, v3}, Lcom/facebook/hermes/intl/JSObjects;->newNumber(D)Ljava/lang/Object;

    move-result-object v5

    .line 324
    const-wide/high16 v6, 0x4035000000000000L    # 21.0

    invoke-static {v6, v7}, Lcom/facebook/hermes/intl/JSObjects;->newNumber(D)Ljava/lang/Object;

    move-result-object v9

    .line 325
    invoke-static {v2, v3}, Lcom/facebook/hermes/intl/JSObjects;->newNumber(D)Ljava/lang/Object;

    move-result-object v2

    .line 320
    invoke-static {v11, v12, v5, v9, v2}, Lcom/facebook/hermes/intl/OptionHelpers;->DefaultNumberOption(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 327
    nop

    .line 332
    invoke-static {v6, v7}, Lcom/facebook/hermes/intl/JSObjects;->newNumber(D)Ljava/lang/Object;

    move-result-object v2

    .line 333
    invoke-static {v6, v7}, Lcom/facebook/hermes/intl/JSObjects;->newNumber(D)Ljava/lang/Object;

    move-result-object v3

    .line 328
    invoke-static {v13, v14, v12, v2, v3}, Lcom/facebook/hermes/intl/OptionHelpers;->DefaultNumberOption(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 336
    invoke-static {v12}, Lcom/facebook/hermes/intl/JSObjects;->getJavaDouble(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedMinimumSignificantDigits:I

    .line 338
    invoke-static {v14}, Lcom/facebook/hermes/intl/JSObjects;->getJavaDouble(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedMaximumSignificantDigits:I

    .line 418
    :goto_3
    return-void
.end method

.method private setNumberFormatUnitOptions(Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 184
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lcom/facebook/hermes/intl/OptionHelpers$OptionType;->STRING:Lcom/facebook/hermes/intl/OptionHelpers$OptionType;

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "decimal"

    aput-object v4, v2, v3

    const-string/jumbo v5, "percent"

    const/4 v6, 0x1

    aput-object v5, v2, v6

    const/4 v5, 0x2

    const-string v7, "currency"

    aput-object v7, v2, v5

    const/4 v8, 0x3

    const-string/jumbo v9, "unit"

    aput-object v9, v2, v8

    .line 185
    const-string/jumbo v10, "style"

    invoke-static {p1, v10, v0, v2, v4}, Lcom/facebook/hermes/intl/OptionHelpers;->GetOption(Ljava/lang/Object;Ljava/lang/String;Lcom/facebook/hermes/intl/OptionHelpers$OptionType;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 191
    .local v0, "style":Ljava/lang/Object;
    const-class v2, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    .line 193
    invoke-static {v0}, Lcom/facebook/hermes/intl/JSObjects;->getJavaString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 192
    invoke-static {v2, v4}, Lcom/facebook/hermes/intl/OptionHelpers;->searchEnum(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v2

    check-cast v2, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    iput-object v2, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedStyle:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    .line 196
    sget-object v2, Lcom/facebook/hermes/intl/OptionHelpers$OptionType;->STRING:Lcom/facebook/hermes/intl/OptionHelpers$OptionType;

    .line 201
    invoke-static {}, Lcom/facebook/hermes/intl/JSObjects;->Undefined()Ljava/lang/Object;

    move-result-object v4

    .line 202
    invoke-static {}, Lcom/facebook/hermes/intl/JSObjects;->Undefined()Ljava/lang/Object;

    move-result-object v10

    .line 197
    invoke-static {p1, v7, v2, v4, v10}, Lcom/facebook/hermes/intl/OptionHelpers;->GetOption(Ljava/lang/Object;Ljava/lang/String;Lcom/facebook/hermes/intl/OptionHelpers$OptionType;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 203
    .local v2, "currency":Ljava/lang/Object;
    invoke-static {v2}, Lcom/facebook/hermes/intl/JSObjects;->isUndefined(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 204
    iget-object v4, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedStyle:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    sget-object v7, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;->CURRENCY:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    if-eq v4, v7, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    new-instance v1, Lcom/facebook/hermes/intl/JSRangeErrorException;

    const-string v3, "Expected currency style !"

    invoke-direct {v1, v3}, Lcom/facebook/hermes/intl/JSRangeErrorException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 212
    :cond_1
    invoke-static {v2}, Lcom/facebook/hermes/intl/JSObjects;->getJavaString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/facebook/hermes/intl/NumberFormat;->isWellFormedCurrencyCode(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 218
    :goto_0
    sget-object v4, Lcom/facebook/hermes/intl/OptionHelpers$OptionType;->STRING:Lcom/facebook/hermes/intl/OptionHelpers$OptionType;

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v7, "symbol"

    aput-object v7, v1, v3

    const-string v10, "narrowSymbol"

    aput-object v10, v1, v6

    const-string v10, "code"

    aput-object v10, v1, v5

    const-string v10, "name"

    aput-object v10, v1, v8

    .line 219
    const-string v10, "currencyDisplay"

    invoke-static {p1, v10, v4, v1, v7}, Lcom/facebook/hermes/intl/OptionHelpers;->GetOption(Ljava/lang/Object;Ljava/lang/String;Lcom/facebook/hermes/intl/OptionHelpers$OptionType;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 225
    .local v1, "currencyDisplay":Ljava/lang/Object;
    sget-object v4, Lcom/facebook/hermes/intl/OptionHelpers$OptionType;->STRING:Lcom/facebook/hermes/intl/OptionHelpers$OptionType;

    new-array v7, v5, [Ljava/lang/String;

    const-string v10, "accounting"

    aput-object v10, v7, v3

    const-string/jumbo v10, "standard"

    aput-object v10, v7, v6

    .line 226
    const-string v11, "currencySign"

    invoke-static {p1, v11, v4, v7, v10}, Lcom/facebook/hermes/intl/OptionHelpers;->GetOption(Ljava/lang/Object;Ljava/lang/String;Lcom/facebook/hermes/intl/OptionHelpers$OptionType;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 233
    .local v4, "currencySign":Ljava/lang/Object;
    sget-object v7, Lcom/facebook/hermes/intl/OptionHelpers$OptionType;->STRING:Lcom/facebook/hermes/intl/OptionHelpers$OptionType;

    .line 238
    invoke-static {}, Lcom/facebook/hermes/intl/JSObjects;->Undefined()Ljava/lang/Object;

    move-result-object v10

    .line 239
    invoke-static {}, Lcom/facebook/hermes/intl/JSObjects;->Undefined()Ljava/lang/Object;

    move-result-object v11

    .line 234
    invoke-static {p1, v9, v7, v10, v11}, Lcom/facebook/hermes/intl/OptionHelpers;->GetOption(Ljava/lang/Object;Ljava/lang/String;Lcom/facebook/hermes/intl/OptionHelpers$OptionType;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 240
    .local v7, "unit":Ljava/lang/Object;
    invoke-static {v7}, Lcom/facebook/hermes/intl/JSObjects;->isUndefined(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 245
    iget-object v9, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedStyle:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    sget-object v10, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;->UNIT:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    if-eq v9, v10, :cond_2

    goto :goto_1

    .line 246
    :cond_2
    new-instance v3, Lcom/facebook/hermes/intl/JSRangeErrorException;

    const-string v5, "Expected unit !"

    invoke-direct {v3, v5}, Lcom/facebook/hermes/intl/JSRangeErrorException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 249
    :cond_3
    invoke-static {v7}, Lcom/facebook/hermes/intl/JSObjects;->getJavaString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/facebook/hermes/intl/NumberFormat;->isWellFormedUnitIdentifier(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 255
    :goto_1
    sget-object v9, Lcom/facebook/hermes/intl/OptionHelpers$OptionType;->STRING:Lcom/facebook/hermes/intl/OptionHelpers$OptionType;

    new-array v8, v8, [Ljava/lang/String;

    const-string v10, "long"

    aput-object v10, v8, v3

    const-string/jumbo v3, "short"

    aput-object v3, v8, v6

    const-string v6, "narrow"

    aput-object v6, v8, v5

    .line 256
    const-string/jumbo v5, "unitDisplay"

    invoke-static {p1, v5, v9, v8, v3}, Lcom/facebook/hermes/intl/OptionHelpers;->GetOption(Ljava/lang/Object;Ljava/lang/String;Lcom/facebook/hermes/intl/OptionHelpers$OptionType;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 263
    .local v3, "unitDisplay":Ljava/lang/Object;
    iget-object v5, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedStyle:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    sget-object v6, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;->CURRENCY:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    if-ne v5, v6, :cond_4

    .line 264
    invoke-static {v2}, Lcom/facebook/hermes/intl/JSObjects;->getJavaString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/facebook/hermes/intl/NumberFormat;->normalizeCurrencyCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedCurrency:Ljava/lang/String;

    .line 265
    const-class v5, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencyDisplay;

    .line 268
    invoke-static {v1}, Lcom/facebook/hermes/intl/JSObjects;->getJavaString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 266
    invoke-static {v5, v6}, Lcom/facebook/hermes/intl/OptionHelpers;->searchEnum(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v5

    check-cast v5, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencyDisplay;

    iput-object v5, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedCurrencyDisplay:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencyDisplay;

    .line 269
    const-class v5, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencySign;

    .line 271
    invoke-static {v4}, Lcom/facebook/hermes/intl/JSObjects;->getJavaString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 270
    invoke-static {v5, v6}, Lcom/facebook/hermes/intl/OptionHelpers;->searchEnum(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v5

    check-cast v5, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencySign;

    iput-object v5, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedCurrencySign:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencySign;

    goto :goto_2

    .line 272
    :cond_4
    iget-object v5, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedStyle:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    sget-object v6, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;->UNIT:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    if-ne v5, v6, :cond_5

    .line 273
    invoke-static {v7}, Lcom/facebook/hermes/intl/JSObjects;->getJavaString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedUnit:Ljava/lang/String;

    .line 274
    const-class v5, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$UnitDisplay;

    .line 276
    invoke-static {v3}, Lcom/facebook/hermes/intl/JSObjects;->getJavaString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 275
    invoke-static {v5, v6}, Lcom/facebook/hermes/intl/OptionHelpers;->searchEnum(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v5

    check-cast v5, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$UnitDisplay;

    iput-object v5, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedUnitDisplay:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$UnitDisplay;

    .line 278
    :cond_5
    :goto_2
    return-void

    .line 250
    .end local v3    # "unitDisplay":Ljava/lang/Object;
    :cond_6
    new-instance v3, Lcom/facebook/hermes/intl/JSRangeErrorException;

    const-string v5, "Malformed unit identifier !"

    invoke-direct {v3, v5}, Lcom/facebook/hermes/intl/JSRangeErrorException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 213
    .end local v1    # "currencyDisplay":Ljava/lang/Object;
    .end local v4    # "currencySign":Ljava/lang/Object;
    .end local v7    # "unit":Ljava/lang/Object;
    :cond_7
    new-instance v1, Lcom/facebook/hermes/intl/JSRangeErrorException;

    const-string v3, "Malformed currency code !"

    invoke-direct {v1, v3}, Lcom/facebook/hermes/intl/JSRangeErrorException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static supportedLocalesOf(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 584
    .local p0, "locales":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lcom/facebook/hermes/intl/OptionHelpers$OptionType;->STRING:Lcom/facebook/hermes/intl/OptionHelpers$OptionType;

    sget-object v1, Lcom/facebook/hermes/intl/Constants;->LOCALEMATCHER_POSSIBLE_VALUES:[Ljava/lang/String;

    .line 586
    const-string v2, "localeMatcher"

    const-string v3, "best fit"

    invoke-static {p1, v2, v0, v1, v3}, Lcom/facebook/hermes/intl/OptionHelpers;->GetOption(Ljava/lang/Object;Ljava/lang/String;Lcom/facebook/hermes/intl/OptionHelpers$OptionType;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 585
    invoke-static {v0}, Lcom/facebook/hermes/intl/JSObjects;->getJavaString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 592
    .local v0, "matcher":Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 593
    .local v1, "localeArray":[Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 594
    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-static {v2}, Lcom/facebook/hermes/intl/LocaleMatcher;->bestFitSupportedLocales([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 596
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-static {v2}, Lcom/facebook/hermes/intl/LocaleMatcher;->lookupSupportedLocales([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public format(D)Ljava/lang/String;
    .locals 1
    .param p1, "n"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 659
    iget-object v0, p0, Lcom/facebook/hermes/intl/NumberFormat;->mPlatformNumberFormatter:Lcom/facebook/hermes/intl/IPlatformNumberFormatter;

    invoke-interface {v0, p1, p2}, Lcom/facebook/hermes/intl/IPlatformNumberFormatter;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatToParts(D)Ljava/util/List;
    .locals 9
    .param p1, "n"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 666
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 668
    .local v0, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/facebook/hermes/intl/NumberFormat;->mPlatformNumberFormatter:Lcom/facebook/hermes/intl/IPlatformNumberFormatter;

    invoke-interface {v1, p1, p2}, Lcom/facebook/hermes/intl/IPlatformNumberFormatter;->formatToParts(D)Ljava/text/AttributedCharacterIterator;

    move-result-object v1

    .line 669
    .local v1, "iterator":Ljava/text/AttributedCharacterIterator;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 670
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v1}, Ljava/text/AttributedCharacterIterator;->first()C

    move-result v3

    .local v3, "ch":C
    :goto_0
    const v4, 0xffff

    if-eq v3, v4, :cond_2

    .line 671
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 672
    invoke-interface {v1}, Ljava/text/AttributedCharacterIterator;->getIndex()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v1}, Ljava/text/AttributedCharacterIterator;->getRunLimit()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 673
    nop

    .line 674
    invoke-interface {v1}, Ljava/text/AttributedCharacterIterator;->getAttributes()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 677
    .local v4, "keyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 678
    iget-object v5, p0, Lcom/facebook/hermes/intl/NumberFormat;->mPlatformNumberFormatter:Lcom/facebook/hermes/intl/IPlatformNumberFormatter;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/text/AttributedCharacterIterator$Attribute;

    invoke-interface {v5, v6, p1, p2}, Lcom/facebook/hermes/intl/IPlatformNumberFormatter;->fieldToString(Ljava/text/AttributedCharacterIterator$Attribute;D)Ljava/lang/String;

    move-result-object v5

    .local v5, "key":Ljava/lang/String;
    goto :goto_1

    .line 680
    .end local v5    # "key":Ljava/lang/String;
    :cond_0
    const-string v5, "literal"

    .line 682
    .restart local v5    # "key":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 683
    .local v6, "value":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 685
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 686
    .local v7, "part":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v8, "type"

    invoke-virtual {v7, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    const-string/jumbo v8, "value"

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    .end local v4    # "keyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    .end local v7    # "part":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v1}, Ljava/text/AttributedCharacterIterator;->next()C

    move-result v3

    goto :goto_0

    .line 692
    .end local v3    # "ch":C
    :cond_2
    return-object v0
.end method

.method public resolvedOptions()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 607
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 609
    .local v0, "finalResolvedOptions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedLocaleObjectForResolvedOptions:Lcom/facebook/hermes/intl/ILocaleObject;

    .line 610
    invoke-interface {v1}, Lcom/facebook/hermes/intl/ILocaleObject;->toCanonicalTag()Ljava/lang/String;

    move-result-object v1

    .line 609
    const-string v2, "locale"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    const-string/jumbo v1, "numberingSystem"

    iget-object v2, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedNumberingSystem:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    iget-object v1, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedStyle:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    invoke-virtual {v1}, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "style"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    iget-object v1, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedStyle:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    sget-object v2, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;->CURRENCY:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    if-ne v1, v2, :cond_0

    .line 616
    const-string v1, "currency"

    iget-object v2, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedCurrency:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    iget-object v1, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedCurrencyDisplay:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencyDisplay;

    invoke-virtual {v1}, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencyDisplay;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "currencyDisplay"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    iget-object v1, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedCurrencySign:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencySign;

    invoke-virtual {v1}, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencySign;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "currencySign"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 619
    :cond_0
    iget-object v1, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedStyle:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    sget-object v2, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;->UNIT:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    if-ne v1, v2, :cond_1

    .line 620
    const-string/jumbo v1, "unit"

    iget-object v2, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedUnit:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    iget-object v1, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedUnitDisplay:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$UnitDisplay;

    invoke-virtual {v1}, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$UnitDisplay;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "unitDisplay"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    :cond_1
    :goto_0
    iget v1, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedMinimumIntegerDigits:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 625
    iget v1, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedMinimumIntegerDigits:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "minimumIntegerDigits"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    :cond_2
    iget-object v1, p0, Lcom/facebook/hermes/intl/NumberFormat;->mRoundingType:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;

    sget-object v3, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;->SIGNIFICANT_DIGITS:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;

    if-ne v1, v3, :cond_4

    .line 628
    iget v1, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedMaximumSignificantDigits:I

    if-eq v1, v2, :cond_3

    .line 629
    iget v1, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedMaximumSignificantDigits:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "minimumSignificantDigits"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    :cond_3
    iget v1, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedMinimumSignificantDigits:I

    if-eq v1, v2, :cond_6

    .line 632
    iget v1, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedMinimumSignificantDigits:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "maximumSignificantDigits"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 634
    :cond_4
    iget-object v1, p0, Lcom/facebook/hermes/intl/NumberFormat;->mRoundingType:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;

    sget-object v3, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;->FRACTION_DIGITS:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;

    if-ne v1, v3, :cond_6

    .line 636
    iget v1, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedMinimumFractionDigits:I

    if-eq v1, v2, :cond_5

    .line 637
    iget v1, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedMinimumFractionDigits:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "minimumFractionDigits"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    :cond_5
    iget v1, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedMaximumFractionDigits:I

    if-eq v1, v2, :cond_6

    .line 640
    iget v1, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedMaximumFractionDigits:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "maximumFractionDigits"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    :cond_6
    :goto_1
    iget-boolean v1, p0, Lcom/facebook/hermes/intl/NumberFormat;->mGroupingUsed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "useGrouping"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    iget-object v1, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedNotation:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Notation;

    invoke-virtual {v1}, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Notation;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "notation"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    iget-object v1, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedNotation:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Notation;

    sget-object v2, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Notation;->COMPACT:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Notation;

    if-ne v1, v2, :cond_7

    .line 647
    iget-object v1, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedCompactDisplay:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CompactDisplay;

    invoke-virtual {v1}, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CompactDisplay;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "compactDisplay"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    :cond_7
    iget-object v1, p0, Lcom/facebook/hermes/intl/NumberFormat;->mResolvedSignDisplay:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$SignDisplay;

    invoke-virtual {v1}, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$SignDisplay;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "signDisplay"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    return-object v0
.end method
