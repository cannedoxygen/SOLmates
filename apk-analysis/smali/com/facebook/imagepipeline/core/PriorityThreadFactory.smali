.class public final Lcom/facebook/imagepipeline/core/PriorityThreadFactory;
.super Ljava/lang/Object;
.source "PriorityThreadFactory.kt"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B#\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/core/PriorityThreadFactory;",
        "Ljava/util/concurrent/ThreadFactory;",
        "threadPriority",
        "",
        "prefix",
        "",
        "addThreadNumber",
        "",
        "(ILjava/lang/String;Z)V",
        "threadNumber",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "newThread",
        "Ljava/lang/Thread;",
        "runnable",
        "Ljava/lang/Runnable;",
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


# instance fields
.field private final addThreadNumber:Z

.field private final prefix:Ljava/lang/String;

.field private final threadNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final threadPriority:I


# direct methods
.method public static synthetic $r8$lambda$gKxQU1bghuEskyM4mT5eRzkaG54(Lcom/facebook/imagepipeline/core/PriorityThreadFactory;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/core/PriorityThreadFactory;->newThread$lambda$0(Lcom/facebook/imagepipeline/core/PriorityThreadFactory;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 6

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/imagepipeline/core/PriorityThreadFactory;-><init>(ILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 7

    const-string/jumbo v0, "prefix"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/facebook/imagepipeline/core/PriorityThreadFactory;-><init>(ILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 2
    .param p1, "threadPriority"    # I
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "addThreadNumber"    # Z

    const-string/jumbo v0, "prefix"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/facebook/imagepipeline/core/PriorityThreadFactory;->threadPriority:I

    .line 25
    iput-object p2, p0, Lcom/facebook/imagepipeline/core/PriorityThreadFactory;->prefix:Ljava/lang/String;

    .line 26
    iput-boolean p3, p0, Lcom/facebook/imagepipeline/core/PriorityThreadFactory;->addThreadNumber:Z

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/PriorityThreadFactory;->threadNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 23
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 23
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 25
    const-string p2, "PriorityThreadFactory"

    .line 23
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 26
    const/4 p3, 0x1

    .line 23
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/core/PriorityThreadFactory;-><init>(ILjava/lang/String;Z)V

    .line 47
    return-void
.end method

.method private static final newThread$lambda$0(Lcom/facebook/imagepipeline/core/PriorityThreadFactory;Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "this$0"    # Lcom/facebook/imagepipeline/core/PriorityThreadFactory;
    .param p1, "$runnable"    # Ljava/lang/Runnable;

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    nop

    .line 33
    :try_start_0
    iget v0, p0, Lcom/facebook/imagepipeline/core/PriorityThreadFactory;->threadPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    .line 37
    :goto_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 38
    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 4
    .param p1, "runnable"    # Ljava/lang/Runnable;

    const-string/jumbo v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lcom/facebook/imagepipeline/core/PriorityThreadFactory$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/core/PriorityThreadFactory$$ExternalSyntheticLambda0;-><init>(Lcom/facebook/imagepipeline/core/PriorityThreadFactory;Ljava/lang/Runnable;)V

    .line 40
    .local v0, "wrapperRunnable":Ljava/lang/Runnable;
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/core/PriorityThreadFactory;->addThreadNumber:Z

    if-eqz v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/PriorityThreadFactory;->prefix:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/PriorityThreadFactory;->threadNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/PriorityThreadFactory;->prefix:Ljava/lang/String;

    .line 40
    :goto_0
    nop

    .line 39
    nop

    .line 45
    .local v1, "name":Ljava/lang/String;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v2
.end method
