.class public final Lcom/facebook/react/views/modal/ReactModalHostView$showOrUpdate$1;
.super Ljava/lang/Object;
.source "ReactModalHostView.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/views/modal/ReactModalHostView;->showOrUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/facebook/react/views/modal/ReactModalHostView$showOrUpdate$1",
        "Landroid/content/DialogInterface$OnKeyListener;",
        "onKey",
        "",
        "dialog",
        "Landroid/content/DialogInterface;",
        "keyCode",
        "",
        "event",
        "Landroid/view/KeyEvent;",
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
.field final synthetic this$0:Lcom/facebook/react/views/modal/ReactModalHostView;


# direct methods
.method constructor <init>(Lcom/facebook/react/views/modal/ReactModalHostView;)V
    .locals 0
    .param p1, "$receiver"    # Lcom/facebook/react/views/modal/ReactModalHostView;

    iput-object p1, p0, Lcom/facebook/react/views/modal/ReactModalHostView$showOrUpdate$1;->this$0:Lcom/facebook/react/views/modal/ReactModalHostView;

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 259
    sparse-switch p2, :sswitch_data_0

    .line 271
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView$showOrUpdate$1;->this$0:Lcom/facebook/react/views/modal/ReactModalHostView;

    invoke-virtual {v0}, Lcom/facebook/react/views/modal/ReactModalHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type com.facebook.react.bridge.ReactContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 270
    nop

    .line 272
    .local v0, "innerCurrentActivity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 273
    invoke-virtual {v0, p2, p3}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 261
    .end local v0    # "innerCurrentActivity":Landroid/app/Activity;
    :sswitch_0
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView$showOrUpdate$1;->this$0:Lcom/facebook/react/views/modal/ReactModalHostView;

    invoke-virtual {v0}, Lcom/facebook/react/views/modal/ReactModalHostView;->getOnRequestCloseListener()Lcom/facebook/react/views/modal/ReactModalHostView$OnRequestCloseListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    nop

    .line 264
    .local v0, "listener":Lcom/facebook/react/views/modal/ReactModalHostView$OnRequestCloseListener;
    invoke-interface {v0, p1}, Lcom/facebook/react/views/modal/ReactModalHostView$OnRequestCloseListener;->onRequestClose(Landroid/content/DialogInterface;)V

    .line 265
    return v1

    .line 261
    .end local v0    # "listener":Lcom/facebook/react/views/modal/ReactModalHostView$OnRequestCloseListener;
    :cond_0
    const/4 v0, 0x0

    .line 262
    .local v0, "$i$a$-checkNotNull-ReactModalHostView$showOrUpdate$1$onKey$listener$1":I
    nop

    .line 261
    .end local v0    # "$i$a$-checkNotNull-ReactModalHostView$showOrUpdate$1$onKey$listener$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "onRequestClose callback must be set if back key is expected to close the modal"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_1
    const/4 v0, 0x0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x6f -> :sswitch_0
    .end sparse-switch
.end method
