.class public final Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader$createOnDelegateWillBeCreatedListener$1$2;
.super Ljava/lang/Object;
.source "DevLauncherAppLoader.kt"

# interfaces
.implements Lcom/facebook/react/ReactInstanceEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader$createOnDelegateWillBeCreatedListener$1;->invoke(Lcom/facebook/react/ReactActivity;)V
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
        "expo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader$createOnDelegateWillBeCreatedListener$1$2",
        "Lcom/facebook/react/ReactInstanceEventListener;",
        "onReactContextInitialized",
        "",
        "context",
        "Lcom/facebook/react/bridge/ReactContext;",
        "expo-dev-launcher_debug"
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
.field final synthetic this$0:Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;


# direct methods
.method constructor <init>(Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;)V
    .locals 0
    .param p1, "$receiver"    # Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;

    iput-object p1, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader$createOnDelegateWillBeCreatedListener$1$2;->this$0:Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReactContextInitialized(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 3
    .param p1, "context"    # Lcom/facebook/react/bridge/ReactContext;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader$createOnDelegateWillBeCreatedListener$1$2;->this$0:Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;

    invoke-static {v0}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;->access$getReactContextWasInitialized$p(Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader$createOnDelegateWillBeCreatedListener$1$2;->this$0:Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;

    invoke-static {v0}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;->access$getController$p(Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;)Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;->onAppLoaded(Lcom/facebook/react/bridge/ReactContext;)V

    .line 57
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader$createOnDelegateWillBeCreatedListener$1$2;->this$0:Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;

    invoke-virtual {v0, p1}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;->onReactContext(Lcom/facebook/react/bridge/ReactContext;)V

    .line 58
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader$createOnDelegateWillBeCreatedListener$1$2;->this$0:Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;

    invoke-static {v0}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;->access$getAppHost$p(Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;)Lexpo/interfaces/devmenu/ReactHostWrapper;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/facebook/react/ReactInstanceEventListener;

    invoke-virtual {v0, v1}, Lexpo/interfaces/devmenu/ReactHostWrapper;->removeReactInstanceEventListener(Lcom/facebook/react/ReactInstanceEventListener;)V

    .line 59
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader$createOnDelegateWillBeCreatedListener$1$2;->this$0:Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;->access$setReactContextWasInitialized$p(Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;Z)V

    .line 60
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader$createOnDelegateWillBeCreatedListener$1$2;->this$0:Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;

    invoke-static {v0}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;->access$getContinuation$p(Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 61
    return-void
.end method
