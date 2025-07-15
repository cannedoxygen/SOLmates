.class public final Lcom/facebook/react/fabric/internal/interop/InteropUIBlockListener;
.super Ljava/lang/Object;
.source "InteropUiBlockListener.kt"

# interfaces
.implements Lcom/facebook/react/bridge/UIManagerListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInteropUiBlockListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InteropUiBlockListener.kt\ncom/facebook/react/fabric/internal/interop/InteropUIBlockListener\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,71:1\n1855#2,2:72\n1855#2,2:74\n*S KotlinDebug\n*F\n+ 1 InteropUiBlockListener.kt\ncom/facebook/react/fabric/internal/interop/InteropUIBlockListener\n*L\n45#1:72,2\n57#1:74,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0005J\u0010\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u000e\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0005J\u0010\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016R\u001a\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0007\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/facebook/react/fabric/internal/interop/InteropUIBlockListener;",
        "Lcom/facebook/react/bridge/UIManagerListener;",
        "()V",
        "afterUIBlocks",
        "",
        "Lcom/facebook/react/fabric/interop/UIBlock;",
        "getAfterUIBlocks$ReactAndroid_debug",
        "()Ljava/util/List;",
        "beforeUIBlocks",
        "getBeforeUIBlocks$ReactAndroid_debug",
        "addUIBlock",
        "",
        "block",
        "didDispatchMountItems",
        "uiManager",
        "Lcom/facebook/react/bridge/UIManager;",
        "didMountItems",
        "didScheduleMountItems",
        "prependUIBlock",
        "willDispatchViewUpdates",
        "willMountItems",
        "ReactAndroid_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final afterUIBlocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/react/fabric/interop/UIBlock;",
            ">;"
        }
    .end annotation
.end field

.field private final beforeUIBlocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/react/fabric/interop/UIBlock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/facebook/react/fabric/internal/interop/InteropUIBlockListener;->beforeUIBlocks:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/facebook/react/fabric/internal/interop/InteropUIBlockListener;->afterUIBlocks:Ljava/util/List;

    .line 26
    return-void
.end method


# virtual methods
.method public final declared-synchronized addUIBlock(Lcom/facebook/react/fabric/interop/UIBlock;)V
    .locals 1
    .param p1, "block"    # Lcom/facebook/react/fabric/interop/UIBlock;

    monitor-enter p0

    :try_start_0
    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/facebook/react/fabric/internal/interop/InteropUIBlockListener;->afterUIBlocks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    .line 37
    .end local p0    # "this":Lcom/facebook/react/fabric/internal/interop/InteropUIBlockListener;
    .end local p1    # "block":Lcom/facebook/react/fabric/interop/UIBlock;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public didDispatchMountItems(Lcom/facebook/react/bridge/UIManager;)V
    .locals 1
    .param p1, "uiManager"    # Lcom/facebook/react/bridge/UIManager;

    const-string/jumbo v0, "uiManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0, p1}, Lcom/facebook/react/fabric/internal/interop/InteropUIBlockListener;->didMountItems(Lcom/facebook/react/bridge/UIManager;)V

    return-void
.end method

.method public didMountItems(Lcom/facebook/react/bridge/UIManager;)V
    .locals 7
    .param p1, "uiManager"    # Lcom/facebook/react/bridge/UIManager;

    const-string/jumbo v0, "uiManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/facebook/react/fabric/internal/interop/InteropUIBlockListener;->afterUIBlocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/fabric/internal/interop/InteropUIBlockListener;->afterUIBlocks:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 74
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lcom/facebook/react/fabric/interop/UIBlock;

    .local v4, "it":Lcom/facebook/react/fabric/interop/UIBlock;
    const/4 v5, 0x0

    .line 58
    .local v5, "$i$a$-forEach-InteropUIBlockListener$didMountItems$1":I
    instance-of v6, p1, Lcom/facebook/react/fabric/interop/UIBlockViewResolver;

    if-eqz v6, :cond_1

    .line 59
    move-object v6, p1

    check-cast v6, Lcom/facebook/react/fabric/interop/UIBlockViewResolver;

    invoke-interface {v4, v6}, Lcom/facebook/react/fabric/interop/UIBlock;->execute(Lcom/facebook/react/fabric/interop/UIBlockViewResolver;)V

    .line 61
    :cond_1
    nop

    .line 74
    .end local v4    # "it":Lcom/facebook/react/fabric/interop/UIBlock;
    .end local v5    # "$i$a$-forEach-InteropUIBlockListener$didMountItems$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 75
    :cond_2
    nop

    .line 62
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    iget-object v0, p0, Lcom/facebook/react/fabric/internal/interop/InteropUIBlockListener;->afterUIBlocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 63
    return-void
.end method

.method public didScheduleMountItems(Lcom/facebook/react/bridge/UIManager;)V
    .locals 1
    .param p1, "uiManager"    # Lcom/facebook/react/bridge/UIManager;

    const-string/jumbo v0, "uiManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public final getAfterUIBlocks$ReactAndroid_debug()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/react/fabric/interop/UIBlock;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/facebook/react/fabric/internal/interop/InteropUIBlockListener;->afterUIBlocks:Ljava/util/List;

    return-object v0
.end method

.method public final getBeforeUIBlocks$ReactAndroid_debug()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/react/fabric/interop/UIBlock;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/facebook/react/fabric/internal/interop/InteropUIBlockListener;->beforeUIBlocks:Ljava/util/List;

    return-object v0
.end method

.method public final declared-synchronized prependUIBlock(Lcom/facebook/react/fabric/interop/UIBlock;)V
    .locals 1
    .param p1, "block"    # Lcom/facebook/react/fabric/interop/UIBlock;

    monitor-enter p0

    :try_start_0
    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/facebook/react/fabric/internal/interop/InteropUIBlockListener;->beforeUIBlocks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit p0

    return-void

    .line 32
    .end local p0    # "this":Lcom/facebook/react/fabric/internal/interop/InteropUIBlockListener;
    .end local p1    # "block":Lcom/facebook/react/fabric/interop/UIBlock;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public willDispatchViewUpdates(Lcom/facebook/react/bridge/UIManager;)V
    .locals 1
    .param p1, "uiManager"    # Lcom/facebook/react/bridge/UIManager;

    const-string/jumbo v0, "uiManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, p1}, Lcom/facebook/react/fabric/internal/interop/InteropUIBlockListener;->willMountItems(Lcom/facebook/react/bridge/UIManager;)V

    return-void
.end method

.method public willMountItems(Lcom/facebook/react/bridge/UIManager;)V
    .locals 7
    .param p1, "uiManager"    # Lcom/facebook/react/bridge/UIManager;

    const-string/jumbo v0, "uiManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/facebook/react/fabric/internal/interop/InteropUIBlockListener;->beforeUIBlocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/fabric/internal/interop/InteropUIBlockListener;->beforeUIBlocks:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 72
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lcom/facebook/react/fabric/interop/UIBlock;

    .local v4, "it":Lcom/facebook/react/fabric/interop/UIBlock;
    const/4 v5, 0x0

    .line 46
    .local v5, "$i$a$-forEach-InteropUIBlockListener$willMountItems$1":I
    instance-of v6, p1, Lcom/facebook/react/fabric/interop/UIBlockViewResolver;

    if-eqz v6, :cond_1

    .line 47
    move-object v6, p1

    check-cast v6, Lcom/facebook/react/fabric/interop/UIBlockViewResolver;

    invoke-interface {v4, v6}, Lcom/facebook/react/fabric/interop/UIBlock;->execute(Lcom/facebook/react/fabric/interop/UIBlockViewResolver;)V

    .line 49
    :cond_1
    nop

    .line 72
    .end local v4    # "it":Lcom/facebook/react/fabric/interop/UIBlock;
    .end local v5    # "$i$a$-forEach-InteropUIBlockListener$willMountItems$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 73
    :cond_2
    nop

    .line 50
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    iget-object v0, p0, Lcom/facebook/react/fabric/internal/interop/InteropUIBlockListener;->beforeUIBlocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 51
    return-void
.end method
