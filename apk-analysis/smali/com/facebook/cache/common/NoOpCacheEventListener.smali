.class public Lcom/facebook/cache/common/NoOpCacheEventListener;
.super Ljava/lang/Object;
.source "NoOpCacheEventListener.java"

# interfaces
.implements Lcom/facebook/cache/common/CacheEventListener;


# static fields
.field private static sInstance:Lcom/facebook/cache/common/NoOpCacheEventListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/cache/common/NoOpCacheEventListener;->sInstance:Lcom/facebook/cache/common/NoOpCacheEventListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/facebook/cache/common/NoOpCacheEventListener;
    .locals 2

    const-class v0, Lcom/facebook/cache/common/NoOpCacheEventListener;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lcom/facebook/cache/common/NoOpCacheEventListener;->sInstance:Lcom/facebook/cache/common/NoOpCacheEventListener;

    if-nez v1, :cond_0

    .line 22
    new-instance v1, Lcom/facebook/cache/common/NoOpCacheEventListener;

    invoke-direct {v1}, Lcom/facebook/cache/common/NoOpCacheEventListener;-><init>()V

    sput-object v1, Lcom/facebook/cache/common/NoOpCacheEventListener;->sInstance:Lcom/facebook/cache/common/NoOpCacheEventListener;

    .line 24
    :cond_0
    sget-object v1, Lcom/facebook/cache/common/NoOpCacheEventListener;->sInstance:Lcom/facebook/cache/common/NoOpCacheEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 20
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public onCleared()V
    .locals 0

    .line 49
    return-void
.end method

.method public onEviction(Lcom/facebook/cache/common/CacheEvent;)V
    .locals 0
    .param p1, "cacheEvent"    # Lcom/facebook/cache/common/CacheEvent;

    .line 46
    return-void
.end method

.method public onHit(Lcom/facebook/cache/common/CacheEvent;)V
    .locals 0
    .param p1, "cacheEvent"    # Lcom/facebook/cache/common/CacheEvent;

    .line 28
    return-void
.end method

.method public onMiss(Lcom/facebook/cache/common/CacheEvent;)V
    .locals 0
    .param p1, "cacheEvent"    # Lcom/facebook/cache/common/CacheEvent;

    .line 31
    return-void
.end method

.method public onReadException(Lcom/facebook/cache/common/CacheEvent;)V
    .locals 0
    .param p1, "cacheEvent"    # Lcom/facebook/cache/common/CacheEvent;

    .line 40
    return-void
.end method

.method public onWriteAttempt(Lcom/facebook/cache/common/CacheEvent;)V
    .locals 0
    .param p1, "cacheEvent"    # Lcom/facebook/cache/common/CacheEvent;

    .line 34
    return-void
.end method

.method public onWriteException(Lcom/facebook/cache/common/CacheEvent;)V
    .locals 0
    .param p1, "cacheEvent"    # Lcom/facebook/cache/common/CacheEvent;

    .line 43
    return-void
.end method

.method public onWriteSuccess(Lcom/facebook/cache/common/CacheEvent;)V
    .locals 0
    .param p1, "cacheEvent"    # Lcom/facebook/cache/common/CacheEvent;

    .line 37
    return-void
.end method
