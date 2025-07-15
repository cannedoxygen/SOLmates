.class Lcom/facebook/react/animated/NativeAnimatedModule$1;
.super Lcom/facebook/react/uimanager/GuardedFrameCallback;
.source "NativeAnimatedModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/animated/NativeAnimatedModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/animated/NativeAnimatedModule;


# direct methods
.method constructor <init>(Lcom/facebook/react/animated/NativeAnimatedModule;Lcom/facebook/react/bridge/ReactContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/react/animated/NativeAnimatedModule;
    .param p2, "arg0"    # Lcom/facebook/react/bridge/ReactContext;

    .line 241
    iput-object p1, p0, Lcom/facebook/react/animated/NativeAnimatedModule$1;->this$0:Lcom/facebook/react/animated/NativeAnimatedModule;

    invoke-direct {p0, p2}, Lcom/facebook/react/uimanager/GuardedFrameCallback;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-void
.end method


# virtual methods
.method protected doFrameGuarded(J)V
    .locals 2
    .param p1, "frameTimeNanos"    # J

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule$1;->this$0:Lcom/facebook/react/animated/NativeAnimatedModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/react/animated/NativeAnimatedModule;->-$$Nest$fputmEnqueuedAnimationOnFrame(Lcom/facebook/react/animated/NativeAnimatedModule;Z)V

    .line 246
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule$1;->this$0:Lcom/facebook/react/animated/NativeAnimatedModule;

    invoke-virtual {v0}, Lcom/facebook/react/animated/NativeAnimatedModule;->getNodesManager()Lcom/facebook/react/animated/NativeAnimatedNodesManager;

    move-result-object v0

    .line 247
    .local v0, "nodesManager":Lcom/facebook/react/animated/NativeAnimatedNodesManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->hasActiveAnimations()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->runUpdates(J)V

    .line 251
    :cond_0
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/facebook/react/animated/NativeAnimatedModule$1;->this$0:Lcom/facebook/react/animated/NativeAnimatedModule;

    invoke-static {v1}, Lcom/facebook/react/animated/NativeAnimatedModule;->-$$Nest$fgetmReactChoreographer(Lcom/facebook/react/animated/NativeAnimatedModule;)Lcom/facebook/react/modules/core/ReactChoreographer;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 255
    :cond_1
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->lazyAnimationCallbacks()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 256
    invoke-virtual {v0}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->hasActiveAnimations()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 257
    :cond_2
    iget-object v1, p0, Lcom/facebook/react/animated/NativeAnimatedModule$1;->this$0:Lcom/facebook/react/animated/NativeAnimatedModule;

    invoke-static {v1}, Lcom/facebook/react/animated/NativeAnimatedModule;->-$$Nest$menqueueFrameCallback(Lcom/facebook/react/animated/NativeAnimatedModule;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    .end local v0    # "nodesManager":Lcom/facebook/react/animated/NativeAnimatedNodesManager;
    :cond_3
    nop

    .line 262
    return-void

    .line 252
    .restart local v0    # "nodesManager":Lcom/facebook/react/animated/NativeAnimatedNodesManager;
    :cond_4
    :goto_0
    return-void

    .line 259
    .end local v0    # "nodesManager":Lcom/facebook/react/animated/NativeAnimatedNodesManager;
    :catch_0
    move-exception v0

    .line 260
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
