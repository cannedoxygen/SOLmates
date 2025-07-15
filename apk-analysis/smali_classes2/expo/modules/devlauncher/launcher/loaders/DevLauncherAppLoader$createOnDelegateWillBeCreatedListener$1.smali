.class final Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader$createOnDelegateWillBeCreatedListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DevLauncherAppLoader.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;->createOnDelegateWillBeCreatedListener()Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/facebook/react/ReactActivity;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDevLauncherAppLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DevLauncherAppLoader.kt\nexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader$createOnDelegateWillBeCreatedListener$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,98:1\n1#2:99\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "activity",
        "Lcom/facebook/react/ReactActivity;",
        "invoke"
    }
    k = 0x3
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
    .locals 1

    iput-object p1, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader$createOnDelegateWillBeCreatedListener$1;->this$0:Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 46
    move-object v0, p1

    check-cast v0, Lcom/facebook/react/ReactActivity;

    invoke-virtual {p0, v0}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader$createOnDelegateWillBeCreatedListener$1;->invoke(Lcom/facebook/react/ReactActivity;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Lcom/facebook/react/ReactActivity;)V
    .locals 3
    .param p1, "activity"    # Lcom/facebook/react/ReactActivity;

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader$createOnDelegateWillBeCreatedListener$1;->this$0:Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;

    invoke-virtual {v0, p1}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;->onDelegateWillBeCreated(Lcom/facebook/react/ReactActivity;)V

    .line 49
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader$createOnDelegateWillBeCreatedListener$1;->this$0:Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;

    invoke-static {v0}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;->access$getAppHost$p(Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;)Lexpo/interfaces/devmenu/ReactHostWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader$createOnDelegateWillBeCreatedListener$1;->this$0:Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;

    invoke-static {v0}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;->access$getAppHost$p(Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;)Lexpo/interfaces/devmenu/ReactHostWrapper;

    move-result-object v0

    new-instance v1, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader$createOnDelegateWillBeCreatedListener$1$2;

    iget-object v2, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader$createOnDelegateWillBeCreatedListener$1;->this$0:Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;

    invoke-direct {v1, v2}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader$createOnDelegateWillBeCreatedListener$1$2;-><init>(Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;)V

    check-cast v1, Lcom/facebook/react/ReactInstanceEventListener;

    invoke-virtual {v0, v1}, Lexpo/interfaces/devmenu/ReactHostWrapper;->addReactInstanceEventListener(Lcom/facebook/react/ReactInstanceEventListener;)V

    .line 64
    invoke-virtual {p1}, Lcom/facebook/react/ReactActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader$createOnDelegateWillBeCreatedListener$1$3;

    invoke-direct {v1, p1}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader$createOnDelegateWillBeCreatedListener$1$3;-><init>(Lcom/facebook/react/ReactActivity;)V

    check-cast v1, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 70
    return-void

    .line 99
    :cond_1
    const/4 v0, 0x0

    .line 49
    .local v0, "$i$a$-require-DevLauncherAppLoader$createOnDelegateWillBeCreatedListener$1$1":I
    nop

    .end local v0    # "$i$a$-require-DevLauncherAppLoader$createOnDelegateWillBeCreatedListener$1$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "App react context shouldn\'t be created before."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
