.class Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$1;
.super Landroid/os/Handler;
.source "ReactAccessibilityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;-><init>(Landroid/view/View;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;


# direct methods
.method constructor <init>(Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;

    .line 394
    iput-object p1, p0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$1;->this$0:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 397
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    .line 398
    .local v0, "host":Landroid/view/View;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 399
    return-void
.end method
