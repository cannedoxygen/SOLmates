.class public Lcom/facebook/hermes/intl/LocaleObjectICU;
.super Ljava/lang/Object;
.source "LocaleObjectICU.java"

# interfaces
.implements Lcom/facebook/hermes/intl/ILocaleObject;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/hermes/intl/ILocaleObject<",
        "Landroid/icu/util/ULocale;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mIsDirty:Z

.field private m_icuLocale:Landroid/icu/util/ULocale;

.field private m_icuLocaleBuilder:Landroid/icu/util/ULocale$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 19
    return-void
.end method

.method private constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 1
    .param p1, "uLocale"    # Landroid/icu/util/ULocale;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/hermes/intl/LocaleObjectICU;->m_icuLocale:Landroid/icu/util/ULocale;

    .line 22
    iput-object v0, p0, Lcom/facebook/hermes/intl/LocaleObjectICU;->m_icuLocaleBuilder:Landroid/icu/util/ULocale$Builder;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/hermes/intl/LocaleObjectICU;->mIsDirty:Z

    .line 27
    nop

    .line 28
    iput-object p1, p0, Lcom/facebook/hermes/intl/LocaleObjectICU;->m_icuLocale:Landroid/icu/util/ULocale;

    .line 29
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "localeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/hermes/intl/LocaleObjectICU;->m_icuLocale:Landroid/icu/util/ULocale;

    .line 22
    iput-object v0, p0, Lcom/facebook/hermes/intl/LocaleObjectICU;->m_icuLocaleBuilder:Landroid/icu/util/ULocale$Builder;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/hermes/intl/LocaleObjectICU;->mIsDirty:Z

    .line 33
    nop

    .line 35
    new-instance v0, Landroid/icu/util/ULocale$Builder;

    invoke-direct {v0}, Landroid/icu/util/ULocale$Builder;-><init>()V

    iput-object v0, p0, Lcom/facebook/hermes/intl/LocaleObjectICU;->m_icuLocaleBuilder:Landroid/icu/util/ULocale$Builder;

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/facebook/hermes/intl/LocaleObjectICU;->m_icuLocaleBuilder:Landroid/icu/util/ULocale$Builder;

    invoke-virtual {v0, p1}, Landroid/icu/util/ULocale$Builder;->setLanguageTag(Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    nop

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/hermes/intl/LocaleObjectICU;->mIsDirty:Z

    .line 44
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v1, Lcom/facebook/hermes/intl/JSRangeErrorException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/hermes/intl/JSRangeErrorException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static createDefault()Lcom/facebook/hermes/intl/ILocaleObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/hermes/intl/ILocaleObject<",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation

    .line 161
    new-instance v0, Lcom/facebook/hermes/intl/LocaleObjectICU;

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/hermes/intl/LocaleObjectICU;-><init>(Landroid/icu/util/ULocale;)V

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
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 152
    new-instance v0, Lcom/facebook/hermes/intl/LocaleObjectICU;

    invoke-direct {v0, p0}, Lcom/facebook/hermes/intl/LocaleObjectICU;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createFromULocale(Landroid/icu/util/ULocale;)Lcom/facebook/hermes/intl/ILocaleObject;
    .locals 1
    .param p0, "uLocale"    # Landroid/icu/util/ULocale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/ULocale;",
            ")",
            "Lcom/facebook/hermes/intl/ILocaleObject<",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation

    .line 156
    new-instance v0, Lcom/facebook/hermes/intl/LocaleObjectICU;

    invoke-direct {v0, p0}, Lcom/facebook/hermes/intl/LocaleObjectICU;-><init>(Landroid/icu/util/ULocale;)V

    return-object v0
.end method

.method private ensureNotDirty()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 48
    iget-boolean v0, p0, Lcom/facebook/hermes/intl/LocaleObjectICU;->mIsDirty:Z

    if-eqz v0, :cond_0

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/facebook/hermes/intl/LocaleObjectICU;->m_icuLocaleBuilder:Landroid/icu/util/ULocale$Builder;

    invoke-virtual {v0}, Landroid/icu/util/ULocale$Builder;->build()Landroid/icu/util/ULocale;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/hermes/intl/LocaleObjectICU;->m_icuLocale:Landroid/icu/util/ULocale;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    nop

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/hermes/intl/LocaleObjectICU;->mIsDirty:Z

    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v1, Lcom/facebook/hermes/intl/JSRangeErrorException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/hermes/intl/JSRangeErrorException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public cloneObject()Lcom/facebook/hermes/intl/ILocaleObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/hermes/intl/ILocaleObject<",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 145
    invoke-direct {p0}, Lcom/facebook/hermes/intl/LocaleObjectICU;->ensureNotDirty()V

    .line 146
    new-instance v0, Lcom/facebook/hermes/intl/LocaleObjectICU;

    iget-object v1, p0, Lcom/facebook/hermes/intl/LocaleObjectICU;->m_icuLocale:Landroid/icu/util/ULocale;

    invoke-direct {v0, v1}, Lcom/facebook/hermes/intl/LocaleObjectICU;-><init>(Landroid/icu/util/ULocale;)V

    return-object v0
.end method

.method public getLocale()Landroid/icu/util/ULocale;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 115
    invoke-direct {p0}, Lcom/facebook/hermes/intl/LocaleObjectICU;->ensureNotDirty()V

    .line 116
    iget-object v0, p0, Lcom/facebook/hermes/intl/LocaleObjectICU;->m_icuLocale:Landroid/icu/util/ULocale;

    return-object v0
.end method

.method public bridge synthetic getLocale()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 19
    invoke-virtual {p0}, Lcom/facebook/hermes/intl/LocaleObjectICU;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public getLocaleWithoutExtensions()Landroid/icu/util/ULocale;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 121
    invoke-direct {p0}, Lcom/facebook/hermes/intl/LocaleObjectICU;->ensureNotDirty()V

    .line 122
    new-instance v0, Landroid/icu/util/ULocale$Builder;

    invoke-direct {v0}, Landroid/icu/util/ULocale$Builder;-><init>()V

    .line 123
    .local v0, "localeBuilder":Landroid/icu/util/ULocale$Builder;
    iget-object v1, p0, Lcom/facebook/hermes/intl/LocaleObjectICU;->m_icuLocale:Landroid/icu/util/ULocale;

    invoke-virtual {v0, v1}, Landroid/icu/util/ULocale$Builder;->setLocale(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale$Builder;

    .line 125
    invoke-virtual {v0}, Landroid/icu/util/ULocale$Builder;->clearExtensions()Landroid/icu/util/ULocale$Builder;

    .line 126
    invoke-virtual {v0}, Landroid/icu/util/ULocale$Builder;->build()Landroid/icu/util/ULocale;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic getLocaleWithoutExtensions()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 19
    invoke-virtual {p0}, Lcom/facebook/hermes/intl/LocaleObjectICU;->getLocaleWithoutExtensions()Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public getUnicodeExtensions(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
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

    .line 62
    invoke-direct {p0}, Lcom/facebook/hermes/intl/LocaleObjectICU;->ensureNotDirty()V

    .line 66
    invoke-static {p1}, Lcom/facebook/hermes/intl/UnicodeExtensionKeys;->CanonicalKeyToICUKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "icuKey":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v1, "extensionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/facebook/hermes/intl/LocaleObjectICU;->m_icuLocale:Landroid/icu/util/ULocale;

    invoke-virtual {v2, v0}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "keywordValue":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 71
    const-string v3, "-|_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 73
    :cond_0
    return-object v1
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

    .line 79
    invoke-direct {p0}, Lcom/facebook/hermes/intl/LocaleObjectICU;->ensureNotDirty()V

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 82
    .local v0, "keywordMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/facebook/hermes/intl/LocaleObjectICU;->m_icuLocale:Landroid/icu/util/ULocale;

    invoke-virtual {v1}, Landroid/icu/util/ULocale;->getKeywords()Ljava/util/Iterator;

    move-result-object v1

    .line 83
    .local v1, "keywords":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 84
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 86
    .local v2, "keyword":Ljava/lang/String;
    invoke-static {v2}, Lcom/facebook/hermes/intl/UnicodeExtensionKeys;->ICUKeyToCanonicalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, "canonicalKeyword":Ljava/lang/String;
    iget-object v4, p0, Lcom/facebook/hermes/intl/LocaleObjectICU;->m_icuLocale:Landroid/icu/util/ULocale;

    invoke-virtual {v4, v2}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .end local v2    # "keyword":Ljava/lang/String;
    .end local v3    # "canonicalKeyword":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    goto :goto_0

    .line 92
    :cond_0
    return-object v0
.end method

.method public setUnicodeExtensions(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
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

    .line 99
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/facebook/hermes/intl/LocaleObjectICU;->ensureNotDirty()V

    .line 100
    iget-object v0, p0, Lcom/facebook/hermes/intl/LocaleObjectICU;->m_icuLocaleBuilder:Landroid/icu/util/ULocale$Builder;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Landroid/icu/util/ULocale$Builder;

    invoke-direct {v0}, Landroid/icu/util/ULocale$Builder;-><init>()V

    iget-object v1, p0, Lcom/facebook/hermes/intl/LocaleObjectICU;->m_icuLocale:Landroid/icu/util/ULocale;

    invoke-virtual {v0, v1}, Landroid/icu/util/ULocale$Builder;->setLocale(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/hermes/intl/LocaleObjectICU;->m_icuLocaleBuilder:Landroid/icu/util/ULocale$Builder;

    .line 104
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/hermes/intl/LocaleObjectICU;->m_icuLocaleBuilder:Landroid/icu/util/ULocale$Builder;

    const-string v1, "-"

    invoke-static {v1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/icu/util/ULocale$Builder;->setUnicodeLocaleKeyword(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    nop

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/hermes/intl/LocaleObjectICU;->mIsDirty:Z

    .line 110
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v1, Lcom/facebook/hermes/intl/JSRangeErrorException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/hermes/intl/JSRangeErrorException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toCanonicalTag()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 132
    invoke-virtual {p0}, Lcom/facebook/hermes/intl/LocaleObjectICU;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->toLanguageTag()Ljava/lang/String;

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

    .line 138
    invoke-virtual {p0}, Lcom/facebook/hermes/intl/LocaleObjectICU;->getLocaleWithoutExtensions()Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
