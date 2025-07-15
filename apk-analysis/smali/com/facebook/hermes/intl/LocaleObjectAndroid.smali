.class public Lcom/facebook/hermes/intl/LocaleObjectAndroid;
.super Ljava/lang/Object;
.source "LocaleObjectAndroid.java"

# interfaces
.implements Lcom/facebook/hermes/intl/ILocaleObject;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/hermes/intl/ILocaleObject<",
        "Ljava/util/Locale;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mIsDirty:Z

.field private mLocale:Ljava/util/Locale;

.field private mParsedLocaleIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 18
    return-void
.end method

.method private constructor <init>(Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;)V
    .locals 1
    .param p1, "parsedLocaleIdentifier"    # Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mLocale:Ljava/util/Locale;

    .line 22
    iput-object v0, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mParsedLocaleIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mIsDirty:Z

    .line 40
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "localeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mLocale:Ljava/util/Locale;

    .line 22
    iput-object v0, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mParsedLocaleIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mIsDirty:Z

    .line 32
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mLocale:Ljava/util/Locale;

    .line 22
    iput-object v0, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mParsedLocaleIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mIsDirty:Z

    .line 27
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static createDefault()Lcom/facebook/hermes/intl/ILocaleObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/hermes/intl/ILocaleObject<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 309
    new-instance v0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/hermes/intl/LocaleObjectAndroid;-><init>(Ljava/util/Locale;)V

    return-object v0
.end method

.method public static createFromLocale(Ljava/util/Locale;)Lcom/facebook/hermes/intl/ILocaleObject;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            ")",
            "Lcom/facebook/hermes/intl/ILocaleObject<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 305
    new-instance v0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;

    invoke-direct {v0, p0}, Lcom/facebook/hermes/intl/LocaleObjectAndroid;-><init>(Ljava/util/Locale;)V

    return-object v0
.end method

.method public static createFromLocaleId(Ljava/lang/String;)Lcom/facebook/hermes/intl/ILocaleObject;
    .locals 1
    .param p0, "localeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/facebook/hermes/intl/ILocaleObject<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 301
    new-instance v0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;

    invoke-direct {v0, p0}, Lcom/facebook/hermes/intl/LocaleObjectAndroid;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private ensureNotDirty()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 211
    iget-boolean v0, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mIsDirty:Z

    if-eqz v0, :cond_0

    .line 213
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->reInitFromParsedLocaleIdentifier()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    nop

    .line 218
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mIsDirty:Z

    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v1, Lcom/facebook/hermes/intl/JSRangeErrorException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/hermes/intl/JSRangeErrorException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 220
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method private ensureParsedLocaleIdentifier()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mParsedLocaleIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;

    if-nez v0, :cond_0

    .line 48
    nop

    .line 50
    iget-object v0, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/hermes/intl/LocaleIdentifier;->parseLocaleId(Ljava/lang/String;)Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mParsedLocaleIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;

    .line 52
    :cond_0
    return-void
.end method

.method private reInitFromParsedLocaleIdentifier()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 56
    nop

    .line 61
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 62
    .local v0, "localeIdBuffer":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 63
    .local v1, "languageSubtagBuffer":Ljava/lang/StringBuffer;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 64
    .local v2, "scriptSubtagBuffer":Ljava/lang/StringBuffer;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 66
    .local v3, "regionSubtagBuffer":Ljava/lang/StringBuffer;
    iget-object v4, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mParsedLocaleIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;

    iget-object v4, v4, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->languageIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;

    iget-object v4, v4, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;->languageSubtag:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mParsedLocaleIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;

    iget-object v4, v4, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->languageIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;

    iget-object v4, v4, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;->languageSubtag:Ljava/lang/String;

    .line 67
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 68
    iget-object v4, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mParsedLocaleIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;

    iget-object v4, v4, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->languageIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;

    iget-object v4, v4, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;->languageSubtag:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    :cond_0
    iget-object v4, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mParsedLocaleIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;

    iget-object v4, v4, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->languageIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;

    iget-object v4, v4, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;->scriptSubtag:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mParsedLocaleIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;

    iget-object v4, v4, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->languageIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;

    iget-object v4, v4, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;->scriptSubtag:Ljava/lang/String;

    .line 71
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 72
    iget-object v4, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mParsedLocaleIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;

    iget-object v4, v4, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->languageIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;

    iget-object v4, v4, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;->scriptSubtag:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    :cond_1
    iget-object v4, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mParsedLocaleIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;

    iget-object v4, v4, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->languageIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;

    iget-object v4, v4, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;->regionSubtag:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mParsedLocaleIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;

    iget-object v4, v4, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->languageIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;

    iget-object v4, v4, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;->regionSubtag:Ljava/lang/String;

    .line 75
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 76
    iget-object v4, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mParsedLocaleIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;

    iget-object v4, v4, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->languageIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;

    iget-object v4, v4, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;->regionSubtag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    :cond_2
    invoke-static {v1, v2, v3}, Lcom/facebook/hermes/intl/LocaleIdentifier;->replaceLanguageSubtagIfNeeded(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    const-string v5, "-"

    if-lez v4, :cond_4

    .line 84
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 89
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    invoke-static {v3}, Lcom/facebook/hermes/intl/LocaleIdentifier;->replaceRegionSubtagIfNeeded(Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    :cond_5
    iget-object v4, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mParsedLocaleIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;

    iget-object v4, v4, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->languageIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;

    iget-object v4, v4, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;->variantSubtagList:Ljava/util/ArrayList;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mParsedLocaleIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;

    iget-object v4, v4, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->languageIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;

    iget-object v4, v4, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;->variantSubtagList:Ljava/util/ArrayList;

    .line 94
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 95
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    iget-object v4, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mParsedLocaleIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;

    iget-object v4, v4, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->languageIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;

    iget-object v4, v4, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;->variantSubtagList:Ljava/util/ArrayList;

    .line 97
    invoke-static {v5, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    .line 96
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    :cond_6
    iget-object v4, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mParsedLocaleIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;

    iget-object v4, v4, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->otherExtensionsMap:Ljava/util/TreeMap;

    if-eqz v4, :cond_7

    .line 103
    iget-object v4, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mParsedLocaleIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;

    iget-object v4, v4, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->otherExtensionsMap:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 104
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Character;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 106
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    invoke-static {v5, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Character;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    goto :goto_0

    .line 113
    :cond_7
    iget-object v4, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mParsedLocaleIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;

    iget-object v4, v4, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->transformedLanguageIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;

    const/16 v6, 0x2d

    const/4 v7, 0x0

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mParsedLocaleIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;

    iget-object v4, v4, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->transformedExtensionFields:Ljava/util/TreeMap;

    if-eqz v4, :cond_f

    .line 115
    :cond_8
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    const/16 v4, 0x74

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 117
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 120
    .local v4, "transformedExtension":Ljava/lang/StringBuffer;
    iget-object v8, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mParsedLocaleIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;

    iget-object v8, v8, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->transformedLanguageIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;

    if-eqz v8, :cond_b

    .line 121
    iget-object v8, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mParsedLocaleIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;

    iget-object v8, v8, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->transformedLanguageIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;

    iget-object v8, v8, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;->languageSubtag:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    iget-object v8, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mParsedLocaleIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;

    iget-object v8, v8, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->transformedLanguageIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;

    iget-object v8, v8, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;->scriptSubtag:Ljava/lang/String;

    if-eqz v8, :cond_9

    .line 125
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    iget-object v8, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mParsedLocaleIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;

    iget-object v8, v8, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->transformedLanguageIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;

    iget-object v8, v8, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;->scriptSubtag:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    :cond_9
    iget-object v8, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mParsedLocaleIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;

    iget-object v8, v8, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->transformedLanguageIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;

    iget-object v8, v8, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;->regionSubtag:Ljava/lang/String;

    if-eqz v8, :cond_a

    .line 131
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    iget-object v8, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mParsedLocaleIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;

    iget-object v8, v8, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->transformedLanguageIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;

    iget-object v8, v8, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;->regionSubtag:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    :cond_a
    iget-object v8, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mParsedLocaleIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;

    iget-object v8, v8, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->transformedLanguageIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;

    iget-object v8, v8, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;->variantSubtagList:Ljava/util/ArrayList;

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mParsedLocaleIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;

    iget-object v8, v8, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->transformedLanguageIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;

    iget-object v8, v8, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;->variantSubtagList:Ljava/util/ArrayList;

    .line 137
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_b

    .line 138
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    iget-object v8, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mParsedLocaleIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;

    iget-object v8, v8, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->transformedLanguageIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;

    iget-object v8, v8, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;->variantSubtagList:Ljava/util/ArrayList;

    .line 140
    invoke-static {v5, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v8

    .line 139
    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    :cond_b
    iget-object v8, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mParsedLocaleIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;

    iget-object v8, v8, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->transformedExtensionFields:Ljava/util/TreeMap;

    if-eqz v8, :cond_e

    .line 147
    iget-object v8, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mParsedLocaleIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;

    iget-object v8, v8, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->transformedExtensionFields:Ljava/util/TreeMap;

    invoke-virtual {v8}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 148
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 149
    .local v10, "key":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 151
    .local v11, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .local v13, "value":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 153
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v10    # "key":Ljava/lang/String;
    .end local v11    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13    # "value":Ljava/lang/String;
    :cond_c
    goto :goto_1

    .line 155
    :cond_d
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-lez v8, :cond_e

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    if-ne v8, v6, :cond_e

    .line 156
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 159
    :cond_e
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    .end local v4    # "transformedExtension":Ljava/lang/StringBuffer;
    :cond_f
    iget-object v4, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mParsedLocaleIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;

    iget-object v4, v4, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->unicodeExtensionAttributes:Ljava/util/ArrayList;

    if-nez v4, :cond_10

    iget-object v4, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mParsedLocaleIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;

    iget-object v4, v4, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->unicodeExtensionKeywords:Ljava/util/TreeMap;

    if-eqz v4, :cond_15

    .line 166
    :cond_10
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    const/16 v4, 0x75

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 168
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 172
    .local v4, "extension":Ljava/lang/StringBuffer;
    iget-object v8, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mParsedLocaleIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;

    iget-object v8, v8, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->unicodeExtensionAttributes:Ljava/util/ArrayList;

    if-eqz v8, :cond_11

    .line 173
    iget-object v8, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mParsedLocaleIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;

    iget-object v8, v8, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->unicodeExtensionAttributes:Ljava/util/ArrayList;

    invoke-static {v5, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    :cond_11
    iget-object v8, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mParsedLocaleIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;

    iget-object v8, v8, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->unicodeExtensionKeywords:Ljava/util/TreeMap;

    if-eqz v8, :cond_13

    .line 178
    iget-object v8, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mParsedLocaleIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;

    iget-object v8, v8, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->unicodeExtensionKeywords:Ljava/util/TreeMap;

    invoke-virtual {v8}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 179
    .restart local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 180
    .restart local v10    # "key":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 182
    .restart local v11    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_12

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .restart local v13    # "value":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 184
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v10    # "key":Ljava/lang/String;
    .end local v11    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13    # "value":Ljava/lang/String;
    :cond_12
    goto :goto_3

    .line 187
    :cond_13
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-lez v8, :cond_14

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    if-ne v8, v6, :cond_14

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 189
    :cond_14
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    .end local v4    # "extension":Ljava/lang/StringBuffer;
    :cond_15
    iget-object v4, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mParsedLocaleIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;

    iget-object v4, v4, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->puExtensions:Ljava/util/ArrayList;

    if-eqz v4, :cond_16

    .line 194
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    const/16 v4, 0x78

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 196
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    iget-object v4, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mParsedLocaleIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;

    iget-object v4, v4, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->puExtensions:Ljava/util/ArrayList;

    invoke-static {v5, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    :cond_16
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v4

    iput-object v4, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mLocale:Ljava/util/Locale;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    nop

    .line 207
    iput-boolean v7, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mIsDirty:Z

    .line 208
    return-void

    .line 203
    :catch_0
    move-exception v4

    .line 204
    .local v4, "ex":Ljava/lang/RuntimeException;
    new-instance v5, Lcom/facebook/hermes/intl/JSRangeErrorException;

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/facebook/hermes/intl/JSRangeErrorException;-><init>(Ljava/lang/String;)V

    throw v5
.end method


# virtual methods
.method public cloneObject()Lcom/facebook/hermes/intl/ILocaleObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/hermes/intl/ILocaleObject<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 314
    invoke-direct {p0}, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->ensureNotDirty()V

    .line 315
    new-instance v0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;

    iget-object v1, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mLocale:Ljava/util/Locale;

    invoke-direct {v0, v1}, Lcom/facebook/hermes/intl/LocaleObjectAndroid;-><init>(Ljava/util/Locale;)V

    return-object v0
.end method

.method public bridge synthetic getLocale()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 18
    invoke-virtual {p0}, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->getLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 268
    invoke-direct {p0}, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->ensureNotDirty()V

    .line 269
    iget-object v0, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public bridge synthetic getLocaleWithoutExtensions()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 18
    invoke-virtual {p0}, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->getLocaleWithoutExtensions()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getLocaleWithoutExtensions()Ljava/util/Locale;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 273
    invoke-direct {p0}, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->ensureNotDirty()V

    .line 274
    invoke-direct {p0}, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->ensureParsedLocaleIdentifier()V

    .line 276
    new-instance v0, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;

    invoke-direct {v0}, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;-><init>()V

    .line 277
    .local v0, "modified":Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;
    iget-object v1, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mParsedLocaleIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;

    iget-object v1, v1, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->languageIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;

    iput-object v1, v0, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->languageIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;

    .line 278
    new-instance v1, Lcom/facebook/hermes/intl/LocaleObjectAndroid;

    invoke-direct {v1, v0}, Lcom/facebook/hermes/intl/LocaleObjectAndroid;-><init>(Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;)V

    invoke-virtual {v1}, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->getLocale()Ljava/util/Locale;

    move-result-object v1

    return-object v1
.end method

.method public getUnicodeExtensions(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 224
    invoke-direct {p0}, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->ensureNotDirty()V

    .line 225
    invoke-direct {p0}, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->ensureParsedLocaleIdentifier()V

    .line 227
    iget-object v0, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mParsedLocaleIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;

    iget-object v0, v0, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->unicodeExtensionKeywords:Ljava/util/TreeMap;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mParsedLocaleIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;

    iget-object v0, v0, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->unicodeExtensionKeywords:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 229
    .local v0, "extensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    return-object v0

    .line 231
    .end local v0    # "extensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getUnicodeExtensions()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 236
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 237
    .local v0, "extensions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mParsedLocaleIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;

    iget-object v1, v1, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->unicodeExtensionKeywords:Ljava/util/TreeMap;

    if-eqz v1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mParsedLocaleIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;

    iget-object v1, v1, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->unicodeExtensionKeywords:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 239
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mParsedLocaleIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;

    iget-object v3, v3, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->unicodeExtensionKeywords:Ljava/util/TreeMap;

    invoke-virtual {v3, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 240
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "-"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0

    .line 243
    :cond_0
    return-object v0
.end method

.method public setUnicodeExtensions(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 249
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->ensureNotDirty()V

    .line 250
    invoke-direct {p0}, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->ensureParsedLocaleIdentifier()V

    .line 252
    iget-object v0, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mParsedLocaleIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;

    iget-object v0, v0, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->unicodeExtensionKeywords:Ljava/util/TreeMap;

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mParsedLocaleIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, v0, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->unicodeExtensionKeywords:Ljava/util/TreeMap;

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mParsedLocaleIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;

    iget-object v0, v0, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->unicodeExtensionKeywords:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mParsedLocaleIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;

    iget-object v0, v0, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->unicodeExtensionKeywords:Ljava/util/TreeMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mParsedLocaleIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;

    iget-object v0, v0, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->unicodeExtensionKeywords:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 262
    iget-object v0, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mParsedLocaleIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;

    iget-object v0, v0, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->unicodeExtensionKeywords:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->mIsDirty:Z

    .line 264
    return-void
.end method

.method public toCanonicalTag()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 283
    nop

    .line 287
    invoke-virtual {p0}, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toCanonicalTagWithoutExtensions()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 292
    nop

    .line 296
    invoke-virtual {p0}, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->getLocaleWithoutExtensions()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
