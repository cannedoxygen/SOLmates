.class public Lcom/facebook/hermes/intl/UnicodeExtensionKeys;
.super Ljava/lang/Object;
.source "UnicodeExtensionKeys.java"


# static fields
.field public static CALENDAR:Ljava/lang/String;

.field public static CALENDAR_CANON:Ljava/lang/String;

.field public static COLLATION:Ljava/lang/String;

.field public static COLLATION_CANON:Ljava/lang/String;

.field public static COLLATION_CASEFIRST:Ljava/lang/String;

.field public static COLLATION_CASEFIRST_CANON:Ljava/lang/String;

.field public static COLLATION_NUMERIC:Ljava/lang/String;

.field public static COLLATION_NUMERIC_CANON:Ljava/lang/String;

.field public static HOURCYCLE:Ljava/lang/String;

.field public static HOURCYCLE_CANON:Ljava/lang/String;

.field public static NUMERINGSYSTEM:Ljava/lang/String;

.field public static NUMERINGSYSTEM_CANON:Ljava/lang/String;

.field private static s_calendarAliasMappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static s_canonicalkey_icukey_map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final s_collationAliasMappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static s_icukey_canonicalkey_map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static s_numberSystemAliasMappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static s_validKeywords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-string v0, "calendar"

    sput-object v0, Lcom/facebook/hermes/intl/UnicodeExtensionKeys;->CALENDAR:Ljava/lang/String;

    .line 18
    const-string v0, "ca"

    sput-object v0, Lcom/facebook/hermes/intl/UnicodeExtensionKeys;->CALENDAR_CANON:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, "numbers"

    sput-object v0, Lcom/facebook/hermes/intl/UnicodeExtensionKeys;->NUMERINGSYSTEM:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, "nu"

    sput-object v0, Lcom/facebook/hermes/intl/UnicodeExtensionKeys;->NUMERINGSYSTEM_CANON:Ljava/lang/String;

    .line 23
    const-string v0, "hours"

    sput-object v0, Lcom/facebook/hermes/intl/UnicodeExtensionKeys;->HOURCYCLE:Ljava/lang/String;

    .line 24
    const-string v0, "hc"

    sput-object v0, Lcom/facebook/hermes/intl/UnicodeExtensionKeys;->HOURCYCLE_CANON:Ljava/lang/String;

    .line 26
    const-string v0, "collation"

    sput-object v0, Lcom/facebook/hermes/intl/UnicodeExtensionKeys;->COLLATION:Ljava/lang/String;

    .line 27
    const-string v0, "co"

    sput-object v0, Lcom/facebook/hermes/intl/UnicodeExtensionKeys;->COLLATION_CANON:Ljava/lang/String;

    .line 29
    const-string v0, "colnumeric"

    sput-object v0, Lcom/facebook/hermes/intl/UnicodeExtensionKeys;->COLLATION_NUMERIC:Ljava/lang/String;

    .line 30
    const-string v0, "kn"

    sput-object v0, Lcom/facebook/hermes/intl/UnicodeExtensionKeys;->COLLATION_NUMERIC_CANON:Ljava/lang/String;

    .line 32
    const-string v0, "colcasefirst"

    sput-object v0, Lcom/facebook/hermes/intl/UnicodeExtensionKeys;->COLLATION_CASEFIRST:Ljava/lang/String;

    .line 33
    const-string v0, "kf"

    sput-object v0, Lcom/facebook/hermes/intl/UnicodeExtensionKeys;->COLLATION_CASEFIRST_CANON:Ljava/lang/String;

    .line 40
    new-instance v0, Lcom/facebook/hermes/intl/UnicodeExtensionKeys$1;

    invoke-direct {v0}, Lcom/facebook/hermes/intl/UnicodeExtensionKeys$1;-><init>()V

    sput-object v0, Lcom/facebook/hermes/intl/UnicodeExtensionKeys;->s_canonicalkey_icukey_map:Ljava/util/HashMap;

    .line 52
    new-instance v0, Lcom/facebook/hermes/intl/UnicodeExtensionKeys$2;

    invoke-direct {v0}, Lcom/facebook/hermes/intl/UnicodeExtensionKeys$2;-><init>()V

    sput-object v0, Lcom/facebook/hermes/intl/UnicodeExtensionKeys;->s_icukey_canonicalkey_map:Ljava/util/HashMap;

    .line 76
    new-instance v0, Lcom/facebook/hermes/intl/UnicodeExtensionKeys$3;

    invoke-direct {v0}, Lcom/facebook/hermes/intl/UnicodeExtensionKeys$3;-><init>()V

    sput-object v0, Lcom/facebook/hermes/intl/UnicodeExtensionKeys;->s_collationAliasMappings:Ljava/util/Map;

    .line 94
    new-instance v0, Lcom/facebook/hermes/intl/UnicodeExtensionKeys$4;

    invoke-direct {v0}, Lcom/facebook/hermes/intl/UnicodeExtensionKeys$4;-><init>()V

    sput-object v0, Lcom/facebook/hermes/intl/UnicodeExtensionKeys;->s_calendarAliasMappings:Ljava/util/Map;

    .line 102
    new-instance v0, Lcom/facebook/hermes/intl/UnicodeExtensionKeys$5;

    invoke-direct {v0}, Lcom/facebook/hermes/intl/UnicodeExtensionKeys$5;-><init>()V

    sput-object v0, Lcom/facebook/hermes/intl/UnicodeExtensionKeys;->s_numberSystemAliasMappings:Ljava/util/Map;

    .line 126
    new-instance v0, Lcom/facebook/hermes/intl/UnicodeExtensionKeys$6;

    invoke-direct {v0}, Lcom/facebook/hermes/intl/UnicodeExtensionKeys$6;-><init>()V

    sput-object v0, Lcom/facebook/hermes/intl/UnicodeExtensionKeys;->s_validKeywords:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CanonicalKeyToICUKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .line 66
    sget-object v0, Lcom/facebook/hermes/intl/UnicodeExtensionKeys;->s_canonicalkey_icukey_map:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/hermes/intl/UnicodeExtensionKeys;->s_canonicalkey_icukey_map:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 67
    :cond_0
    return-object p0
.end method

.method public static ICUKeyToCanonicalKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .line 71
    sget-object v0, Lcom/facebook/hermes/intl/UnicodeExtensionKeys;->s_icukey_canonicalkey_map:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/hermes/intl/UnicodeExtensionKeys;->s_icukey_canonicalkey_map:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 72
    :cond_0
    return-object p0
.end method

.method public static isValidKeyword(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/hermes/intl/ILocaleObject;)Z
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "localeObject"    # Lcom/facebook/hermes/intl/ILocaleObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 257
    nop

    .line 259
    invoke-interface {p2}, Lcom/facebook/hermes/intl/ILocaleObject;->getLocale()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/ULocale;

    .line 260
    .local v0, "locale":Landroid/icu/util/ULocale;
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    .line 261
    .local v2, "availableValues":[Ljava/lang/String;
    const-string v3, "co"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 263
    const-string/jumbo v4, "standard"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "search"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    nop

    .line 265
    invoke-static {v3, v0, v1}, Landroid/icu/text/RuleBasedCollator;->getKeywordValuesForLocale(Ljava/lang/String;Landroid/icu/util/ULocale;Z)[Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 263
    :cond_1
    :goto_0
    return v1

    .line 266
    :cond_2
    const-string v3, "ca"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 267
    invoke-static {v3, v0, v1}, Landroid/icu/util/Calendar;->getKeywordValuesForLocale(Ljava/lang/String;Landroid/icu/util/ULocale;Z)[Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 268
    :cond_3
    const-string/jumbo v1, "nu"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 269
    invoke-static {}, Landroid/icu/text/NumberingSystem;->getAvailableNames()[Ljava/lang/String;

    move-result-object v2

    .line 272
    :cond_4
    :goto_1
    array-length v1, v2

    if-nez v1, :cond_5

    .line 273
    const/4 v1, 0x1

    return v1

    .line 276
    :cond_5
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static resolveCalendarAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 111
    sget-object v0, Lcom/facebook/hermes/intl/UnicodeExtensionKeys;->s_calendarAliasMappings:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    return-object p0

    .line 114
    :cond_0
    sget-object v0, Lcom/facebook/hermes/intl/UnicodeExtensionKeys;->s_calendarAliasMappings:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static resolveCollationAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 87
    sget-object v0, Lcom/facebook/hermes/intl/UnicodeExtensionKeys;->s_collationAliasMappings:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    return-object p0

    .line 90
    :cond_0
    sget-object v0, Lcom/facebook/hermes/intl/UnicodeExtensionKeys;->s_collationAliasMappings:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static resolveKnownAliases(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .line 288
    const-string v0, "ca"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/facebook/hermes/intl/JSObjects;->isString(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/hermes/intl/UnicodeExtensionKeys;->resolveCalendarAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 292
    :cond_0
    const-string/jumbo v0, "nu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/facebook/hermes/intl/JSObjects;->isString(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/hermes/intl/UnicodeExtensionKeys;->resolveNumberSystemAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 296
    :cond_1
    const-string v0, "co"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/facebook/hermes/intl/JSObjects;->isString(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 297
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/hermes/intl/UnicodeExtensionKeys;->resolveCollationAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 300
    :cond_2
    const-string v0, "kn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p1}, Lcom/facebook/hermes/intl/JSObjects;->isString(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "yes"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 301
    const-string/jumbo v0, "true"

    invoke-static {v0}, Lcom/facebook/hermes/intl/JSObjects;->newString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 303
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "kf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    invoke-static {p1}, Lcom/facebook/hermes/intl/JSObjects;->isString(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "no"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 304
    const-string v0, "false"

    invoke-static {v0}, Lcom/facebook/hermes/intl/JSObjects;->newString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 306
    :cond_5
    return-object p1
.end method

.method public static resolveNumberSystemAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 119
    sget-object v0, Lcom/facebook/hermes/intl/UnicodeExtensionKeys;->s_numberSystemAliasMappings:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    return-object p0

    .line 122
    :cond_0
    sget-object v0, Lcom/facebook/hermes/intl/UnicodeExtensionKeys;->s_numberSystemAliasMappings:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
