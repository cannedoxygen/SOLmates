.class Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$3;
.super Ljava/lang/Object;
.source "UIManagerModuleWrapper.java"

# interfaces
.implements Lcom/facebook/react/bridge/LifecycleEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;->registerLifecycleEventListener(Lexpo/modules/core/interfaces/LifecycleEventListener;)V
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

    .line 185
    iput-object p1, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$3;->this$0:Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;

    iput-object p2, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$3;->val$weakListener:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHostDestroy()V
    .locals 1

    .line 204
    iget-object v0, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$3;->val$weakListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/core/interfaces/LifecycleEventListener;

    .line 205
    .local v0, "listener":Lexpo/modules/core/interfaces/LifecycleEventListener;
    if-eqz v0, :cond_0

    .line 206
    invoke-interface {v0}, Lexpo/modules/core/interfaces/LifecycleEventListener;->onHostDestroy()V

    .line 208
    :cond_0
    return-void
.end method

.method public onHostPause()V
    .locals 1

    .line 196
    iget-object v0, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$3;->val$weakListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/core/interfaces/LifecycleEventListener;

    .line 197
    .local v0, "listener":Lexpo/modules/core/interfaces/LifecycleEventListener;
    if-eqz v0, :cond_0

    .line 198
    invoke-interface {v0}, Lexpo/modules/core/interfaces/LifecycleEventListener;->onHostPause()V

    .line 200
    :cond_0
    return-void
.end method

.method public onHostResume()V
    .locals 1

    .line 188
    iget-object v0, p0, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper$3;->val$weakListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/core/interfaces/LifecycleEventListener;

    .line 189
    .local v0, "listener":Lexpo/modules/core/interfaces/LifecycleEventListener;
    if-eqz v0, :cond_0

    .line 190
    invoke-interface {v0}, Lexpo/modules/core/interfaces/LifecycleEventListener;->onHostResume()V

    .line 192
    :cond_0
    return-void
.end method
