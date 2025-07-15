.class public final Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;
.super Ljava/lang/Object;
.source "FrescoInstrumenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter$Instrumenter;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0017B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J \u0010\u0008\u001a\u0004\u0018\u00010\t2\n\u0008\u0001\u0010\n\u001a\u0004\u0018\u00010\t2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0007J\u001a\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0010\u001a\u00020\u0011H\u0007J\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u00012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0007J\u001e\u0010\u0013\u001a\u0004\u0018\u00010\u00012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0007J\u0012\u0010\u0014\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0001H\u0007J\u0012\u0010\u0015\u001a\u00020\u000e2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0004H\u0007R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u00068G\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0007\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;",
        "",
        "()V",
        "instance",
        "Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter$Instrumenter;",
        "isTracing",
        "",
        "()Z",
        "decorateRunnable",
        "Ljava/lang/Runnable;",
        "runnable",
        "tag",
        "",
        "markFailure",
        "",
        "token",
        "th",
        "",
        "onBeforeSubmitWork",
        "onBeginWork",
        "onEndWork",
        "provide",
        "instrumenter",
        "Instrumenter",
        "imagepipeline-base_release"
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
.field public static final INSTANCE:Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;

.field private static volatile instance:Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter$Instrumenter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;-><init>()V

    sput-object v0, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;->INSTANCE:Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final decorateRunnable(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 3
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "tag"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 79
    sget-object v0, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;->instance:Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter$Instrumenter;

    .line 80
    .local v0, "instrumenter":Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter$Instrumenter;
    if-eqz v0, :cond_2

    if-nez p0, :cond_0

    goto :goto_1

    .line 83
    :cond_0
    if-nez p1, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    move-object v1, p1

    .line 84
    .local v1, "nonNullTag":Ljava/lang/String;
    :goto_0
    invoke-interface {v0, p0, v1}, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter$Instrumenter;->decorateRunnable(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v2

    return-object v2

    .line 81
    .end local v1    # "nonNullTag":Ljava/lang/String;
    :cond_2
    :goto_1
    return-object p0
.end method

.method public static final isTracing()Z
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 35
    sget-object v0, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;->instance:Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter$Instrumenter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 36
    .local v0, "instrumenter":Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter$Instrumenter;
    :cond_0
    invoke-interface {v0}, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter$Instrumenter;->isTracing()Z

    move-result v1

    return v1
.end method

.method public static final markFailure(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "token"    # Ljava/lang/Object;
    .param p1, "th"    # Ljava/lang/Throwable;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "th"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    sget-object v0, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;->instance:Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter$Instrumenter;

    .line 71
    .local v0, "instrumenter":Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter$Instrumenter;
    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    invoke-interface {v0, p0, p1}, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter$Instrumenter;->markFailure(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 75
    return-void

    .line 72
    :cond_1
    :goto_0
    return-void
.end method

.method public static final onBeforeSubmitWork(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 41
    sget-object v0, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;->instance:Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter$Instrumenter;

    .line 42
    .local v0, "instrumenter":Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter$Instrumenter;
    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    invoke-interface {v0, p0}, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter$Instrumenter;->onBeforeSubmitWork(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 42
    :goto_1
    return-object v1
.end method

.method public static final onBeginWork(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "token"    # Ljava/lang/Object;
    .param p1, "tag"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 51
    sget-object v0, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;->instance:Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter$Instrumenter;

    .line 52
    .local v0, "instrumenter":Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter$Instrumenter;
    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    invoke-interface {v0, p0, p1}, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter$Instrumenter;->onBeginWork(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 53
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 52
    :goto_1
    return-object v1
.end method

.method public static final onEndWork(Ljava/lang/Object;)V
    .locals 1
    .param p0, "token"    # Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 61
    sget-object v0, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;->instance:Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter$Instrumenter;

    .line 62
    .local v0, "instrumenter":Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter$Instrumenter;
    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    invoke-interface {v0, p0}, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter$Instrumenter;->onEndWork(Ljava/lang/Object;)V

    .line 66
    return-void

    .line 63
    :cond_1
    :goto_0
    return-void
.end method

.method public static final provide(Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter$Instrumenter;)V
    .locals 0
    .param p0, "instrumenter"    # Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter$Instrumenter;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 29
    sput-object p0, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;->instance:Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter$Instrumenter;

    .line 30
    return-void
.end method
