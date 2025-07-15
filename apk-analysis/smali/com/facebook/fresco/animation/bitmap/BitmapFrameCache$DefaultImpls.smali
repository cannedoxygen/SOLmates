.class public final Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache$DefaultImpls;
.super Ljava/lang/Object;
.source "BitmapFrameCache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static isAnimationReady(Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;)Z
    .locals 1
    .param p0, "$this"    # Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public static onAnimationPrepared(Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;Ljava/util/Map;)Z
    .locals 1
    .param p0, "$this"    # Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;
    .param p1, "frameBitmaps"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "+",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;)Z"
        }
    .end annotation

    const-string v0, "frameBitmaps"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    const/4 v0, 0x1

    return v0
.end method
