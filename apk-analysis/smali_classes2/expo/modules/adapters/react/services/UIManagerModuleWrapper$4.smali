.class Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$4;
.super Ljava/lang/Object;
.source "UIManagerModuleWrapper.java"

# interfaces
.implements Lcom/facebook/react/bridge/ActivityEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;->registerActivityEventListener(Lexpo/modules/core/interfaces/ActivityEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;

.field final synthetic val$weakListener:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .param p1, "this$0"    # Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 237
    iput-object p1, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$4;->this$0:Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;

    iput-object p2, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$4;->val$weakListener:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .line 240
    iget-object v0, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$4;->val$weakListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/core/interfaces/ActivityEventListener;

    .line 241
    .local v0, "listener":Lexpo/modules/core/interfaces/ActivityEventListener;
    if-eqz v0, :cond_0

    .line 242
    invoke-interface {v0, p1, p2, p3, p4}, Lexpo/modules/core/interfaces/ActivityEventListener;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 244
    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 248
    iget-object v0, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$4;->val$weakListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/core/interfaces/ActivityEventListener;

    .line 249
    .local v0, "listener":Lexpo/modules/core/interfaces/ActivityEventListener;
    if-eqz v0, :cond_0

    .line 250
    invoke-interface {v0, p1}, Lexpo/modules/core/interfaces/ActivityEventListener;->onNewIntent(Landroid/content/Intent;)V

    .line 252
    :cond_0
    return-void
.end method
