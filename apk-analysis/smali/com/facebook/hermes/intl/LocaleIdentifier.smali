.class public Lcom/facebook/hermes/intl/LocaleIdentifier;
.super Ljava/lang/Object;
.source "LocaleIdentifier.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 472
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addVariantSubtag(Ljava/lang/String;Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;)V
    .locals 3
    .param p0, "variantSubtag"    # Ljava/lang/String;
    .param p1, "parsedLanguageIdentifier"    # Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 478
    iget-object v0, p1, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;->variantSubtagList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 479
    iget-object v0, p1, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;->variantSubtagList:Ljava/util/ArrayList;

    .line 480
    invoke-static {v0, p0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 481
    .local v0, "position":I
    if-gez v0, :cond_0

    .line 483
    iget-object v1, p1, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;->variantSubtagList:Ljava/util/ArrayList;

    mul-int/lit8 v2, v0, -0x1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 487
    .end local v0    # "position":I
    goto :goto_0

    .line 485
    .restart local v0    # "position":I
    :cond_0
    new-instance v1, Lcom/facebook/hermes/intl/JSRangeErrorException;

    const-string v2, "Duplicate variant"

    invoke-direct {v1, v2}, Lcom/facebook/hermes/intl/JSRangeErrorException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 488
    .end local v0    # "position":I
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;->variantSubtagList:Ljava/util/ArrayList;

    .line 489
    iget-object v0, p1, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;->variantSubtagList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    :goto_0
    return-void
.end method

.method static canonicalizeLocaleId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "inLocaleId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 662
    invoke-static {p0}, Lcom/facebook/hermes/intl/LocaleObject;->createFromLocaleId(Ljava/lang/String;)Lcom/facebook/hermes/intl/ILocaleObject;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/hermes/intl/ILocaleObject;->toCanonicalTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static handleExtensions(Ljava/lang/CharSequence;Lcom/facebook/hermes/intl/LocaleIdTokenizer;Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;ZLcom/facebook/hermes/intl/ParsedLocaleIdentifier;)Z
    .locals 3
    .param p0, "inLocaleId"    # Ljava/lang/CharSequence;
    .param p1, "localeIdTokenizer"    # Lcom/facebook/hermes/intl/LocaleIdTokenizer;
    .param p2, "nextSubtag"    # Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;
    .param p3, "transformedExtMode"    # Z
    .param p4, "parsedLocaleIdentifier"    # Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;,
            Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtagIterationFailed;
        }
    .end annotation

    .line 925
    const/4 v0, 0x1

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;->isTranformedExtensionTKey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 926
    invoke-static {p0, p1, p2, p4}, Lcom/facebook/hermes/intl/LocaleIdentifier;->parseTransformedExtensionFields(Ljava/lang/CharSequence;Lcom/facebook/hermes/intl/LocaleIdTokenizer;Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;)V

    .line 928
    return v0

    .line 932
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;->isExtensionSingleton()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 933
    if-nez p3, :cond_1

    .line 934
    invoke-static {p0, p2, p1, p4}, Lcom/facebook/hermes/intl/LocaleIdentifier;->parseExtensions(Ljava/lang/CharSequence;Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;Lcom/facebook/hermes/intl/LocaleIdTokenizer;Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;)V

    .line 935
    return v0

    .line 937
    :cond_1
    new-instance v0, Lcom/facebook/hermes/intl/JSRangeErrorException;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    .line 938
    const-string v2, "Extension singletons in transformed extension language tag: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/hermes/intl/JSRangeErrorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 943
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method static parseExtensions(Ljava/lang/CharSequence;Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;Lcom/facebook/hermes/intl/LocaleIdTokenizer;Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;)V
    .locals 2
    .param p0, "inLocaleId"    # Ljava/lang/CharSequence;
    .param p1, "singletonSubtag"    # Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;
    .param p2, "localeIdTokenizer"    # Lcom/facebook/hermes/intl/LocaleIdTokenizer;
    .param p3, "parsedLocaleIdentifier"    # Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;,
            Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtagIterationFailed;
        }
    .end annotation

    .line 901
    invoke-virtual {p2}, Lcom/facebook/hermes/intl/LocaleIdTokenizer;->hasMoreSubtags()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 904
    invoke-virtual {p1}, Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 906
    .local v0, "singleton":C
    const/16 v1, 0x75

    if-ne v0, v1, :cond_0

    .line 907
    invoke-static {p0, p2, p3}, Lcom/facebook/hermes/intl/LocaleIdentifier;->parseUnicodeExtensions(Ljava/lang/CharSequence;Lcom/facebook/hermes/intl/LocaleIdTokenizer;Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;)V

    goto :goto_0

    .line 908
    :cond_0
    const/16 v1, 0x74

    if-ne v0, v1, :cond_1

    .line 909
    invoke-static {p0, p2, p3}, Lcom/facebook/hermes/intl/LocaleIdentifier;->parseTransformedExtensions(Ljava/lang/CharSequence;Lcom/facebook/hermes/intl/LocaleIdTokenizer;Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;)V

    goto :goto_0

    .line 910
    :cond_1
    const/16 v1, 0x78

    if-ne v0, v1, :cond_2

    .line 911
    invoke-static {p0, p2, p3}, Lcom/facebook/hermes/intl/LocaleIdentifier;->parsePrivateUseExtensions(Ljava/lang/CharSequence;Lcom/facebook/hermes/intl/LocaleIdTokenizer;Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;)V

    goto :goto_0

    .line 913
    :cond_2
    invoke-static {p0, p2, p3, v0}, Lcom/facebook/hermes/intl/LocaleIdentifier;->parseOtherExtensions(Ljava/lang/CharSequence;Lcom/facebook/hermes/intl/LocaleIdTokenizer;Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;C)V

    .line 915
    :goto_0
    return-void

    .line 902
    .end local v0    # "singleton":C
    :cond_3
    new-instance v0, Lcom/facebook/hermes/intl/JSRangeErrorException;

    const-string v1, "Extension sequence expected."

    invoke-direct {v0, v1}, Lcom/facebook/hermes/intl/JSRangeErrorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static parseLanguageId(Ljava/lang/CharSequence;Lcom/facebook/hermes/intl/LocaleIdTokenizer;Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;ZLcom/facebook/hermes/intl/ParsedLocaleIdentifier;)V
    .locals 5
    .param p0, "inLocaleId"    # Ljava/lang/CharSequence;
    .param p1, "localeIdTokenizer"    # Lcom/facebook/hermes/intl/LocaleIdTokenizer;
    .param p2, "nextSubtag"    # Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;
    .param p3, "transformedExtMode"    # Z
    .param p4, "parsedLocaleIdentifier"    # Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;,
            Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtagIterationFailed;
        }
    .end annotation

    .line 954
    new-instance v0, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;

    invoke-direct {v0}, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;-><init>()V

    .line 957
    .local v0, "parsedLanguageIdentifier":Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;
    if-eqz p3, :cond_0

    .line 958
    iput-object v0, p4, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->transformedLanguageIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;

    goto :goto_0

    .line 959
    :cond_0
    iput-object v0, p4, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->languageIdentifier:Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;

    .line 965
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;->isUnicodeLanguageSubtag()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 969
    invoke-virtual {p2}, Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;->toLowerString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;->languageSubtag:Ljava/lang/String;

    .line 971
    invoke-virtual {p1}, Lcom/facebook/hermes/intl/LocaleIdTokenizer;->hasMoreSubtags()Z

    move-result v1

    if-nez v1, :cond_1

    .line 972
    return-void

    .line 975
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/hermes/intl/LocaleIdTokenizer;->nextSubtag()Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;

    move-result-object v1

    move-object p2, v1

    .line 981
    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/hermes/intl/LocaleIdentifier;->handleExtensions(Ljava/lang/CharSequence;Lcom/facebook/hermes/intl/LocaleIdTokenizer;Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;ZLcom/facebook/hermes/intl/ParsedLocaleIdentifier;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 983
    return-void

    .line 985
    :cond_2
    invoke-virtual {p2}, Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;->isUnicodeScriptSubtag()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 986
    invoke-virtual {p2}, Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;->toTitleString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;->scriptSubtag:Ljava/lang/String;

    .line 988
    invoke-virtual {p1}, Lcom/facebook/hermes/intl/LocaleIdTokenizer;->hasMoreSubtags()Z

    move-result v1

    if-nez v1, :cond_3

    .line 989
    return-void

    .line 992
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/hermes/intl/LocaleIdTokenizer;->nextSubtag()Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;

    move-result-object v1

    move-object p2, v1

    .line 995
    :cond_4
    invoke-virtual {p2}, Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;->isUnicodeRegionSubtag()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 996
    invoke-virtual {p2}, Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;->toUpperString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;->regionSubtag:Ljava/lang/String;

    .line 998
    invoke-virtual {p1}, Lcom/facebook/hermes/intl/LocaleIdTokenizer;->hasMoreSubtags()Z

    move-result v1

    if-nez v1, :cond_5

    .line 999
    return-void

    .line 1001
    :cond_5
    invoke-virtual {p1}, Lcom/facebook/hermes/intl/LocaleIdTokenizer;->nextSubtag()Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;

    move-result-object v1

    move-object p2, v1

    .line 1005
    :cond_6
    :goto_1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/hermes/intl/LocaleIdentifier;->handleExtensions(Ljava/lang/CharSequence;Lcom/facebook/hermes/intl/LocaleIdTokenizer;Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;ZLcom/facebook/hermes/intl/ParsedLocaleIdentifier;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1007
    return-void

    .line 1009
    :cond_7
    invoke-virtual {p2}, Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;->isUnicodeVariantSubtag()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1014
    invoke-virtual {p2}, Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/hermes/intl/LocaleIdentifier;->addVariantSubtag(Ljava/lang/String;Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;)V

    .line 1017
    invoke-virtual {p1}, Lcom/facebook/hermes/intl/LocaleIdTokenizer;->hasMoreSubtags()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1018
    return-void

    .line 1020
    :cond_8
    invoke-virtual {p1}, Lcom/facebook/hermes/intl/LocaleIdTokenizer;->nextSubtag()Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;

    move-result-object v1

    move-object p2, v1

    .line 1022
    goto :goto_1

    .line 1010
    :cond_9
    new-instance v1, Lcom/facebook/hermes/intl/JSRangeErrorException;

    const-string v2, "Unknown token [%s] found in locale id: %s"

    .line 1012
    invoke-virtual {p2}, Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3, p0}, [Ljava/lang/Object;

    move-result-object v3

    .line 1011
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/hermes/intl/JSRangeErrorException;-><init>(Ljava/lang/String;)V

    .end local v0    # "parsedLanguageIdentifier":Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;
    .end local p0    # "inLocaleId":Ljava/lang/CharSequence;
    .end local p1    # "localeIdTokenizer":Lcom/facebook/hermes/intl/LocaleIdTokenizer;
    .end local p2    # "nextSubtag":Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;
    .end local p3    # "transformedExtMode":Z
    .end local p4    # "parsedLocaleIdentifier":Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;
    throw v1

    .line 966
    .restart local v0    # "parsedLanguageIdentifier":Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;
    .restart local p0    # "inLocaleId":Ljava/lang/CharSequence;
    .restart local p1    # "localeIdTokenizer":Lcom/facebook/hermes/intl/LocaleIdTokenizer;
    .restart local p2    # "nextSubtag":Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;
    .restart local p3    # "transformedExtMode":Z
    .restart local p4    # "parsedLocaleIdentifier":Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;
    :cond_a
    new-instance v1, Lcom/facebook/hermes/intl/JSRangeErrorException;

    const-string v2, "Language subtag expected at %s: %s"

    .line 967
    invoke-virtual {p2}, Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3, p0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/hermes/intl/JSRangeErrorException;-><init>(Ljava/lang/String;)V

    .end local v0    # "parsedLanguageIdentifier":Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;
    .end local p0    # "inLocaleId":Ljava/lang/CharSequence;
    .end local p1    # "localeIdTokenizer":Lcom/facebook/hermes/intl/LocaleIdTokenizer;
    .end local p2    # "nextSubtag":Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;
    .end local p3    # "transformedExtMode":Z
    .end local p4    # "parsedLocaleIdentifier":Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;
    throw v1
    :try_end_0
    .catch Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtagIterationFailed; {:try_start_0 .. :try_end_0} :catch_0

    .line 1024
    .restart local v0    # "parsedLanguageIdentifier":Lcom/facebook/hermes/intl/ParsedLocaleIdentifier$ParsedLanguageIdentifier;
    .restart local p0    # "inLocaleId":Ljava/lang/CharSequence;
    .restart local p1    # "localeIdTokenizer":Lcom/facebook/hermes/intl/LocaleIdTokenizer;
    .restart local p2    # "nextSubtag":Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;
    .restart local p3    # "transformedExtMode":Z
    .restart local p4    # "parsedLocaleIdentifier":Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;
    :catch_0
    move-exception v1

    .line 1025
    .local v1, "localeIdSubtagIterationFailed":Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtagIterationFailed;
    new-instance v2, Lcom/facebook/hermes/intl/JSRangeErrorException;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v3

    .line 1026
    const-string v4, "Locale Identifier subtag iteration failed: %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/hermes/intl/JSRangeErrorException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static parseLocaleId(Ljava/lang/String;)Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;
    .locals 2
    .param p0, "inLocaleId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 1059
    sget-object v0, Lcom/facebook/hermes/intl/LanguageTagsGenerated;->regularGrandfatheredKeys:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1060
    sget-object v0, Lcom/facebook/hermes/intl/LanguageTagsGenerated;->regularGrandfatheredKeys:[Ljava/lang/String;

    .line 1062
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1061
    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 1063
    .local v0, "grandfatheredIndex":I
    if-ltz v0, :cond_0

    .line 1064
    sget-object v1, Lcom/facebook/hermes/intl/LanguageTagsGenerated;->regularGrandfatheredReplacements:[Ljava/lang/String;

    aget-object p0, v1, v0

    .line 1069
    .end local v0    # "grandfatheredIndex":I
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 1071
    new-instance v0, Lcom/facebook/hermes/intl/LocaleIdTokenizer;

    invoke-direct {v0, p0}, Lcom/facebook/hermes/intl/LocaleIdTokenizer;-><init>(Ljava/lang/CharSequence;)V

    .line 1072
    .local v0, "localeIdTokenizer":Lcom/facebook/hermes/intl/LocaleIdTokenizer;
    invoke-static {p0, v0}, Lcom/facebook/hermes/intl/LocaleIdentifier;->parseLocaleId(Ljava/lang/String;Lcom/facebook/hermes/intl/LocaleIdTokenizer;)Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;

    move-result-object v1

    return-object v1
.end method

.method static parseLocaleId(Ljava/lang/String;Lcom/facebook/hermes/intl/LocaleIdTokenizer;)Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;
    .locals 5
    .param p0, "inLocaleId"    # Ljava/lang/String;
    .param p1, "localeIdTokenizer"    # Lcom/facebook/hermes/intl/LocaleIdTokenizer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 1032
    new-instance v0, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;

    invoke-direct {v0}, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;-><init>()V

    .line 1036
    .local v0, "parsedLocaleIdentifier":Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/hermes/intl/LocaleIdTokenizer;->hasMoreSubtags()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1039
    invoke-virtual {p1}, Lcom/facebook/hermes/intl/LocaleIdTokenizer;->nextSubtag()Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;

    move-result-object v1

    .line 1041
    .local v1, "nextSubtag":Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Lcom/facebook/hermes/intl/LocaleIdentifier;->parseLanguageId(Ljava/lang/CharSequence;Lcom/facebook/hermes/intl/LocaleIdTokenizer;Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;ZLcom/facebook/hermes/intl/ParsedLocaleIdentifier;)V

    .line 1043
    return-object v0

    .line 1037
    .end local v1    # "nextSubtag":Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;
    :cond_0
    new-instance v1, Lcom/facebook/hermes/intl/JSRangeErrorException;

    const-string v2, "Language subtag not found: %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/hermes/intl/JSRangeErrorException;-><init>(Ljava/lang/String;)V

    .end local v0    # "parsedLocaleIdentifier":Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;
    .end local p0    # "inLocaleId":Ljava/lang/String;
    .end local p1    # "localeIdTokenizer":Lcom/facebook/hermes/intl/LocaleIdTokenizer;
    throw v1
    :try_end_0
    .catch Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtagIterationFailed; {:try_start_0 .. :try_end_0} :catch_0

    .line 1045
    .restart local v0    # "parsedLocaleIdentifier":Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;
    .restart local p0    # "inLocaleId":Ljava/lang/String;
    .restart local p1    # "localeIdTokenizer":Lcom/facebook/hermes/intl/LocaleIdTokenizer;
    :catch_0
    move-exception v1

    .line 1046
    .local v1, "localeIdSubtagIterationFailed":Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtagIterationFailed;
    new-instance v2, Lcom/facebook/hermes/intl/JSRangeErrorException;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v3

    .line 1047
    const-string v4, "Locale Identifier subtag iteration failed: %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/hermes/intl/JSRangeErrorException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static parseOtherExtensions(Ljava/lang/CharSequence;Lcom/facebook/hermes/intl/LocaleIdTokenizer;Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;C)V
    .locals 4
    .param p0, "inLocaleId"    # Ljava/lang/CharSequence;
    .param p1, "localeIdTokenizer"    # Lcom/facebook/hermes/intl/LocaleIdTokenizer;
    .param p2, "parsedLocaleIdentifier"    # Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;
    .param p3, "singleton"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;,
            Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtagIterationFailed;
        }
    .end annotation

    .line 865
    invoke-virtual {p1}, Lcom/facebook/hermes/intl/LocaleIdTokenizer;->hasMoreSubtags()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 868
    invoke-virtual {p1}, Lcom/facebook/hermes/intl/LocaleIdTokenizer;->nextSubtag()Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;

    move-result-object v0

    .line 870
    .local v0, "nextSubtag":Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;
    iget-object v1, p2, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->otherExtensionsMap:Ljava/util/TreeMap;

    if-nez v1, :cond_0

    .line 871
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p2, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->otherExtensionsMap:Ljava/util/TreeMap;

    .line 874
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 875
    .local v1, "otherExtensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p2, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->otherExtensionsMap:Ljava/util/TreeMap;

    new-instance v3, Ljava/lang/Character;

    invoke-direct {v3, p3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v2, v3, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    :goto_0
    invoke-virtual {v0}, Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;->isOtherExtension()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 879
    invoke-virtual {v0}, Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 881
    invoke-virtual {p1}, Lcom/facebook/hermes/intl/LocaleIdTokenizer;->hasMoreSubtags()Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 883
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/hermes/intl/LocaleIdTokenizer;->nextSubtag()Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;

    move-result-object v0

    goto :goto_0

    .line 886
    :cond_2
    invoke-virtual {v0}, Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;->isExtensionSingleton()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 887
    invoke-static {p0, v0, p1, p2}, Lcom/facebook/hermes/intl/LocaleIdentifier;->parseExtensions(Ljava/lang/CharSequence;Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;Lcom/facebook/hermes/intl/LocaleIdTokenizer;Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;)V

    .line 888
    return-void

    .line 890
    :cond_3
    new-instance v2, Lcom/facebook/hermes/intl/JSRangeErrorException;

    const-string v3, "Malformed sequence expected."

    invoke-direct {v2, v3}, Lcom/facebook/hermes/intl/JSRangeErrorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 866
    .end local v0    # "nextSubtag":Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;
    .end local v1    # "otherExtensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    new-instance v0, Lcom/facebook/hermes/intl/JSRangeErrorException;

    const-string v1, "Extension sequence expected."

    invoke-direct {v0, v1}, Lcom/facebook/hermes/intl/JSRangeErrorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static parsePrivateUseExtensions(Ljava/lang/CharSequence;Lcom/facebook/hermes/intl/LocaleIdTokenizer;Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;)V
    .locals 3
    .param p0, "inLocaleId"    # Ljava/lang/CharSequence;
    .param p1, "localeIdTokenizer"    # Lcom/facebook/hermes/intl/LocaleIdTokenizer;
    .param p2, "parsedLocaleIdentifier"    # Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;,
            Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtagIterationFailed;
        }
    .end annotation

    .line 837
    invoke-virtual {p1}, Lcom/facebook/hermes/intl/LocaleIdTokenizer;->hasMoreSubtags()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 840
    invoke-virtual {p1}, Lcom/facebook/hermes/intl/LocaleIdTokenizer;->nextSubtag()Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;

    move-result-object v0

    .line 842
    .local v0, "nextSubtag":Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;
    iget-object v1, p2, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->puExtensions:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 843
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p2, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->puExtensions:Ljava/util/ArrayList;

    .line 846
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;->isPrivateUseExtension()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 848
    iget-object v1, p2, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->puExtensions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 850
    invoke-virtual {p1}, Lcom/facebook/hermes/intl/LocaleIdTokenizer;->hasMoreSubtags()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 852
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/hermes/intl/LocaleIdTokenizer;->nextSubtag()Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;

    move-result-object v0

    goto :goto_0

    .line 855
    :cond_2
    new-instance v1, Lcom/facebook/hermes/intl/JSRangeErrorException;

    const-string v2, "Tokens are not expected after pu extension."

    invoke-direct {v1, v2}, Lcom/facebook/hermes/intl/JSRangeErrorException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 838
    .end local v0    # "nextSubtag":Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;
    :cond_3
    new-instance v0, Lcom/facebook/hermes/intl/JSRangeErrorException;

    const-string v1, "Extension sequence expected."

    invoke-direct {v0, v1}, Lcom/facebook/hermes/intl/JSRangeErrorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static parseTransformedExtensionFields(Ljava/lang/CharSequence;Lcom/facebook/hermes/intl/LocaleIdTokenizer;Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;)V
    .locals 5
    .param p0, "inLocaleId"    # Ljava/lang/CharSequence;
    .param p1, "localeIdTokenizer"    # Lcom/facebook/hermes/intl/LocaleIdTokenizer;
    .param p2, "nextSubtag"    # Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;
    .param p3, "parsedLocaleIdentifier"    # Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;,
            Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtagIterationFailed;
        }
    .end annotation

    .line 748
    invoke-virtual {p2}, Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;->isTranformedExtensionTKey()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 750
    iget-object v0, p3, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->transformedExtensionFields:Ljava/util/TreeMap;

    if-nez v0, :cond_4

    .line 755
    iget-object v0, p3, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->transformedExtensionFields:Ljava/util/TreeMap;

    if-nez v0, :cond_0

    .line 756
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p3, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->transformedExtensionFields:Ljava/util/TreeMap;

    .line 760
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;->toString()Ljava/lang/String;

    move-result-object v0

    .line 761
    .local v0, "tkey":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 762
    .local v1, "tValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p3, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->transformedExtensionFields:Ljava/util/TreeMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    invoke-virtual {p1}, Lcom/facebook/hermes/intl/LocaleIdTokenizer;->hasMoreSubtags()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 766
    invoke-virtual {p1}, Lcom/facebook/hermes/intl/LocaleIdTokenizer;->nextSubtag()Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;

    move-result-object p2

    .line 768
    :goto_0
    invoke-virtual {p2}, Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;->isTranformedExtensionTValueItem()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 769
    invoke-virtual {p2}, Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    invoke-virtual {p1}, Lcom/facebook/hermes/intl/LocaleIdTokenizer;->hasMoreSubtags()Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 773
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/hermes/intl/LocaleIdTokenizer;->nextSubtag()Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;

    move-result-object p2

    goto :goto_0

    .line 781
    .end local v0    # "tkey":Ljava/lang/String;
    .end local v1    # "tValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {p2}, Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;->isTranformedExtensionTKey()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 777
    .restart local v0    # "tkey":Ljava/lang/String;
    .restart local v1    # "tValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    new-instance v2, Lcom/facebook/hermes/intl/JSRangeErrorException;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v3

    .line 778
    const-string v4, "Malformated transformed key in : %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/hermes/intl/JSRangeErrorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 751
    .end local v0    # "tkey":Ljava/lang/String;
    .end local v1    # "tValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    new-instance v0, Lcom/facebook/hermes/intl/JSRangeErrorException;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    .line 752
    const-string v2, "Duplicate transformed extension sequence in [%s]"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/hermes/intl/JSRangeErrorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 784
    :cond_5
    :goto_1
    invoke-virtual {p2}, Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;->isExtensionSingleton()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 785
    invoke-static {p0, p2, p1, p3}, Lcom/facebook/hermes/intl/LocaleIdentifier;->parseExtensions(Ljava/lang/CharSequence;Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;Lcom/facebook/hermes/intl/LocaleIdTokenizer;Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;)V

    .line 786
    return-void

    .line 788
    :cond_6
    new-instance v0, Lcom/facebook/hermes/intl/JSRangeErrorException;

    const-string v1, "Malformed extension sequence."

    invoke-direct {v0, v1}, Lcom/facebook/hermes/intl/JSRangeErrorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static parseTransformedExtensions(Ljava/lang/CharSequence;Lcom/facebook/hermes/intl/LocaleIdTokenizer;Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;)V
    .locals 4
    .param p0, "inLocaleId"    # Ljava/lang/CharSequence;
    .param p1, "localeIdTokenizer"    # Lcom/facebook/hermes/intl/LocaleIdTokenizer;
    .param p2, "parsedLocaleIdentifier"    # Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;,
            Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtagIterationFailed;
        }
    .end annotation

    .line 812
    invoke-virtual {p1}, Lcom/facebook/hermes/intl/LocaleIdTokenizer;->hasMoreSubtags()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 815
    invoke-virtual {p1}, Lcom/facebook/hermes/intl/LocaleIdTokenizer;->nextSubtag()Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;

    move-result-object v0

    .line 817
    .local v0, "nextSubtag":Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;
    invoke-virtual {v0}, Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;->isUnicodeLanguageSubtag()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 818
    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1, p2}, Lcom/facebook/hermes/intl/LocaleIdentifier;->parseLanguageId(Ljava/lang/CharSequence;Lcom/facebook/hermes/intl/LocaleIdTokenizer;Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;ZLcom/facebook/hermes/intl/ParsedLocaleIdentifier;)V

    goto :goto_0

    .line 820
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;->isTranformedExtensionTKey()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 821
    invoke-static {p0, p1, v0, p2}, Lcom/facebook/hermes/intl/LocaleIdentifier;->parseTransformedExtensionFields(Ljava/lang/CharSequence;Lcom/facebook/hermes/intl/LocaleIdTokenizer;Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;)V

    .line 829
    :goto_0
    return-void

    .line 824
    :cond_1
    new-instance v1, Lcom/facebook/hermes/intl/JSRangeErrorException;

    .line 827
    invoke-virtual {v0}, Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object v2

    .line 825
    const-string v3, "Unexpected token [%s] in transformed extension sequence [%s]"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/hermes/intl/JSRangeErrorException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 813
    .end local v0    # "nextSubtag":Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;
    :cond_2
    new-instance v0, Lcom/facebook/hermes/intl/JSRangeErrorException;

    const-string v1, "Extension sequence expected."

    invoke-direct {v0, v1}, Lcom/facebook/hermes/intl/JSRangeErrorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static parseUnicodeExtensions(Ljava/lang/CharSequence;Lcom/facebook/hermes/intl/LocaleIdTokenizer;Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;)V
    .locals 4
    .param p0, "inLocaleId"    # Ljava/lang/CharSequence;
    .param p1, "localeIdTokenizer"    # Lcom/facebook/hermes/intl/LocaleIdTokenizer;
    .param p2, "parsedLocaleIdentifier"    # Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;,
            Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtagIterationFailed;
        }
    .end annotation

    .line 682
    invoke-virtual {p1}, Lcom/facebook/hermes/intl/LocaleIdTokenizer;->hasMoreSubtags()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 685
    invoke-virtual {p1}, Lcom/facebook/hermes/intl/LocaleIdTokenizer;->nextSubtag()Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;

    move-result-object v0

    .line 687
    .local v0, "nextSubtag":Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;
    iget-object v1, p2, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->unicodeExtensionAttributes:Ljava/util/ArrayList;

    if-nez v1, :cond_9

    iget-object v1, p2, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->unicodeExtensionKeywords:Ljava/util/TreeMap;

    if-nez v1, :cond_9

    .line 694
    :goto_0
    invoke-virtual {v0}, Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;->isUnicodeExtensionAttribute()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 695
    iget-object v1, p2, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->unicodeExtensionAttributes:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 696
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p2, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->unicodeExtensionAttributes:Ljava/util/ArrayList;

    .line 698
    :cond_0
    iget-object v1, p2, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->unicodeExtensionAttributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    invoke-virtual {p1}, Lcom/facebook/hermes/intl/LocaleIdTokenizer;->hasMoreSubtags()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 702
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/hermes/intl/LocaleIdTokenizer;->nextSubtag()Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;

    move-result-object v0

    goto :goto_0

    .line 705
    :cond_2
    invoke-virtual {v0}, Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;->isUnicodeExtensionKey()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 707
    iget-object v1, p2, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->unicodeExtensionKeywords:Ljava/util/TreeMap;

    if-nez v1, :cond_3

    .line 708
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p2, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->unicodeExtensionKeywords:Ljava/util/TreeMap;

    .line 712
    :cond_3
    invoke-virtual {v0}, Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;->toString()Ljava/lang/String;

    move-result-object v1

    .line 713
    .local v1, "key":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 714
    .local v2, "extensionKeyTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p2, Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;->unicodeExtensionKeywords:Ljava/util/TreeMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    invoke-virtual {p1}, Lcom/facebook/hermes/intl/LocaleIdTokenizer;->hasMoreSubtags()Z

    move-result v3

    if-nez v3, :cond_4

    .line 718
    return-void

    .line 720
    :cond_4
    invoke-virtual {p1}, Lcom/facebook/hermes/intl/LocaleIdTokenizer;->nextSubtag()Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;

    move-result-object v0

    .line 722
    :goto_1
    invoke-virtual {v0}, Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;->isUnicodeExtensionKeyTypeItem()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 723
    invoke-virtual {v0}, Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 725
    invoke-virtual {p1}, Lcom/facebook/hermes/intl/LocaleIdTokenizer;->hasMoreSubtags()Z

    move-result v3

    if-nez v3, :cond_5

    return-void

    .line 727
    :cond_5
    invoke-virtual {p1}, Lcom/facebook/hermes/intl/LocaleIdTokenizer;->nextSubtag()Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;

    move-result-object v0

    goto :goto_1

    .line 730
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "extensionKeyTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    invoke-virtual {v0}, Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;->isUnicodeExtensionKey()Z

    move-result v1

    if-nez v1, :cond_3

    .line 733
    :cond_7
    invoke-virtual {v0}, Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;->isExtensionSingleton()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 734
    invoke-static {p0, v0, p1, p2}, Lcom/facebook/hermes/intl/LocaleIdentifier;->parseExtensions(Ljava/lang/CharSequence;Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;Lcom/facebook/hermes/intl/LocaleIdTokenizer;Lcom/facebook/hermes/intl/ParsedLocaleIdentifier;)V

    .line 735
    return-void

    .line 737
    :cond_8
    new-instance v1, Lcom/facebook/hermes/intl/JSRangeErrorException;

    const-string v2, "Malformed sequence expected."

    invoke-direct {v1, v2}, Lcom/facebook/hermes/intl/JSRangeErrorException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 689
    :cond_9
    new-instance v1, Lcom/facebook/hermes/intl/JSRangeErrorException;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    .line 690
    const-string v3, "Duplicate unicode extension sequence in [%s]"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/hermes/intl/JSRangeErrorException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 683
    .end local v0    # "nextSubtag":Lcom/facebook/hermes/intl/LocaleIdTokenizer$LocaleIdSubtag;
    :cond_a
    new-instance v0, Lcom/facebook/hermes/intl/JSRangeErrorException;

    const-string v1, "Extension sequence expected."

    invoke-direct {v0, v1}, Lcom/facebook/hermes/intl/JSRangeErrorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static replaceLanguageSubtagIfNeeded(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
    .locals 12
    .param p0, "languageSubtagBuffer"    # Ljava/lang/StringBuffer;
    .param p1, "scriptSubtagBuffer"    # Ljava/lang/StringBuffer;
    .param p2, "regionSubtagBuffer"    # Ljava/lang/StringBuffer;

    .line 499
    sget-object v0, Lcom/facebook/hermes/intl/LanguageTagsGenerated;->languageAliasKeys2:[Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 501
    :cond_0
    const/4 v0, 0x0

    .local v0, "languageAliasKeys":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 502
    .local v1, "languageAliasReplacements":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 503
    .local v2, "complexLanguageAliasKeys":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 504
    .local v3, "complexLanguageAliasReplacementsLanguage":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 505
    .local v4, "complexLanguageAliasReplacementsScript":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 507
    .local v5, "complexLanguageAliasReplacementsRegion":[Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 508
    sget-object v0, Lcom/facebook/hermes/intl/LanguageTagsGenerated;->languageAliasKeys2:[Ljava/lang/String;

    .line 509
    sget-object v1, Lcom/facebook/hermes/intl/LanguageTagsGenerated;->languageAliasReplacements2:[Ljava/lang/String;

    .line 511
    sget-object v2, Lcom/facebook/hermes/intl/LanguageTagsGenerated;->complexLanguageAliasKeys2:[Ljava/lang/String;

    .line 512
    sget-object v3, Lcom/facebook/hermes/intl/LanguageTagsGenerated;->complexLanguageAliasReplacementsLanguage2:[Ljava/lang/String;

    .line 514
    sget-object v4, Lcom/facebook/hermes/intl/LanguageTagsGenerated;->complexLanguageAliasReplacementsScript2:[Ljava/lang/String;

    .line 516
    sget-object v5, Lcom/facebook/hermes/intl/LanguageTagsGenerated;->complexLanguageAliasReplacementsRegion2:[Ljava/lang/String;

    goto :goto_0

    .line 519
    :cond_1
    sget-object v0, Lcom/facebook/hermes/intl/LanguageTagsGenerated;->languageAliasKeys3:[Ljava/lang/String;

    .line 520
    sget-object v1, Lcom/facebook/hermes/intl/LanguageTagsGenerated;->languageAliasReplacements3:[Ljava/lang/String;

    .line 522
    sget-object v2, Lcom/facebook/hermes/intl/LanguageTagsGenerated;->complexLanguageAliasKeys3:[Ljava/lang/String;

    .line 523
    sget-object v3, Lcom/facebook/hermes/intl/LanguageTagsGenerated;->complexLanguageAliasReplacementsLanguage3:[Ljava/lang/String;

    .line 525
    sget-object v4, Lcom/facebook/hermes/intl/LanguageTagsGenerated;->complexLanguageAliasReplacementsScript3:[Ljava/lang/String;

    .line 527
    sget-object v5, Lcom/facebook/hermes/intl/LanguageTagsGenerated;->complexLanguageAliasReplacementsRegion3:[Ljava/lang/String;

    .line 531
    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    .line 532
    .local v6, "found":I
    const/4 v7, 0x0

    if-ltz v6, :cond_2

    .line 533
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {p0, v7, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 534
    aget-object v7, v1, v6

    invoke-virtual {p0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 537
    :cond_2
    nop

    .line 538
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    .line 539
    if-ltz v6, :cond_5

    .line 540
    aget-object v8, v3, v6

    .line 541
    .local v8, "languageSubtagReplacement":Ljava/lang/String;
    aget-object v9, v4, v6

    .line 542
    .local v9, "scriptSubtagReplacement":Ljava/lang/String;
    aget-object v10, v5, v6

    .line 544
    .local v10, "regionSubtagReplacement":Ljava/lang/String;
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_4

    .line 546
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    invoke-virtual {p0, v7, v11}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 547
    invoke-virtual {p0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 549
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-nez v7, :cond_3

    if-eqz v9, :cond_3

    .line 550
    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 553
    :cond_3
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-nez v7, :cond_5

    if-eqz v10, :cond_5

    .line 554
    invoke-virtual {p2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 544
    :cond_4
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 558
    .end local v8    # "languageSubtagReplacement":Ljava/lang/String;
    .end local v9    # "scriptSubtagReplacement":Ljava/lang/String;
    .end local v10    # "regionSubtagReplacement":Ljava/lang/String;
    :cond_5
    :goto_1
    return-void
.end method

.method public static replaceRegionSubtagIfNeeded(Ljava/lang/StringBuffer;)Ljava/lang/String;
    .locals 2
    .param p0, "regionSubtag"    # Ljava/lang/StringBuffer;

    .line 561
    sget-object v0, Lcom/facebook/hermes/intl/LanguageTagsGenerated;->regionAliasKeys2:[Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 563
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 564
    sget-object v0, Lcom/facebook/hermes/intl/LanguageTagsGenerated;->regionAliasKeys2:[Ljava/lang/String;

    .line 566
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 565
    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 567
    .local v0, "found":I
    if-ltz v0, :cond_1

    .line 568
    sget-object v1, Lcom/facebook/hermes/intl/LanguageTagsGenerated;->regionAliasReplacements2:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1

    .line 570
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 573
    .end local v0    # "found":I
    :cond_2
    sget-object v0, Lcom/facebook/hermes/intl/LanguageTagsGenerated;->regionAliasKeys3:[Ljava/lang/String;

    .line 575
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 574
    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 576
    .restart local v0    # "found":I
    if-ltz v0, :cond_3

    .line 577
    sget-object v1, Lcom/facebook/hermes/intl/LanguageTagsGenerated;->regionAliasReplacements3:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1

    .line 579
    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
