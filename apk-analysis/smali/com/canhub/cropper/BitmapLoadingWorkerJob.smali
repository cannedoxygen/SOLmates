.class public final Lcom/canhub/cropper/BitmapLoadingWorkerJob;
.super Ljava/lang/Object;
.source "BitmapLoadingWorkerJob.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/canhub/cropper/BitmapLoadingWorkerJob$Companion;,
        Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u001e2\u00020\u0001:\u0002\u001e\u001fB\u001f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0006\u0010\u0017\u001a\u00020\u0018J\u0019\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u001bH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001cJ\u0006\u0010\u001d\u001a\u00020\u0018R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u00020\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\r\u001a\u0010\u0012\u000c\u0012\n \u000f*\u0004\u0018\u00010\u00050\u00050\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u000e\u0010\u0016\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006 "
    }
    d2 = {
        "Lcom/canhub/cropper/BitmapLoadingWorkerJob;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "context",
        "Landroid/content/Context;",
        "cropImageView",
        "Lcom/canhub/cropper/CropImageView;",
        "uri",
        "Landroid/net/Uri;",
        "(Landroid/content/Context;Lcom/canhub/cropper/CropImageView;Landroid/net/Uri;)V",
        "coroutineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "getCoroutineContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "cropImageViewReference",
        "Ljava/lang/ref/WeakReference;",
        "kotlin.jvm.PlatformType",
        "currentJob",
        "Lkotlinx/coroutines/Job;",
        "height",
        "",
        "getUri",
        "()Landroid/net/Uri;",
        "width",
        "cancel",
        "",
        "onPostExecute",
        "result",
        "Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;",
        "(Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "start",
        "Companion",
        "Result",
        "cropper_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/canhub/cropper/BitmapLoadingWorkerJob$Companion;


# instance fields
.field private final context:Landroid/content/Context;

.field private final cropImageViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/canhub/cropper/CropImageView;",
            ">;"
        }
    .end annotation
.end field

.field private currentJob:Lkotlinx/coroutines/Job;

.field private final height:I

.field private final uri:Landroid/net/Uri;

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/canhub/cropper/BitmapLoadingWorkerJob;->Companion:Lcom/canhub/cropper/BitmapLoadingWorkerJob$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/canhub/cropper/CropImageView;Landroid/net/Uri;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cropImageView"    # Lcom/canhub/cropper/CropImageView;
    .param p3, "uri"    # Landroid/net/Uri;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cropImageView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "uri"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/canhub/cropper/BitmapLoadingWorkerJob;->context:Landroid/content/Context;

    .line 19
    iput-object p3, p0, Lcom/canhub/cropper/BitmapLoadingWorkerJob;->uri:Landroid/net/Uri;

    .line 24
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/canhub/cropper/BitmapLoadingWorkerJob;->cropImageViewReference:Ljava/lang/ref/WeakReference;

    .line 25
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/Job;

    iput-object v0, p0, Lcom/canhub/cropper/BitmapLoadingWorkerJob;->currentJob:Lkotlinx/coroutines/Job;

    .line 29
    nop

    .line 30
    invoke-virtual {p2}, Lcom/canhub/cropper/CropImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 31
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    if-lez v1, :cond_0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v4, v1

    div-double/2addr v2, v4

    :cond_0
    move-wide v1, v2

    .line 32
    .local v1, "densityAdj":D
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v3, v3

    mul-double/2addr v3, v1

    double-to-int v3, v3

    iput v3, p0, Lcom/canhub/cropper/BitmapLoadingWorkerJob;->width:I

    .line 33
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v3, v3

    mul-double/2addr v3, v1

    double-to-int v3, v3

    iput v3, p0, Lcom/canhub/cropper/BitmapLoadingWorkerJob;->height:I

    .line 34
    .end local v0    # "metrics":Landroid/util/DisplayMetrics;
    .end local v1    # "densityAdj":D
    nop

    .line 16
    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/canhub/cropper/BitmapLoadingWorkerJob;)Landroid/content/Context;
    .locals 1
    .param p0, "$this"    # Lcom/canhub/cropper/BitmapLoadingWorkerJob;

    .line 16
    iget-object v0, p0, Lcom/canhub/cropper/BitmapLoadingWorkerJob;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static final synthetic access$getCropImageViewReference$p(Lcom/canhub/cropper/BitmapLoadingWorkerJob;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "$this"    # Lcom/canhub/cropper/BitmapLoadingWorkerJob;

    .line 16
    iget-object v0, p0, Lcom/canhub/cropper/BitmapLoadingWorkerJob;->cropImageViewReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public static final synthetic access$getHeight$p(Lcom/canhub/cropper/BitmapLoadingWorkerJob;)I
    .locals 1
    .param p0, "$this"    # Lcom/canhub/cropper/BitmapLoadingWorkerJob;

    .line 16
    iget v0, p0, Lcom/canhub/cropper/BitmapLoadingWorkerJob;->height:I

    return v0
.end method

.method public static final synthetic access$getWidth$p(Lcom/canhub/cropper/BitmapLoadingWorkerJob;)I
    .locals 1
    .param p0, "$this"    # Lcom/canhub/cropper/BitmapLoadingWorkerJob;

    .line 16
    iget v0, p0, Lcom/canhub/cropper/BitmapLoadingWorkerJob;->width:I

    return v0
.end method

.method public static final synthetic access$onPostExecute(Lcom/canhub/cropper/BitmapLoadingWorkerJob;Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lcom/canhub/cropper/BitmapLoadingWorkerJob;
    .param p1, "result"    # Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/canhub/cropper/BitmapLoadingWorkerJob;->onPostExecute(Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final onPostExecute(Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "result"    # Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 69
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/canhub/cropper/BitmapLoadingWorkerJob$onPostExecute$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/canhub/cropper/BitmapLoadingWorkerJob$onPostExecute$2;-><init>(Lcom/canhub/cropper/BitmapLoadingWorkerJob;Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 82
    return-object v0
.end method


# virtual methods
.method public final cancel()V
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/canhub/cropper/BitmapLoadingWorkerJob;->currentJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 86
    return-void
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 2

    .line 27
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/canhub/cropper/BitmapLoadingWorkerJob;->currentJob:Lkotlinx/coroutines/Job;

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/MainCoroutineDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/canhub/cropper/BitmapLoadingWorkerJob;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public final start()V
    .locals 6

    .line 37
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Lcom/canhub/cropper/BitmapLoadingWorkerJob$start$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/canhub/cropper/BitmapLoadingWorkerJob$start$1;-><init>(Lcom/canhub/cropper/BitmapLoadingWorkerJob;Lkotlin/coroutines/Continuation;)V

    move-object v3, v2

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/canhub/cropper/BitmapLoadingWorkerJob;->currentJob:Lkotlinx/coroutines/Job;

    .line 61
    return-void
.end method
