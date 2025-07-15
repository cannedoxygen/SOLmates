.class public final Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;
.super Ljava/lang/Object;
.source "FrameLoaderStrategy.kt"

# interfaces
.implements Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFrameLoaderStrategy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FrameLoaderStrategy.kt\ncom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,126:1\n1#2:127\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0013\u0018\u00002\u00020\u0001B/\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0018\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\u000eH\u0002J\u0008\u0010\u001e\u001a\u00020\u001fH\u0016J(\u0010 \u001a\n\u0012\u0004\u0012\u00020\"\u0018\u00010!2\u0006\u0010#\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\u000eH\u0017J\u0008\u0010$\u001a\u00020\u001fH\u0016J(\u0010%\u001a\u00020\u001f2\u0006\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\u000e2\u000e\u0010&\u001a\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010\'H\u0017J\u000c\u0010(\u001a\u00020\u000e*\u00020\u0005H\u0002R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0014R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00168BX\u0082\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;",
        "Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;",
        "source",
        "",
        "animationInformation",
        "Lcom/facebook/fresco/animation/backend/AnimationInformation;",
        "bitmapFrameRenderer",
        "Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;",
        "frameLoaderFactory",
        "Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory;",
        "downscaleFrameToDrawableDimensions",
        "",
        "(Ljava/lang/String;Lcom/facebook/fresco/animation/backend/AnimationInformation;Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory;Z)V",
        "animationHeight",
        "",
        "animationWidth",
        "cacheKey",
        "currentFps",
        "dynamicFpsRender",
        "com/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy$dynamicFpsRender$1",
        "Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy$dynamicFpsRender$1;",
        "frameLoader",
        "Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoader;",
        "getFrameLoader",
        "()Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoader;",
        "maxAnimationFps",
        "calculateFrameSize",
        "Lcom/facebook/fresco/animation/bitmap/preparation/FrameSize;",
        "canvasWidth",
        "canvasHeight",
        "clearFrames",
        "",
        "getBitmapFrame",
        "Lcom/facebook/common/references/CloseableReference;",
        "Landroid/graphics/Bitmap;",
        "frameNumber",
        "onStop",
        "prepareFrames",
        "onAnimationLoaded",
        "Lkotlin/Function0;",
        "fps",
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
.field private final animationHeight:I

.field private final animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

.field private final animationWidth:I

.field private final bitmapFrameRenderer:Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;

.field private final cacheKey:Ljava/lang/String;

.field private currentFps:I

.field private final downscaleFrameToDrawableDimensions:Z

.field private final dynamicFpsRender:Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy$dynamicFpsRender$1;

.field private frameLoader:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoader;

.field private final frameLoaderFactory:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory;

.field private final maxAnimationFps:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/facebook/fresco/animation/backend/AnimationInformation;Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory;Z)V
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "animationInformation"    # Lcom/facebook/fresco/animation/backend/AnimationInformation;
    .param p3, "bitmapFrameRenderer"    # Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;
    .param p4, "frameLoaderFactory"    # Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory;
    .param p5, "downscaleFrameToDrawableDimensions"    # Z

    const-string v0, "animationInformation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmapFrameRenderer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "frameLoaderFactory"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p2, p0, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    .line 25
    iput-object p3, p0, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;->bitmapFrameRenderer:Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;

    .line 26
    iput-object p4, p0, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;->frameLoaderFactory:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory;

    .line 27
    iput-boolean p5, p0, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;->downscaleFrameToDrawableDimensions:Z

    .line 30
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;->cacheKey:Ljava/lang/String;

    .line 31
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->width()I

    move-result v0

    iput v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;->animationWidth:I

    .line 32
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->height()I

    move-result v0

    iput v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;->animationHeight:I

    .line 43
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    invoke-direct {p0, v0}, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;->fps(Lcom/facebook/fresco/animation/backend/AnimationInformation;)I

    move-result v0

    iput v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;->maxAnimationFps:I

    .line 44
    iget v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;->maxAnimationFps:I

    iput v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;->currentFps:I

    .line 47
    new-instance v0, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy$dynamicFpsRender$1;

    invoke-direct {v0, p0}, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy$dynamicFpsRender$1;-><init>(Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;)V

    iput-object v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;->dynamicFpsRender:Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy$dynamicFpsRender$1;

    .line 22
    return-void
.end method

.method public static final synthetic access$getCurrentFps$p(Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;)I
    .locals 1
    .param p0, "$this"    # Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;

    .line 22
    iget v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;->currentFps:I

    return v0
.end method

.method public static final synthetic access$getFrameLoader(Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;)Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoader;
    .locals 1
    .param p0, "$this"    # Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;

    .line 22
    invoke-direct {p0}, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;->getFrameLoader()Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoader;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getMaxAnimationFps$p(Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;)I
    .locals 1
    .param p0, "$this"    # Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;

    .line 22
    iget v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;->maxAnimationFps:I

    return v0
.end method

.method public static final synthetic access$setCurrentFps$p(Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;I)V
    .locals 0
    .param p0, "$this"    # Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;
    .param p1, "<set-?>"    # I

    .line 22
    iput p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;->currentFps:I

    return-void
.end method

.method private final calculateFrameSize(II)Lcom/facebook/fresco/animation/bitmap/preparation/FrameSize;
    .locals 6
    .param p1, "canvasWidth"    # I
    .param p2, "canvasHeight"    # I

    .line 99
    iget-boolean v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;->downscaleFrameToDrawableDimensions:Z

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/facebook/fresco/animation/bitmap/preparation/FrameSize;

    iget v1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;->animationWidth:I

    iget v2, p0, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;->animationHeight:I

    invoke-direct {v0, v1, v2}, Lcom/facebook/fresco/animation/bitmap/preparation/FrameSize;-><init>(II)V

    return-object v0

    .line 103
    :cond_0
    iget v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;->animationWidth:I

    .line 104
    .local v0, "bitmapWidth":I
    iget v1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;->animationHeight:I

    .line 107
    .local v1, "bitmapHeight":I
    iget v2, p0, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;->animationWidth:I

    if-lt p1, v2, :cond_1

    iget v2, p0, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;->animationHeight:I

    if-ge p2, v2, :cond_3

    .line 108
    :cond_1
    iget v2, p0, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;->animationWidth:I

    int-to-double v2, v2

    iget v4, p0, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;->animationHeight:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    .line 109
    .local v2, "ratioW":D
    if-le p2, p1, :cond_2

    .line 110
    iget v4, p0, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;->animationHeight:I

    invoke-static {p2, v4}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v1

    .line 111
    int-to-double v4, v1

    mul-double/2addr v4, v2

    double-to-int v0, v4

    goto :goto_0

    .line 113
    :cond_2
    iget v4, p0, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;->animationWidth:I

    invoke-static {p1, v4}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v0

    .line 114
    int-to-double v4, v0

    div-double/2addr v4, v2

    double-to-int v1, v4

    .line 118
    .end local v2    # "ratioW":D
    :cond_3
    :goto_0
    new-instance v2, Lcom/facebook/fresco/animation/bitmap/preparation/FrameSize;

    invoke-direct {v2, v0, v1}, Lcom/facebook/fresco/animation/bitmap/preparation/FrameSize;-><init>(II)V

    return-object v2
.end method

.method private final fps(Lcom/facebook/fresco/animation/backend/AnimationInformation;)I
    .locals 7
    .param p1, "$this$fps"    # Lcom/facebook/fresco/animation/backend/AnimationInformation;

    .line 122
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-interface {p1}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getLoopDurationMs()I

    move-result v0

    invoke-interface {p1}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getFrameCount()I

    move-result v5

    div-int/2addr v0, v5

    int-to-long v5, v0

    div-long/2addr v3, v5

    invoke-static {v3, v4, v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private final getFrameLoader()Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoader;
    .locals 4

    .line 35
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;->frameLoader:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoader;

    if-nez v0, :cond_0

    .line 36
    nop

    .line 37
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;->frameLoaderFactory:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory;

    .line 38
    iget-object v1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;->cacheKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;->bitmapFrameRenderer:Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;

    iget-object v3, p0, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    .line 37
    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory;->createBufferLoader(Ljava/lang/String;Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;Lcom/facebook/fresco/animation/backend/AnimationInformation;)Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoader;

    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;->frameLoader:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoader;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;->frameLoader:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoader;

    return-object v0
.end method


# virtual methods
.method public clearFrames()V
    .locals 4

    .line 94
    invoke-direct {p0}, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;->getFrameLoader()Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    .local v0, "it":Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoader;
    const/4 v1, 0x0

    .line 94
    .local v1, "$i$a$-let-FrameLoaderStrategy$clearFrames$1":I
    sget-object v2, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory;->Companion:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory$Companion;

    iget-object v3, p0, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;->cacheKey:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory$Companion;->saveUnusedFrame(Ljava/lang/String;Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoader;)V

    .line 95
    .end local v0    # "it":Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoader;
    .end local v1    # "$i$a$-let-FrameLoaderStrategy$clearFrames$1":I
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;->frameLoader:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoader;

    .line 96
    return-void
.end method

.method public getBitmapFrame(III)Lcom/facebook/common/references/CloseableReference;
    .locals 7
    .param p1, "frameNumber"    # I
    .param p2, "canvasWidth"    # I
    .param p3, "canvasHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 82
    invoke-direct {p0, p2, p3}, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;->calculateFrameSize(II)Lcom/facebook/fresco/animation/bitmap/preparation/FrameSize;

    move-result-object v0

    .line 83
    .local v0, "frameSize":Lcom/facebook/fresco/animation/bitmap/preparation/FrameSize;
    invoke-direct {p0}, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;->getFrameLoader()Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoader;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/facebook/fresco/animation/bitmap/preparation/FrameSize;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/facebook/fresco/animation/bitmap/preparation/FrameSize;->getHeight()I

    move-result v4

    invoke-interface {v1, p1, v3, v4}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoader;->getFrame(III)Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 84
    .local v1, "frame":Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult;
    :goto_0
    if-eqz v1, :cond_1

    move-object v3, v1

    .line 127
    .local v3, "it":Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult;
    const/4 v4, 0x0

    .line 84
    .local v4, "$i$a$-let-FrameLoaderStrategy$getBitmapFrame$1":I
    sget-object v5, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->INSTANCE:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;

    iget-object v6, p0, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;->dynamicFpsRender:Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy$dynamicFpsRender$1;

    check-cast v6, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/DynamicRenderingFps;

    invoke-virtual {v5, v6, v3}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->onRenderFrame(Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/DynamicRenderingFps;Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult;)V

    .line 85
    .end local v3    # "it":Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult;
    .end local v4    # "$i$a$-let-FrameLoaderStrategy$getBitmapFrame$1":I
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult;->getBitmapRef()Lcom/facebook/common/references/CloseableReference;

    move-result-object v2

    :cond_2
    return-object v2
.end method

.method public onStop()V
    .locals 1

    .line 89
    invoke-direct {p0}, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;->getFrameLoader()Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoader;->onStop()V

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;->clearFrames()V

    .line 91
    return-void
.end method

.method public prepareFrames(IILkotlin/jvm/functions/Function0;)V
    .locals 5
    .param p1, "canvasWidth"    # I
    .param p2, "canvasHeight"    # I
    .param p3, "onAnimationLoaded"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 68
    if-lez p1, :cond_3

    if-lez p2, :cond_3

    iget v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;->animationWidth:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;->animationHeight:I

    if-gtz v0, :cond_0

    goto :goto_1

    .line 72
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;->calculateFrameSize(II)Lcom/facebook/fresco/animation/bitmap/preparation/FrameSize;

    move-result-object v0

    .line 73
    .local v0, "frameSize":Lcom/facebook/fresco/animation/bitmap/preparation/FrameSize;
    invoke-direct {p0}, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;->getFrameLoader()Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoader;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/facebook/fresco/animation/bitmap/preparation/FrameSize;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/facebook/fresco/animation/bitmap/preparation/FrameSize;->getWidth()I

    move-result v3

    if-nez p3, :cond_1

    sget-object v4, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy$prepareFrames$1;->INSTANCE:Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy$prepareFrames$1;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    goto :goto_0

    :cond_1
    move-object v4, p3

    :goto_0
    invoke-interface {v1, v2, v3, v4}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoader;->prepareFrames(IILkotlin/jvm/functions/Function0;)V

    .line 74
    :cond_2
    return-void

    .line 69
    .end local v0    # "frameSize":Lcom/facebook/fresco/animation/bitmap/preparation/FrameSize;
    :cond_3
    :goto_1
    return-void
.end method

.method public prepareFrames(Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparer;Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;Lcom/facebook/fresco/animation/backend/AnimationBackend;ILkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1, "bitmapFramePreparer"    # Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparer;
    .param p2, "bitmapFrameCache"    # Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;
    .param p3, "animationBackend"    # Lcom/facebook/fresco/animation/backend/AnimationBackend;
    .param p4, "lastDrawnFrameNumber"    # I
    .param p5, "onAnimationLoaded"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparer;",
            "Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;",
            "Lcom/facebook/fresco/animation/backend/AnimationBackend;",
            "I",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-static/range {p0 .. p5}, Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy$DefaultImpls;->prepareFrames(Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparer;Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;Lcom/facebook/fresco/animation/backend/AnimationBackend;ILkotlin/jvm/functions/Function0;)V

    return-void
.end method
