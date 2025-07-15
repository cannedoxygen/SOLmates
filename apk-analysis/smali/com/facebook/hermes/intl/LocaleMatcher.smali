.class public Lcom/facebook/hermes/intl/LocaleMatcher;
.super Ljava/lang/Object;
.source "LocaleMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/hermes/intl/LocaleMatcher$LocaleMatchResult;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BestAvailableLocale([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "availableLocales"    # [Ljava/lang/String;
    .param p1, "locale"    # Ljava/lang/String;

    .line 26
    move-object v0, p1

    .line 32
    .local v0, "candidate":Ljava/lang/String;
    :goto_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    return-object v0

    .line 34
    :cond_0
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 35
    .local v1, "pos":I
    if-gez v1, :cond_1

    const-string v2, ""

    return-object v2

    .line 37
    :cond_1
    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    add-int/lit8 v2, v1, -0x2

    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_2

    .line 41
    add-int/lit8 v1, v1, -0x2

    .line 43
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 44
    .end local v1    # "pos":I
    goto :goto_0
.end method

.method public static bestFitBestAvailableLocale(Lcom/facebook/hermes/intl/ILocaleObject;)Landroid/icu/util/ULocale;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/hermes/intl/ILocaleObject<",
            "*>;)",
            "Landroid/icu/util/ULocale;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 114
    .local p0, "requestedLocaleObject":Lcom/facebook/hermes/intl/ILocaleObject;, "Lcom/facebook/hermes/intl/ILocaleObject<*>;"
    invoke-static {}, Landroid/icu/util/ULocale;->getAvailableLocales()[Landroid/icu/util/ULocale;

    move-result-object v0

    .line 116
    .local v0, "availableLocales":[Landroid/icu/util/ULocale;
    nop

    .line 117
    invoke-interface {p0}, Lcom/facebook/hermes/intl/ILocaleObject;->getLocaleWithoutExtensions()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/ULocale;

    .line 118
    .local v1, "requestedULocaleWithoutExtensions":Landroid/icu/util/ULocale;
    const/4 v2, 0x1

    new-array v3, v2, [Landroid/icu/util/ULocale;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    .line 120
    .local v3, "requestedLocalesArray":[Landroid/icu/util/ULocale;
    new-array v2, v2, [Z

    .line 122
    .local v2, "fallback":[Z
    nop

    .line 123
    invoke-static {v3, v0, v2}, Landroid/icu/util/ULocale;->acceptLanguage([Landroid/icu/util/ULocale;[Landroid/icu/util/ULocale;[Z)Landroid/icu/util/ULocale;

    move-result-object v5

    .line 126
    .local v5, "acceptedLocale":Landroid/icu/util/ULocale;
    aget-boolean v4, v2, v4

    if-nez v4, :cond_0

    if-eqz v5, :cond_0

    .line 127
    return-object v5

    .line 130
    :cond_0
    const/4 v4, 0x0

    return-object v4
.end method

.method public static bestFitMatch([Ljava/lang/String;)Lcom/facebook/hermes/intl/LocaleMatcher$LocaleMatchResult;
    .locals 6
    .param p0, "requestedLocales"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 136
    new-instance v0, Lcom/facebook/hermes/intl/LocaleMatcher$LocaleMatchResult;

    invoke-direct {v0}, Lcom/facebook/hermes/intl/LocaleMatcher$LocaleMatchResult;-><init>()V

    .line 137
    .local v0, "result":Lcom/facebook/hermes/intl/LocaleMatcher$LocaleMatchResult;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 138
    .local v3, "requestedLocale":Ljava/lang/String;
    invoke-static {v3}, Lcom/facebook/hermes/intl/LocaleObject;->createFromLocaleId(Ljava/lang/String;)Lcom/facebook/hermes/intl/ILocaleObject;

    move-result-object v4

    .line 139
    .local v4, "requestedLocaleObject":Lcom/facebook/hermes/intl/ILocaleObject;, "Lcom/facebook/hermes/intl/ILocaleObject<*>;"
    invoke-static {v4}, Lcom/facebook/hermes/intl/LocaleMatcher;->bestFitBestAvailableLocale(Lcom/facebook/hermes/intl/ILocaleObject;)Landroid/icu/util/ULocale;

    move-result-object v5

    .line 140
    .local v5, "availableLocale":Landroid/icu/util/ULocale;
    if-eqz v5, :cond_0

    .line 141
    invoke-static {v5}, Lcom/facebook/hermes/intl/LocaleObjectICU;->createFromULocale(Landroid/icu/util/ULocale;)Lcom/facebook/hermes/intl/ILocaleObject;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/hermes/intl/LocaleMatcher$LocaleMatchResult;->matchedLocale:Lcom/facebook/hermes/intl/ILocaleObject;

    .line 142
    invoke-interface {v4}, Lcom/facebook/hermes/intl/ILocaleObject;->getUnicodeExtensions()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/hermes/intl/LocaleMatcher$LocaleMatchResult;->extensions:Ljava/util/HashMap;

    .line 143
    return-object v0

    .line 137
    .end local v3    # "requestedLocale":Ljava/lang/String;
    .end local v4    # "requestedLocaleObject":Lcom/facebook/hermes/intl/ILocaleObject;, "Lcom/facebook/hermes/intl/ILocaleObject<*>;"
    .end local v5    # "availableLocale":Landroid/icu/util/ULocale;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 147
    :cond_1
    invoke-static {}, Lcom/facebook/hermes/intl/LocaleObjectICU;->createDefault()Lcom/facebook/hermes/intl/ILocaleObject;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/hermes/intl/LocaleMatcher$LocaleMatchResult;->matchedLocale:Lcom/facebook/hermes/intl/ILocaleObject;

    .line 148
    return-object v0
.end method

.method public static bestFitSupportedLocales([Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p0, "requestedLocales"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v0, "subset":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 156
    .local v3, "requestedLocale":Ljava/lang/String;
    nop

    .line 157
    invoke-static {v3}, Lcom/facebook/hermes/intl/LocaleObject;->createFromLocaleId(Ljava/lang/String;)Lcom/facebook/hermes/intl/ILocaleObject;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/hermes/intl/LocaleMatcher;->bestFitBestAvailableLocale(Lcom/facebook/hermes/intl/ILocaleObject;)Landroid/icu/util/ULocale;

    move-result-object v4

    .line 158
    .local v4, "uLocale":Landroid/icu/util/ULocale;
    if-eqz v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    .end local v3    # "requestedLocale":Ljava/lang/String;
    .end local v4    # "uLocale":Landroid/icu/util/ULocale;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 161
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 162
    .local v1, "subsetArray":[Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method public static getAvailableLocales()[Ljava/lang/String;
    .locals 6

    .line 70
    nop

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v0, "availableLocaleIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v1

    .line 78
    .local v1, "availableLocales":[Ljava/util/Locale;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 79
    .local v4, "locale":Ljava/util/Locale;
    invoke-virtual {v4}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .end local v4    # "locale":Ljava/util/Locale;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 83
    .local v2, "availableLocaleIdsArray":[Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public static lookupMatch([Ljava/lang/String;)Lcom/facebook/hermes/intl/LocaleMatcher$LocaleMatchResult;
    .locals 2
    .param p0, "requestedLocales"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 90
    invoke-static {}, Lcom/facebook/hermes/intl/LocaleMatcher;->getAvailableLocales()[Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "availableLocales":[Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/facebook/hermes/intl/LocaleMatcher;->lookupMatch([Ljava/lang/String;[Ljava/lang/String;)Lcom/facebook/hermes/intl/LocaleMatcher$LocaleMatchResult;

    move-result-object v1

    return-object v1
.end method

.method public static lookupMatch([Ljava/lang/String;[Ljava/lang/String;)Lcom/facebook/hermes/intl/LocaleMatcher$LocaleMatchResult;
    .locals 8
    .param p0, "requestedLocales"    # [Ljava/lang/String;
    .param p1, "availableLocales"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 51
    new-instance v0, Lcom/facebook/hermes/intl/LocaleMatcher$LocaleMatchResult;

    invoke-direct {v0}, Lcom/facebook/hermes/intl/LocaleMatcher$LocaleMatchResult;-><init>()V

    .line 52
    .local v0, "result":Lcom/facebook/hermes/intl/LocaleMatcher$LocaleMatchResult;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 53
    .local v3, "locale":Ljava/lang/String;
    invoke-static {v3}, Lcom/facebook/hermes/intl/LocaleObject;->createFromLocaleId(Ljava/lang/String;)Lcom/facebook/hermes/intl/ILocaleObject;

    move-result-object v4

    .line 54
    .local v4, "requestedLocaleObject":Lcom/facebook/hermes/intl/ILocaleObject;, "Lcom/facebook/hermes/intl/ILocaleObject<*>;"
    invoke-interface {v4}, Lcom/facebook/hermes/intl/ILocaleObject;->toCanonicalTagWithoutExtensions()Ljava/lang/String;

    move-result-object v5

    .line 56
    .local v5, "noExtensionLocale":Ljava/lang/String;
    invoke-static {p1, v5}, Lcom/facebook/hermes/intl/LocaleMatcher;->BestAvailableLocale([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 57
    .local v6, "availableLocale":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 58
    invoke-static {v6}, Lcom/facebook/hermes/intl/LocaleObject;->createFromLocaleId(Ljava/lang/String;)Lcom/facebook/hermes/intl/ILocaleObject;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/hermes/intl/LocaleMatcher$LocaleMatchResult;->matchedLocale:Lcom/facebook/hermes/intl/ILocaleObject;

    .line 59
    invoke-interface {v4}, Lcom/facebook/hermes/intl/ILocaleObject;->getUnicodeExtensions()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/hermes/intl/LocaleMatcher$LocaleMatchResult;->extensions:Ljava/util/HashMap;

    .line 60
    return-object v0

    .line 52
    .end local v3    # "locale":Ljava/lang/String;
    .end local v4    # "requestedLocaleObject":Lcom/facebook/hermes/intl/ILocaleObject;, "Lcom/facebook/hermes/intl/ILocaleObject<*>;"
    .end local v5    # "noExtensionLocale":Ljava/lang/String;
    .end local v6    # "availableLocale":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    :cond_1
    invoke-static {}, Lcom/facebook/hermes/intl/LocaleObject;->createDefault()Lcom/facebook/hermes/intl/ILocaleObject;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/hermes/intl/LocaleMatcher$LocaleMatchResult;->matchedLocale:Lcom/facebook/hermes/intl/ILocaleObject;

    .line 65
    return-object v0
.end method

.method public static lookupSupportedLocales([Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p0, "requestedLocales"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v0, "subset":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/facebook/hermes/intl/LocaleMatcher;->getAvailableLocales()[Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "availableLocales":[Ljava/lang/String;
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p0, v3

    .line 101
    .local v4, "requestedLocale":Ljava/lang/String;
    nop

    .line 102
    invoke-static {v4}, Lcom/facebook/hermes/intl/LocaleObject;->createFromLocaleId(Ljava/lang/String;)Lcom/facebook/hermes/intl/ILocaleObject;

    move-result-object v5

    invoke-interface {v5}, Lcom/facebook/hermes/intl/ILocaleObject;->toCanonicalTagWithoutExtensions()Ljava/lang/String;

    move-result-object v5

    .line 103
    .local v5, "noExtensionLocale":Ljava/lang/String;
    invoke-static {v1, v5}, Lcom/facebook/hermes/intl/LocaleMatcher;->BestAvailableLocale([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 104
    .local v6, "availableLocale":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .end local v4    # "requestedLocale":Ljava/lang/String;
    .end local v5    # "noExtensionLocale":Ljava/lang/String;
    .end local v6    # "availableLocale":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 108
    .local v2, "subsetArray":[Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method
