.class public final synthetic Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/facebook/react/runtime/internal/bolts/Continuation;


# instance fields
.field public final synthetic f$0:Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager$1;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/facebook/react/devsupport/interfaces/DevSplitBundleCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager$1;Ljava/lang/String;Lcom/facebook/react/devsupport/interfaces/DevSplitBundleCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager$1$$ExternalSyntheticLambda0;->f$0:Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager$1;

    iput-object p2, p0, Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager$1$$ExternalSyntheticLambda0;->f$2:Lcom/facebook/react/devsupport/interfaces/DevSplitBundleCallback;

    return-void
.end method


# virtual methods
.method public final then(Lcom/facebook/react/runtime/internal/bolts/Task;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager$1$$ExternalSyntheticLambda0;->f$0:Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager$1;

    iget-object v1, p0, Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager$1$$ExternalSyntheticLambda0;->f$2:Lcom/facebook/react/devsupport/interfaces/DevSplitBundleCallback;

    invoke-static {v0, v1, v2, p1}, Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager$1;->$r8$lambda$JvoYI5j7c8XQ7iexZfC4-aqqbQ8(Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager$1;Ljava/lang/String;Lcom/facebook/react/devsupport/interfaces/DevSplitBundleCallback;Lcom/facebook/react/runtime/internal/bolts/Task;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
