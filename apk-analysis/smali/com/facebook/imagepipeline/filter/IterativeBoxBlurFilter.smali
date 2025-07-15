.class public final Lcom/facebook/imagepipeline/filter/IterativeBoxBlurFilter;
.super Ljava/lang/Object;
.source "IterativeBoxBlurFilter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0015\n\u0002\u0008\t\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J \u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0002J \u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0006H\u0007J \u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0006H\u0002J8\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0013H\u0002J@\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0013H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/filter/IterativeBoxBlurFilter;",
        "",
        "()V",
        "TAG",
        "",
        "bound",
        "",
        "x",
        "l",
        "h",
        "boxBlurBitmapInPlace",
        "",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "iterations",
        "radius",
        "fastBoxBlur",
        "internalHorizontalBlur",
        "pixels",
        "",
        "outRow",
        "w",
        "row",
        "diameter",
        "div",
        "internalVerticalBlur",
        "outCol",
        "col",
        "imagepipeline_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/imagepipeline/filter/IterativeBoxBlurFilter;

.field private static final TAG:Ljava/lang/String; = "IterativeBoxBlurFilter"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/imagepipeline/filter/IterativeBoxBlurFilter;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/filter/IterativeBoxBlurFilter;-><init>()V

    sput-object v0, Lcom/facebook/imagepipeline/filter/IterativeBoxBlurFilter;->INSTANCE:Lcom/facebook/imagepipeline/filter/IterativeBoxBlurFilter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final bound(III)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "l"    # I
    .param p3, "h"    # I

    .line 202
    if-ge p1, p2, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    if-le p1, p3, :cond_1

    move v0, p3

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    return v0
.end method

.method public static final boxBlurBitmapInPlace(Landroid/graphics/Bitmap;II)V
    .locals 5
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "iterations"    # I
    .param p2, "radius"    # I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "bitmap"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    nop

    .line 40
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    .line 41
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x45000000    # 2048.0f

    cmpg-float v0, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gtz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    .line 42
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    .line 43
    if-lez p2, :cond_2

    const/16 v0, 0x19

    if-gt p2, v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    .line 44
    if-lez p1, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    .line 45
    nop

    .line 46
    :try_start_0
    sget-object v0, Lcom/facebook/imagepipeline/filter/IterativeBoxBlurFilter;->INSTANCE:Lcom/facebook/imagepipeline/filter/IterativeBoxBlurFilter;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/imagepipeline/filter/IterativeBoxBlurFilter;->fastBoxBlur(Landroid/graphics/Bitmap;II)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 49
    .local v0, "oom":Ljava/lang/OutOfMemoryError;
    nop

    .line 50
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 51
    nop

    .line 52
    nop

    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 54
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 53
    nop

    .line 55
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 53
    nop

    .line 56
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    .line 53
    nop

    .line 50
    const/4 v2, 0x4

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "OOM: %d iterations on %dx%d with %d radius"

    invoke-static {v2, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format(locale, format, *args)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    const-string v2, "IterativeBoxBlurFilter"

    invoke-static {v2, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    throw v0
.end method

.method private final fastBoxBlur(Landroid/graphics/Bitmap;II)V
    .locals 17
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "iterations"    # I
    .param p3, "radius"    # I

    .line 62
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 63
    .local v8, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 64
    .local v9, "h":I
    mul-int v0, v8, v9

    new-array v10, v0, [I

    .line 65
    .local v10, "pixels":[I
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p1

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 68
    add-int/lit8 v0, p3, 0x1

    add-int v11, v0, p3

    .line 70
    .local v11, "diameter":I
    mul-int/lit16 v0, v11, 0x100

    new-array v12, v0, [I

    .line 74
    .local v12, "div":[I
    add-int/lit8 v0, p3, 0x1

    .line 75
    .local v0, "ptr":I
    const/4 v1, 0x1

    move v13, v0

    .end local v0    # "ptr":I
    .local v1, "b":I
    .local v13, "ptr":I
    :goto_0
    const/16 v0, 0x100

    if-ge v1, v0, :cond_1

    .line 76
    const/4 v0, 0x0

    .local v0, "d":I
    :goto_1
    if-ge v0, v11, :cond_0

    .line 77
    aput v1, v12, v13

    .line 78
    add-int/lit8 v13, v13, 0x1

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 75
    .end local v0    # "d":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    .end local v1    # "b":I
    :cond_1
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v14, v0, [I

    .line 82
    .local v14, "tempRowOrColumn":[I
    const/4 v0, 0x0

    move v15, v0

    .local v15, "i":I
    :goto_2
    move/from16 v7, p2

    if-ge v15, v7, :cond_5

    .line 84
    const/4 v0, 0x0

    move v6, v0

    .local v6, "row":I
    :goto_3
    if-ge v6, v9, :cond_2

    .line 85
    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v14

    move v3, v8

    move v4, v6

    move v5, v11

    move/from16 v16, v6

    .end local v6    # "row":I
    .local v16, "row":I
    move-object v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/facebook/imagepipeline/filter/IterativeBoxBlurFilter;->internalHorizontalBlur([I[IIII[I)V

    .line 86
    const/4 v0, 0x0

    mul-int v6, v16, v8

    invoke-static {v14, v0, v10, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    add-int/lit8 v6, v16, 0x1

    .end local v16    # "row":I
    .restart local v6    # "row":I
    goto :goto_3

    :cond_2
    move/from16 v16, v6

    .line 90
    .end local v6    # "row":I
    const/4 v0, 0x0

    move v6, v0

    .local v6, "col":I
    :goto_4
    if-ge v6, v8, :cond_4

    .line 91
    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v14

    move v3, v8

    move v4, v9

    move v5, v6

    move/from16 v16, v6

    .end local v6    # "col":I
    .local v16, "col":I
    move v6, v11

    move-object v7, v12

    invoke-direct/range {v0 .. v7}, Lcom/facebook/imagepipeline/filter/IterativeBoxBlurFilter;->internalVerticalBlur([I[IIIII[I)V

    .line 92
    move/from16 v0, v16

    .line 93
    .local v0, "pos":I
    const/4 v1, 0x0

    .local v1, "row":I
    :goto_5
    if-ge v1, v9, :cond_3

    .line 94
    aget v2, v14, v1

    aput v2, v10, v0

    .line 95
    add-int/2addr v0, v8

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 90
    .end local v0    # "pos":I
    .end local v1    # "row":I
    :cond_3
    add-int/lit8 v6, v16, 0x1

    move/from16 v7, p2

    .end local v16    # "col":I
    .restart local v6    # "col":I
    goto :goto_4

    :cond_4
    move/from16 v16, v6

    .line 82
    .end local v6    # "col":I
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 99
    .end local v15    # "i":I
    :cond_5
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p1

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 100
    return-void
.end method

.method private final internalHorizontalBlur([I[IIII[I)V
    .locals 16
    .param p1, "pixels"    # [I
    .param p2, "outRow"    # [I
    .param p3, "w"    # I
    .param p4, "row"    # I
    .param p5, "diameter"    # I
    .param p6, "div"    # [I

    .line 118
    move-object/from16 v0, p0

    mul-int v1, p3, p4

    .line 119
    .local v1, "firstInByte":I
    add-int/lit8 v2, p4, 0x1

    mul-int v2, v2, p3

    add-int/lit8 v2, v2, -0x1

    .line 120
    .local v2, "lastInByte":I
    shr-int/lit8 v3, p5, 0x1

    .line 121
    .local v3, "radius":I
    const/4 v4, 0x0

    .line 122
    .local v4, "a":I
    const/4 v5, 0x0

    .line 123
    .local v5, "r":I
    const/4 v6, 0x0

    .line 124
    .local v6, "g":I
    const/4 v7, 0x0

    .local v7, "b":I
    const/4 v8, 0x0

    .line 128
    .local v8, "pixel":I
    neg-int v9, v3

    .local v9, "i":I
    add-int v10, p3, v3

    :goto_0
    if-ge v9, v10, :cond_1

    .line 129
    add-int v11, v1, v9

    invoke-direct {v0, v11, v1, v2}, Lcom/facebook/imagepipeline/filter/IterativeBoxBlurFilter;->bound(III)I

    move-result v11

    .line 130
    .local v11, "ii":I
    aget v8, p1, v11

    .line 131
    shr-int/lit8 v12, v8, 0x10

    and-int/lit16 v12, v12, 0xff

    add-int/2addr v5, v12

    .line 132
    shr-int/lit8 v12, v8, 0x8

    and-int/lit16 v12, v12, 0xff

    add-int/2addr v6, v12

    .line 133
    and-int/lit16 v12, v8, 0xff

    add-int/2addr v7, v12

    .line 134
    ushr-int/lit8 v12, v8, 0x18

    add-int/2addr v4, v12

    .line 135
    if-lt v9, v3, :cond_0

    .line 136
    sub-int v12, v9, v3

    .line 137
    .local v12, "outOffset":I
    aget v13, p6, v4

    shl-int/lit8 v13, v13, 0x18

    aget v14, p6, v5

    shl-int/lit8 v14, v14, 0x10

    or-int/2addr v13, v14

    aget v14, p6, v6

    shl-int/lit8 v14, v14, 0x8

    or-int/2addr v13, v14

    aget v14, p6, v7

    or-int/2addr v13, v14

    aput v13, p2, v12

    .line 138
    add-int/lit8 v13, p5, -0x1

    sub-int v13, v9, v13

    .line 139
    .local v13, "j":I
    add-int v14, v1, v13

    invoke-direct {v0, v14, v1, v2}, Lcom/facebook/imagepipeline/filter/IterativeBoxBlurFilter;->bound(III)I

    move-result v14

    .line 140
    .local v14, "jj":I
    aget v8, p1, v14

    .line 141
    shr-int/lit8 v15, v8, 0x10

    and-int/lit16 v15, v15, 0xff

    sub-int/2addr v5, v15

    .line 142
    shr-int/lit8 v15, v8, 0x8

    and-int/lit16 v15, v15, 0xff

    sub-int/2addr v6, v15

    .line 143
    and-int/lit16 v15, v8, 0xff

    sub-int/2addr v7, v15

    .line 144
    ushr-int/lit8 v15, v8, 0x18

    sub-int/2addr v4, v15

    .line 128
    .end local v11    # "ii":I
    .end local v12    # "outOffset":I
    .end local v13    # "j":I
    .end local v14    # "jj":I
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 147
    .end local v9    # "i":I
    :cond_1
    return-void
.end method

.method private final internalVerticalBlur([I[IIIII[I)V
    .locals 16
    .param p1, "pixels"    # [I
    .param p2, "outCol"    # [I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "col"    # I
    .param p6, "diameter"    # I
    .param p7, "div"    # [I

    .line 166
    move-object/from16 v0, p0

    move/from16 v1, p5

    add-int/lit8 v2, p4, -0x1

    mul-int v2, v2, p3

    add-int/2addr v2, v1

    .line 167
    .local v2, "lastInByte":I
    shr-int/lit8 v3, p6, 0x1

    mul-int v3, v3, p3

    .line 168
    .local v3, "radiusTimesW":I
    add-int/lit8 v4, p6, -0x1

    mul-int v4, v4, p3

    .line 169
    .local v4, "diameterMinusOneTimesW":I
    const/4 v5, 0x0

    .line 170
    .local v5, "a":I
    const/4 v6, 0x0

    .line 171
    .local v6, "r":I
    const/4 v7, 0x0

    .line 172
    .local v7, "g":I
    const/4 v8, 0x0

    .local v8, "b":I
    const/4 v9, 0x0

    .line 174
    .local v9, "pixel":I
    const/4 v10, 0x0

    .line 177
    .local v10, "outColPos":I
    sub-int v11, v1, v3

    .line 178
    .local v11, "i":I
    :goto_0
    add-int v12, v2, v3

    if-gt v11, v12, :cond_1

    .line 179
    invoke-direct {v0, v11, v1, v2}, Lcom/facebook/imagepipeline/filter/IterativeBoxBlurFilter;->bound(III)I

    move-result v12

    .line 180
    .local v12, "ii":I
    aget v9, p1, v12

    .line 181
    shr-int/lit8 v13, v9, 0x10

    and-int/lit16 v13, v13, 0xff

    add-int/2addr v6, v13

    .line 182
    shr-int/lit8 v13, v9, 0x8

    and-int/lit16 v13, v13, 0xff

    add-int/2addr v7, v13

    .line 183
    and-int/lit16 v13, v9, 0xff

    add-int/2addr v8, v13

    .line 184
    ushr-int/lit8 v13, v9, 0x18

    add-int/2addr v5, v13

    .line 185
    sub-int v13, v11, v3

    .line 186
    .local v13, "outPos":I
    if-lt v13, v1, :cond_0

    .line 187
    aget v14, p7, v5

    shl-int/lit8 v14, v14, 0x18

    aget v15, p7, v6

    shl-int/lit8 v15, v15, 0x10

    or-int/2addr v14, v15

    aget v15, p7, v7

    shl-int/lit8 v15, v15, 0x8

    or-int/2addr v14, v15

    aget v15, p7, v8

    or-int/2addr v14, v15

    aput v14, p2, v10

    .line 188
    add-int/lit8 v10, v10, 0x1

    .line 189
    sub-int v14, v11, v4

    .line 190
    .local v14, "j":I
    invoke-direct {v0, v14, v1, v2}, Lcom/facebook/imagepipeline/filter/IterativeBoxBlurFilter;->bound(III)I

    move-result v15

    .line 191
    .local v15, "jj":I
    aget v9, p1, v15

    .line 192
    shr-int/lit8 v0, v9, 0x10

    and-int/lit16 v0, v0, 0xff

    sub-int/2addr v6, v0

    .line 193
    shr-int/lit8 v0, v9, 0x8

    and-int/lit16 v0, v0, 0xff

    sub-int/2addr v7, v0

    .line 194
    and-int/lit16 v0, v9, 0xff

    sub-int/2addr v8, v0

    .line 195
    ushr-int/lit8 v0, v9, 0x18

    sub-int/2addr v5, v0

    .line 197
    .end local v14    # "j":I
    .end local v15    # "jj":I
    :cond_0
    add-int v11, v11, p3

    move-object/from16 v0, p0

    .end local v12    # "ii":I
    .end local v13    # "outPos":I
    goto :goto_0

    .line 199
    :cond_1
    return-void
.end method
