.class public final Lcom/facebook/react/uimanager/MatrixMathHelper;
.super Ljava/lang/Object;
.source "MatrixMathHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0013\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0017\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001:B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0004H\u0007J\u0018\u0010\n\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u0004H\u0007J\u0018\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u0004H\u0007J\u0018\u0010\r\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u0004H\u0007J\u0018\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u0004H\u0007J\u0018\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u0004H\u0007J\u0016\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u0004J\u0018\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u0004H\u0007J\u0018\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u0004H\u0007J \u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0004H\u0007J(\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0004H\u0007J\u0008\u0010\u0019\u001a\u00020\u0008H\u0007J\u0018\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u00082\u0006\u0010\u001c\u001a\u00020\u001dH\u0007J\u0010\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u0004H\u0007J\u0010\u0010 \u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u0008H\u0007J\u0010\u0010\"\u001a\u00020\u00082\u0006\u0010!\u001a\u00020\u0008H\u0007J\u0010\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u0004H\u0002J \u0010&\u001a\u00020\u00062\u0006\u0010\'\u001a\u00020\u00082\u0006\u0010(\u001a\u00020\u00082\u0006\u0010)\u001a\u00020\u0008H\u0007J \u0010*\u001a\u00020\u00062\u0006\u0010+\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010,\u001a\u00020\u0008H\u0007J\u0010\u0010-\u001a\u00020\u00062\u0006\u0010!\u001a\u00020\u0008H\u0007J\u0010\u0010.\u001a\u00020\u00042\u0006\u0010/\u001a\u00020\u0004H\u0007J\u0010\u00100\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0008H\u0007J(\u00101\u001a\u00020\u00082\u0006\u0010(\u001a\u00020\u00082\u0006\u0010)\u001a\u00020\u00082\u0006\u00102\u001a\u00020\u00042\u0006\u00103\u001a\u00020\u0004H\u0007J\u0018\u00104\u001a\u00020\u00082\u0006\u0010(\u001a\u00020\u00082\u0006\u0010)\u001a\u00020\u0008H\u0007J\u0018\u00105\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\u00082\u0006\u0010)\u001a\u00020\u0008H\u0007J\u0010\u00106\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\u0008H\u0007J\u0018\u00107\u001a\u00020\u00082\u0006\u00108\u001a\u00020\u00082\u0006\u00109\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006;"
    }
    d2 = {
        "Lcom/facebook/react/uimanager/MatrixMathHelper;",
        "",
        "()V",
        "EPSILON",
        "",
        "applyPerspective",
        "",
        "m",
        "",
        "perspective",
        "applyRotateX",
        "radians",
        "applyRotateY",
        "applyRotateZ",
        "applyScaleX",
        "factor",
        "applyScaleY",
        "applyScaleZ",
        "applySkewX",
        "applySkewY",
        "applyTranslate2D",
        "x",
        "y",
        "applyTranslate3D",
        "z",
        "createIdentityMatrix",
        "decomposeMatrix",
        "transformMatrix",
        "ctx",
        "Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;",
        "degreesToRadians",
        "degrees",
        "determinant",
        "matrix",
        "inverse",
        "isZero",
        "",
        "d",
        "multiplyInto",
        "out",
        "a",
        "b",
        "multiplyVectorByMatrix",
        "v",
        "result",
        "resetIdentityMatrix",
        "roundTo3Places",
        "n",
        "transpose",
        "v3Combine",
        "aScale",
        "bScale",
        "v3Cross",
        "v3Dot",
        "v3Length",
        "v3Normalize",
        "vector",
        "norm",
        "MatrixDecompositionContext",
        "ReactAndroid_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final EPSILON:D = 1.0E-5

.field public static final INSTANCE:Lcom/facebook/react/uimanager/MatrixMathHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/react/uimanager/MatrixMathHelper;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/MatrixMathHelper;-><init>()V

    sput-object v0, Lcom/facebook/react/uimanager/MatrixMathHelper;->INSTANCE:Lcom/facebook/react/uimanager/MatrixMathHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final applyPerspective([DD)V
    .locals 3
    .param p0, "m"    # [D
    .param p1, "perspective"    # D
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "m"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    const/4 v0, -0x1

    int-to-double v0, v0

    div-double/2addr v0, p1

    const/16 v2, 0xb

    aput-wide v0, p0, v2

    .line 409
    return-void
.end method

.method public static final applyRotateX([DD)V
    .locals 3
    .param p0, "m"    # [D
    .param p1, "radians"    # D
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "m"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 450
    const/4 v0, 0x5

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    aput-wide v1, p0, v0

    .line 451
    const/4 v0, 0x6

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    aput-wide v1, p0, v0

    .line 452
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    neg-double v0, v0

    const/16 v2, 0x9

    aput-wide v0, p0, v2

    .line 453
    const/16 v0, 0xa

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    aput-wide v1, p0, v0

    .line 454
    return-void
.end method

.method public static final applyRotateY([DD)V
    .locals 3
    .param p0, "m"    # [D
    .param p1, "radians"    # D
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "m"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 458
    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    aput-wide v1, p0, v0

    .line 459
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    neg-double v0, v0

    const/4 v2, 0x2

    aput-wide v0, p0, v2

    .line 460
    const/16 v0, 0x8

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    aput-wide v1, p0, v0

    .line 461
    const/16 v0, 0xa

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    aput-wide v1, p0, v0

    .line 462
    return-void
.end method

.method public static final applyRotateZ([DD)V
    .locals 3
    .param p0, "m"    # [D
    .param p1, "radians"    # D
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "m"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 467
    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    aput-wide v1, p0, v0

    .line 468
    const/4 v0, 0x1

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    aput-wide v1, p0, v0

    .line 469
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    neg-double v0, v0

    const/4 v2, 0x4

    aput-wide v0, p0, v2

    .line 470
    const/4 v0, 0x5

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    aput-wide v1, p0, v0

    .line 471
    return-void
.end method

.method public static final applyScaleX([DD)V
    .locals 1
    .param p0, "m"    # [D
    .param p1, "factor"    # D
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "m"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    const/4 v0, 0x0

    aput-wide p1, p0, v0

    .line 414
    return-void
.end method

.method public static final applyScaleY([DD)V
    .locals 1
    .param p0, "m"    # [D
    .param p1, "factor"    # D
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "m"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    const/4 v0, 0x5

    aput-wide p1, p0, v0

    .line 419
    return-void
.end method

.method public static final applySkewX([DD)V
    .locals 3
    .param p0, "m"    # [D
    .param p1, "radians"    # D
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "m"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 440
    const/4 v0, 0x4

    invoke-static {p1, p2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    aput-wide v1, p0, v0

    .line 441
    return-void
.end method

.method public static final applySkewY([DD)V
    .locals 3
    .param p0, "m"    # [D
    .param p1, "radians"    # D
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "m"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 445
    const/4 v0, 0x1

    invoke-static {p1, p2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    aput-wide v1, p0, v0

    .line 446
    return-void
.end method

.method public static final applyTranslate2D([DDD)V
    .locals 1
    .param p0, "m"    # [D
    .param p1, "x"    # D
    .param p3, "y"    # D
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "m"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 427
    const/16 v0, 0xc

    aput-wide p1, p0, v0

    .line 428
    const/16 v0, 0xd

    aput-wide p3, p0, v0

    .line 429
    return-void
.end method

.method public static final applyTranslate3D([DDDD)V
    .locals 1
    .param p0, "m"    # [D
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "m"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 433
    const/16 v0, 0xc

    aput-wide p1, p0, v0

    .line 434
    const/16 v0, 0xd

    aput-wide p3, p0, v0

    .line 435
    const/16 v0, 0xe

    aput-wide p5, p0, v0

    .line 436
    return-void
.end method

.method public static final createIdentityMatrix()[D
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 376
    const/16 v0, 0x10

    new-array v0, v0, [D

    .line 377
    .local v0, "res":[D
    invoke-static {v0}, Lcom/facebook/react/uimanager/MatrixMathHelper;->resetIdentityMatrix([D)V

    .line 378
    return-object v0
.end method

.method public static final decomposeMatrix([DLcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;)V
    .locals 28
    .param p0, "transformMatrix"    # [D
    .param p1, "ctx"    # Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "transformMatrix"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "ctx"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    array-length v2, v0

    const/4 v3, 0x0

    const/16 v5, 0x10

    if-ne v2, v5, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-static {v2}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(Z)V

    .line 83
    iget-object v2, v1, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->perspective:[D

    .line 84
    .local v2, "perspective":[D
    iget-object v6, v1, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->scale:[D

    .line 85
    .local v6, "scale":[D
    iget-object v7, v1, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->skew:[D

    .line 86
    .local v7, "skew":[D
    iget-object v8, v1, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->translation:[D

    .line 87
    .local v8, "translation":[D
    iget-object v9, v1, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->rotationDegrees:[D

    .line 91
    .local v9, "rotationDegrees":[D
    sget-object v10, Lcom/facebook/react/uimanager/MatrixMathHelper;->INSTANCE:Lcom/facebook/react/uimanager/MatrixMathHelper;

    const/16 v11, 0xf

    aget-wide v12, v0, v11

    invoke-direct {v10, v12, v13}, Lcom/facebook/react/uimanager/MatrixMathHelper;->isZero(D)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 92
    return-void

    .line 94
    :cond_1
    const/4 v10, 0x4

    new-array v12, v10, [[D

    move v13, v3

    :goto_1
    if-ge v13, v10, :cond_2

    new-array v14, v10, [D

    aput-object v14, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 95
    .local v12, "matrix":[[D
    :cond_2
    new-array v5, v5, [D

    .line 96
    .local v5, "perspectiveMatrix":[D
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    const/4 v14, 0x3

    if-ge v13, v10, :cond_5

    .line 97
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_3
    if-ge v15, v10, :cond_4

    .line 98
    mul-int/lit8 v18, v13, 0x4

    add-int v18, v18, v15

    aget-wide v18, v0, v18

    aget-wide v20, v0, v11

    div-double v18, v18, v20

    .line 99
    .local v18, "value":D
    aget-object v20, v12, v13

    aput-wide v18, v20, v15

    .line 100
    mul-int/lit8 v20, v13, 0x4

    add-int v20, v20, v15

    if-ne v15, v14, :cond_3

    const-wide/16 v21, 0x0

    goto :goto_4

    :cond_3
    move-wide/from16 v21, v18

    :goto_4
    aput-wide v21, v5, v20

    .line 97
    .end local v18    # "value":D
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 96
    .end local v15    # "j":I
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 103
    .end local v13    # "i":I
    :cond_5
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    aput-wide v18, v5, v11

    .line 106
    sget-object v11, Lcom/facebook/react/uimanager/MatrixMathHelper;->INSTANCE:Lcom/facebook/react/uimanager/MatrixMathHelper;

    invoke-static {v5}, Lcom/facebook/react/uimanager/MatrixMathHelper;->determinant([D)D

    move-result-wide v14

    invoke-direct {v11, v14, v15}, Lcom/facebook/react/uimanager/MatrixMathHelper;->isZero(D)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 107
    return-void

    .line 111
    :cond_6
    sget-object v11, Lcom/facebook/react/uimanager/MatrixMathHelper;->INSTANCE:Lcom/facebook/react/uimanager/MatrixMathHelper;

    aget-object v14, v12, v3

    const/4 v13, 0x3

    aget-wide v3, v14, v13

    invoke-direct {v11, v3, v4}, Lcom/facebook/react/uimanager/MatrixMathHelper;->isZero(D)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_8

    sget-object v3, Lcom/facebook/react/uimanager/MatrixMathHelper;->INSTANCE:Lcom/facebook/react/uimanager/MatrixMathHelper;

    const/4 v11, 0x1

    aget-object v14, v12, v11

    aget-wide v10, v14, v13

    invoke-direct {v3, v10, v11}, Lcom/facebook/react/uimanager/MatrixMathHelper;->isZero(D)Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Lcom/facebook/react/uimanager/MatrixMathHelper;->INSTANCE:Lcom/facebook/react/uimanager/MatrixMathHelper;

    aget-object v10, v12, v4

    move-object v11, v5

    .end local v5    # "perspectiveMatrix":[D
    .local v11, "perspectiveMatrix":[D
    aget-wide v4, v10, v13

    invoke-direct {v3, v4, v5}, Lcom/facebook/react/uimanager/MatrixMathHelper;->isZero(D)Z

    move-result v3

    if-nez v3, :cond_7

    const/4 v3, 0x3

    const/4 v5, 0x0

    goto :goto_5

    .line 123
    :cond_7
    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    aput-wide v3, v2, v5

    .line 124
    aget-wide v3, v2, v5

    const/4 v5, 0x1

    aput-wide v3, v2, v5

    .line 125
    aget-wide v3, v2, v5

    const/4 v5, 0x0

    aput-wide v3, v2, v5

    .line 126
    const/4 v3, 0x3

    aput-wide v18, v2, v3

    goto :goto_6

    .line 111
    .end local v11    # "perspectiveMatrix":[D
    .restart local v5    # "perspectiveMatrix":[D
    :cond_8
    move-object v11, v5

    move v3, v13

    const/4 v5, 0x0

    .line 114
    .end local v5    # "perspectiveMatrix":[D
    .restart local v11    # "perspectiveMatrix":[D
    :goto_5
    aget-object v4, v12, v5

    aget-wide v18, v4, v3

    const/4 v4, 0x1

    aget-object v10, v12, v4

    aget-wide v22, v10, v3

    const/4 v10, 0x2

    aget-object v13, v12, v10

    aget-wide v24, v13, v3

    aget-object v13, v12, v3

    aget-wide v26, v13, v3

    const/4 v13, 0x4

    new-array v13, v13, [D

    aput-wide v18, v13, v5

    aput-wide v22, v13, v4

    aput-wide v24, v13, v10

    aput-wide v26, v13, v3

    move-object v3, v13

    .line 118
    .local v3, "rightHandSide":[D
    invoke-static {v11}, Lcom/facebook/react/uimanager/MatrixMathHelper;->inverse([D)[D

    move-result-object v4

    .line 119
    .local v4, "inversePerspectiveMatrix":[D
    invoke-static {v4}, Lcom/facebook/react/uimanager/MatrixMathHelper;->transpose([D)[D

    move-result-object v5

    .line 120
    .local v5, "transposedInversePerspectiveMatrix":[D
    invoke-static {v3, v5, v2}, Lcom/facebook/react/uimanager/MatrixMathHelper;->multiplyVectorByMatrix([D[D[D)V

    .line 130
    .end local v3    # "rightHandSide":[D
    .end local v4    # "inversePerspectiveMatrix":[D
    .end local v5    # "transposedInversePerspectiveMatrix":[D
    :goto_6
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    const/4 v4, 0x3

    if-ge v3, v4, :cond_9

    .line 131
    aget-object v5, v12, v4

    aget-wide v18, v5, v3

    aput-wide v18, v8, v3

    .line 130
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 136
    .end local v3    # "i":I
    :cond_9
    new-array v3, v4, [[D

    const/4 v5, 0x0

    :goto_8
    if-ge v5, v4, :cond_a

    new-array v10, v4, [D

    aput-object v10, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 137
    .local v3, "row":[[D
    :cond_a
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_9
    if-ge v5, v4, :cond_b

    .line 138
    aget-object v4, v3, v5

    aget-object v10, v12, v5

    const/4 v15, 0x0

    aget-wide v18, v10, v15

    aput-wide v18, v4, v15

    .line 139
    aget-object v4, v3, v5

    aget-object v10, v12, v5

    const/16 v18, 0x1

    aget-wide v19, v10, v18

    aput-wide v19, v4, v18

    .line 140
    aget-object v4, v3, v5

    aget-object v10, v12, v5

    const/4 v14, 0x2

    aget-wide v18, v10, v14

    aput-wide v18, v4, v14

    .line 137
    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x3

    goto :goto_9

    .line 144
    .end local v5    # "i":I
    :cond_b
    const/4 v4, 0x0

    aget-object v5, v3, v4

    invoke-static {v5}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Length([D)D

    move-result-wide v18

    aput-wide v18, v6, v4

    .line 145
    aget-object v5, v3, v4

    aget-wide v13, v6, v4

    invoke-static {v5, v13, v14}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Normalize([DD)[D

    move-result-object v5

    aput-object v5, v3, v4

    .line 148
    aget-object v5, v3, v4

    const/4 v13, 0x1

    aget-object v14, v3, v13

    invoke-static {v5, v14}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Dot([D[D)D

    move-result-wide v14

    aput-wide v14, v7, v4

    .line 149
    aget-object v19, v3, v13

    aget-object v20, v3, v4

    aget-wide v14, v7, v4

    move-wide v4, v14

    neg-double v4, v4

    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v23, v4

    invoke-static/range {v19 .. v24}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Combine([D[DDD)[D

    move-result-object v4

    aput-object v4, v3, v13

    .line 152
    aget-object v4, v3, v13

    invoke-static {v4}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Length([D)D

    move-result-wide v4

    aput-wide v4, v6, v13

    .line 153
    aget-object v4, v3, v13

    move-object v5, v11

    .end local v11    # "perspectiveMatrix":[D
    .local v5, "perspectiveMatrix":[D
    aget-wide v10, v6, v13

    invoke-static {v4, v10, v11}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Normalize([DD)[D

    move-result-object v4

    aput-object v4, v3, v13

    .line 154
    const/4 v4, 0x0

    aget-wide v10, v7, v4

    aget-wide v14, v6, v13

    div-double/2addr v10, v14

    aput-wide v10, v7, v4

    .line 157
    aget-object v10, v3, v4

    const/4 v11, 0x2

    aget-object v14, v3, v11

    invoke-static {v10, v14}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Dot([D[D)D

    move-result-wide v14

    aput-wide v14, v7, v13

    .line 158
    aget-object v20, v3, v11

    aget-object v21, v3, v4

    move-object v4, v12

    .end local v12    # "matrix":[[D
    .local v4, "matrix":[[D
    aget-wide v11, v7, v13

    neg-double v10, v11

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v24, v10

    invoke-static/range {v20 .. v25}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Combine([D[DDD)[D

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v3, v11

    .line 159
    aget-object v10, v3, v13

    aget-object v12, v3, v11

    invoke-static {v10, v12}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Dot([D[D)D

    move-result-wide v20

    aput-wide v20, v7, v11

    .line 160
    aget-object v22, v3, v11

    aget-object v23, v3, v13

    aget-wide v12, v7, v11

    neg-double v12, v12

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v26, v12

    invoke-static/range {v22 .. v27}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Combine([D[DDD)[D

    move-result-object v10

    aput-object v10, v3, v11

    .line 163
    aget-object v10, v3, v11

    invoke-static {v10}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Length([D)D

    move-result-wide v12

    aput-wide v12, v6, v11

    .line 164
    aget-object v10, v3, v11

    aget-wide v12, v6, v11

    invoke-static {v10, v12, v13}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Normalize([DD)[D

    move-result-object v10

    aput-object v10, v3, v11

    .line 165
    const/4 v10, 0x1

    aget-wide v12, v7, v10

    aget-wide v20, v6, v11

    div-double v12, v12, v20

    aput-wide v12, v7, v10

    .line 166
    aget-wide v12, v7, v11

    aget-wide v20, v6, v11

    div-double v12, v12, v20

    aput-wide v12, v7, v11

    .line 171
    aget-object v12, v3, v10

    aget-object v10, v3, v11

    invoke-static {v12, v10}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Cross([D[D)[D

    move-result-object v10

    .line 172
    .local v10, "pdum3":[D
    const/4 v11, 0x0

    aget-object v12, v3, v11

    invoke-static {v12, v10}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Dot([D[D)D

    move-result-wide v11

    const-wide/16 v16, 0x0

    cmpg-double v11, v11, v16

    if-gez v11, :cond_c

    .line 173
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_a
    const/4 v12, 0x3

    if-ge v11, v12, :cond_c

    .line 174
    aget-wide v16, v6, v11

    const-wide/high16 v18, -0x4010000000000000L    # -1.0

    mul-double v16, v16, v18

    aput-wide v16, v6, v11

    .line 175
    aget-object v13, v3, v11

    const/4 v15, 0x0

    aget-wide v16, v13, v15

    mul-double v16, v16, v18

    aput-wide v16, v13, v15

    .line 176
    aget-object v13, v3, v11

    const/16 v16, 0x1

    aget-wide v20, v13, v16

    mul-double v20, v20, v18

    aput-wide v20, v13, v16

    .line 177
    aget-object v13, v3, v11

    const/4 v14, 0x2

    aget-wide v16, v13, v14

    mul-double v16, v16, v18

    aput-wide v16, v13, v14

    .line 173
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    .line 183
    .end local v11    # "i":I
    :cond_c
    const-wide v11, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    .line 184
    .local v11, "conv":D
    const/4 v13, 0x2

    aget-object v14, v3, v13

    const/16 v16, 0x1

    aget-wide v0, v14, v16

    aget-object v14, v3, v13

    move-object/from16 v17, v4

    move-object/from16 v16, v5

    .end local v4    # "matrix":[[D
    .end local v5    # "perspectiveMatrix":[D
    .local v16, "perspectiveMatrix":[D
    .local v17, "matrix":[[D
    aget-wide v4, v14, v13

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    neg-double v0, v0

    mul-double/2addr v0, v11

    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/MatrixMathHelper;->roundTo3Places(D)D

    move-result-wide v0

    const/4 v4, 0x0

    aput-wide v0, v9, v4

    .line 185
    nop

    .line 186
    nop

    .line 187
    aget-object v0, v3, v13

    aget-wide v14, v0, v4

    move-wide v0, v14

    neg-double v0, v0

    aget-object v4, v3, v13

    const/4 v5, 0x1

    aget-wide v18, v4, v5

    aget-object v4, v3, v13

    aget-wide v21, v4, v5

    mul-double v18, v18, v21

    aget-object v4, v3, v13

    aget-wide v21, v4, v13

    aget-object v4, v3, v13

    aget-wide v23, v4, v13

    mul-double v21, v21, v23

    add-double v18, v18, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    neg-double v0, v0

    .line 188
    nop

    .line 187
    mul-double/2addr v0, v11

    .line 186
    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/MatrixMathHelper;->roundTo3Places(D)D

    move-result-wide v0

    const/4 v4, 0x1

    aput-wide v0, v9, v4

    .line 189
    aget-object v0, v3, v4

    const/4 v1, 0x0

    aget-wide v4, v0, v1

    aget-object v0, v3, v1

    aget-wide v14, v0, v1

    invoke-static {v4, v5, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    neg-double v0, v0

    mul-double/2addr v0, v11

    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/MatrixMathHelper;->roundTo3Places(D)D

    move-result-wide v0

    const/4 v4, 0x2

    aput-wide v0, v9, v4

    .line 190
    return-void
.end method

.method public static final degreesToRadians(D)D
    .locals 4
    .param p0, "degrees"    # D
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 383
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, p0

    const/16 v2, 0xb4

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static final determinant([D)D
    .locals 37
    .param p0, "matrix"    # [D
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "matrix"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    .line 195
    .local v1, "m00":D
    const/4 v3, 0x1

    aget-wide v3, v0, v3

    .line 196
    .local v3, "m01":D
    const/4 v5, 0x2

    aget-wide v5, v0, v5

    .line 197
    .local v5, "m02":D
    const/4 v7, 0x3

    aget-wide v7, v0, v7

    .line 198
    .local v7, "m03":D
    const/4 v9, 0x4

    aget-wide v9, v0, v9

    .line 199
    .local v9, "m10":D
    const/4 v11, 0x5

    aget-wide v11, v0, v11

    .line 200
    .local v11, "m11":D
    const/4 v13, 0x6

    aget-wide v13, v0, v13

    .line 201
    .local v13, "m12":D
    const/4 v15, 0x7

    aget-wide v15, v0, v15

    .line 202
    .local v15, "m13":D
    const/16 v17, 0x8

    aget-wide v17, v0, v17

    .line 203
    .local v17, "m20":D
    const/16 v19, 0x9

    aget-wide v19, v0, v19

    .line 204
    .local v19, "m21":D
    const/16 v21, 0xa

    aget-wide v21, v0, v21

    .line 205
    .local v21, "m22":D
    const/16 v23, 0xb

    aget-wide v23, v0, v23

    .line 206
    .local v23, "m23":D
    const/16 v25, 0xc

    aget-wide v25, v0, v25

    .line 207
    .local v25, "m30":D
    const/16 v27, 0xd

    aget-wide v27, v0, v27

    .line 208
    .local v27, "m31":D
    const/16 v29, 0xe

    aget-wide v29, v0, v29

    .line 209
    .local v29, "m32":D
    const/16 v31, 0xf

    aget-wide v31, v0, v31

    .line 210
    .local v31, "m33":D
    mul-double v33, v7, v13

    mul-double v33, v33, v19

    mul-double v33, v33, v25

    mul-double v35, v5, v15

    mul-double v35, v35, v19

    mul-double v35, v35, v25

    sub-double v33, v33, v35

    mul-double v35, v7, v11

    mul-double v35, v35, v21

    mul-double v35, v35, v25

    sub-double v33, v33, v35

    .line 211
    mul-double v35, v3, v15

    mul-double v35, v35, v21

    mul-double v35, v35, v25

    .line 210
    add-double v33, v33, v35

    .line 212
    mul-double v35, v5, v11

    mul-double v35, v35, v23

    mul-double v35, v35, v25

    .line 210
    add-double v33, v33, v35

    .line 212
    mul-double v35, v3, v13

    mul-double v35, v35, v23

    mul-double v35, v35, v25

    .line 210
    sub-double v33, v33, v35

    .line 212
    mul-double v35, v7, v13

    mul-double v35, v35, v17

    mul-double v35, v35, v27

    .line 210
    sub-double v33, v33, v35

    .line 213
    mul-double v35, v5, v15

    mul-double v35, v35, v17

    mul-double v35, v35, v27

    .line 210
    add-double v33, v33, v35

    .line 214
    mul-double v35, v7, v9

    mul-double v35, v35, v21

    mul-double v35, v35, v27

    .line 210
    add-double v33, v33, v35

    .line 214
    mul-double v35, v1, v15

    mul-double v35, v35, v21

    mul-double v35, v35, v27

    .line 210
    sub-double v33, v33, v35

    .line 214
    mul-double v35, v5, v9

    mul-double v35, v35, v23

    mul-double v35, v35, v27

    .line 210
    sub-double v33, v33, v35

    .line 215
    mul-double v35, v1, v13

    mul-double v35, v35, v23

    mul-double v35, v35, v27

    .line 210
    add-double v33, v33, v35

    .line 216
    mul-double v35, v7, v11

    mul-double v35, v35, v17

    mul-double v35, v35, v29

    .line 210
    add-double v33, v33, v35

    .line 216
    mul-double v35, v3, v15

    mul-double v35, v35, v17

    mul-double v35, v35, v29

    .line 210
    sub-double v33, v33, v35

    .line 216
    mul-double v35, v7, v9

    mul-double v35, v35, v19

    mul-double v35, v35, v29

    .line 210
    sub-double v33, v33, v35

    .line 217
    mul-double v35, v1, v15

    mul-double v35, v35, v19

    mul-double v35, v35, v29

    .line 210
    add-double v33, v33, v35

    .line 218
    mul-double v35, v3, v9

    mul-double v35, v35, v23

    mul-double v35, v35, v29

    .line 210
    add-double v33, v33, v35

    .line 218
    mul-double v35, v1, v11

    mul-double v35, v35, v23

    mul-double v35, v35, v29

    .line 210
    sub-double v33, v33, v35

    .line 218
    mul-double v35, v5, v11

    mul-double v35, v35, v17

    mul-double v35, v35, v31

    .line 210
    sub-double v33, v33, v35

    .line 219
    mul-double v35, v3, v13

    mul-double v35, v35, v17

    mul-double v35, v35, v31

    .line 210
    add-double v33, v33, v35

    .line 220
    mul-double v35, v5, v9

    mul-double v35, v35, v19

    mul-double v35, v35, v31

    .line 210
    add-double v33, v33, v35

    .line 220
    mul-double v35, v1, v13

    mul-double v35, v35, v19

    mul-double v35, v35, v31

    .line 210
    sub-double v33, v33, v35

    .line 220
    mul-double v35, v3, v9

    mul-double v35, v35, v21

    mul-double v35, v35, v31

    .line 210
    sub-double v33, v33, v35

    .line 221
    mul-double v35, v1, v11

    mul-double v35, v35, v21

    mul-double v35, v35, v31

    .line 210
    add-double v33, v33, v35

    return-wide v33
.end method

.method public static final inverse([D)[D
    .locals 85
    .param p0, "matrix"    # [D
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "matrix"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    invoke-static/range {p0 .. p0}, Lcom/facebook/react/uimanager/MatrixMathHelper;->determinant([D)D

    move-result-wide v1

    .line 233
    .local v1, "det":D
    sget-object v3, Lcom/facebook/react/uimanager/MatrixMathHelper;->INSTANCE:Lcom/facebook/react/uimanager/MatrixMathHelper;

    invoke-direct {v3, v1, v2}, Lcom/facebook/react/uimanager/MatrixMathHelper;->isZero(D)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 234
    return-object v0

    .line 236
    :cond_0
    const/4 v3, 0x0

    aget-wide v4, v0, v3

    .line 237
    .local v4, "m00":D
    const/4 v6, 0x1

    aget-wide v7, v0, v6

    .line 238
    .local v7, "m01":D
    const/4 v9, 0x2

    aget-wide v10, v0, v9

    .line 239
    .local v10, "m02":D
    const/4 v12, 0x3

    aget-wide v13, v0, v12

    .line 240
    .local v13, "m03":D
    const/4 v15, 0x4

    aget-wide v16, v0, v15

    .line 241
    .local v16, "m10":D
    const/16 v18, 0x5

    aget-wide v19, v0, v18

    .line 242
    .local v19, "m11":D
    const/16 v21, 0x6

    aget-wide v22, v0, v21

    .line 243
    .local v22, "m12":D
    const/16 v24, 0x7

    aget-wide v25, v0, v24

    .line 244
    .local v25, "m13":D
    const/16 v27, 0x8

    aget-wide v28, v0, v27

    .line 245
    .local v28, "m20":D
    const/16 v30, 0x9

    aget-wide v31, v0, v30

    .line 246
    .local v31, "m21":D
    const/16 v33, 0xa

    aget-wide v34, v0, v33

    .line 247
    .local v34, "m22":D
    const/16 v36, 0xb

    aget-wide v37, v0, v36

    .line 248
    .local v37, "m23":D
    const/16 v39, 0xc

    aget-wide v40, v0, v39

    .line 249
    .local v40, "m30":D
    const/16 v42, 0xd

    aget-wide v43, v0, v42

    .line 250
    .local v43, "m31":D
    const/16 v45, 0xe

    aget-wide v46, v0, v45

    .line 251
    .local v46, "m32":D
    const/16 v48, 0xf

    aget-wide v49, v0, v48

    .line 253
    .local v49, "m33":D
    mul-double v51, v22, v37

    mul-double v51, v51, v43

    mul-double v53, v25, v34

    mul-double v53, v53, v43

    sub-double v51, v51, v53

    mul-double v53, v25, v31

    mul-double v53, v53, v46

    add-double v51, v51, v53

    mul-double v53, v19, v37

    mul-double v53, v53, v46

    sub-double v51, v51, v53

    mul-double v53, v22, v31

    mul-double v53, v53, v49

    sub-double v51, v51, v53

    .line 254
    mul-double v53, v19, v34

    mul-double v53, v53, v49

    .line 253
    add-double v51, v51, v53

    .line 254
    nop

    .line 253
    div-double v51, v51, v1

    .line 255
    mul-double v53, v13, v34

    mul-double v53, v53, v43

    mul-double v55, v10, v37

    mul-double v55, v55, v43

    sub-double v53, v53, v55

    mul-double v55, v13, v31

    mul-double v55, v55, v46

    sub-double v53, v53, v55

    mul-double v55, v7, v37

    mul-double v55, v55, v46

    add-double v53, v53, v55

    mul-double v55, v10, v31

    mul-double v55, v55, v49

    add-double v53, v53, v55

    .line 256
    mul-double v55, v7, v34

    mul-double v55, v55, v49

    .line 255
    sub-double v53, v53, v55

    .line 256
    nop

    .line 255
    div-double v53, v53, v1

    .line 253
    nop

    .line 257
    mul-double v55, v10, v25

    mul-double v55, v55, v43

    mul-double v57, v13, v22

    mul-double v57, v57, v43

    sub-double v55, v55, v57

    mul-double v57, v13, v19

    mul-double v57, v57, v46

    add-double v55, v55, v57

    mul-double v57, v7, v25

    mul-double v57, v57, v46

    sub-double v55, v55, v57

    mul-double v57, v10, v19

    mul-double v57, v57, v49

    sub-double v55, v55, v57

    .line 258
    mul-double v57, v7, v22

    mul-double v57, v57, v49

    .line 257
    add-double v55, v55, v57

    .line 258
    nop

    .line 257
    div-double v55, v55, v1

    .line 253
    nop

    .line 259
    mul-double v57, v13, v22

    mul-double v57, v57, v31

    mul-double v59, v10, v25

    mul-double v59, v59, v31

    sub-double v57, v57, v59

    mul-double v59, v13, v19

    mul-double v59, v59, v34

    sub-double v57, v57, v59

    mul-double v59, v7, v25

    mul-double v59, v59, v34

    add-double v57, v57, v59

    mul-double v59, v10, v19

    mul-double v59, v59, v37

    add-double v57, v57, v59

    .line 260
    mul-double v59, v7, v22

    mul-double v59, v59, v37

    .line 259
    sub-double v57, v57, v59

    .line 260
    nop

    .line 259
    div-double v57, v57, v1

    .line 253
    nop

    .line 261
    mul-double v59, v25, v34

    mul-double v59, v59, v40

    mul-double v61, v22, v37

    mul-double v61, v61, v40

    sub-double v59, v59, v61

    mul-double v61, v25, v28

    mul-double v61, v61, v46

    sub-double v59, v59, v61

    mul-double v61, v16, v37

    mul-double v61, v61, v46

    add-double v59, v59, v61

    mul-double v61, v22, v28

    mul-double v61, v61, v49

    add-double v59, v59, v61

    .line 262
    mul-double v61, v16, v34

    mul-double v61, v61, v49

    .line 261
    sub-double v59, v59, v61

    .line 262
    nop

    .line 261
    div-double v59, v59, v1

    .line 253
    nop

    .line 263
    mul-double v61, v10, v37

    mul-double v61, v61, v40

    mul-double v63, v13, v34

    mul-double v63, v63, v40

    sub-double v61, v61, v63

    mul-double v63, v13, v28

    mul-double v63, v63, v46

    add-double v61, v61, v63

    mul-double v63, v4, v37

    mul-double v63, v63, v46

    sub-double v61, v61, v63

    mul-double v63, v10, v28

    mul-double v63, v63, v49

    sub-double v61, v61, v63

    .line 264
    mul-double v63, v4, v34

    mul-double v63, v63, v49

    .line 263
    add-double v61, v61, v63

    .line 264
    nop

    .line 263
    div-double v61, v61, v1

    .line 253
    nop

    .line 265
    mul-double v63, v13, v22

    mul-double v63, v63, v40

    mul-double v65, v10, v25

    mul-double v65, v65, v40

    sub-double v63, v63, v65

    mul-double v65, v13, v16

    mul-double v65, v65, v46

    sub-double v63, v63, v65

    mul-double v65, v4, v25

    mul-double v65, v65, v46

    add-double v63, v63, v65

    mul-double v65, v10, v16

    mul-double v65, v65, v49

    add-double v63, v63, v65

    .line 266
    mul-double v65, v4, v22

    mul-double v65, v65, v49

    .line 265
    sub-double v63, v63, v65

    .line 266
    nop

    .line 265
    div-double v63, v63, v1

    .line 253
    nop

    .line 267
    mul-double v65, v10, v25

    mul-double v65, v65, v28

    mul-double v67, v13, v22

    mul-double v67, v67, v28

    sub-double v65, v65, v67

    mul-double v67, v13, v16

    mul-double v67, v67, v34

    add-double v65, v65, v67

    mul-double v67, v4, v25

    mul-double v67, v67, v34

    sub-double v65, v65, v67

    mul-double v67, v10, v16

    mul-double v67, v67, v37

    sub-double v65, v65, v67

    .line 268
    mul-double v67, v4, v22

    mul-double v67, v67, v37

    .line 267
    add-double v65, v65, v67

    .line 268
    nop

    .line 267
    div-double v65, v65, v1

    .line 253
    nop

    .line 269
    mul-double v67, v19, v37

    mul-double v67, v67, v40

    mul-double v69, v25, v31

    mul-double v69, v69, v40

    sub-double v67, v67, v69

    mul-double v69, v25, v28

    mul-double v69, v69, v43

    add-double v67, v67, v69

    mul-double v69, v16, v37

    mul-double v69, v69, v43

    sub-double v67, v67, v69

    mul-double v69, v19, v28

    mul-double v69, v69, v49

    sub-double v67, v67, v69

    .line 270
    mul-double v69, v16, v31

    mul-double v69, v69, v49

    .line 269
    add-double v67, v67, v69

    .line 270
    nop

    .line 269
    div-double v67, v67, v1

    .line 253
    nop

    .line 271
    mul-double v69, v13, v31

    mul-double v69, v69, v40

    mul-double v71, v7, v37

    mul-double v71, v71, v40

    sub-double v69, v69, v71

    mul-double v71, v13, v28

    mul-double v71, v71, v43

    sub-double v69, v69, v71

    mul-double v71, v4, v37

    mul-double v71, v71, v43

    add-double v69, v69, v71

    mul-double v71, v7, v28

    mul-double v71, v71, v49

    add-double v69, v69, v71

    .line 272
    mul-double v71, v4, v31

    mul-double v71, v71, v49

    .line 271
    sub-double v69, v69, v71

    .line 272
    nop

    .line 271
    div-double v69, v69, v1

    .line 253
    nop

    .line 273
    mul-double v71, v7, v25

    mul-double v71, v71, v40

    mul-double v73, v13, v19

    mul-double v73, v73, v40

    sub-double v71, v71, v73

    mul-double v73, v13, v16

    mul-double v73, v73, v43

    add-double v71, v71, v73

    mul-double v73, v4, v25

    mul-double v73, v73, v43

    sub-double v71, v71, v73

    mul-double v73, v7, v16

    mul-double v73, v73, v49

    sub-double v71, v71, v73

    .line 274
    mul-double v73, v4, v19

    mul-double v73, v73, v49

    .line 273
    add-double v71, v71, v73

    .line 274
    nop

    .line 273
    div-double v71, v71, v1

    .line 253
    nop

    .line 275
    mul-double v73, v13, v19

    mul-double v73, v73, v28

    mul-double v75, v7, v25

    mul-double v75, v75, v28

    sub-double v73, v73, v75

    mul-double v75, v13, v16

    mul-double v75, v75, v31

    sub-double v73, v73, v75

    mul-double v75, v4, v25

    mul-double v75, v75, v31

    add-double v73, v73, v75

    mul-double v75, v7, v16

    mul-double v75, v75, v37

    add-double v73, v73, v75

    .line 276
    mul-double v75, v4, v19

    mul-double v75, v75, v37

    .line 275
    sub-double v73, v73, v75

    .line 276
    nop

    .line 275
    div-double v73, v73, v1

    .line 253
    nop

    .line 277
    mul-double v75, v22, v31

    mul-double v75, v75, v40

    mul-double v77, v19, v34

    mul-double v77, v77, v40

    sub-double v75, v75, v77

    mul-double v77, v22, v28

    mul-double v77, v77, v43

    sub-double v75, v75, v77

    mul-double v77, v16, v34

    mul-double v77, v77, v43

    add-double v75, v75, v77

    mul-double v77, v19, v28

    mul-double v77, v77, v46

    add-double v75, v75, v77

    .line 278
    mul-double v77, v16, v31

    mul-double v77, v77, v46

    .line 277
    sub-double v75, v75, v77

    .line 278
    nop

    .line 277
    div-double v75, v75, v1

    .line 253
    nop

    .line 279
    mul-double v77, v7, v34

    mul-double v77, v77, v40

    mul-double v79, v10, v31

    mul-double v79, v79, v40

    sub-double v77, v77, v79

    mul-double v79, v10, v28

    mul-double v79, v79, v43

    add-double v77, v77, v79

    mul-double v79, v4, v34

    mul-double v79, v79, v43

    sub-double v77, v77, v79

    mul-double v79, v7, v28

    mul-double v79, v79, v46

    sub-double v77, v77, v79

    .line 280
    mul-double v79, v4, v31

    mul-double v79, v79, v46

    .line 279
    add-double v77, v77, v79

    .line 280
    nop

    .line 279
    div-double v77, v77, v1

    .line 253
    nop

    .line 281
    mul-double v79, v10, v19

    mul-double v79, v79, v40

    mul-double v81, v7, v22

    mul-double v81, v81, v40

    sub-double v79, v79, v81

    mul-double v81, v10, v16

    mul-double v81, v81, v43

    sub-double v79, v79, v81

    mul-double v81, v4, v22

    mul-double v81, v81, v43

    add-double v79, v79, v81

    mul-double v81, v7, v16

    mul-double v81, v81, v46

    add-double v79, v79, v81

    .line 282
    mul-double v81, v4, v19

    mul-double v81, v81, v46

    .line 281
    sub-double v79, v79, v81

    .line 282
    nop

    .line 281
    div-double v79, v79, v1

    .line 253
    nop

    .line 283
    mul-double v81, v7, v22

    mul-double v81, v81, v28

    mul-double v83, v10, v19

    mul-double v83, v83, v28

    sub-double v81, v81, v83

    mul-double v83, v10, v16

    mul-double v83, v83, v31

    add-double v81, v81, v83

    mul-double v83, v4, v22

    mul-double v83, v83, v31

    sub-double v81, v81, v83

    mul-double v83, v7, v16

    mul-double v83, v83, v34

    sub-double v81, v81, v83

    .line 284
    mul-double v83, v4, v19

    mul-double v83, v83, v34

    .line 283
    add-double v81, v81, v83

    .line 284
    nop

    .line 283
    div-double v81, v81, v1

    const/16 v15, 0x10

    new-array v15, v15, [D

    aput-wide v51, v15, v3

    aput-wide v53, v15, v6

    aput-wide v55, v15, v9

    aput-wide v57, v15, v12

    const/4 v3, 0x4

    aput-wide v59, v15, v3

    aput-wide v61, v15, v18

    aput-wide v63, v15, v21

    aput-wide v65, v15, v24

    aput-wide v67, v15, v27

    aput-wide v69, v15, v30

    aput-wide v71, v15, v33

    aput-wide v73, v15, v36

    aput-wide v75, v15, v39

    aput-wide v77, v15, v42

    aput-wide v79, v15, v45

    aput-wide v81, v15, v48

    .line 253
    nop

    .line 252
    return-object v15
.end method

.method private final isZero(D)Z
    .locals 6
    .param p1, "d"    # D

    .line 20
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v0, v2, v4

    if-gez v0, :cond_1

    const/4 v1, 0x1

    .line 20
    :cond_1
    :goto_0
    return v1
.end method

.method public static final multiplyInto([D[D[D)V
    .locals 63
    .param p0, "out"    # [D
    .param p1, "a"    # [D
    .param p2, "b"    # [D
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string/jumbo v3, "out"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "a"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "b"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    const/4 v3, 0x0

    aget-wide v4, v1, v3

    .line 28
    .local v4, "a00":D
    const/4 v6, 0x1

    aget-wide v7, v1, v6

    .line 29
    .local v7, "a01":D
    const/4 v9, 0x2

    aget-wide v10, v1, v9

    .line 30
    .local v10, "a02":D
    const/4 v12, 0x3

    aget-wide v13, v1, v12

    .line 31
    .local v13, "a03":D
    const/4 v15, 0x4

    aget-wide v16, v1, v15

    .line 32
    .local v16, "a10":D
    const/16 v18, 0x5

    aget-wide v19, v1, v18

    .line 33
    .local v19, "a11":D
    const/16 v21, 0x6

    aget-wide v22, v1, v21

    .line 34
    .local v22, "a12":D
    const/16 v24, 0x7

    aget-wide v25, v1, v24

    .line 35
    .local v25, "a13":D
    const/16 v27, 0x8

    aget-wide v28, v1, v27

    .line 36
    .local v28, "a20":D
    const/16 v30, 0x9

    aget-wide v31, v1, v30

    .line 37
    .local v31, "a21":D
    const/16 v33, 0xa

    aget-wide v34, v1, v33

    .line 38
    .local v34, "a22":D
    const/16 v36, 0xb

    aget-wide v37, v1, v36

    .line 39
    .local v37, "a23":D
    const/16 v39, 0xc

    aget-wide v40, v1, v39

    .line 40
    .local v40, "a30":D
    const/16 v42, 0xd

    aget-wide v43, v1, v42

    .line 41
    .local v43, "a31":D
    const/16 v45, 0xe

    aget-wide v46, v1, v45

    .line 42
    .local v46, "a32":D
    const/16 v48, 0xf

    aget-wide v49, v1, v48

    .line 43
    .local v49, "a33":D
    aget-wide v51, v2, v3

    .line 44
    .local v51, "b0":D
    aget-wide v53, v2, v6

    .line 45
    .local v53, "b1":D
    aget-wide v55, v2, v9

    .line 46
    .local v55, "b2":D
    aget-wide v57, v2, v12

    .line 47
    .local v57, "b3":D
    mul-double v59, v51, v4

    mul-double v61, v53, v16

    add-double v59, v59, v61

    mul-double v61, v55, v28

    add-double v59, v59, v61

    mul-double v61, v57, v40

    add-double v59, v59, v61

    aput-wide v59, v0, v3

    .line 48
    mul-double v59, v51, v7

    mul-double v61, v53, v19

    add-double v59, v59, v61

    mul-double v61, v55, v31

    add-double v59, v59, v61

    mul-double v61, v57, v43

    add-double v59, v59, v61

    aput-wide v59, v0, v6

    .line 49
    mul-double v59, v51, v10

    mul-double v61, v53, v22

    add-double v59, v59, v61

    mul-double v61, v55, v34

    add-double v59, v59, v61

    mul-double v61, v57, v46

    add-double v59, v59, v61

    aput-wide v59, v0, v9

    .line 50
    mul-double v59, v51, v13

    mul-double v61, v53, v25

    add-double v59, v59, v61

    mul-double v61, v55, v37

    add-double v59, v59, v61

    mul-double v61, v57, v49

    add-double v59, v59, v61

    aput-wide v59, v0, v12

    .line 51
    aget-wide v51, v2, v15

    .line 52
    aget-wide v53, v2, v18

    .line 53
    aget-wide v55, v2, v21

    .line 54
    aget-wide v57, v2, v24

    .line 55
    mul-double v59, v51, v4

    mul-double v61, v53, v16

    add-double v59, v59, v61

    mul-double v61, v55, v28

    add-double v59, v59, v61

    mul-double v61, v57, v40

    add-double v59, v59, v61

    aput-wide v59, v0, v15

    .line 56
    mul-double v59, v51, v7

    mul-double v61, v53, v19

    add-double v59, v59, v61

    mul-double v61, v55, v31

    add-double v59, v59, v61

    mul-double v61, v57, v43

    add-double v59, v59, v61

    aput-wide v59, v0, v18

    .line 57
    mul-double v59, v51, v10

    mul-double v61, v53, v22

    add-double v59, v59, v61

    mul-double v61, v55, v34

    add-double v59, v59, v61

    mul-double v61, v57, v46

    add-double v59, v59, v61

    aput-wide v59, v0, v21

    .line 58
    mul-double v59, v51, v13

    mul-double v61, v53, v25

    add-double v59, v59, v61

    mul-double v61, v55, v37

    add-double v59, v59, v61

    mul-double v61, v57, v49

    add-double v59, v59, v61

    aput-wide v59, v0, v24

    .line 59
    aget-wide v51, v2, v27

    .line 60
    aget-wide v53, v2, v30

    .line 61
    aget-wide v55, v2, v33

    .line 62
    aget-wide v57, v2, v36

    .line 63
    mul-double v59, v51, v4

    mul-double v61, v53, v16

    add-double v59, v59, v61

    mul-double v61, v55, v28

    add-double v59, v59, v61

    mul-double v61, v57, v40

    add-double v59, v59, v61

    aput-wide v59, v0, v27

    .line 64
    mul-double v59, v51, v7

    mul-double v61, v53, v19

    add-double v59, v59, v61

    mul-double v61, v55, v31

    add-double v59, v59, v61

    mul-double v61, v57, v43

    add-double v59, v59, v61

    aput-wide v59, v0, v30

    .line 65
    mul-double v59, v51, v10

    mul-double v61, v53, v22

    add-double v59, v59, v61

    mul-double v61, v55, v34

    add-double v59, v59, v61

    mul-double v61, v57, v46

    add-double v59, v59, v61

    aput-wide v59, v0, v33

    .line 66
    mul-double v59, v51, v13

    mul-double v61, v53, v25

    add-double v59, v59, v61

    mul-double v61, v55, v37

    add-double v59, v59, v61

    mul-double v61, v57, v49

    add-double v59, v59, v61

    aput-wide v59, v0, v36

    .line 67
    aget-wide v51, v2, v39

    .line 68
    aget-wide v53, v2, v42

    .line 69
    aget-wide v55, v2, v45

    .line 70
    aget-wide v57, v2, v48

    .line 71
    mul-double v59, v51, v4

    mul-double v61, v53, v16

    add-double v59, v59, v61

    mul-double v61, v55, v28

    add-double v59, v59, v61

    mul-double v61, v57, v40

    add-double v59, v59, v61

    aput-wide v59, v0, v39

    .line 72
    mul-double v59, v51, v7

    mul-double v61, v53, v19

    add-double v59, v59, v61

    mul-double v61, v55, v31

    add-double v59, v59, v61

    mul-double v61, v57, v43

    add-double v59, v59, v61

    aput-wide v59, v0, v42

    .line 73
    mul-double v59, v51, v10

    mul-double v61, v53, v22

    add-double v59, v59, v61

    mul-double v61, v55, v34

    add-double v59, v59, v61

    mul-double v61, v57, v46

    add-double v59, v59, v61

    aput-wide v59, v0, v45

    .line 74
    mul-double v59, v51, v13

    mul-double v61, v53, v25

    add-double v59, v59, v61

    mul-double v61, v55, v37

    add-double v59, v59, v61

    mul-double v61, v57, v49

    add-double v59, v59, v61

    aput-wide v59, v0, v48

    .line 75
    return-void
.end method

.method public static final multiplyVectorByMatrix([D[D[D)V
    .locals 19
    .param p0, "v"    # [D
    .param p1, "m"    # [D
    .param p2, "result"    # [D
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string/jumbo v3, "v"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "m"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "result"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    const/4 v3, 0x0

    aget-wide v4, v0, v3

    .line 313
    .local v4, "vx":D
    const/4 v6, 0x1

    aget-wide v7, v0, v6

    .line 314
    .local v7, "vy":D
    const/4 v9, 0x2

    aget-wide v10, v0, v9

    .line 315
    .local v10, "vz":D
    const/4 v12, 0x3

    aget-wide v13, v0, v12

    .line 316
    .local v13, "vw":D
    aget-wide v15, v1, v3

    mul-double/2addr v15, v4

    const/16 v17, 0x4

    aget-wide v17, v1, v17

    mul-double v17, v17, v7

    add-double v15, v15, v17

    const/16 v17, 0x8

    aget-wide v17, v1, v17

    mul-double v17, v17, v10

    add-double v15, v15, v17

    const/16 v17, 0xc

    aget-wide v17, v1, v17

    mul-double v17, v17, v13

    add-double v15, v15, v17

    aput-wide v15, v2, v3

    .line 317
    aget-wide v15, v1, v6

    mul-double/2addr v15, v4

    const/4 v3, 0x5

    aget-wide v17, v1, v3

    mul-double v17, v17, v7

    add-double v15, v15, v17

    const/16 v3, 0x9

    aget-wide v17, v1, v3

    mul-double v17, v17, v10

    add-double v15, v15, v17

    const/16 v3, 0xd

    aget-wide v17, v1, v3

    mul-double v17, v17, v13

    add-double v15, v15, v17

    aput-wide v15, v2, v6

    .line 318
    aget-wide v15, v1, v9

    mul-double/2addr v15, v4

    const/4 v3, 0x6

    aget-wide v17, v1, v3

    mul-double v17, v17, v7

    add-double v15, v15, v17

    const/16 v3, 0xa

    aget-wide v17, v1, v3

    mul-double v17, v17, v10

    add-double v15, v15, v17

    const/16 v3, 0xe

    aget-wide v17, v1, v3

    mul-double v17, v17, v13

    add-double v15, v15, v17

    aput-wide v15, v2, v9

    .line 319
    aget-wide v15, v1, v12

    mul-double/2addr v15, v4

    const/4 v3, 0x7

    aget-wide v17, v1, v3

    mul-double v17, v17, v7

    add-double v15, v15, v17

    const/16 v3, 0xb

    aget-wide v17, v1, v3

    mul-double v17, v17, v10

    add-double v15, v15, v17

    const/16 v3, 0xf

    aget-wide v17, v1, v3

    mul-double v17, v17, v13

    add-double v15, v15, v17

    aput-wide v15, v2, v12

    .line 320
    return-void
.end method

.method public static final resetIdentityMatrix([D)V
    .locals 3
    .param p0, "matrix"    # [D
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "matrix"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 388
    const-wide/16 v0, 0x0

    const/16 v2, 0xe

    aput-wide v0, p0, v2

    .line 389
    aget-wide v0, p0, v2

    const/16 v2, 0xd

    aput-wide v0, p0, v2

    .line 390
    aget-wide v0, p0, v2

    const/16 v2, 0xc

    aput-wide v0, p0, v2

    .line 391
    aget-wide v0, p0, v2

    const/16 v2, 0xb

    aput-wide v0, p0, v2

    .line 392
    aget-wide v0, p0, v2

    const/16 v2, 0x9

    aput-wide v0, p0, v2

    .line 393
    aget-wide v0, p0, v2

    const/16 v2, 0x8

    aput-wide v0, p0, v2

    .line 394
    aget-wide v0, p0, v2

    const/4 v2, 0x7

    aput-wide v0, p0, v2

    .line 395
    aget-wide v0, p0, v2

    const/4 v2, 0x6

    aput-wide v0, p0, v2

    .line 396
    aget-wide v0, p0, v2

    const/4 v2, 0x4

    aput-wide v0, p0, v2

    .line 397
    aget-wide v0, p0, v2

    const/4 v2, 0x3

    aput-wide v0, p0, v2

    .line 398
    aget-wide v0, p0, v2

    const/4 v2, 0x2

    aput-wide v0, p0, v2

    .line 399
    const/4 v0, 0x1

    aget-wide v1, p0, v2

    aput-wide v1, p0, v0

    .line 400
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const/16 v2, 0xf

    aput-wide v0, p0, v2

    .line 401
    aget-wide v0, p0, v2

    const/16 v2, 0xa

    aput-wide v0, p0, v2

    .line 402
    aget-wide v0, p0, v2

    const/4 v2, 0x5

    aput-wide v0, p0, v2

    .line 403
    const/4 v0, 0x0

    aget-wide v1, p0, v2

    aput-wide v1, p0, v0

    .line 404
    return-void
.end method

.method public static final roundTo3Places(D)D
    .locals 4
    .param p0, "n"    # D
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 371
    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static final transpose([D)[D
    .locals 49
    .param p0, "m"    # [D
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "m"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    .line 292
    const/4 v4, 0x4

    aget-wide v5, v0, v4

    .line 291
    nop

    .line 293
    const/16 v7, 0x8

    aget-wide v8, v0, v7

    .line 291
    nop

    .line 294
    const/16 v10, 0xc

    aget-wide v11, v0, v10

    .line 291
    nop

    .line 295
    const/4 v13, 0x1

    aget-wide v14, v0, v13

    .line 291
    nop

    .line 296
    const/16 v16, 0x5

    aget-wide v17, v0, v16

    .line 291
    nop

    .line 297
    const/16 v19, 0x9

    aget-wide v20, v0, v19

    .line 291
    nop

    .line 298
    const/16 v22, 0xd

    aget-wide v23, v0, v22

    .line 291
    nop

    .line 299
    const/16 v25, 0x2

    aget-wide v26, v0, v25

    .line 291
    nop

    .line 300
    const/16 v28, 0x6

    aget-wide v29, v0, v28

    .line 291
    nop

    .line 301
    const/16 v31, 0xa

    aget-wide v32, v0, v31

    .line 291
    nop

    .line 302
    const/16 v34, 0xe

    aget-wide v35, v0, v34

    .line 291
    nop

    .line 303
    const/16 v37, 0x3

    aget-wide v38, v0, v37

    .line 291
    nop

    .line 304
    const/16 v40, 0x7

    aget-wide v41, v0, v40

    .line 291
    nop

    .line 305
    const/16 v43, 0xb

    aget-wide v44, v0, v43

    .line 291
    nop

    .line 306
    const/16 v46, 0xf

    aget-wide v47, v0, v46

    const/16 v10, 0x10

    new-array v10, v10, [D

    aput-wide v2, v10, v1

    aput-wide v5, v10, v13

    aput-wide v8, v10, v25

    aput-wide v11, v10, v37

    aput-wide v14, v10, v4

    aput-wide v17, v10, v16

    aput-wide v20, v10, v28

    aput-wide v23, v10, v40

    aput-wide v26, v10, v7

    aput-wide v29, v10, v19

    aput-wide v32, v10, v31

    aput-wide v35, v10, v43

    const/16 v1, 0xc

    aput-wide v38, v10, v1

    aput-wide v41, v10, v22

    aput-wide v44, v10, v34

    aput-wide v47, v10, v46

    .line 291
    nop

    .line 290
    return-object v10
.end method

.method public static final v3Combine([D[DDD)[D
    .locals 13
    .param p0, "a"    # [D
    .param p1, "b"    # [D
    .param p2, "aScale"    # D
    .param p4, "bScale"    # D
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    const-string v2, "a"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "b"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    const/4 v2, 0x0

    aget-wide v3, v0, v2

    mul-double/2addr v3, p2

    aget-wide v5, v1, v2

    mul-double v5, v5, p4

    add-double/2addr v3, v5

    const/4 v5, 0x1

    aget-wide v6, v0, v5

    mul-double/2addr v6, p2

    aget-wide v8, v1, v5

    mul-double v8, v8, p4

    add-double/2addr v6, v8

    const/4 v8, 0x2

    aget-wide v9, v0, v8

    mul-double/2addr v9, p2

    aget-wide v11, v1, v8

    mul-double v11, v11, p4

    add-double/2addr v9, v11

    const/4 v11, 0x3

    new-array v11, v11, [D

    aput-wide v3, v11, v2

    aput-wide v6, v11, v5

    aput-wide v9, v11, v8

    .line 355
    return-object v11
.end method

.method public static final v3Cross([D[D)[D
    .locals 13
    .param p0, "a"    # [D
    .param p1, "b"    # [D
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    const/4 v3, 0x2

    aget-wide v4, p1, v3

    mul-double/2addr v1, v4

    aget-wide v4, p0, v3

    aget-wide v6, p1, v0

    mul-double/2addr v4, v6

    sub-double/2addr v1, v4

    aget-wide v4, p0, v3

    const/4 v6, 0x0

    aget-wide v7, p1, v6

    mul-double/2addr v4, v7

    aget-wide v7, p0, v6

    aget-wide v9, p1, v3

    mul-double/2addr v7, v9

    sub-double/2addr v4, v7

    aget-wide v7, p0, v6

    aget-wide v9, p1, v0

    mul-double/2addr v7, v9

    aget-wide v9, p0, v0

    aget-wide v11, p1, v6

    mul-double/2addr v9, v11

    sub-double/2addr v7, v9

    const/4 v9, 0x3

    new-array v9, v9, [D

    aput-wide v1, v9, v6

    aput-wide v4, v9, v0

    aput-wide v7, v9, v3

    .line 365
    return-object v9
.end method

.method public static final v3Dot([D[D)D
    .locals 7
    .param p0, "a"    # [D
    .param p1, "b"    # [D
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    mul-double/2addr v1, v3

    const/4 v0, 0x1

    aget-wide v3, p0, v0

    aget-wide v5, p1, v0

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    const/4 v0, 0x2

    aget-wide v3, p0, v0

    aget-wide v5, p1, v0

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    return-wide v1
.end method

.method public static final v3Length([D)D
    .locals 7
    .param p0, "a"    # [D
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p0, v0

    mul-double/2addr v1, v3

    const/4 v0, 0x1

    aget-wide v3, p0, v0

    aget-wide v5, p0, v0

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    const/4 v0, 0x2

    aget-wide v3, p0, v0

    aget-wide v5, p0, v0

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final v3Normalize([DD)[D
    .locals 12
    .param p0, "vector"    # [D
    .param p1, "norm"    # D
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "vector"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    const/4 v0, 0x1

    int-to-double v1, v0

    sget-object v3, Lcom/facebook/react/uimanager/MatrixMathHelper;->INSTANCE:Lcom/facebook/react/uimanager/MatrixMathHelper;

    invoke-direct {v3, p1, p2}, Lcom/facebook/react/uimanager/MatrixMathHelper;->isZero(D)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p0}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Length([D)D

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, p1

    :goto_0
    div-double/2addr v1, v3

    .line 332
    .local v1, "im":D
    const/4 v3, 0x0

    aget-wide v4, p0, v3

    mul-double/2addr v4, v1

    aget-wide v6, p0, v0

    mul-double/2addr v6, v1

    const/4 v8, 0x2

    aget-wide v9, p0, v8

    mul-double/2addr v9, v1

    const/4 v11, 0x3

    new-array v11, v11, [D

    aput-wide v4, v11, v3

    aput-wide v6, v11, v0

    aput-wide v9, v11, v8

    return-object v11
.end method


# virtual methods
.method public final applyScaleZ([DD)V
    .locals 1
    .param p1, "m"    # [D
    .param p2, "factor"    # D

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 422
    const/16 v0, 0xa

    aput-wide p2, p1, v0

    .line 423
    return-void
.end method
