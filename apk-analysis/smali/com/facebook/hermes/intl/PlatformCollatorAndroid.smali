.class public Lcom/facebook/hermes/intl/PlatformCollatorAndroid;
.super Ljava/lang/Object;
.source "PlatformCollatorAndroid.java"

# interfaces
.implements Lcom/facebook/hermes/intl/IPlatformCollator;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mCollator:Ljava/text/RuleBasedCollator;

.field private mLocale:Lcom/facebook/hermes/intl/LocaleObjectAndroid;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 18
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformCollatorAndroid;->mCollator:Ljava/text/RuleBasedCollator;

    invoke-virtual {v0, p1, p2}, Ljava/text/RuleBasedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public configure(Lcom/facebook/hermes/intl/ILocaleObject;)Lcom/facebook/hermes/intl/IPlatformCollator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/hermes/intl/ILocaleObject<",
            "*>;)",
            "Lcom/facebook/hermes/intl/IPlatformCollator;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 27
    .local p1, "localeObject":Lcom/facebook/hermes/intl/ILocaleObject;, "Lcom/facebook/hermes/intl/ILocaleObject<*>;"
    move-object v0, p1

    check-cast v0, Lcom/facebook/hermes/intl/LocaleObjectAndroid;

    iput-object v0, p0, Lcom/facebook/hermes/intl/PlatformCollatorAndroid;->mLocale:Lcom/facebook/hermes/intl/LocaleObjectAndroid;

    .line 29
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getAvailableLocales()[Ljava/lang/String;
    .locals 6

    .line 99
    nop

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v0, "availableLocaleIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Ljava/text/Collator;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v1

    .line 107
    .local v1, "availableLocales":[Ljava/util/Locale;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 108
    .local v4, "locale":Ljava/util/Locale;
    invoke-virtual {v4}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .end local v4    # "locale":Ljava/util/Locale;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 112
    .local v2, "availableLocaleIdsArray":[Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public getSensitivity()Lcom/facebook/hermes/intl/IPlatformCollator$Sensitivity;
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformCollatorAndroid;->mCollator:Ljava/text/RuleBasedCollator;

    if-nez v0, :cond_0

    .line 45
    sget-object v0, Lcom/facebook/hermes/intl/IPlatformCollator$Sensitivity;->LOCALE:Lcom/facebook/hermes/intl/IPlatformCollator$Sensitivity;

    return-object v0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformCollatorAndroid;->mCollator:Ljava/text/RuleBasedCollator;

    invoke-virtual {v0}, Ljava/text/RuleBasedCollator;->getStrength()I

    move-result v0

    .line 49
    .local v0, "strength":I
    if-nez v0, :cond_1

    .line 50
    sget-object v1, Lcom/facebook/hermes/intl/IPlatformCollator$Sensitivity;->BASE:Lcom/facebook/hermes/intl/IPlatformCollator$Sensitivity;

    return-object v1

    .line 53
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    sget-object v1, Lcom/facebook/hermes/intl/IPlatformCollator$Sensitivity;->ACCENT:Lcom/facebook/hermes/intl/IPlatformCollator$Sensitivity;

    return-object v1

    .line 55
    :cond_2
    sget-object v1, Lcom/facebook/hermes/intl/IPlatformCollator$Sensitivity;->VARIANT:Lcom/facebook/hermes/intl/IPlatformCollator$Sensitivity;

    return-object v1
.end method

.method public setCaseFirstAttribute(Lcom/facebook/hermes/intl/IPlatformCollator$CaseFirst;)Lcom/facebook/hermes/intl/IPlatformCollator;
    .locals 0
    .param p1, "caseFirst"    # Lcom/facebook/hermes/intl/IPlatformCollator$CaseFirst;

    .line 93
    return-object p0
.end method

.method public setIgnorePunctuation(Z)Lcom/facebook/hermes/intl/IPlatformCollator;
    .locals 0
    .param p1, "ignore"    # Z

    .line 83
    return-object p0
.end method

.method public setNumericAttribute(Z)Lcom/facebook/hermes/intl/IPlatformCollator;
    .locals 0
    .param p1, "numeric"    # Z

    .line 88
    return-object p0
.end method

.method public setSensitivity(Lcom/facebook/hermes/intl/IPlatformCollator$Sensitivity;)Lcom/facebook/hermes/intl/IPlatformCollator;
    .locals 1
    .param p1, "sensitivity"    # Lcom/facebook/hermes/intl/IPlatformCollator$Sensitivity;

    .line 60
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
