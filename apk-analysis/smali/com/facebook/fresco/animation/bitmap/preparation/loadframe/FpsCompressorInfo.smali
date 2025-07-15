.class public final Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo;
.super Ljava/lang/Object;
.source "FpsCompressorInfo.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo$CompressionResult;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFpsCompressorInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FpsCompressorInfo.kt\ncom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,113:1\n1271#2,2:114\n1285#2,4:116\n215#3,2:120\n*S KotlinDebug\n*F\n+ 1 FpsCompressorInfo.kt\ncom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo\n*L\n44#1:114,2\n44#1:116,4\n67#1:120,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u0013B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J*\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00062\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0003J0\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00032\u0018\u0010\u000c\u001a\u0014\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r0\u00062\u0006\u0010\t\u001a\u00020\u0003J6\u0010\u000f\u001a\u00020\u000b2\u0018\u0010\u000c\u001a\u0014\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r0\u00062\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0006H\u0002J\n\u0010\u0011\u001a\u00020\u0012*\u00020\u0003R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo;",
        "",
        "maxFpsLimit",
        "",
        "(I)V",
        "calculateReducedIndexes",
        "",
        "durationMs",
        "frameCount",
        "targetFps",
        "compress",
        "Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo$CompressionResult;",
        "frameBitmaps",
        "Lcom/facebook/common/references/CloseableReference;",
        "Landroid/graphics/Bitmap;",
        "compressAnimation",
        "realToReducedIndex",
        "millisecondsToSeconds",
        "",
        "CompressionResult",
        "animated-drawable_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final maxFpsLimit:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "maxFpsLimit"    # I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo;->maxFpsLimit:I

    return-void
.end method

.method private final compressAnimation(Ljava/util/Map;Ljava/util/Map;)Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo$CompressionResult;
    .locals 11
    .param p1, "frameBitmaps"    # Ljava/util/Map;
    .param p2, "realToReducedIndex"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "+",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo$CompressionResult;"
        }
    .end annotation

    .line 64
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 65
    .local v0, "compressedAnim":Ljava/util/Map;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 67
    .local v1, "removedFrames":Ljava/util/List;
    move-object v2, p1

    .local v2, "$this$forEach$iv":Ljava/util/Map;
    const/4 v3, 0x0

    .line 120
    .local v3, "$i$f$forEach":I
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .local v5, "element$iv":Ljava/util/Map$Entry;
    const/4 v6, 0x0

    .line 67
    .local v6, "$i$a$-forEach-FpsCompressorInfo$compressAnimation$1":I
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    .local v7, "i":I
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/common/references/CloseableReference;

    .line 68
    .local v8, "bitmapRef":Lcom/facebook/common/references/CloseableReference;
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {p2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 70
    .local v9, "reducedIndex":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 71
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 73
    invoke-interface {v0, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :goto_1
    nop

    .line 120
    .end local v6    # "$i$a$-forEach-FpsCompressorInfo$compressAnimation$1":I
    .end local v7    # "i":I
    .end local v8    # "bitmapRef":Lcom/facebook/common/references/CloseableReference;
    .end local v9    # "reducedIndex":I
    :cond_1
    nop

    .end local v5    # "element$iv":Ljava/util/Map$Entry;
    goto :goto_0

    .line 121
    :cond_2
    nop

    .line 77
    .end local v2    # "$this$forEach$iv":Ljava/util/Map;
    .end local v3    # "$i$f$forEach":I
    new-instance v2, Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo$CompressionResult;

    invoke-direct {v2, v0, p2, v1}, Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo$CompressionResult;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V

    return-object v2
.end method


# virtual methods
.method public final calculateReducedIndexes(III)Ljava/util/Map;
    .locals 17
    .param p1, "durationMs"    # I
    .param p2, "frameCount"    # I
    .param p3, "targetFps"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 39
    move/from16 v0, p2

    const/4 v1, 0x1

    move/from16 v2, p3

    invoke-static {v2, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    move-object/from16 v3, p0

    iget v4, v3, Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo;->maxFpsLimit:I

    invoke-static {v1, v4}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v1

    .line 40
    .local v1, "sanitiseFps":I
    int-to-float v4, v1

    invoke-virtual/range {p0 .. p1}, Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo;->millisecondsToSeconds(I)F

    move-result v5

    mul-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v4

    .line 42
    .local v4, "maxAllowedFrames":F
    int-to-float v5, v0

    int-to-float v6, v0

    invoke-static {v4, v6}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result v6

    div-float/2addr v5, v6

    .line 43
    .local v5, "skipRatio":F
    const/4 v6, 0x0

    .line 44
    .local v6, "prevFrame":I
    const/4 v7, 0x0

    invoke-static {v7, v0}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .local v7, "$this$associateWith$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 114
    .local v8, "$i$f$associateWith":I
    new-instance v9, Ljava/util/LinkedHashMap;

    const/16 v10, 0xa

    invoke-static {v7, v10}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-static {v10}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v10

    const/16 v11, 0x10

    invoke-static {v10, v11}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 115
    .local v9, "result$iv":Ljava/util/LinkedHashMap;
    move-object v10, v7

    .local v10, "$this$associateWithTo$iv$iv":Ljava/lang/Iterable;
    const/4 v11, 0x0

    .line 116
    .local v11, "$i$f$associateWithTo":I
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 117
    .local v13, "element$iv$iv":Ljava/lang/Object;
    move-object v14, v9

    check-cast v14, Ljava/util/Map;

    move-object v15, v13

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v15

    .local v15, "it":I
    const/16 v16, 0x0

    .line 45
    .local v16, "$i$a$-associateWith-FpsCompressorInfo$calculateReducedIndexes$1":I
    int-to-float v0, v15

    rem-float/2addr v0, v5

    float-to-int v0, v0

    if-nez v0, :cond_0

    .line 46
    move v0, v15

    move v6, v0

    .line 49
    :cond_0
    nop

    .end local v15    # "it":I
    .end local v16    # "$i$a$-associateWith-FpsCompressorInfo$calculateReducedIndexes$1":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 117
    invoke-interface {v14, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v0, p2

    goto :goto_0

    .line 119
    .end local v13    # "element$iv$iv":Ljava/lang/Object;
    :cond_1
    move-object v0, v9

    check-cast v0, Ljava/util/Map;

    .line 115
    .end local v10    # "$this$associateWithTo$iv$iv":Ljava/lang/Iterable;
    .end local v11    # "$i$f$associateWithTo":I
    nop

    .line 44
    .end local v7    # "$this$associateWith$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$associateWith":I
    .end local v9    # "result$iv":Ljava/util/LinkedHashMap;
    return-object v0
.end method

.method public final compress(ILjava/util/Map;I)Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo$CompressionResult;
    .locals 2
    .param p1, "durationMs"    # I
    .param p2, "frameBitmaps"    # Ljava/util/Map;
    .param p3, "targetFps"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "+",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;I)",
            "Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo$CompressionResult;"
        }
    .end annotation

    const-string v0, "frameBitmaps"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo;->calculateReducedIndexes(III)Ljava/util/Map;

    move-result-object v0

    .line 27
    .local v0, "realToCompressIndex":Ljava/util/Map;
    invoke-direct {p0, p2, v0}, Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo;->compressAnimation(Ljava/util/Map;Ljava/util/Map;)Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo$CompressionResult;

    move-result-object v1

    return-object v1
.end method

.method public final millisecondsToSeconds(I)F
    .locals 2
    .param p1, "$this$millisecondsToSeconds"    # I

    .line 111
    int-to-float v0, p1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    return v0
.end method
