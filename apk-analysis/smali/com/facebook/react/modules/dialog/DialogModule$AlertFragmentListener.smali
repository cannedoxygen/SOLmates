.class Lcom/facebook/react/modules/dialog/DialogModule$AlertFragmentListener;
.super Ljava/lang/Object;
.source "DialogModule.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/modules/dialog/DialogModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AlertFragmentListener"
.end annotation


# instance fields
.field private final mCallback:Lcom/facebook/react/bridge/Callback;

.field private mCallbackConsumed:Z

.field final synthetic this$0:Lcom/facebook/react/modules/dialog/DialogModule;


# direct methods
.method public constructor <init>(Lcom/facebook/react/modules/dialog/DialogModule;Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .param p1, "this$0"    # Lcom/facebook/react/modules/dialog/DialogModule;
    .param p2, "callback"    # Lcom/facebook/react/bridge/Callback;

    .line 118
    iput-object p1, p0, Lcom/facebook/react/modules/dialog/DialogModule$AlertFragmentListener;->this$0:Lcom/facebook/react/modules/dialog/DialogModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/modules/dialog/DialogModule$AlertFragmentListener;->mCallbackConsumed:Z

    .line 119
    iput-object p2, p0, Lcom/facebook/react/modules/dialog/DialogModule$AlertFragmentListener;->mCallback:Lcom/facebook/react/bridge/Callback;

    .line 120
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 124
    iget-boolean v0, p0, Lcom/facebook/react/modules/dialog/DialogModule$AlertFragmentListener;->mCallbackConsumed:Z

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/facebook/react/modules/dialog/DialogModule$AlertFragmentListener;->this$0:Lcom/facebook/react/modules/dialog/DialogModule;

    invoke-static {v0}, Lcom/facebook/react/modules/dialog/DialogModule;->access$000(Lcom/facebook/react/modules/dialog/DialogModule;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->hasActiveReactInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/facebook/react/modules/dialog/DialogModule$AlertFragmentListener;->mCallback:Lcom/facebook/react/bridge/Callback;

    const-string v1, "buttonClicked"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/modules/dialog/DialogModule$AlertFragmentListener;->mCallbackConsumed:Z

    .line 130
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 134
    iget-boolean v0, p0, Lcom/facebook/react/modules/dialog/DialogModule$AlertFragmentListener;->mCallbackConsumed:Z

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/facebook/react/modules/dialog/DialogModule$AlertFragmentListener;->this$0:Lcom/facebook/react/modules/dialog/DialogModule;

    invoke-static {v0}, Lcom/facebook/react/modules/dialog/DialogModule;->access$100(Lcom/facebook/react/modules/dialog/DialogModule;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->hasActiveReactInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/facebook/react/modules/dialog/DialogModule$AlertFragmentListener;->mCallback:Lcom/facebook/react/bridge/Callback;

    const-string v1, "dismissed"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/modules/dialog/DialogModule$AlertFragmentListener;->mCallbackConsumed:Z

    .line 140
    :cond_0
    return-void
.end method
