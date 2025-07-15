.class Lcom/swmansion/reanimated/NodesManager$2;
.super Lcom/facebook/react/uimanager/GuardedFrameCallback;
.source "NodesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swmansion/reanimated/NodesManager;-><init>(Lcom/facebook/react/bridge/ReactContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swmansion/reanimated/NodesManager;


# direct methods
.method constructor <init>(Lcom/swmansion/reanimated/NodesManager;Lcom/facebook/react/bridge/ReactContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/swmansion/reanimated/NodesManager;
    .param p2, "arg0"    # Lcom/facebook/react/bridge/ReactContext;

    .line 170
    iput-object p1, p0, Lcom/swmansion/reanimated/NodesManager$2;->this$0:Lcom/swmansion/reanimated/NodesManager;

    invoke-direct {p0, p2}, Lcom/facebook/react/uimanager/GuardedFrameCallback;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-void
.end method


# virtual methods
.method protected doFrameGuarded(J)V
    .locals 1
    .param p1, "frameTimeNanos"    # J

    .line 173
    iget-object v0, p0, Lcom/swmansion/reanimated/NodesManager$2;->this$0:Lcom/swmansion/reanimated/NodesManager;

    invoke-static {v0, p1, p2}, Lcom/swmansion/reanimated/NodesManager;->-$$Nest$monAnimationFrame(Lcom/swmansion/reanimated/NodesManager;J)V

    .line 174
    return-void
.end method
