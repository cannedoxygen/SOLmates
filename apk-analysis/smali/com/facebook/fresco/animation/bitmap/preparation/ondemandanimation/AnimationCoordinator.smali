.class public final Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;
.super Ljava/lang/Object;
.source "AnimationCoordinator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnimationCoordinator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnimationCoordinator.kt\ncom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,130:1\n215#2,2:131\n215#2,2:133\n*S KotlinDebug\n*F\n+ 1 AnimationCoordinator.kt\ncom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator\n*L\n53#1:131,2\n58#1:133,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u001eJ\u0008\u0010\u001f\u001a\u00020 H\u0002J\u0008\u0010!\u001a\u00020 H\u0002J\u0018\u0010\"\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u00172\u0006\u0010#\u001a\u00020\u0018H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000f\u001a\u00020\u00108BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00180\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;",
        "",
        "()V",
        "FPS_STEP_PERCENTAGE",
        "",
        "FREQUENCY_LOADERS_MS",
        "",
        "FREQUENCY_PERFORMANCE_MS",
        "MIN_RENDERING_FPS_PERCENTAGE",
        "calculatePerformance",
        "Ljava/lang/Runnable;",
        "clearUnusedFrameLoaders",
        "criticalCounter",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "failuresCounter",
        "handler",
        "Landroid/os/Handler;",
        "getHandler",
        "()Landroid/os/Handler;",
        "handler$delegate",
        "Lkotlin/Lazy;",
        "runningAnimations",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/DynamicRenderingFps;",
        "",
        "successCounter",
        "onRenderFrame",
        "",
        "animation",
        "frameResult",
        "Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult;",
        "scheduleLoaders",
        "",
        "schedulePerformance",
        "updateRenderingFps",
        "delta",
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
.field private static final FPS_STEP_PERCENTAGE:F = 0.2f

.field private static final FREQUENCY_LOADERS_MS:J = 0x2710L

.field private static final FREQUENCY_PERFORMANCE_MS:J = 0x7d0L

.field public static final INSTANCE:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;

.field private static final MIN_RENDERING_FPS_PERCENTAGE:F = 0.5f

.field private static final calculatePerformance:Ljava/lang/Runnable;

.field private static final clearUnusedFrameLoaders:Ljava/lang/Runnable;

.field private static final criticalCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final failuresCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final handler$delegate:Lkotlin/Lazy;

.field private static final runningAnimations:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/DynamicRenderingFps;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final successCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static synthetic $r8$lambda$3SBpHYS20NNDnQUJ6gbaK4I4Avk()V
    .locals 0

    invoke-static {}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->clearUnusedFrameLoaders$lambda$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$NgMzlvXS1Tsgb_zcqvTP07abT6w()V
    .locals 0

    invoke-static {}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->calculatePerformance$lambda$2()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;

    invoke-direct {v0}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;-><init>()V

    sput-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->INSTANCE:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->successCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->failuresCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->criticalCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->runningAnimations:Ljava/util/concurrent/ConcurrentHashMap;

    .line 33
    sget-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator$handler$2;->INSTANCE:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator$handler$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->handler$delegate:Lkotlin/Lazy;

    .line 39
    new-instance v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->calculatePerformance:Ljava/lang/Runnable;

    .line 68
    new-instance v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->clearUnusedFrameLoaders:Ljava/lang/Runnable;

    .line 74
    nop

    .line 75
    sget-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->INSTANCE:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;

    invoke-direct {v0}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->calculatePerformance:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 76
    sget-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->INSTANCE:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;

    invoke-direct {v0}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->clearUnusedFrameLoaders:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final calculatePerformance$lambda$2()V
    .locals 16

    .line 40
    sget-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->successCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    int-to-float v0, v0

    .line 41
    .local v0, "success":F
    sget-object v2, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->failuresCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v2

    int-to-float v2, v2

    .line 42
    .local v2, "failures":F
    sget-object v3, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->criticalCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v1

    int-to-float v1, v1

    .line 43
    .local v1, "critical":F
    add-float v3, v0, v2

    add-float/2addr v3, v1

    .line 45
    .local v3, "totalFrames":F
    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-lez v4, :cond_5

    .line 46
    div-float v4, v0, v3

    .line 47
    .local v4, "successRatio":F
    div-float v5, v2, v3

    .line 48
    .local v5, "failuresRatio":F
    div-float v6, v1, v3

    .line 51
    .local v6, "criticalRatio":F
    const/high16 v7, 0x3e800000    # 0.25f

    cmpl-float v7, v5, v7

    if-gtz v7, :cond_2

    const v7, 0x3dcccccd    # 0.1f

    cmpl-float v7, v6, v7

    if-lez v7, :cond_0

    goto :goto_1

    .line 56
    :cond_0
    const v7, 0x3f7ae148    # 0.98f

    cmpl-float v7, v4, v7

    if-lez v7, :cond_4

    .line 58
    sget-object v7, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->runningAnimations:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v7, Ljava/util/Map;

    .local v7, "$this$forEach$iv":Ljava/util/Map;
    const/4 v8, 0x0

    .line 133
    .local v8, "$i$f$forEach":I
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .local v10, "element$iv":Ljava/util/Map$Entry;
    const/4 v11, 0x0

    .line 58
    .local v11, "$i$a$-forEach-AnimationCoordinator$calculatePerformance$1$2":I
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/DynamicRenderingFps;

    .local v12, "animation":Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/DynamicRenderingFps;
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    .local v13, "fpsStep":I
    sget-object v14, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->INSTANCE:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;

    invoke-direct {v14, v12, v13}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->updateRenderingFps(Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/DynamicRenderingFps;I)V

    .line 133
    .end local v11    # "$i$a$-forEach-AnimationCoordinator$calculatePerformance$1$2":I
    .end local v12    # "animation":Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/DynamicRenderingFps;
    .end local v13    # "fpsStep":I
    nop

    .end local v10    # "element$iv":Ljava/util/Map$Entry;
    goto :goto_0

    .line 134
    :cond_1
    goto :goto_3

    .line 53
    .end local v7    # "$this$forEach$iv":Ljava/util/Map;
    .end local v8    # "$i$f$forEach":I
    :cond_2
    :goto_1
    sget-object v7, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->runningAnimations:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v7, Ljava/util/Map;

    .restart local v7    # "$this$forEach$iv":Ljava/util/Map;
    const/4 v8, 0x0

    .line 131
    .restart local v8    # "$i$f$forEach":I
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .restart local v10    # "element$iv":Ljava/util/Map$Entry;
    const/4 v11, 0x0

    .line 53
    .local v11, "$i$a$-forEach-AnimationCoordinator$calculatePerformance$1$1":I
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/DynamicRenderingFps;

    .restart local v12    # "animation":Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/DynamicRenderingFps;
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    .line 54
    .restart local v13    # "fpsStep":I
    sget-object v14, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->INSTANCE:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;

    neg-int v15, v13

    invoke-direct {v14, v12, v15}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->updateRenderingFps(Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/DynamicRenderingFps;I)V

    .line 55
    nop

    .line 131
    .end local v11    # "$i$a$-forEach-AnimationCoordinator$calculatePerformance$1$1":I
    .end local v12    # "animation":Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/DynamicRenderingFps;
    .end local v13    # "fpsStep":I
    nop

    .end local v10    # "element$iv":Ljava/util/Map$Entry;
    goto :goto_2

    .line 132
    :cond_3
    nop

    .line 62
    .end local v7    # "$this$forEach$iv":Ljava/util/Map;
    .end local v8    # "$i$f$forEach":I
    :cond_4
    :goto_3
    sget-object v7, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->runningAnimations:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 65
    .end local v4    # "successRatio":F
    .end local v5    # "failuresRatio":F
    .end local v6    # "criticalRatio":F
    :cond_5
    sget-object v4, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->INSTANCE:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;

    invoke-direct {v4}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->schedulePerformance()Z

    .line 66
    return-void
.end method

.method private static final clearUnusedFrameLoaders$lambda$3()V
    .locals 4

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    sub-long/2addr v0, v2

    .line 70
    .local v0, "maxUnusedTime":J
    sget-object v2, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory;->Companion:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory$Companion;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory$Companion;->clearUnusedUntil(Ljava/util/Date;)V

    .line 71
    sget-object v2, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->INSTANCE:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;

    invoke-direct {v2}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->scheduleLoaders()Z

    .line 72
    return-void
.end method

.method private final getHandler()Landroid/os/Handler;
    .locals 1

    .line 33
    sget-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->handler$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method

.method private final scheduleLoaders()Z
    .locals 4

    .line 82
    invoke-direct {p0}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->clearUnusedFrameLoaders:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method private final schedulePerformance()Z
    .locals 4

    .line 80
    invoke-direct {p0}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->calculatePerformance:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method private final updateRenderingFps(Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/DynamicRenderingFps;I)V
    .locals 3
    .param p1, "animation"    # Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/DynamicRenderingFps;
    .param p2, "delta"    # I

    .line 86
    invoke-interface {p1}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/DynamicRenderingFps;->getAnimationFps()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v0

    float-to-int v0, v0

    .line 85
    nop

    .line 88
    .local v0, "minRenderingFps":I
    invoke-interface {p1}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/DynamicRenderingFps;->getRenderingFps()I

    move-result v1

    add-int/2addr v1, p2

    invoke-interface {p1}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/DynamicRenderingFps;->getAnimationFps()I

    move-result v2

    invoke-static {v1, v0, v2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v1

    .line 87
    nop

    .line 90
    .local v1, "renderingFps":I
    invoke-interface {p1}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/DynamicRenderingFps;->getRenderingFps()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 91
    invoke-interface {p1, v1}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/DynamicRenderingFps;->setRenderingFps(I)V

    .line 93
    :cond_0
    return-void
.end method


# virtual methods
.method public final onRenderFrame(Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/DynamicRenderingFps;Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult;)V
    .locals 4
    .param p1, "animation"    # Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/DynamicRenderingFps;
    .param p2, "frameResult"    # Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult;

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "frameResult"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    sget-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->runningAnimations:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    invoke-interface {p1}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/DynamicRenderingFps;->getAnimationFps()I

    move-result v0

    .line 103
    .local v0, "fps":I
    int-to-float v1, v0

    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .local v1, "fpsStep":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 105
    sget-object v3, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->runningAnimations:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .end local v0    # "fps":I
    .end local v1    # "fpsStep":I
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult;->getType()Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;

    move-result-object v0

    sget-object v1, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 111
    :pswitch_0
    sget-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->criticalCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_0

    .line 110
    :pswitch_1
    sget-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->failuresCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_0

    .line 109
    :pswitch_2
    sget-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->successCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 113
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
