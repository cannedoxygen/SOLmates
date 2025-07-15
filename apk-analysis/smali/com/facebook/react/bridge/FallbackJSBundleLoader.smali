.class public final Lcom/facebook/react/bridge/FallbackJSBundleLoader;
.super Lcom/facebook/react/bridge/JSBundleLoader;
.source "FallbackJSBundleLoader.java"


# static fields
.field static final RECOVERABLE:Ljava/lang/String; = "facebook::react::Recoverable"

.field static final TAG:Ljava/lang/String; = "FallbackJSBundleLoader"


# instance fields
.field private final mLoaders:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/facebook/react/bridge/JSBundleLoader;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecoveredErrors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/react/bridge/JSBundleLoader;",
            ">;)V"
        }
    .end annotation

    .line 37
    .local p1, "loaders":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/bridge/JSBundleLoader;>;"
    invoke-direct {p0}, Lcom/facebook/react/bridge/JSBundleLoader;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/bridge/FallbackJSBundleLoader;->mRecoveredErrors:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/bridge/FallbackJSBundleLoader;->mLoaders:Ljava/util/Stack;

    .line 39
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 40
    .local v0, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/facebook/react/bridge/JSBundleLoader;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/facebook/react/bridge/FallbackJSBundleLoader;->mLoaders:Ljava/util/Stack;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/bridge/JSBundleLoader;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method

.method private getDelegateLoader()Lcom/facebook/react/bridge/JSBundleLoader;
    .locals 5

    .line 68
    iget-object v0, p0, Lcom/facebook/react/bridge/FallbackJSBundleLoader;->mLoaders:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/facebook/react/bridge/FallbackJSBundleLoader;->mLoaders:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/JSBundleLoader;

    return-object v0

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No fallback options available"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, "fallbackException":Ljava/lang/RuntimeException;
    move-object v1, v0

    .line 76
    .local v1, "tail":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/facebook/react/bridge/FallbackJSBundleLoader;->mRecoveredErrors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Exception;

    .line 77
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 78
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 79
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_1

    .line 81
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    goto :goto_0

    .line 83
    :cond_2
    throw v0
.end method


# virtual methods
.method public loadScript(Lcom/facebook/react/bridge/JSBundleLoaderDelegate;)Ljava/lang/String;
    .locals 3
    .param p1, "delegate"    # Lcom/facebook/react/bridge/JSBundleLoaderDelegate;

    .line 54
    nop

    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/react/bridge/FallbackJSBundleLoader;->getDelegateLoader()Lcom/facebook/react/bridge/JSBundleLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/react/bridge/JSBundleLoader;->loadScript(Lcom/facebook/react/bridge/JSBundleLoaderDelegate;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "facebook::react::Recoverable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/facebook/react/bridge/FallbackJSBundleLoader;->mLoaders:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 61
    iget-object v1, p0, Lcom/facebook/react/bridge/FallbackJSBundleLoader;->mRecoveredErrors:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    const-string v1, "FallbackJSBundleLoader"

    const-string v2, "Falling back from recoverable error"

    invoke-static {v1, v2, v0}, Lcom/facebook/common/logging/FLog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 57
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_0
    throw v0
.end method
