.class public final Lcom/facebook/imagepipeline/postprocessors/TintPostProcessor;
.super Lcom/facebook/imagepipeline/request/BasePostprocessor;
.source "TintPostProcessor.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\'\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u000e\u001a\u00020\nH\u0016J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u00038\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/postprocessors/TintPostProcessor;",
        "Lcom/facebook/imagepipeline/request/BasePostprocessor;",
        "color",
        "",
        "alphaPercent",
        "",
        "porterDuffMode",
        "Landroid/graphics/PorterDuff$Mode;",
        "(ILjava/lang/Float;Landroid/graphics/PorterDuff$Mode;)V",
        "cacheKey",
        "Lcom/facebook/cache/common/CacheKey;",
        "tintColor",
        "getName",
        "",
        "getPostprocessorCacheKey",
        "process",
        "",
        "sourceBitmap",
        "Landroid/graphics/Bitmap;",
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


# instance fields
.field private final cacheKey:Lcom/facebook/cache/common/CacheKey;

.field private final porterDuffMode:Landroid/graphics/PorterDuff$Mode;

.field private final tintColor:I


# direct methods
.method public constructor <init>(ILjava/lang/Float;Landroid/graphics/PorterDuff$Mode;)V
    .locals 5
    .param p1, "color"    # I
    .param p2, "alphaPercent"    # Ljava/lang/Float;
    .param p3, "porterDuffMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 35
    invoke-direct {p0}, Lcom/facebook/imagepipeline/request/BasePostprocessor;-><init>()V

    .line 34
    iput-object p3, p0, Lcom/facebook/imagepipeline/postprocessors/TintPostProcessor;->porterDuffMode:Landroid/graphics/PorterDuff$Mode;

    .line 38
    if-eqz p2, :cond_0

    .line 39
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/16 v1, 0xff

    int-to-float v2, v1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    goto :goto_0

    .line 41
    :cond_0
    move v0, p1

    .line 38
    :goto_0
    iput v0, p0, Lcom/facebook/imagepipeline/postprocessors/TintPostProcessor;->tintColor:I

    .line 45
    new-instance v0, Lcom/facebook/cache/common/SimpleCacheKey;

    iget v1, p0, Lcom/facebook/imagepipeline/postprocessors/TintPostProcessor;->tintColor:I

    iget-object v2, p0, Lcom/facebook/imagepipeline/postprocessors/TintPostProcessor;->porterDuffMode:Landroid/graphics/PorterDuff$Mode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tint. tintColor="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/cache/common/SimpleCacheKey;-><init>(Ljava/lang/String;)V

    check-cast v0, Lcom/facebook/cache/common/CacheKey;

    iput-object v0, p0, Lcom/facebook/imagepipeline/postprocessors/TintPostProcessor;->cacheKey:Lcom/facebook/cache/common/CacheKey;

    .line 31
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Float;Landroid/graphics/PorterDuff$Mode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 31
    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 33
    move-object p2, v0

    .line 31
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 34
    move-object p3, v0

    .line 31
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/postprocessors/TintPostProcessor;-><init>(ILjava/lang/Float;Landroid/graphics/PorterDuff$Mode;)V

    .line 60
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/facebook/imagepipeline/postprocessors/TintPostProcessor;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPostprocessorCacheKey()Lcom/facebook/cache/common/CacheKey;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/facebook/imagepipeline/postprocessors/TintPostProcessor;->cacheKey:Lcom/facebook/cache/common/CacheKey;

    return-object v0
.end method

.method public process(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "sourceBitmap"    # Landroid/graphics/Bitmap;

    const-string/jumbo v0, "sourceBitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/facebook/imagepipeline/postprocessors/TintPostProcessor;->porterDuffMode:Landroid/graphics/PorterDuff$Mode;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v1, p0, Lcom/facebook/imagepipeline/postprocessors/TintPostProcessor;->tintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0

    .line 53
    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v1, p0, Lcom/facebook/imagepipeline/postprocessors/TintPostProcessor;->tintColor:I

    iget-object v2, p0, Lcom/facebook/imagepipeline/postprocessors/TintPostProcessor;->porterDuffMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 55
    :goto_0
    return-void
.end method
