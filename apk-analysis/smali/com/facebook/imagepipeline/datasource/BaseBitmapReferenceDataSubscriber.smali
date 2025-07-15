.class public abstract Lcom/facebook/imagepipeline/datasource/BaseBitmapReferenceDataSubscriber;
.super Lcom/facebook/datasource/BaseDataSubscriber;
.source "BaseBitmapReferenceDataSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/datasource/BaseDataSubscriber<",
        "Lcom/facebook/common/references/CloseableReference<",
        "Lcom/facebook/imagepipeline/image/CloseableImage;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/facebook/datasource/BaseDataSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract onNewResultImpl(Lcom/facebook/common/references/CloseableReference;)V
    .param p1    # Lcom/facebook/common/references/CloseableReference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation
.end method

.method public onNewResultImpl(Lcom/facebook/datasource/DataSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;)V"
        }
    .end annotation

    .line 52
    .local p1, "dataSource":Lcom/facebook/datasource/DataSource;, "Lcom/facebook/datasource/DataSource<Lcom/facebook/common/references/CloseableReference<Lcom/facebook/imagepipeline/image/CloseableImage;>;>;"
    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    return-void

    .line 56
    :cond_0
    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/references/CloseableReference;

    .line 57
    .local v0, "closeableImageRef":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<Lcom/facebook/imagepipeline/image/CloseableImage;>;"
    const/4 v1, 0x0

    .line 58
    .local v1, "bitmapReference":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;

    if-eqz v2, :cond_1

    .line 59
    nop

    .line 60
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;

    invoke-interface {v2}, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->cloneUnderlyingBitmapReference()Lcom/facebook/common/references/CloseableReference;

    move-result-object v1

    .line 64
    :cond_1
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/facebook/imagepipeline/datasource/BaseBitmapReferenceDataSubscriber;->onNewResultImpl(Lcom/facebook/common/references/CloseableReference;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    invoke-static {v1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 67
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 68
    nop

    .line 69
    return-void

    .line 66
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 67
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 68
    throw v2
.end method
