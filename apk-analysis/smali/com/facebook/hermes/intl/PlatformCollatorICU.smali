.class public Lcom/facebook/hermes/intl/PlatformCollatorICU;
.super Ljava/lang/Object;
.source "PlatformCollatorICU.java"

# interfaces
.implements Lcom/facebook/hermes/intl/IPlatformCollator;


# instance fields
.field private mCollator:Landroid/icu/text/RuleBasedCollator;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/hermes/intl/PlatformCollatorICU;->mCollator:Landroid/icu/text/RuleBasedCollator;

    .line 23
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformCollatorICU;->mCollator:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v0, p1, p2}, Landroid/icu/text/RuleBasedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public configure(Lcom/facebook/hermes/intl/ILocaleObject;)Lcom/facebook/hermes/intl/IPlatformCollator;
    .locals 3
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

    .line 28
    .local p1, "localeObject":Lcom/facebook/hermes/intl/ILocaleObject;, "Lcom/facebook/hermes/intl/ILocaleObject<*>;"
    move-object v0, p1

    check-cast v0, Lcom/facebook/hermes/intl/LocaleObjectICU;

    .line 30
    .local v0, "mLocale":Lcom/facebook/hermes/intl/LocaleObjectICU;
    invoke-virtual {v0}, Lcom/facebook/hermes/intl/LocaleObjectICU;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/text/RuleBasedCollator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;

    move-result-object v1

    check-cast v1, Landroid/icu/text/RuleBasedCollator;

    iput-object v1, p0, Lcom/facebook/hermes/intl/PlatformCollatorICU;->mCollator:Landroid/icu/text/RuleBasedCollator;

    .line 34
    iget-object v1, p0, Lcom/facebook/hermes/intl/PlatformCollatorICU;->mCollator:Landroid/icu/text/RuleBasedCollator;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/icu/text/RuleBasedCollator;->setDecomposition(I)V

    .line 36
    return-object p0
.end method

.method public getAvailableLocales()[Ljava/lang/String;
    .locals 6

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v0, "availableLocaleIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Landroid/icu/util/ULocale;->getAvailableLocales()[Landroid/icu/util/ULocale;

    move-result-object v1

    .line 146
    .local v1, "availableLocales":[Landroid/icu/util/ULocale;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 147
    .local v4, "locale":Landroid/icu/util/ULocale;
    invoke-virtual {v4}, Landroid/icu/util/ULocale;->toLanguageTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    .end local v4    # "locale":Landroid/icu/util/ULocale;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 151
    .local v2, "availableLocaleIdsArray":[Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public getSensitivity()Lcom/facebook/hermes/intl/IPlatformCollator$Sensitivity;
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformCollatorICU;->mCollator:Landroid/icu/text/RuleBasedCollator;

    if-nez v0, :cond_0

    .line 49
    sget-object v0, Lcom/facebook/hermes/intl/IPlatformCollator$Sensitivity;->LOCALE:Lcom/facebook/hermes/intl/IPlatformCollator$Sensitivity;

    return-object v0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformCollatorICU;->mCollator:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v0}, Landroid/icu/text/RuleBasedCollator;->getStrength()I

    move-result v0

    .line 53
    .local v0, "strength":I
    if-nez v0, :cond_2

    .line 54
    iget-object v1, p0, Lcom/facebook/hermes/intl/PlatformCollatorICU;->mCollator:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v1}, Landroid/icu/text/RuleBasedCollator;->isCaseLevel()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/facebook/hermes/intl/IPlatformCollator$Sensitivity;->CASE:Lcom/facebook/hermes/intl/IPlatformCollator$Sensitivity;

    return-object v1

    .line 55
    :cond_1
    sget-object v1, Lcom/facebook/hermes/intl/IPlatformCollator$Sensitivity;->BASE:Lcom/facebook/hermes/intl/IPlatformCollator$Sensitivity;

    return-object v1

    .line 58
    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    sget-object v1, Lcom/facebook/hermes/intl/IPlatformCollator$Sensitivity;->ACCENT:Lcom/facebook/hermes/intl/IPlatformCollator$Sensitivity;

    return-object v1

    .line 60
    :cond_3
    sget-object v1, Lcom/facebook/hermes/intl/IPlatformCollator$Sensitivity;->VARIANT:Lcom/facebook/hermes/intl/IPlatformCollator$Sensitivity;

    return-object v1
.end method

.method public setCaseFirstAttribute(Lcom/facebook/hermes/intl/IPlatformCollator$CaseFirst;)Lcom/facebook/hermes/intl/IPlatformCollator;
    .locals 2
    .param p1, "caseFirst"    # Lcom/facebook/hermes/intl/IPlatformCollator$CaseFirst;

    .line 110
    sget-object v0, Lcom/facebook/hermes/intl/PlatformCollatorICU$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformCollator$CaseFirst:[I

    invoke-virtual {p1}, Lcom/facebook/hermes/intl/IPlatformCollator$CaseFirst;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 121
    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformCollatorICU;->mCollator:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v0}, Landroid/icu/text/RuleBasedCollator;->setCaseFirstDefault()V

    goto :goto_0

    .line 116
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformCollatorICU;->mCollator:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v0, v1}, Landroid/icu/text/RuleBasedCollator;->setLowerCaseFirst(Z)V

    .line 117
    goto :goto_0

    .line 112
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformCollatorICU;->mCollator:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v0, v1}, Landroid/icu/text/RuleBasedCollator;->setUpperCaseFirst(Z)V

    .line 113
    nop

    .line 125
    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setIgnorePunctuation(Z)Lcom/facebook/hermes/intl/IPlatformCollator;
    .locals 2
    .param p1, "ignore"    # Z

    .line 88
    if-eqz p1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformCollatorICU;->mCollator:Landroid/icu/text/RuleBasedCollator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/icu/text/RuleBasedCollator;->setAlternateHandlingShifted(Z)V

    .line 94
    :cond_0
    return-object p0
.end method

.method public setNumericAttribute(Z)Lcom/facebook/hermes/intl/IPlatformCollator;
    .locals 2
    .param p1, "numeric"    # Z

    .line 100
    if-eqz p1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformCollatorICU;->mCollator:Landroid/icu/text/RuleBasedCollator;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/hermes/intl/JSObjects;->getJavaBoolean(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/icu/text/RuleBasedCollator;->setNumericCollation(Z)V

    .line 104
    :cond_0
    return-object p0
.end method

.method public setSensitivity(Lcom/facebook/hermes/intl/IPlatformCollator$Sensitivity;)Lcom/facebook/hermes/intl/IPlatformCollator;
    .locals 3
    .param p1, "sensitivity"    # Lcom/facebook/hermes/intl/IPlatformCollator$Sensitivity;

    .line 66
    sget-object v0, Lcom/facebook/hermes/intl/PlatformCollatorICU$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformCollator$Sensitivity:[I

    invoke-virtual {p1}, Lcom/facebook/hermes/intl/IPlatformCollator$Sensitivity;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 78
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformCollatorICU;->mCollator:Landroid/icu/text/RuleBasedCollator;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/icu/text/RuleBasedCollator;->setStrength(I)V

    goto :goto_0

    .line 74
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformCollatorICU;->mCollator:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v0, v2}, Landroid/icu/text/RuleBasedCollator;->setStrength(I)V

    .line 75
    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformCollatorICU;->mCollator:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v0, v1}, Landroid/icu/text/RuleBasedCollator;->setCaseLevel(Z)V

    .line 76
    goto :goto_0

    .line 71
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformCollatorICU;->mCollator:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v0, v1}, Landroid/icu/text/RuleBasedCollator;->setStrength(I)V

    .line 72
    goto :goto_0

    .line 68
    :pswitch_3
    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformCollatorICU;->mCollator:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v0, v2}, Landroid/icu/text/RuleBasedCollator;->setStrength(I)V

    .line 69
    nop

    .line 82
    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
