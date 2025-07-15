.class public Lcom/facebook/common/util/HashCodeUtil;
.super Ljava/lang/Object;
.source "HashCodeUtil.java"


# static fields
.field private static final X:I = 0x1f


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hashCode(I)I
    .locals 1
    .param p0, "i1"    # I

    .line 86
    add-int/lit8 v0, p0, 0x1f

    .line 87
    .local v0, "acc":I
    return v0
.end method

.method public static hashCode(II)I
    .locals 2
    .param p0, "i1"    # I
    .param p1, "i2"    # I

    .line 91
    add-int/lit8 v0, p0, 0x1f

    .line 92
    .local v0, "acc":I
    mul-int/lit8 v1, v0, 0x1f

    add-int/2addr v1, p1

    .line 93
    .end local v0    # "acc":I
    .local v1, "acc":I
    return v1
.end method

.method public static hashCode(III)I
    .locals 2
    .param p0, "i1"    # I
    .param p1, "i2"    # I
    .param p2, "i3"    # I

    .line 97
    add-int/lit8 v0, p0, 0x1f

    .line 98
    .local v0, "acc":I
    mul-int/lit8 v1, v0, 0x1f

    add-int/2addr v1, p1

    .line 99
    .end local v0    # "acc":I
    .local v1, "acc":I
    mul-int/lit8 v0, v1, 0x1f

    add-int/2addr v0, p2

    .line 100
    .end local v1    # "acc":I
    .restart local v0    # "acc":I
    return v0
.end method

.method public static hashCode(IIII)I
    .locals 2
    .param p0, "i1"    # I
    .param p1, "i2"    # I
    .param p2, "i3"    # I
    .param p3, "i4"    # I

    .line 104
    add-int/lit8 v0, p0, 0x1f

    .line 105
    .local v0, "acc":I
    mul-int/lit8 v1, v0, 0x1f

    add-int/2addr v1, p1

    .line 106
    .end local v0    # "acc":I
    .local v1, "acc":I
    mul-int/lit8 v0, v1, 0x1f

    add-int/2addr v0, p2

    .line 107
    .end local v1    # "acc":I
    .restart local v0    # "acc":I
    mul-int/lit8 v1, v0, 0x1f

    add-int/2addr v1, p3

    .line 108
    .end local v0    # "acc":I
    .restart local v1    # "acc":I
    return v1
.end method

.method public static hashCode(IIIII)I
    .locals 2
    .param p0, "i1"    # I
    .param p1, "i2"    # I
    .param p2, "i3"    # I
    .param p3, "i4"    # I
    .param p4, "i5"    # I

    .line 112
    add-int/lit8 v0, p0, 0x1f

    .line 113
    .local v0, "acc":I
    mul-int/lit8 v1, v0, 0x1f

    add-int/2addr v1, p1

    .line 114
    .end local v0    # "acc":I
    .local v1, "acc":I
    mul-int/lit8 v0, v1, 0x1f

    add-int/2addr v0, p2

    .line 115
    .end local v1    # "acc":I
    .restart local v0    # "acc":I
    mul-int/lit8 v1, v0, 0x1f

    add-int/2addr v1, p3

    .line 116
    .end local v0    # "acc":I
    .restart local v1    # "acc":I
    mul-int/lit8 v0, v1, 0x1f

    add-int/2addr v0, p4

    .line 117
    .end local v1    # "acc":I
    .restart local v0    # "acc":I
    return v0
.end method

.method public static hashCode(IIIIII)I
    .locals 2
    .param p0, "i1"    # I
    .param p1, "i2"    # I
    .param p2, "i3"    # I
    .param p3, "i4"    # I
    .param p4, "i5"    # I
    .param p5, "i6"    # I

    .line 121
    add-int/lit8 v0, p0, 0x1f

    .line 122
    .local v0, "acc":I
    mul-int/lit8 v1, v0, 0x1f

    add-int/2addr v1, p1

    .line 123
    .end local v0    # "acc":I
    .local v1, "acc":I
    mul-int/lit8 v0, v1, 0x1f

    add-int/2addr v0, p2

    .line 124
    .end local v1    # "acc":I
    .restart local v0    # "acc":I
    mul-int/lit8 v1, v0, 0x1f

    add-int/2addr v1, p3

    .line 125
    .end local v0    # "acc":I
    .restart local v1    # "acc":I
    mul-int/lit8 v0, v1, 0x1f

    add-int/2addr v0, p4

    .line 126
    .end local v1    # "acc":I
    .restart local v0    # "acc":I
    mul-int/lit8 v1, v0, 0x1f

    add-int/2addr v1, p5

    .line 127
    .end local v0    # "acc":I
    .restart local v1    # "acc":I
    return v1
.end method

.method public static hashCode(Ljava/lang/Object;)I
    .locals 1
    .param p0, "o1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 32
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/util/HashCodeUtil;->hashCode(I)I

    move-result v0

    return v0
.end method

.method public static hashCode(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p0, "o1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "o2"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 36
    const/4 v0, 0x0

    if-nez p0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    invoke-static {v1, v0}, Lcom/facebook/common/util/HashCodeUtil;->hashCode(II)I

    move-result v0

    return v0
.end method

.method public static hashCode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .param p0, "o1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "o2"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "o3"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 41
    const/4 v0, 0x0

    if-nez p0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 42
    :goto_0
    if-nez p1, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 43
    :goto_1
    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 40
    :goto_2
    invoke-static {v1, v2, v0}, Lcom/facebook/common/util/HashCodeUtil;->hashCode(III)I

    move-result v0

    return v0
.end method

.method public static hashCode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .param p0, "o1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "o2"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "o3"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "o4"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 49
    const/4 v0, 0x0

    if-nez p0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 50
    :goto_0
    if-nez p1, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 51
    :goto_1
    if-nez p2, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 52
    :goto_2
    if-nez p3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 48
    :goto_3
    invoke-static {v1, v2, v3, v0}, Lcom/facebook/common/util/HashCodeUtil;->hashCode(IIII)I

    move-result v0

    return v0
.end method

.method public static hashCode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5
    .param p0, "o1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "o2"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "o3"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "o4"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "o5"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 62
    const/4 v0, 0x0

    if-nez p0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 63
    :goto_0
    if-nez p1, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 64
    :goto_1
    if-nez p2, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 65
    :goto_2
    if-nez p3, :cond_3

    move v4, v0

    goto :goto_3

    :cond_3
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    .line 66
    :goto_3
    if-nez p4, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 61
    :goto_4
    invoke-static {v1, v2, v3, v4, v0}, Lcom/facebook/common/util/HashCodeUtil;->hashCode(IIIII)I

    move-result v0

    return v0
.end method

.method public static hashCode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 8
    .param p0, "o1"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "o2"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "o3"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "o4"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "o5"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "o6"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 77
    const/4 v0, 0x0

    if-nez p0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    move v2, v1

    .line 78
    :goto_0
    if-nez p1, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    move v3, v1

    .line 79
    :goto_1
    if-nez p2, :cond_2

    move v4, v0

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    move v4, v1

    .line 80
    :goto_2
    if-nez p3, :cond_3

    move v5, v0

    goto :goto_3

    :cond_3
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    move v5, v1

    .line 81
    :goto_3
    if-nez p4, :cond_4

    move v6, v0

    goto :goto_4

    :cond_4
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result v1

    move v6, v1

    .line 82
    :goto_4
    if-nez p5, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p5}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_5
    move v7, v0

    .line 76
    invoke-static/range {v2 .. v7}, Lcom/facebook/common/util/HashCodeUtil;->hashCode(IIIIII)I

    move-result v0

    return v0
.end method
