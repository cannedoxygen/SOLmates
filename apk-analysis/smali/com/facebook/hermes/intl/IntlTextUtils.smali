.class public Lcom/facebook/hermes/intl/IntlTextUtils;
.super Ljava/lang/Object;
.source "IntlTextUtils.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isASCIIDigit(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 17
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isASCIILetter(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 13
    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isASCIILetterOrDigit(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 21
    invoke-static {p0}, Lcom/facebook/hermes/intl/IntlTextUtils;->isASCIILetter(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/facebook/hermes/intl/IntlTextUtils;->isASCIIDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isAlpha(Ljava/lang/CharSequence;IIII)Z
    .locals 6
    .param p0, "name"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "min"    # I
    .param p4, "max"    # I

    .line 45
    if-ltz p1, :cond_5

    if-ltz p2, :cond_5

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p1, v0, :cond_5

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p2, v0, :cond_5

    .line 47
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lt p2, v0, :cond_0

    return v1

    .line 49
    :cond_0
    sub-int v0, p2, p1

    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 50
    .local v0, "length":I
    if-lt v0, p3, :cond_4

    if-le v0, p4, :cond_1

    goto :goto_1

    .line 54
    :cond_1
    move v3, p1

    .local v3, "idx":I
    :goto_0
    if-gt v3, p2, :cond_3

    .line 55
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 56
    .local v4, "c":C
    invoke-static {v4}, Lcom/facebook/hermes/intl/IntlTextUtils;->isASCIILetter(C)Z

    move-result v5

    if-nez v5, :cond_2

    .line 57
    return v1

    .line 54
    .end local v4    # "c":C
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 61
    .end local v3    # "idx":I
    :cond_3
    return v2

    .line 51
    :cond_4
    :goto_1
    return v1

    .line 45
    .end local v0    # "length":I
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static isAlphaNum(Ljava/lang/CharSequence;IIII)Z
    .locals 6
    .param p0, "name"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "min"    # I
    .param p4, "max"    # I

    .line 25
    if-ltz p1, :cond_5

    if-ltz p2, :cond_5

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p1, v0, :cond_5

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p2, v0, :cond_5

    .line 27
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lt p2, v0, :cond_0

    return v1

    .line 29
    :cond_0
    sub-int v0, p2, p1

    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 30
    .local v0, "length":I
    if-lt v0, p3, :cond_4

    if-le v0, p4, :cond_1

    goto :goto_1

    .line 34
    :cond_1
    move v3, p1

    .local v3, "idx":I
    :goto_0
    if-gt v3, p2, :cond_3

    .line 35
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 36
    .local v4, "c":C
    invoke-static {v4}, Lcom/facebook/hermes/intl/IntlTextUtils;->isASCIILetterOrDigit(C)Z

    move-result v5

    if-nez v5, :cond_2

    .line 37
    return v1

    .line 34
    .end local v4    # "c":C
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 41
    .end local v3    # "idx":I
    :cond_3
    return v2

    .line 31
    :cond_4
    :goto_1
    return v1

    .line 25
    .end local v0    # "length":I
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static isDigit(Ljava/lang/CharSequence;IIII)Z
    .locals 6
    .param p0, "name"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "min"    # I
    .param p4, "max"    # I

    .line 65
    if-ltz p1, :cond_5

    if-ltz p2, :cond_5

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p1, v0, :cond_5

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p2, v0, :cond_5

    .line 67
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lt p2, v0, :cond_0

    return v1

    .line 69
    :cond_0
    sub-int v0, p2, p1

    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 70
    .local v0, "length":I
    if-lt v0, p3, :cond_4

    if-le v0, p4, :cond_1

    goto :goto_1

    .line 74
    :cond_1
    move v3, p1

    .local v3, "idx":I
    :goto_0
    if-gt v3, p2, :cond_3

    .line 75
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 76
    .local v4, "c":C
    invoke-static {v4}, Lcom/facebook/hermes/intl/IntlTextUtils;->isASCIIDigit(C)Z

    move-result v5

    if-nez v5, :cond_2

    .line 77
    return v1

    .line 74
    .end local v4    # "c":C
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 81
    .end local v3    # "idx":I
    :cond_3
    return v2

    .line 71
    :cond_4
    :goto_1
    return v1

    .line 65
    .end local v0    # "length":I
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static isDigitAlphanum3(Ljava/lang/CharSequence;II)Z
    .locals 3
    .param p0, "token"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 85
    sub-int v0, p2, p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 86
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/facebook/hermes/intl/IntlTextUtils;->isASCIILetter(C)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    .line 87
    const/4 v2, 0x3

    invoke-static {p0, v0, p2, v2, v2}, Lcom/facebook/hermes/intl/IntlTextUtils;->isAlphaNum(Ljava/lang/CharSequence;IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 85
    :goto_0
    return v1
.end method

.method public static isExtensionSingleton(Ljava/lang/CharSequence;II)Z
    .locals 1
    .param p0, "token"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 103
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0, v0}, Lcom/facebook/hermes/intl/IntlTextUtils;->isAlphaNum(Ljava/lang/CharSequence;IIII)Z

    move-result v0

    return v0
.end method

.method public static isOtherExtension(Ljava/lang/CharSequence;II)Z
    .locals 2
    .param p0, "token"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 169
    const/4 v0, 0x2

    const/16 v1, 0x8

    invoke-static {p0, p1, p2, v0, v1}, Lcom/facebook/hermes/intl/IntlTextUtils;->isAlphaNum(Ljava/lang/CharSequence;IIII)Z

    move-result v0

    return v0
.end method

.method public static isPrivateUseExtension(Ljava/lang/CharSequence;II)Z
    .locals 2
    .param p0, "token"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 163
    const/4 v0, 0x1

    const/16 v1, 0x8

    invoke-static {p0, p1, p2, v0, v1}, Lcom/facebook/hermes/intl/IntlTextUtils;->isAlphaNum(Ljava/lang/CharSequence;IIII)Z

    move-result v0

    return v0
.end method

.method public static isTranformedExtensionTKey(Ljava/lang/CharSequence;II)Z
    .locals 2
    .param p0, "token"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 149
    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    return v1

    .line 151
    :cond_0
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/facebook/hermes/intl/IntlTextUtils;->isASCIILetter(C)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/facebook/hermes/intl/IntlTextUtils;->isASCIIDigit(C)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isTranformedExtensionTValueItem(Ljava/lang/CharSequence;II)Z
    .locals 2
    .param p0, "token"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 157
    const/4 v0, 0x3

    const/16 v1, 0x8

    invoke-static {p0, p1, p2, v0, v1}, Lcom/facebook/hermes/intl/IntlTextUtils;->isAlphaNum(Ljava/lang/CharSequence;IIII)Z

    move-result v0

    return v0
.end method

.method public static isUnicodeExtensionAttribute(Ljava/lang/CharSequence;II)Z
    .locals 2
    .param p0, "token"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 128
    const/4 v0, 0x3

    const/16 v1, 0x8

    invoke-static {p0, p1, p2, v0, v1}, Lcom/facebook/hermes/intl/IntlTextUtils;->isAlphaNum(Ljava/lang/CharSequence;IIII)Z

    move-result v0

    return v0
.end method

.method public static isUnicodeExtensionKey(Ljava/lang/CharSequence;II)Z
    .locals 2
    .param p0, "token"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 135
    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    return v1

    .line 137
    :cond_0
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/facebook/hermes/intl/IntlTextUtils;->isASCIILetterOrDigit(C)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/facebook/hermes/intl/IntlTextUtils;->isASCIILetter(C)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isUnicodeExtensionKeyTypeItem(Ljava/lang/CharSequence;II)Z
    .locals 2
    .param p0, "token"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 143
    const/4 v0, 0x3

    const/16 v1, 0x8

    invoke-static {p0, p1, p2, v0, v1}, Lcom/facebook/hermes/intl/IntlTextUtils;->isAlphaNum(Ljava/lang/CharSequence;IIII)Z

    move-result v0

    return v0
.end method

.method public static isUnicodeLanguageSubtag(Ljava/lang/CharSequence;II)Z
    .locals 3
    .param p0, "token"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 93
    const/4 v0, 0x2

    const/4 v1, 0x3

    invoke-static {p0, p1, p2, v0, v1}, Lcom/facebook/hermes/intl/IntlTextUtils;->isAlpha(Ljava/lang/CharSequence;IIII)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 94
    const/4 v0, 0x5

    const/16 v2, 0x8

    invoke-static {p0, p1, p2, v0, v2}, Lcom/facebook/hermes/intl/IntlTextUtils;->isAlpha(Ljava/lang/CharSequence;IIII)Z

    move-result v0

    if-nez v0, :cond_1

    sub-int v0, p2, p1

    add-int/2addr v0, v1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 96
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0x72

    if-ne v0, v2, :cond_0

    add-int/lit8 v0, p1, 0x1

    .line 97
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0x6f

    if-ne v0, v2, :cond_0

    add-int/lit8 v0, p1, 0x2

    .line 98
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_0

    add-int/lit8 v0, p1, 0x3

    .line 99
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0x74

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    nop

    .line 93
    :goto_1
    return v1
.end method

.method public static isUnicodeRegionSubtag(Ljava/lang/CharSequence;II)Z
    .locals 1
    .param p0, "token"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 115
    const/4 v0, 0x2

    invoke-static {p0, p1, p2, v0, v0}, Lcom/facebook/hermes/intl/IntlTextUtils;->isAlpha(Ljava/lang/CharSequence;IIII)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    invoke-static {p0, p1, p2, v0, v0}, Lcom/facebook/hermes/intl/IntlTextUtils;->isDigit(Ljava/lang/CharSequence;IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isUnicodeScriptSubtag(Ljava/lang/CharSequence;II)Z
    .locals 1
    .param p0, "token"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 109
    const/4 v0, 0x4

    invoke-static {p0, p1, p2, v0, v0}, Lcom/facebook/hermes/intl/IntlTextUtils;->isAlpha(Ljava/lang/CharSequence;IIII)Z

    move-result v0

    return v0
.end method

.method public static isUnicodeVariantSubtag(Ljava/lang/CharSequence;II)Z
    .locals 2
    .param p0, "token"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 122
    const/4 v0, 0x5

    const/16 v1, 0x8

    invoke-static {p0, p1, p2, v0, v1}, Lcom/facebook/hermes/intl/IntlTextUtils;->isAlphaNum(Ljava/lang/CharSequence;IIII)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1, p2}, Lcom/facebook/hermes/intl/IntlTextUtils;->isDigitAlphanum3(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
