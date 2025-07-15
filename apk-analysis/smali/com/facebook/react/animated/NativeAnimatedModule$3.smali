.class Lcom/facebook/react/animated/NativeAnimatedModule$3;
.super Ljava/lang/Object;
.source "NativeAnimatedModule.java"

# interfaces
.implements Lcom/facebook/react/uimanager/UIBlock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/animated/NativeAnimatedModule;->willDispatchViewUpdates(Lcom/facebook/react/bridge/UIManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/animated/NativeAnimatedModule;

.field final synthetic val$frameNo:J


# direct methods
.method constructor <init>(Lcom/facebook/react/animated/NativeAnimatedModule;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/react/animated/NativeAnimatedModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 400
    iput-object p1, p0, Lcom/facebook/react/animated/NativeAnimatedModule$3;->this$0:Lcom/facebook/react/animated/NativeAnimatedModule;

    iput-wide p2, p0, Lcom/facebook/react/animated/NativeAnimatedModule$3;->val$frameNo:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/facebook/react/uimanager/NativeViewHierarchyManager;)V
    .locals 4
    .param p1, "nativeViewHierarchyManager"    # Lcom/facebook/react/uimanager/NativeViewHierarchyManager;

    .line 403
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule$3;->this$0:Lcom/facebook/react/animated/NativeAnimatedModule;

    invoke-static {v0}, Lcom/facebook/react/animated/NativeAnimatedModule;->-$$Nest$fgetmOperations(Lcom/facebook/react/animated/NativeAnimatedModule;)Lcom/facebook/react/animated/NativeAnimatedModule$ConcurrentOperationQueue;

    move-result-object v0

    iget-wide v1, p0, Lcom/facebook/react/animated/NativeAnimatedModule$3;->val$frameNo:J

    iget-object v3, p0, Lcom/facebook/react/animated/NativeAnimatedModule$3;->this$0:Lcom/facebook/react/animated/NativeAnimatedModule;

    invoke-virtual {v3}, Lcom/facebook/react/animated/NativeAnimatedModule;->getNodesManager()Lcom/facebook/react/animated/NativeAnimatedNodesManager;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/react/animated/NativeAnimatedModule$ConcurrentOperationQueue;->executeBatch(JLcom/facebook/react/animated/NativeAnimatedNodesManager;)V

    .line 404
    return-void
.end method
