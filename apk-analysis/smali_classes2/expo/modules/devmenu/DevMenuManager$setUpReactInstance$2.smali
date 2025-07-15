.class public final Lexpo/modules/devmenu/DevMenuManager$setUpReactInstance$2;
.super Ljava/lang/Object;
.source "DevMenuManager.kt"

# interfaces
.implements Lcom/facebook/react/ReactInstanceEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/devmenu/DevMenuManager;->setUpReactInstance(Lexpo/interfaces/devmenu/ReactHostWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "expo/modules/devmenu/DevMenuManager$setUpReactInstance$2",
        "Lcom/facebook/react/ReactInstanceEventListener;",
        "onReactContextInitialized",
        "",
        "context",
        "Lcom/facebook/react/bridge/ReactContext;",
        "expo-dev-menu_debug"
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
.field final synthetic $reactHost:Lexpo/interfaces/devmenu/ReactHostWrapper;


# direct methods
.method constructor <init>(Lexpo/interfaces/devmenu/ReactHostWrapper;)V
    .locals 0
    .param p1, "$reactHost"    # Lexpo/interfaces/devmenu/ReactHostWrapper;

    iput-object p1, p0, Lexpo/modules/devmenu/DevMenuManager$setUpReactInstance$2;->$reactHost:Lexpo/interfaces/devmenu/ReactHostWrapper;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReactContextInitialized(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 2
    .param p1, "context"    # Lcom/facebook/react/bridge/ReactContext;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-static {}, Lexpo/modules/devmenu/DevMenuManager;->access$getCurrentReactInstance$p()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lexpo/modules/devmenu/DevMenuManager$setUpReactInstance$2;->$reactHost:Lexpo/interfaces/devmenu/ReactHostWrapper;

    if-ne v0, v1, :cond_0

    .line 125
    sget-object v0, Lexpo/modules/devmenu/DevMenuManager;->INSTANCE:Lexpo/modules/devmenu/DevMenuManager;

    invoke-static {v0, p1}, Lexpo/modules/devmenu/DevMenuManager;->access$handleLoadedDelegateContext(Lexpo/modules/devmenu/DevMenuManager;Lcom/facebook/react/bridge/ReactContext;)V

    .line 127
    :cond_0
    iget-object v0, p0, Lexpo/modules/devmenu/DevMenuManager$setUpReactInstance$2;->$reactHost:Lexpo/interfaces/devmenu/ReactHostWrapper;

    move-object v1, p0

    check-cast v1, Lcom/facebook/react/ReactInstanceEventListener;

    invoke-virtual {v0, v1}, Lexpo/interfaces/devmenu/ReactHostWrapper;->removeReactInstanceEventListener(Lcom/facebook/react/ReactInstanceEventListener;)V

    .line 128
    return-void
.end method
