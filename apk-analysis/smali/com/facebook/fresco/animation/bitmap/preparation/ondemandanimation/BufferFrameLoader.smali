.class public final Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;
.super Ljava/lang/Object;
.source "BufferFrameLoader.kt"

# interfaces
.implements Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;,
        Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBufferFrameLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferFrameLoader.kt\ncom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,256:1\n1#2:257\n1855#3,2:258\n766#3:260\n857#3,2:261\n1855#3,2:263\n1855#3,2:265\n1855#3,2:267\n*S KotlinDebug\n*F\n+ 1 BufferFrameLoader.kt\ncom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader\n*L\n107#1:258,2\n135#1:260\n135#1:261,2\n142#1:263,2\n196#1:265,2\n202#1:267,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 62\u00020\u0001:\u000256B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u001c\u001a\u00020\u001dH\u0016J\u0010\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020\u000fH\u0016J*\u0010 \u001a\u00020\u00172\u0006\u0010!\u001a\u00020\u000f2\u0006\u0010\"\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020\u000f2\u0008\u0008\u0002\u0010$\u001a\u00020\u000fH\u0003J\u0012\u0010%\u001a\u0004\u0018\u00010&2\u0006\u0010!\u001a\u00020\u000fH\u0002J\u0010\u0010\'\u001a\u00020(2\u0006\u0010!\u001a\u00020\u000fH\u0003J \u0010)\u001a\u00020(2\u0006\u0010*\u001a\u00020\u000f2\u0006\u0010\"\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020\u000fH\u0017J\u0018\u0010+\u001a\u00020\u001d2\u0006\u0010\"\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020\u000fH\u0002J.\u0010,\u001a\u00020\u001d2\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u00020/0.2\u0006\u0010!\u001a\u00020\u000f2\u0006\u0010\"\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020\u000fH\u0002J&\u00100\u001a\u00020\u001d2\u0006\u0010\"\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020\u000f2\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u00020\u001d02H\u0017J\u0012\u0010\u001c\u001a\u00020\u001d*\u0008\u0012\u0004\u0012\u00020/0.H\u0002J\u000c\u0010\u001f\u001a\u00020\u000f*\u00020\tH\u0002J \u00103\u001a\u0008\u0012\u0004\u0012\u00020/0.*\u0008\u0012\u0004\u0012\u00020/0.2\u0006\u00104\u001a\u00020/H\u0002R\u0014\u0010\u0008\u001a\u00020\tX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f0\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00067"
    }
    d2 = {
        "Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;",
        "Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoader;",
        "platformBitmapFactory",
        "Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;",
        "bitmapFrameRenderer",
        "Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;",
        "fpsCompressor",
        "Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo;",
        "animationInformation",
        "Lcom/facebook/fresco/animation/backend/AnimationInformation;",
        "(Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo;Lcom/facebook/fresco/animation/backend/AnimationInformation;)V",
        "getAnimationInformation",
        "()Lcom/facebook/fresco/animation/backend/AnimationInformation;",
        "bufferFramesHash",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "",
        "Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;",
        "bufferSize",
        "compressionFrameMap",
        "",
        "frameSequence",
        "Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/CircularList;",
        "isFetching",
        "",
        "lastRenderedFrameNumber",
        "renderableFrameIndexes",
        "",
        "thresholdFrame",
        "clear",
        "",
        "compressToFps",
        "fps",
        "extractDemandedFrame",
        "targetFrame",
        "width",
        "height",
        "count",
        "findNearestFrame",
        "Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationBitmapFrame;",
        "findNearestToRender",
        "Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult;",
        "getFrame",
        "frameNumber",
        "loadNextFrames",
        "obtainFrame",
        "targetBitmap",
        "Lcom/facebook/common/references/CloseableReference;",
        "Landroid/graphics/Bitmap;",
        "prepareFrames",
        "onAnimationLoaded",
        "Lkotlin/Function0;",
        "set",
        "src",
        "BufferFrame",
        "Companion",
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


# static fields
.field private static final BUFFER_SECOND_SIZE:I = 0x1

.field public static final Companion:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$Companion;

.field private static final THRESHOLD_PERCENTAGE:F = 0.5f


# instance fields
.field private final animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

.field private final bitmapFrameRenderer:Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;

.field private final bufferFramesHash:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;",
            ">;"
        }
    .end annotation
.end field

.field private final bufferSize:I

.field private compressionFrameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final fpsCompressor:Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo;

.field private final frameSequence:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/CircularList;

.field private volatile isFetching:Z

.field private lastRenderedFrameNumber:I

.field private final platformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

.field private renderableFrameIndexes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile thresholdFrame:I


# direct methods
.method public static synthetic $r8$lambda$-nbFvRJxcKEPx1PM62JX2o1fhSY(Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->loadNextFrames$lambda$2(Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;II)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->Companion:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo;Lcom/facebook/fresco/animation/backend/AnimationInformation;)V
    .locals 2
    .param p1, "platformBitmapFactory"    # Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;
    .param p2, "bitmapFrameRenderer"    # Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;
    .param p3, "fpsCompressor"    # Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo;
    .param p4, "animationInformation"    # Lcom/facebook/fresco/animation/backend/AnimationInformation;

    const-string/jumbo v0, "platformBitmapFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmapFrameRenderer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fpsCompressor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animationInformation"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->platformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    .line 33
    iput-object p2, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->bitmapFrameRenderer:Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;

    .line 34
    iput-object p3, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->fpsCompressor:Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo;

    .line 35
    iput-object p4, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    .line 38
    invoke-virtual {p0}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->getAnimationInformation()Lcom/facebook/fresco/animation/backend/AnimationInformation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->fps(Lcom/facebook/fresco/animation/backend/AnimationInformation;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->bufferSize:I

    .line 39
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->bufferFramesHash:Ljava/util/concurrent/ConcurrentHashMap;

    .line 43
    new-instance v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/CircularList;

    invoke-virtual {p0}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->getAnimationInformation()Lcom/facebook/fresco/animation/backend/AnimationInformation;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getFrameCount()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/CircularList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->frameSequence:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/CircularList;

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->lastRenderedFrameNumber:I

    .line 45
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->compressionFrameMap:Ljava/util/Map;

    .line 46
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->renderableFrameIndexes:Ljava/util/Set;

    .line 48
    nop

    .line 49
    invoke-virtual {p0}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->getAnimationInformation()Lcom/facebook/fresco/animation/backend/AnimationInformation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->fps(Lcom/facebook/fresco/animation/backend/AnimationInformation;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->compressToFps(I)V

    .line 50
    iget v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->bufferSize:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->thresholdFrame:I

    .line 51
    nop

    .line 31
    return-void
.end method

.method private final clear(Lcom/facebook/common/references/CloseableReference;)V
    .locals 3
    .param p1, "$this$clear"    # Lcom/facebook/common/references/CloseableReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 214
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    new-instance v0, Landroid/graphics/Canvas;

    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 217
    :cond_0
    return-void
.end method

.method private final extractDemandedFrame(IIII)Z
    .locals 21
    .param p1, "targetFrame"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "count"    # I

    .line 135
    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    iget-object v0, v1, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->frameSequence:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/CircularList;

    iget v4, v1, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->bufferSize:I

    move/from16 v5, p1

    invoke-virtual {v0, v5, v4}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/CircularList;->sublist(II)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 260
    .local v4, "$i$f$filter":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    .local v6, "destination$iv$iv":Ljava/util/Collection;
    move-object v7, v0

    .local v7, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 261
    .local v8, "$i$f$filterTo":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .local v10, "element$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    .local v11, "it":I
    const/4 v12, 0x0

    .line 136
    .local v12, "$i$a$-filter-BufferFrameLoader$extractDemandedFrame$nextWindow$1":I
    iget-object v13, v1, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->renderableFrameIndexes:Ljava/util/Set;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    .line 261
    .end local v11    # "it":I
    .end local v12    # "$i$a$-filter-BufferFrameLoader$extractDemandedFrame$nextWindow$1":I
    if-eqz v11, :cond_0

    invoke-interface {v6, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 262
    .end local v10    # "element$iv$iv":Ljava/lang/Object;
    :cond_1
    nop

    .end local v6    # "destination$iv$iv":Ljava/util/Collection;
    .end local v7    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$filterTo":I
    check-cast v6, Ljava/util/List;

    .line 260
    nop

    .line 135
    .end local v0    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$filter":I
    nop

    .line 134
    move-object v4, v6

    .line 138
    .local v4, "nextWindow":Ljava/util/List;
    move-object v0, v4

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v6

    .line 139
    .local v6, "nextWindowIndexes":Ljava/util/Set;
    new-instance v0, Ljava/util/ArrayDeque;

    iget-object v7, v1, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->bufferFramesHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    const-string v8, "bufferFramesHash.keys"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v6

    check-cast v8, Ljava/lang/Iterable;

    invoke-static {v7, v8}, Lkotlin/collections/SetsKt;->minus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-direct {v0, v7}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    move-object v7, v0

    .line 142
    .local v7, "oldFramesNumbers":Ljava/util/ArrayDeque;
    move-object v8, v4

    check-cast v8, Ljava/lang/Iterable;

    .local v8, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 263
    .local v9, "$i$f$forEach":I
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v12, 0x0

    if-eqz v10, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .local v10, "element$iv":Ljava/lang/Object;
    move-object v13, v10

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    .local v13, "newFrameNumber":I
    const/4 v14, 0x0

    .line 143
    .local v14, "$i$a$-forEach-BufferFrameLoader$extractDemandedFrame$1":I
    iget-object v15, v1, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->bufferFramesHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 144
    move-object/from16 v18, v0

    move-object/from16 v20, v6

    goto/16 :goto_4

    .line 147
    :cond_2
    iget v11, v1, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->lastRenderedFrameNumber:I

    const/4 v15, -0x1

    if-eq v11, v15, :cond_3

    iget v11, v1, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->lastRenderedFrameNumber:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 148
    return v12

    .line 151
    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    if-nez v11, :cond_4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    :cond_4
    const-string/jumbo v15, "oldFramesNumbers.pollFirst() ?: -1"

    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    .line 152
    .local v11, "deprecatedFrameNumber":I
    iget-object v15, v1, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->bufferFramesHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v15, v12}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;

    .local v12, "cachedFrame":Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;
    const/4 v15, 0x0

    .local v15, "bufferFrame":Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;
    const/16 v17, 0x0

    .line 155
    .local v17, "bitmapRef":Lcom/facebook/common/references/CloseableReference;
    move-object/from16 v18, v0

    if-eqz v12, :cond_5

    invoke-virtual {v12}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;->getBitmapRef()Lcom/facebook/common/references/CloseableReference;

    move-result-object v19

    if-eqz v19, :cond_5

    invoke-virtual/range {v19 .. v19}, Lcom/facebook/common/references/CloseableReference;->cloneOrNull()Lcom/facebook/common/references/CloseableReference;

    move-result-object v19

    goto :goto_2

    :cond_5
    const/16 v19, 0x0

    .line 157
    .local v19, "ref":Lcom/facebook/common/references/CloseableReference;
    :goto_2
    if-eqz v19, :cond_6

    .line 158
    move-object v15, v12

    .line 159
    move-object/from16 v17, v19

    move-object/from16 v20, v6

    goto :goto_3

    .line 161
    :cond_6
    new-instance v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;

    iget-object v5, v1, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->platformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    invoke-virtual {v5, v2, v3}, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;->createBitmap(II)Lcom/facebook/common/references/CloseableReference;

    move-result-object v5

    move-object/from16 v20, v6

    .end local v6    # "nextWindowIndexes":Ljava/util/Set;
    .local v20, "nextWindowIndexes":Ljava/util/Set;
    const-string/jumbo v6, "platformBitmapFactory.createBitmap(width, height)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v5}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;-><init>(Lcom/facebook/common/references/CloseableReference;)V

    move-object v15, v0

    .line 162
    invoke-virtual {v15}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;->getBitmapRef()Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->clone()Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    const-string v5, "bufferFrame.bitmapRef.clone()"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v17, v0

    .line 164
    :goto_3
    const/4 v0, 0x1

    invoke-virtual {v15, v0}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;->setUpdatingFrame(Z)V

    .line 165
    move-object/from16 v5, v17

    check-cast v5, Ljava/io/Closeable;

    :try_start_0
    move-object v0, v5

    check-cast v0, Lcom/facebook/common/references/CloseableReference;

    .line 257
    .local v0, "it":Lcom/facebook/common/references/CloseableReference;
    const/4 v6, 0x0

    .line 165
    .local v6, "$i$a$-use-BufferFrameLoader$extractDemandedFrame$1$1":I
    invoke-direct {v1, v0, v13, v2, v3}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->obtainFrame(Lcom/facebook/common/references/CloseableReference;III)V

    .end local v0    # "it":Lcom/facebook/common/references/CloseableReference;
    .end local v6    # "$i$a$-use-BufferFrameLoader$extractDemandedFrame$1$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    invoke-static {v5, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 166
    iget-object v0, v1, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->bufferFramesHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;->setUpdatingFrame(Z)V

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 169
    iget-object v5, v1, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->bufferFramesHash:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5, v0, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    nop

    .line 263
    .end local v11    # "deprecatedFrameNumber":I
    .end local v12    # "cachedFrame":Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;
    .end local v13    # "newFrameNumber":I
    .end local v14    # "$i$a$-forEach-BufferFrameLoader$extractDemandedFrame$1":I
    .end local v15    # "bufferFrame":Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;
    .end local v17    # "bitmapRef":Lcom/facebook/common/references/CloseableReference;
    .end local v19    # "ref":Lcom/facebook/common/references/CloseableReference;
    :goto_4
    move/from16 v5, p1

    move-object/from16 v0, v18

    move-object/from16 v6, v20

    .end local v10    # "element$iv":Ljava/lang/Object;
    goto/16 :goto_1

    .line 165
    .restart local v10    # "element$iv":Ljava/lang/Object;
    .restart local v11    # "deprecatedFrameNumber":I
    .restart local v12    # "cachedFrame":Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;
    .restart local v13    # "newFrameNumber":I
    .restart local v14    # "$i$a$-forEach-BufferFrameLoader$extractDemandedFrame$1":I
    .restart local v15    # "bufferFrame":Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;
    .restart local v17    # "bitmapRef":Lcom/facebook/common/references/CloseableReference;
    .restart local v19    # "ref":Lcom/facebook/common/references/CloseableReference;
    :catchall_0
    move-exception v0

    move-object v6, v0

    .end local v4    # "nextWindow":Ljava/util/List;
    .end local v7    # "oldFramesNumbers":Ljava/util/ArrayDeque;
    .end local v8    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$forEach":I
    .end local v10    # "element$iv":Ljava/lang/Object;
    .end local v11    # "deprecatedFrameNumber":I
    .end local v12    # "cachedFrame":Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;
    .end local v13    # "newFrameNumber":I
    .end local v14    # "$i$a$-forEach-BufferFrameLoader$extractDemandedFrame$1":I
    .end local v15    # "bufferFrame":Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;
    .end local v17    # "bitmapRef":Lcom/facebook/common/references/CloseableReference;
    .end local v19    # "ref":Lcom/facebook/common/references/CloseableReference;
    .end local v20    # "nextWindowIndexes":Ljava/util/Set;
    .end local p1    # "targetFrame":I
    .end local p2    # "width":I
    .end local p3    # "height":I
    .end local p4    # "count":I
    :try_start_1
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local v4    # "nextWindow":Ljava/util/List;
    .restart local v7    # "oldFramesNumbers":Ljava/util/ArrayDeque;
    .restart local v8    # "$this$forEach$iv":Ljava/lang/Iterable;
    .restart local v9    # "$i$f$forEach":I
    .restart local v10    # "element$iv":Ljava/lang/Object;
    .restart local v11    # "deprecatedFrameNumber":I
    .restart local v12    # "cachedFrame":Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;
    .restart local v13    # "newFrameNumber":I
    .restart local v14    # "$i$a$-forEach-BufferFrameLoader$extractDemandedFrame$1":I
    .restart local v15    # "bufferFrame":Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;
    .restart local v17    # "bitmapRef":Lcom/facebook/common/references/CloseableReference;
    .restart local v19    # "ref":Lcom/facebook/common/references/CloseableReference;
    .restart local v20    # "nextWindowIndexes":Ljava/util/Set;
    .restart local p1    # "targetFrame":I
    .restart local p2    # "width":I
    .restart local p3    # "height":I
    .restart local p4    # "count":I
    :catchall_1
    move-exception v0

    move-object/from16 v16, v0

    invoke-static {v5, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v16

    .line 264
    .end local v10    # "element$iv":Ljava/lang/Object;
    .end local v11    # "deprecatedFrameNumber":I
    .end local v12    # "cachedFrame":Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;
    .end local v13    # "newFrameNumber":I
    .end local v14    # "$i$a$-forEach-BufferFrameLoader$extractDemandedFrame$1":I
    .end local v15    # "bufferFrame":Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;
    .end local v17    # "bitmapRef":Lcom/facebook/common/references/CloseableReference;
    .end local v19    # "ref":Lcom/facebook/common/references/CloseableReference;
    .end local v20    # "nextWindowIndexes":Ljava/util/Set;
    .local v6, "nextWindowIndexes":Ljava/util/Set;
    :cond_7
    move-object/from16 v20, v6

    .line 172
    .end local v6    # "nextWindowIndexes":Ljava/util/Set;
    .end local v8    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$forEach":I
    .restart local v20    # "nextWindowIndexes":Ljava/util/Set;
    nop

    .line 173
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz v0, :cond_8

    iget v0, v1, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->bufferSize:I

    int-to-float v0, v0

    mul-float/2addr v0, v5

    float-to-int v0, v0

    goto :goto_5

    .line 175
    :cond_8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 177
    .local v0, "windowSize":I
    int-to-float v6, v0

    mul-float/2addr v6, v5

    float-to-int v5, v6

    add-int/lit8 v6, v0, -0x1

    const/4 v8, 0x0

    invoke-static {v5, v8, v6}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v5

    .line 176
    nop

    .line 178
    .local v5, "middlePoint":I
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "windowSize":I
    .end local v5    # "middlePoint":I
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 172
    :goto_5
    iput v0, v1, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->thresholdFrame:I

    .line 180
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic extractDemandedFrame$default(Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;IIIIILjava/lang/Object;)Z
    .locals 0

    .line 128
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 132
    const/4 p4, 0x0

    .line 128
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->extractDemandedFrame(IIII)Z

    move-result p0

    return p0
.end method

.method private final findNearestFrame(I)Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationBitmapFrame;
    .locals 8
    .param p1, "targetFrame"    # I

    .line 206
    new-instance v0, Lkotlin/ranges/IntRange;

    iget-object v1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->frameSequence:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/CircularList;

    invoke-virtual {v1}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/CircularList;->getSize()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lkotlin/ranges/IntRange;-><init>(II)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Lkotlin/collections/IntIterator;

    invoke-virtual {v1}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v1

    .local v1, "delta":I
    const/4 v3, 0x0

    .line 207
    .local v3, "$i$a$-firstNotNullOfOrNull-BufferFrameLoader$findNearestFrame$1":I
    iget-object v4, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->frameSequence:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/CircularList;

    sub-int v5, p1, v1

    invoke-virtual {v4, v5}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/CircularList;->getPosition(I)I

    move-result v4

    .line 209
    .local v4, "closestFrame":I
    nop

    .line 208
    iget-object v5, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->bufferFramesHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;

    .line 209
    if-eqz v5, :cond_2

    .line 208
    nop

    .line 209
    move-object v6, v5

    .line 257
    .local v6, "it":Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;
    const/4 v7, 0x0

    .line 209
    .local v7, "$i$a$-takeIf-BufferFrameLoader$findNearestFrame$1$1":I
    invoke-virtual {v6}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;->isFrameAvailable()Z

    move-result v6

    .end local v6    # "it":Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;
    .end local v7    # "$i$a$-takeIf-BufferFrameLoader$findNearestFrame$1$1":I
    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    move-object v5, v2

    .line 210
    :goto_0
    if-eqz v5, :cond_2

    .line 209
    nop

    .line 210
    move-object v2, v5

    .line 257
    .local v2, "it":Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;
    const/4 v5, 0x0

    .line 210
    .local v5, "$i$a$-let-BufferFrameLoader$findNearestFrame$1$2":I
    new-instance v6, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationBitmapFrame;

    invoke-virtual {v2}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;->getBitmapRef()Lcom/facebook/common/references/CloseableReference;

    move-result-object v7

    invoke-direct {v6, v4, v7}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationBitmapFrame;-><init>(ILcom/facebook/common/references/CloseableReference;)V

    move-object v2, v6

    .end local v2    # "it":Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;
    .end local v5    # "$i$a$-let-BufferFrameLoader$findNearestFrame$1$2":I
    goto :goto_1

    .line 209
    :cond_2
    nop

    .line 210
    :goto_1
    nop

    .line 206
    .end local v1    # "delta":I
    .end local v3    # "$i$a$-firstNotNullOfOrNull-BufferFrameLoader$findNearestFrame$1":I
    .end local v4    # "closestFrame":I
    if-eqz v2, :cond_0

    .line 211
    :cond_3
    return-object v2
.end method

.method private final findNearestToRender(I)Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult;
    .locals 4
    .param p1, "targetFrame"    # I

    .line 76
    invoke-direct {p0, p1}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->findNearestFrame(I)Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationBitmapFrame;

    move-result-object v0

    .line 78
    .local v0, "nearestFrame":Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationBitmapFrame;
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationBitmapFrame;->getBitmap()Lcom/facebook/common/references/CloseableReference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/common/references/CloseableReference;->clone()Lcom/facebook/common/references/CloseableReference;

    move-result-object v1

    const-string v2, "nearestFrame.bitmap.clone()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .local v1, "bitmapRef":Lcom/facebook/common/references/CloseableReference;
    invoke-virtual {v0}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationBitmapFrame;->getFrameNumber()I

    move-result v2

    iput v2, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->lastRenderedFrameNumber:I

    .line 81
    new-instance v2, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult;

    sget-object v3, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;->NEAREST:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;

    invoke-direct {v2, v1, v3}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult;-><init>(Lcom/facebook/common/references/CloseableReference;Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;)V

    .end local v1    # "bitmapRef":Lcom/facebook/common/references/CloseableReference;
    goto :goto_0

    .line 83
    :cond_0
    new-instance v2, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult;

    const/4 v1, 0x0

    sget-object v3, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;->MISSING:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;

    invoke-direct {v2, v1, v3}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult;-><init>(Lcom/facebook/common/references/CloseableReference;Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;)V

    .line 78
    :goto_0
    return-object v2
.end method

.method private final fps(Lcom/facebook/fresco/animation/backend/AnimationInformation;)I
    .locals 7
    .param p1, "$this$fps"    # Lcom/facebook/fresco/animation/backend/AnimationInformation;

    .line 229
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

.method private final loadNextFrames(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 113
    iget-boolean v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->isFetching:Z

    if-eqz v0, :cond_0

    .line 114
    return-void

    .line 116
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->isFetching:Z

    .line 118
    sget-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/AnimationLoaderExecutor;->INSTANCE:Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/AnimationLoaderExecutor;

    new-instance v1, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$$ExternalSyntheticLambda0;-><init>(Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;II)V

    invoke-virtual {v0, v1}, Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/AnimationLoaderExecutor;->execute(Ljava/lang/Runnable;)V

    .line 125
    return-void
.end method

.method private static final loadNextFrames$lambda$2(Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;II)V
    .locals 9
    .param p0, "this$0"    # Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;
    .param p1, "$width"    # I
    .param p2, "$height"    # I

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    :cond_0
    iget v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->lastRenderedFrameNumber:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    .line 121
    .local v0, "targetFrame":I
    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move v3, v0

    move v4, p1

    move v5, p2

    invoke-static/range {v2 .. v8}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->extractDemandedFrame$default(Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;IIIIILjava/lang/Object;)Z

    move-result v0

    .line 122
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 123
    .end local v0    # "success":Z
    iput-boolean v1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->isFetching:Z

    .line 124
    return-void
.end method

.method private final obtainFrame(Lcom/facebook/common/references/CloseableReference;III)V
    .locals 17
    .param p1, "targetBitmap"    # Lcom/facebook/common/references/CloseableReference;
    .param p2, "targetFrame"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;III)V"
        }
    .end annotation

    .line 189
    move-object/from16 v1, p0

    move/from16 v2, p2

    invoke-direct {v1, v2}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->findNearestFrame(I)Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationBitmapFrame;

    move-result-object v3

    .line 191
    .local v3, "nearestFrame":Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationBitmapFrame;
    const-string/jumbo v0, "targetBitmap.get()"

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationBitmapFrame;->getBitmap()Lcom/facebook/common/references/CloseableReference;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/facebook/common/references/CloseableReference;->cloneOrNull()Lcom/facebook/common/references/CloseableReference;

    move-result-object v4

    if-eqz v4, :cond_2

    check-cast v4, Ljava/io/Closeable;

    :try_start_0
    move-object v5, v4

    check-cast v5, Lcom/facebook/common/references/CloseableReference;

    .local v5, "nearestBitmap":Lcom/facebook/common/references/CloseableReference;
    const/4 v6, 0x0

    .line 192
    .local v6, "$i$a$-use-BufferFrameLoader$obtainFrame$1":I
    invoke-virtual {v3}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationBitmapFrame;->getFrameNumber()I

    move-result v7

    .line 194
    .local v7, "from":I
    if-ge v7, v2, :cond_1

    .line 195
    invoke-virtual {v5}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v9

    const-string v10, "nearestBitmap.get()"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v10, p1

    :try_start_1
    invoke-direct {v1, v10, v9}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->set(Lcom/facebook/common/references/CloseableReference;Landroid/graphics/Bitmap;)Lcom/facebook/common/references/CloseableReference;

    .line 196
    new-instance v9, Lkotlin/ranges/IntRange;

    add-int/lit8 v11, v7, 0x1

    invoke-direct {v9, v11, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    check-cast v9, Ljava/lang/Iterable;

    .local v9, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v11, 0x0

    .line 265
    .local v11, "$i$f$forEach":I
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    move-object v13, v12

    check-cast v13, Lkotlin/collections/IntIterator;

    invoke-virtual {v13}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v13

    .local v13, "element$iv":I
    move v14, v13

    .local v14, "it":I
    const/4 v15, 0x0

    .line 196
    .local v15, "$i$a$-forEach-BufferFrameLoader$obtainFrame$1$1":I
    iget-object v8, v1, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->bitmapFrameRenderer:Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v16, v3

    .end local v3    # "nearestFrame":Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationBitmapFrame;
    .local v16, "nearestFrame":Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationBitmapFrame;
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-interface {v8, v14, v3}, Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;->renderFrame(ILandroid/graphics/Bitmap;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 265
    nop

    .end local v14    # "it":I
    .end local v15    # "$i$a$-forEach-BufferFrameLoader$obtainFrame$1$1":I
    move-object/from16 v3, v16

    .end local v13    # "element$iv":I
    goto :goto_0

    .line 266
    .end local v16    # "nearestFrame":Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationBitmapFrame;
    .restart local v3    # "nearestFrame":Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationBitmapFrame;
    :cond_0
    nop

    .line 197
    .end local v9    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v11    # "$i$f$forEach":I
    const/4 v0, 0x0

    .end local v5    # "nearestBitmap":Lcom/facebook/common/references/CloseableReference;
    .end local v6    # "$i$a$-use-BufferFrameLoader$obtainFrame$1":I
    .end local v7    # "from":I
    invoke-static {v4, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    .line 191
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 199
    .restart local v5    # "nearestBitmap":Lcom/facebook/common/references/CloseableReference;
    .restart local v6    # "$i$a$-use-BufferFrameLoader$obtainFrame$1":I
    .restart local v7    # "from":I
    :cond_1
    move-object/from16 v10, p1

    move-object/from16 v16, v3

    .end local v3    # "nearestFrame":Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationBitmapFrame;
    .end local v5    # "nearestBitmap":Lcom/facebook/common/references/CloseableReference;
    .end local v6    # "$i$a$-use-BufferFrameLoader$obtainFrame$1":I
    .end local v7    # "from":I
    .restart local v16    # "nearestFrame":Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationBitmapFrame;
    :try_start_3
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 191
    const/4 v3, 0x0

    invoke-static {v4, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v3, v0

    goto :goto_2

    .end local v16    # "nearestFrame":Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationBitmapFrame;
    .restart local v3    # "nearestFrame":Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationBitmapFrame;
    :catchall_2
    move-exception v0

    move-object/from16 v10, p1

    :goto_1
    move-object/from16 v16, v3

    move-object v3, v0

    .end local v3    # "nearestFrame":Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationBitmapFrame;
    .end local p1    # "targetBitmap":Lcom/facebook/common/references/CloseableReference;
    .end local p2    # "targetFrame":I
    .end local p3    # "width":I
    .end local p4    # "height":I
    :goto_2
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .restart local v16    # "nearestFrame":Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationBitmapFrame;
    .restart local p1    # "targetBitmap":Lcom/facebook/common/references/CloseableReference;
    .restart local p2    # "targetFrame":I
    .restart local p3    # "width":I
    .restart local p4    # "height":I
    :catchall_3
    move-exception v0

    move-object v5, v0

    invoke-static {v4, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v5

    .end local v16    # "nearestFrame":Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationBitmapFrame;
    .restart local v3    # "nearestFrame":Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationBitmapFrame;
    :cond_2
    move-object/from16 v10, p1

    move-object/from16 v16, v3

    .line 201
    .end local v3    # "nearestFrame":Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationBitmapFrame;
    .restart local v16    # "nearestFrame":Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationBitmapFrame;
    :goto_3
    invoke-direct/range {p0 .. p1}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->clear(Lcom/facebook/common/references/CloseableReference;)V

    .line 202
    new-instance v3, Lkotlin/ranges/IntRange;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 267
    .local v4, "$i$f$forEach":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v5

    check-cast v6, Lkotlin/collections/IntIterator;

    invoke-virtual {v6}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v6

    .local v6, "element$iv":I
    move v7, v6

    .local v7, "it":I
    const/4 v8, 0x0

    .line 202
    .local v8, "$i$a$-forEach-BufferFrameLoader$obtainFrame$2":I
    iget-object v9, v1, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->bitmapFrameRenderer:Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Landroid/graphics/Bitmap;

    invoke-interface {v9, v7, v11}, Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;->renderFrame(ILandroid/graphics/Bitmap;)Z

    .line 267
    .end local v7    # "it":I
    .end local v8    # "$i$a$-forEach-BufferFrameLoader$obtainFrame$2":I
    nop

    .end local v6    # "element$iv":I
    goto :goto_4

    .line 268
    :cond_3
    nop

    .line 203
    .end local v3    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$forEach":I
    return-void
.end method

.method private final set(Lcom/facebook/common/references/CloseableReference;Landroid/graphics/Bitmap;)Lcom/facebook/common/references/CloseableReference;
    .locals 3
    .param p1, "$this$set"    # Lcom/facebook/common/references/CloseableReference;
    .param p2, "src"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 220
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Landroid/graphics/Canvas;

    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 222
    .local v0, "canvas":Landroid/graphics/Canvas;
    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 223
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 225
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    :cond_0
    return-object p1
.end method


# virtual methods
.method public clear()V
    .locals 6

    .line 107
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->bufferFramesHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "bufferFramesHash.values"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 258
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;

    .local v4, "it":Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;
    const/4 v5, 0x0

    .line 107
    .local v5, "$i$a$-forEach-BufferFrameLoader$clear$1":I
    invoke-virtual {v4}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;->release()V

    .line 258
    .end local v4    # "it":Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;
    .end local v5    # "$i$a$-forEach-BufferFrameLoader$clear$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 259
    :cond_0
    nop

    .line 108
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->bufferFramesHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 109
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->lastRenderedFrameNumber:I

    .line 110
    return-void
.end method

.method public compressToFps(I)V
    .locals 4
    .param p1, "fps"    # I

    .line 95
    invoke-virtual {p0}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->getAnimationInformation()Lcom/facebook/fresco/animation/backend/AnimationInformation;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getLoopDurationMs()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->getAnimationInformation()Lcom/facebook/fresco/animation/backend/AnimationInformation;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getLoopCount()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    mul-int/2addr v0, v1

    .line 94
    nop

    .line 96
    .local v0, "durationMs":I
    nop

    .line 97
    iget-object v1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->fpsCompressor:Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo;

    .line 98
    nop

    .line 99
    invoke-virtual {p0}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->getAnimationInformation()Lcom/facebook/fresco/animation/backend/AnimationInformation;

    move-result-object v2

    invoke-interface {v2}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getFrameCount()I

    move-result v2

    .line 100
    invoke-virtual {p0}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->getAnimationInformation()Lcom/facebook/fresco/animation/backend/AnimationInformation;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->fps(Lcom/facebook/fresco/animation/backend/AnimationInformation;)I

    move-result v3

    invoke-static {p1, v3}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v3

    .line 97
    invoke-virtual {v1, v0, v2, v3}, Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo;->calculateReducedIndexes(III)Ljava/util/Map;

    move-result-object v1

    .line 96
    iput-object v1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->compressionFrameMap:Ljava/util/Map;

    .line 102
    iget-object v1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->compressionFrameMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->renderableFrameIndexes:Ljava/util/Set;

    .line 103
    return-void
.end method

.method public getAnimationInformation()Lcom/facebook/fresco/animation/backend/AnimationInformation;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    return-object v0
.end method

.method public getFrame(III)Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult;
    .locals 6
    .param p1, "frameNumber"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 56
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->compressionFrameMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 55
    nop

    .line 58
    .local v0, "cachedFrameIndex":I
    iput v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->lastRenderedFrameNumber:I

    .line 60
    iget-object v1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->bufferFramesHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v3, v1

    .line 257
    .local v3, "it":Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;
    const/4 v4, 0x0

    .line 60
    .local v4, "$i$a$-takeIf-BufferFrameLoader$getFrame$cachedFrame$1":I
    invoke-virtual {v3}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;->isFrameAvailable()Z

    move-result v3

    .end local v3    # "it":Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;
    .end local v4    # "$i$a$-takeIf-BufferFrameLoader$getFrame$cachedFrame$1":I
    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 62
    .local v1, "cachedFrame":Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;
    :goto_0
    if-eqz v1, :cond_2

    .line 63
    iget-object v2, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->frameSequence:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/CircularList;

    iget v3, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->thresholdFrame:I

    iget v4, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->bufferSize:I

    invoke-virtual {v2, v3, v0, v4}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/CircularList;->isTargetAhead(III)Z

    move-result v2

    .line 64
    .local v2, "isTargetAhead":Z
    if-eqz v2, :cond_1

    .line 65
    invoke-direct {p0, p2, p3}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->loadNextFrames(II)V

    .line 67
    :cond_1
    new-instance v3, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult;

    invoke-virtual {v1}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;->getBitmapRef()Lcom/facebook/common/references/CloseableReference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/common/references/CloseableReference;->clone()Lcom/facebook/common/references/CloseableReference;

    move-result-object v4

    sget-object v5, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;->SUCCESS:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;

    invoke-direct {v3, v4, v5}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult;-><init>(Lcom/facebook/common/references/CloseableReference;Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;)V

    return-object v3

    .line 70
    .end local v2    # "isTargetAhead":Z
    :cond_2
    invoke-direct {p0, p2, p3}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->loadNextFrames(II)V

    .line 71
    invoke-direct {p0, v0}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->findNearestToRender(I)Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult;

    move-result-object v2

    return-object v2

    .line 56
    .end local v0    # "cachedFrameIndex":I
    .end local v1    # "cachedFrame":Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;
    :cond_3
    invoke-direct {p0, p1}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->findNearestToRender(I)Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult;

    move-result-object v0

    return-object v0
.end method

.method public onStop()V
    .locals 0

    .line 31
    invoke-static {p0}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoader$DefaultImpls;->onStop(Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoader;)V

    return-void
.end method

.method public prepareFrames(IILkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "onAnimationLoaded"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "onAnimationLoaded"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;->loadNextFrames(II)V

    .line 90
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 91
    return-void
.end method
