.class Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache$2;
.super Ljava/lang/Object;
.source "LruCountingMemoryCache.java"

# interfaces
.implements Lcom/facebook/common/references/ResourceReleaser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->newClientReference(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)Lcom/facebook/common/references/CloseableReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/common/references/ResourceReleaser<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;

.field final synthetic val$entry:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;

    .line 239
    .local p0, "this":Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache$2;, "Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache$2;"
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache$2;->this$0:Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;

    iput-object p2, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache$2;->val$entry:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public release(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 242
    .local p0, "this":Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache$2;, "Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache$2;"
    .local p1, "unused":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache$2;->this$0:Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;

    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache$2;->val$entry:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->-$$Nest$mreleaseClientReference(Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    .line 243
    return-void
.end method
