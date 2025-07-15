.class public Lcom/facebook/react/uimanager/UIManagerReanimatedHelper;
.super Ljava/lang/Object;
.source "UIManagerReanimatedHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isOperationQueueEmpty(Lcom/facebook/react/uimanager/UIImplementation;)Z
    .locals 1
    .param p0, "uiImplementation"    # Lcom/facebook/react/uimanager/UIImplementation;

    .line 13
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/UIImplementation;->getUIViewOperationQueue()Lcom/facebook/react/uimanager/UIViewOperationQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->isEmpty()Z

    move-result v0

    return v0
.end method
