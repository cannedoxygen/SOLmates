.class public Lcom/facebook/hermes/intl/Collator;
.super Ljava/lang/Object;
.source "Collator.java"


# instance fields
.field private mPlatformCollatorObject:Lcom/facebook/hermes/intl/IPlatformCollator;

.field private mResolvedCaseFirst:Lcom/facebook/hermes/intl/IPlatformCollator$CaseFirst;

.field private mResolvedCollation:Ljava/lang/String;

.field private mResolvedIgnorePunctuation:Z

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

.field private mResolvedNumeric:Z

.field private mResolvedSensitivity:Lcom/facebook/hermes/intl/IPlatformCollator$Sensitivity;

.field private mResolvedUsage:Lcom/facebook/hermes/intl/IPlatformCollator$Usage;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/Map;)V
    .locals 2
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

    .line 216
    .local p1, "locales":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, "default"

    iput-object v0, p0, Lcom/facebook/hermes/intl/Collator;->mResolvedCollation:Ljava/lang/String;

    .line 218
    nop

    .line 219
    new-instance v0, Lcom/facebook/hermes/intl/PlatformCollatorICU;

    invoke-direct {v0}, Lcom/facebook/hermes/intl/PlatformCollatorICU;-><init>()V

    iput-object v0, p0, Lcom/facebook/hermes/intl/Collator;->mPlatformCollatorObject:Lcom/facebook/hermes/intl/IPlatformCollator;

    .line 224
    invoke-direct {p0, p1, p2}, Lcom/facebook/hermes/intl/Collator;->initializeCollator(Ljava/util/List;Ljava/util/Map;)V

    .line 226
    iget-object v0, p0, Lcom/facebook/hermes/intl/Collator;->mPlatformCollatorObject:Lcom/facebook/hermes/intl/IPlatformCollator;

    iget-object v1, p0, Lcom/facebook/hermes/intl/Collator;->mResolvedLocaleObject:Lcom/facebook/hermes/intl/ILocaleObject;

    .line 227
    invoke-interface {v0, v1}, Lcom/facebook/hermes/intl/IPlatformCollator;->configure(Lcom/facebook/hermes/intl/ILocaleObject;)Lcom/facebook/hermes/intl/IPlatformCollator;

    move-result-object v0

    iget-boolean v1, p0, Lcom/facebook/hermes/intl/Collator;->mResolvedNumeric:Z

    .line 228
    invoke-interface {v0, v1}, Lcom/facebook/hermes/intl/IPlatformCollator;->setNumericAttribute(Z)Lcom/facebook/hermes/intl/IPlatformCollator;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/hermes/intl/Collator;->mResolvedCaseFirst:Lcom/facebook/hermes/intl/IPlatformCollator$CaseFirst;

    .line 229
    invoke-interface {v0, v1}, Lcom/facebook/hermes/intl/IPlatformCollator;->setCaseFirstAttribute(Lcom/facebook/hermes/intl/IPlatformCollator$CaseFirst;)Lcom/facebook/hermes/intl/IPlatformCollator;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/hermes/intl/Collator;->mResolvedSensitivity:Lcom/facebook/hermes/intl/IPlatformCollator$Sensitivity;

    .line 230
    invoke-interface {v0, v1}, Lcom/facebook/hermes/intl/IPlatformCollator;->setSensitivity(Lcom/facebook/hermes/intl/IPlatformCollator$Sensitivity;)Lcom/facebook/hermes/intl/IPlatformCollator;

    move-result-object v0

    iget-boolean v1, p0, Lcom/facebook/hermes/intl/Collator;->mResolvedIgnorePunctuation:Z

    .line 231
    invoke-interface {v0, v1}, Lcom/facebook/hermes/intl/IPlatformCollator;->setIgnorePunctuation(Z)Lcom/facebook/hermes/intl/IPlatformCollator;

    .line 232
    return-void
.end method

.method private initializeCollator(Ljava/util/List;Ljava/util/Map;)V
    .locals 20
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

    .line 91
    .local p1, "locales":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    sget-object v2, Lcom/facebook/hermes/intl/OptionHelpers$OptionType;->STRING:Lcom/facebook/hermes/intl/OptionHelpers$OptionType;

    sget-object v3, Lcom/facebook/hermes/intl/Constants;->COLLATOR_USAGE_POSSIBLE_VALUES:[Ljava/lang/String;

    .line 92
    const-string/jumbo v4, "usage"

    const-string/jumbo v5, "sort"

    invoke-static {v1, v4, v2, v3, v5}, Lcom/facebook/hermes/intl/OptionHelpers;->GetOption(Ljava/lang/Object;Ljava/lang/String;Lcom/facebook/hermes/intl/OptionHelpers$OptionType;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 98
    .local v2, "usage":Ljava/lang/Object;
    const-class v3, Lcom/facebook/hermes/intl/IPlatformCollator$Usage;

    .line 99
    invoke-static {v2}, Lcom/facebook/hermes/intl/JSObjects;->getJavaString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/facebook/hermes/intl/OptionHelpers;->searchEnum(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Lcom/facebook/hermes/intl/IPlatformCollator$Usage;

    iput-object v3, v0, Lcom/facebook/hermes/intl/Collator;->mResolvedUsage:Lcom/facebook/hermes/intl/IPlatformCollator$Usage;

    .line 107
    invoke-static {}, Lcom/facebook/hermes/intl/JSObjects;->newObject()Ljava/lang/Object;

    move-result-object v3

    .line 109
    .local v3, "opt":Ljava/lang/Object;
    sget-object v4, Lcom/facebook/hermes/intl/OptionHelpers$OptionType;->STRING:Lcom/facebook/hermes/intl/OptionHelpers$OptionType;

    sget-object v5, Lcom/facebook/hermes/intl/Constants;->LOCALEMATCHER_POSSIBLE_VALUES:[Ljava/lang/String;

    .line 110
    const-string v6, "localeMatcher"

    const-string v7, "best fit"

    invoke-static {v1, v6, v4, v5, v7}, Lcom/facebook/hermes/intl/OptionHelpers;->GetOption(Ljava/lang/Object;Ljava/lang/String;Lcom/facebook/hermes/intl/OptionHelpers$OptionType;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 116
    .local v4, "matcher":Ljava/lang/Object;
    invoke-static {v3, v6, v4}, Lcom/facebook/hermes/intl/JSObjects;->Put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 118
    sget-object v5, Lcom/facebook/hermes/intl/OptionHelpers$OptionType;->BOOLEAN:Lcom/facebook/hermes/intl/OptionHelpers$OptionType;

    .line 123
    invoke-static {}, Lcom/facebook/hermes/intl/JSObjects;->Undefined()Ljava/lang/Object;

    move-result-object v6

    .line 124
    invoke-static {}, Lcom/facebook/hermes/intl/JSObjects;->Undefined()Ljava/lang/Object;

    move-result-object v7

    .line 119
    const-string/jumbo v8, "numeric"

    invoke-static {v1, v8, v5, v6, v7}, Lcom/facebook/hermes/intl/OptionHelpers;->GetOption(Ljava/lang/Object;Ljava/lang/String;Lcom/facebook/hermes/intl/OptionHelpers$OptionType;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 125
    .local v5, "numeric":Ljava/lang/Object;
    invoke-static {v5}, Lcom/facebook/hermes/intl/JSObjects;->isUndefined(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 126
    invoke-static {v5}, Lcom/facebook/hermes/intl/JSObjects;->getJavaBoolean(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/facebook/hermes/intl/JSObjects;->newString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 127
    :cond_0
    const-string v6, "kn"

    invoke-static {v3, v6, v5}, Lcom/facebook/hermes/intl/JSObjects;->Put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    sget-object v7, Lcom/facebook/hermes/intl/OptionHelpers$OptionType;->STRING:Lcom/facebook/hermes/intl/OptionHelpers$OptionType;

    sget-object v8, Lcom/facebook/hermes/intl/Constants;->CASEFIRST_POSSIBLE_VALUES:[Ljava/lang/String;

    .line 135
    invoke-static {}, Lcom/facebook/hermes/intl/JSObjects;->Undefined()Ljava/lang/Object;

    move-result-object v9

    .line 130
    const-string v10, "caseFirst"

    invoke-static {v1, v10, v7, v8, v9}, Lcom/facebook/hermes/intl/OptionHelpers;->GetOption(Ljava/lang/Object;Ljava/lang/String;Lcom/facebook/hermes/intl/OptionHelpers$OptionType;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 136
    .local v7, "caseFirst":Ljava/lang/Object;
    const-string v8, "kf"

    invoke-static {v3, v8, v7}, Lcom/facebook/hermes/intl/JSObjects;->Put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "co"

    aput-object v11, v9, v10

    const/4 v12, 0x1

    aput-object v8, v9, v12

    const/4 v12, 0x2

    aput-object v6, v9, v12

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 141
    .local v9, "relevantExtensionKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v12, p1

    invoke-static {v12, v3, v9}, Lcom/facebook/hermes/intl/LocaleResolver;->resolveLocale(Ljava/util/List;Ljava/lang/Object;Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v13

    .line 143
    .local v13, "r":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {v13}, Lcom/facebook/hermes/intl/JSObjects;->getJavaMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v14

    const-string v15, "locale"

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/facebook/hermes/intl/ILocaleObject;

    iput-object v14, v0, Lcom/facebook/hermes/intl/Collator;->mResolvedLocaleObject:Lcom/facebook/hermes/intl/ILocaleObject;

    .line 144
    iget-object v14, v0, Lcom/facebook/hermes/intl/Collator;->mResolvedLocaleObject:Lcom/facebook/hermes/intl/ILocaleObject;

    invoke-interface {v14}, Lcom/facebook/hermes/intl/ILocaleObject;->cloneObject()Lcom/facebook/hermes/intl/ILocaleObject;

    move-result-object v14

    iput-object v14, v0, Lcom/facebook/hermes/intl/Collator;->mResolvedLocaleObjectForResolvedOptions:Lcom/facebook/hermes/intl/ILocaleObject;

    .line 146
    invoke-static {v13, v11}, Lcom/facebook/hermes/intl/JSObjects;->Get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 147
    .local v14, "collation":Ljava/lang/Object;
    invoke-static {v14}, Lcom/facebook/hermes/intl/JSObjects;->isNull(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    const-string v15, "default"

    invoke-static {v15}, Lcom/facebook/hermes/intl/JSObjects;->newString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 148
    :cond_1
    invoke-static {v14}, Lcom/facebook/hermes/intl/JSObjects;->getJavaString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v0, Lcom/facebook/hermes/intl/Collator;->mResolvedCollation:Ljava/lang/String;

    .line 150
    invoke-static {v13, v6}, Lcom/facebook/hermes/intl/JSObjects;->Get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 151
    .local v6, "numericCollation":Ljava/lang/Object;
    invoke-static {v6}, Lcom/facebook/hermes/intl/JSObjects;->isNull(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    iput-boolean v10, v0, Lcom/facebook/hermes/intl/Collator;->mResolvedNumeric:Z

    goto :goto_0

    .line 153
    :cond_2
    invoke-static {v6}, Lcom/facebook/hermes/intl/JSObjects;->getJavaString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 154
    .local v15, "numericCollationValue":Ljava/lang/String;
    invoke-static {v15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, v0, Lcom/facebook/hermes/intl/Collator;->mResolvedNumeric:Z

    .line 157
    .end local v15    # "numericCollationValue":Ljava/lang/String;
    :goto_0
    invoke-static {v13, v8}, Lcom/facebook/hermes/intl/JSObjects;->Get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 158
    .local v8, "caseFirstCollation":Ljava/lang/Object;
    invoke-static {v8}, Lcom/facebook/hermes/intl/JSObjects;->isNull(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const-string v10, "false"

    invoke-static {v10}, Lcom/facebook/hermes/intl/JSObjects;->newString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 160
    :cond_3
    const-class v10, Lcom/facebook/hermes/intl/IPlatformCollator$CaseFirst;

    .line 162
    invoke-static {v8}, Lcom/facebook/hermes/intl/JSObjects;->getJavaString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 161
    invoke-static {v10, v15}, Lcom/facebook/hermes/intl/OptionHelpers;->searchEnum(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v10

    check-cast v10, Lcom/facebook/hermes/intl/IPlatformCollator$CaseFirst;

    iput-object v10, v0, Lcom/facebook/hermes/intl/Collator;->mResolvedCaseFirst:Lcom/facebook/hermes/intl/IPlatformCollator$CaseFirst;

    .line 165
    iget-object v10, v0, Lcom/facebook/hermes/intl/Collator;->mResolvedUsage:Lcom/facebook/hermes/intl/IPlatformCollator$Usage;

    sget-object v15, Lcom/facebook/hermes/intl/IPlatformCollator$Usage;->SEARCH:Lcom/facebook/hermes/intl/IPlatformCollator$Usage;

    if-ne v10, v15, :cond_5

    .line 166
    iget-object v10, v0, Lcom/facebook/hermes/intl/Collator;->mResolvedLocaleObject:Lcom/facebook/hermes/intl/ILocaleObject;

    .line 167
    const-string v15, "collation"

    invoke-interface {v10, v15}, Lcom/facebook/hermes/intl/ILocaleObject;->getUnicodeExtensions(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 169
    .local v10, "currentCollationExtensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v15, "currentResolvedCollationExtensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 171
    .local v18, "currentCollationExtension":Ljava/lang/String;
    nop

    .line 172
    move-object/from16 v19, v2

    .end local v2    # "usage":Ljava/lang/Object;
    .local v19, "usage":Ljava/lang/Object;
    invoke-static/range {v18 .. v18}, Lcom/facebook/hermes/intl/UnicodeExtensionKeys;->resolveCollationAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 171
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    .end local v18    # "currentCollationExtension":Ljava/lang/String;
    move-object/from16 v2, v19

    goto :goto_1

    .line 175
    .end local v19    # "usage":Ljava/lang/Object;
    .restart local v2    # "usage":Ljava/lang/Object;
    :cond_4
    move-object/from16 v19, v2

    .line 176
    .end local v2    # "usage":Ljava/lang/Object;
    .restart local v19    # "usage":Ljava/lang/Object;
    const-string/jumbo v2, "search"

    invoke-static {v2}, Lcom/facebook/hermes/intl/UnicodeExtensionKeys;->resolveCollationAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 175
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v2, v0, Lcom/facebook/hermes/intl/Collator;->mResolvedLocaleObject:Lcom/facebook/hermes/intl/ILocaleObject;

    invoke-interface {v2, v11, v15}, Lcom/facebook/hermes/intl/ILocaleObject;->setUnicodeExtensions(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_2

    .line 165
    .end local v10    # "currentCollationExtensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15    # "currentResolvedCollationExtensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19    # "usage":Ljava/lang/Object;
    .restart local v2    # "usage":Ljava/lang/Object;
    :cond_5
    move-object/from16 v19, v2

    .line 181
    .end local v2    # "usage":Ljava/lang/Object;
    .restart local v19    # "usage":Ljava/lang/Object;
    :goto_2
    sget-object v2, Lcom/facebook/hermes/intl/OptionHelpers$OptionType;->STRING:Lcom/facebook/hermes/intl/OptionHelpers$OptionType;

    sget-object v10, Lcom/facebook/hermes/intl/Constants;->SENSITIVITY_POSSIBLE_VALUES:[Ljava/lang/String;

    .line 187
    invoke-static {}, Lcom/facebook/hermes/intl/JSObjects;->Undefined()Ljava/lang/Object;

    move-result-object v11

    .line 182
    const-string/jumbo v15, "sensitivity"

    invoke-static {v1, v15, v2, v10, v11}, Lcom/facebook/hermes/intl/OptionHelpers;->GetOption(Ljava/lang/Object;Ljava/lang/String;Lcom/facebook/hermes/intl/OptionHelpers$OptionType;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 188
    .local v2, "sensitivity":Ljava/lang/Object;
    invoke-static {v2}, Lcom/facebook/hermes/intl/JSObjects;->isUndefined(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 189
    const-class v10, Lcom/facebook/hermes/intl/IPlatformCollator$Sensitivity;

    .line 191
    invoke-static {v2}, Lcom/facebook/hermes/intl/JSObjects;->getJavaString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 190
    invoke-static {v10, v11}, Lcom/facebook/hermes/intl/OptionHelpers;->searchEnum(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v10

    check-cast v10, Lcom/facebook/hermes/intl/IPlatformCollator$Sensitivity;

    iput-object v10, v0, Lcom/facebook/hermes/intl/Collator;->mResolvedSensitivity:Lcom/facebook/hermes/intl/IPlatformCollator$Sensitivity;

    goto :goto_3

    .line 194
    :cond_6
    iget-object v10, v0, Lcom/facebook/hermes/intl/Collator;->mResolvedUsage:Lcom/facebook/hermes/intl/IPlatformCollator$Usage;

    sget-object v11, Lcom/facebook/hermes/intl/IPlatformCollator$Usage;->SORT:Lcom/facebook/hermes/intl/IPlatformCollator$Usage;

    if-ne v10, v11, :cond_7

    .line 195
    sget-object v10, Lcom/facebook/hermes/intl/IPlatformCollator$Sensitivity;->VARIANT:Lcom/facebook/hermes/intl/IPlatformCollator$Sensitivity;

    iput-object v10, v0, Lcom/facebook/hermes/intl/Collator;->mResolvedSensitivity:Lcom/facebook/hermes/intl/IPlatformCollator$Sensitivity;

    goto :goto_3

    .line 196
    :cond_7
    sget-object v10, Lcom/facebook/hermes/intl/IPlatformCollator$Sensitivity;->LOCALE:Lcom/facebook/hermes/intl/IPlatformCollator$Sensitivity;

    iput-object v10, v0, Lcom/facebook/hermes/intl/Collator;->mResolvedSensitivity:Lcom/facebook/hermes/intl/IPlatformCollator$Sensitivity;

    .line 199
    :goto_3
    sget-object v10, Lcom/facebook/hermes/intl/OptionHelpers$OptionType;->BOOLEAN:Lcom/facebook/hermes/intl/OptionHelpers$OptionType;

    .line 204
    invoke-static {}, Lcom/facebook/hermes/intl/JSObjects;->Undefined()Ljava/lang/Object;

    move-result-object v11

    .line 205
    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    .line 200
    move-object/from16 v16, v2

    .end local v2    # "sensitivity":Ljava/lang/Object;
    .local v16, "sensitivity":Ljava/lang/Object;
    const-string v2, "ignorePunctuation"

    invoke-static {v1, v2, v10, v11, v15}, Lcom/facebook/hermes/intl/OptionHelpers;->GetOption(Ljava/lang/Object;Ljava/lang/String;Lcom/facebook/hermes/intl/OptionHelpers$OptionType;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 206
    .local v2, "ignorePunctuation":Ljava/lang/Object;
    invoke-static {v2}, Lcom/facebook/hermes/intl/JSObjects;->getJavaBoolean(Ljava/lang/Object;)Z

    move-result v10

    iput-boolean v10, v0, Lcom/facebook/hermes/intl/Collator;->mResolvedIgnorePunctuation:Z

    .line 207
    return-void
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

    .line 244
    .local p0, "locales":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lcom/facebook/hermes/intl/OptionHelpers$OptionType;->STRING:Lcom/facebook/hermes/intl/OptionHelpers$OptionType;

    sget-object v1, Lcom/facebook/hermes/intl/Constants;->LOCALEMATCHER_POSSIBLE_VALUES:[Ljava/lang/String;

    .line 246
    const-string v2, "localeMatcher"

    const-string v3, "best fit"

    invoke-static {p1, v2, v0, v1, v3}, Lcom/facebook/hermes/intl/OptionHelpers;->GetOption(Ljava/lang/Object;Ljava/lang/String;Lcom/facebook/hermes/intl/OptionHelpers$OptionType;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 245
    invoke-static {v0}, Lcom/facebook/hermes/intl/JSObjects;->getJavaString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "matcher":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    nop

    .line 254
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/hermes/intl/LocaleMatcher;->bestFitSupportedLocales([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 253
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 256
    :cond_0
    nop

    .line 257
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/hermes/intl/LocaleMatcher;->lookupSupportedLocales([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 256
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public compare(Ljava/lang/String;Ljava/lang/String;)D
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;

    .line 298
    iget-object v0, p0, Lcom/facebook/hermes/intl/Collator;->mPlatformCollatorObject:Lcom/facebook/hermes/intl/IPlatformCollator;

    invoke-interface {v0, p1, p2}, Lcom/facebook/hermes/intl/IPlatformCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    int-to-double v0, v0

    return-wide v0
.end method

.method public resolvedOptions()Ljava/util/Map;
    .locals 5
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

    .line 265
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 266
    .local v0, "finalResolvedOptions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/facebook/hermes/intl/Collator;->mResolvedLocaleObjectForResolvedOptions:Lcom/facebook/hermes/intl/ILocaleObject;

    invoke-interface {v1}, Lcom/facebook/hermes/intl/ILocaleObject;->toCanonicalTag()Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, "finalResolvedLocaleId":Ljava/lang/String;
    const-string v2, "-kn-true"

    const-string v3, "-kn"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 270
    const-string v2, "locale"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object v2, p0, Lcom/facebook/hermes/intl/Collator;->mResolvedUsage:Lcom/facebook/hermes/intl/IPlatformCollator$Usage;

    invoke-virtual {v2}, Lcom/facebook/hermes/intl/IPlatformCollator$Usage;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "usage"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    iget-object v2, p0, Lcom/facebook/hermes/intl/Collator;->mResolvedSensitivity:Lcom/facebook/hermes/intl/IPlatformCollator$Sensitivity;

    sget-object v3, Lcom/facebook/hermes/intl/IPlatformCollator$Sensitivity;->LOCALE:Lcom/facebook/hermes/intl/IPlatformCollator$Sensitivity;

    const-string/jumbo v4, "sensitivity"

    if-ne v2, v3, :cond_0

    .line 275
    iget-object v2, p0, Lcom/facebook/hermes/intl/Collator;->mPlatformCollatorObject:Lcom/facebook/hermes/intl/IPlatformCollator;

    invoke-interface {v2}, Lcom/facebook/hermes/intl/IPlatformCollator;->getSensitivity()Lcom/facebook/hermes/intl/IPlatformCollator$Sensitivity;

    move-result-object v2

    .line 276
    .local v2, "defaultSensitivity":Lcom/facebook/hermes/intl/IPlatformCollator$Sensitivity;
    nop

    .line 277
    invoke-virtual {v2}, Lcom/facebook/hermes/intl/IPlatformCollator$Sensitivity;->toString()Ljava/lang/String;

    move-result-object v3

    .line 276
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .end local v2    # "defaultSensitivity":Lcom/facebook/hermes/intl/IPlatformCollator$Sensitivity;
    goto :goto_0

    .line 279
    :cond_0
    iget-object v2, p0, Lcom/facebook/hermes/intl/Collator;->mResolvedSensitivity:Lcom/facebook/hermes/intl/IPlatformCollator$Sensitivity;

    .line 280
    invoke-virtual {v2}, Lcom/facebook/hermes/intl/IPlatformCollator$Sensitivity;->toString()Ljava/lang/String;

    move-result-object v2

    .line 279
    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    :goto_0
    iget-boolean v2, p0, Lcom/facebook/hermes/intl/Collator;->mResolvedIgnorePunctuation:Z

    .line 284
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 283
    const-string v3, "ignorePunctuation"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string v2, "collation"

    iget-object v3, p0, Lcom/facebook/hermes/intl/Collator;->mResolvedCollation:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iget-boolean v2, p0, Lcom/facebook/hermes/intl/Collator;->mResolvedNumeric:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string/jumbo v3, "numeric"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    iget-object v2, p0, Lcom/facebook/hermes/intl/Collator;->mResolvedCaseFirst:Lcom/facebook/hermes/intl/IPlatformCollator$CaseFirst;

    invoke-virtual {v2}, Lcom/facebook/hermes/intl/IPlatformCollator$CaseFirst;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "caseFirst"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    return-object v0
.end method
