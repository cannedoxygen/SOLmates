.class Lcom/facebook/imagepipeline/datasource/ListDataSource$InternalDataSubscriber;
.super Ljava/lang/Object;
.source "ListDataSource.java"

# interfaces
.implements Lcom/facebook/datasource/DataSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/datasource/ListDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalDataSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/datasource/DataSubscriber<",
        "Lcom/facebook/common/references/CloseableReference<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field mFinished:Z

.field final synthetic this$0:Lcom/facebook/imagepipeline/datasource/ListDataSource;


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/datasource/ListDataSource;)V
    .locals 0

    .line 113
    .local p0, "this":Lcom/facebook/imagepipeline/datasource/ListDataSource$InternalDataSubscriber;, "Lcom/facebook/imagepipeline/datasource/ListDataSource<TT;>.InternalDataSubscriber;"
    iput-object p1, p0, Lcom/facebook/imagepipeline/datasource/ListDataSource$InternalDataSubscriber;->this$0:Lcom/facebook/imagepipeline/datasource/ListDataSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/facebook/imagepipeline/datasource/ListDataSource$InternalDataSubscriber;->mFinished:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/datasource/ListDataSource;Lcom/facebook/imagepipeline/datasource/ListDataSource$InternalDataSubscriber-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/datasource/ListDataSource$InternalDataSubscriber;-><init>(Lcom/facebook/imagepipeline/datasource/ListDataSource;)V

    return-void
.end method

.method private declared-synchronized tryFinish()Z
    .locals 1

    .local p0, "this":Lcom/facebook/imagepipeline/datasource/ListDataSource$InternalDataSubscriber;, "Lcom/facebook/imagepipeline/datasource/ListDataSource<TT;>.InternalDataSubscriber;"
    monitor-enter p0

    .line 119
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/datasource/ListDataSource$InternalDataSubscriber;->mFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 120
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 122
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/datasource/ListDataSource$InternalDataSubscriber;->mFinished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    monitor-exit p0

    return v0

    .line 118
    .end local p0    # "this":Lcom/facebook/imagepipeline/datasource/ListDataSource$InternalDataSubscriber;, "Lcom/facebook/imagepipeline/datasource/ListDataSource<TT;>.InternalDataSubscriber;"
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public onCancellation(Lcom/facebook/datasource/DataSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 133
    .local p0, "this":Lcom/facebook/imagepipeline/datasource/ListDataSource$InternalDataSubscriber;, "Lcom/facebook/imagepipeline/datasource/ListDataSource<TT;>.InternalDataSubscriber;"
    .local p1, "dataSource":Lcom/facebook/datasource/DataSource;, "Lcom/facebook/datasource/DataSource<Lcom/facebook/common/references/CloseableReference<TT;>;>;"
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/ListDataSource$InternalDataSubscriber;->this$0:Lcom/facebook/imagepipeline/datasource/ListDataSource;

    invoke-static {v0}, Lcom/facebook/imagepipeline/datasource/ListDataSource;->-$$Nest$monDataSourceCancelled(Lcom/facebook/imagepipeline/datasource/ListDataSource;)V

    .line 134
    return-void
.end method

.method public onFailure(Lcom/facebook/datasource/DataSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 128
    .local p0, "this":Lcom/facebook/imagepipeline/datasource/ListDataSource$InternalDataSubscriber;, "Lcom/facebook/imagepipeline/datasource/ListDataSource<TT;>.InternalDataSubscriber;"
    .local p1, "dataSource":Lcom/facebook/datasource/DataSource;, "Lcom/facebook/datasource/DataSource<Lcom/facebook/common/references/CloseableReference<TT;>;>;"
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/ListDataSource$InternalDataSubscriber;->this$0:Lcom/facebook/imagepipeline/datasource/ListDataSource;

    invoke-static {v0, p1}, Lcom/facebook/imagepipeline/datasource/ListDataSource;->-$$Nest$monDataSourceFailed(Lcom/facebook/imagepipeline/datasource/ListDataSource;Lcom/facebook/datasource/DataSource;)V

    .line 129
    return-void
.end method

.method public onNewResult(Lcom/facebook/datasource/DataSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 138
    .local p0, "this":Lcom/facebook/imagepipeline/datasource/ListDataSource$InternalDataSubscriber;, "Lcom/facebook/imagepipeline/datasource/ListDataSource<TT;>.InternalDataSubscriber;"
    .local p1, "dataSource":Lcom/facebook/datasource/DataSource;, "Lcom/facebook/datasource/DataSource<Lcom/facebook/common/references/CloseableReference<TT;>;>;"
    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/imagepipeline/datasource/ListDataSource$InternalDataSubscriber;->tryFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/ListDataSource$InternalDataSubscriber;->this$0:Lcom/facebook/imagepipeline/datasource/ListDataSource;

    invoke-static {v0}, Lcom/facebook/imagepipeline/datasource/ListDataSource;->-$$Nest$monDataSourceFinished(Lcom/facebook/imagepipeline/datasource/ListDataSource;)V

    .line 141
    :cond_0
    return-void
.end method

.method public onProgressUpdate(Lcom/facebook/datasource/DataSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 145
    .local p0, "this":Lcom/facebook/imagepipeline/datasource/ListDataSource$InternalDataSubscriber;, "Lcom/facebook/imagepipeline/datasource/ListDataSource<TT;>.InternalDataSubscriber;"
    .local p1, "dataSource":Lcom/facebook/datasource/DataSource;, "Lcom/facebook/datasource/DataSource<Lcom/facebook/common/references/CloseableReference<TT;>;>;"
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/ListDataSource$InternalDataSubscriber;->this$0:Lcom/facebook/imagepipeline/datasource/ListDataSource;

    invoke-static {v0}, Lcom/facebook/imagepipeline/datasource/ListDataSource;->-$$Nest$monDataSourceProgress(Lcom/facebook/imagepipeline/datasource/ListDataSource;)V

    .line 146
    return-void
.end method
