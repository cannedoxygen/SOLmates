.class final Lexpo/modules/devlauncher/DevLauncherController$ensureHostWasCleared$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DevLauncherController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/devlauncher/DevLauncherController;->ensureHostWasCleared(Lexpo/interfaces/devmenu/ReactHostWrapper;Lcom/facebook/react/ReactActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field final synthetic $activityToBeInvalidated:Lcom/facebook/react/ReactActivity;

.field final synthetic $host:Lexpo/interfaces/devmenu/ReactHostWrapper;

.field final synthetic this$0:Lexpo/modules/devlauncher/DevLauncherController;


# direct methods
.method constructor <init>(Lexpo/modules/devlauncher/DevLauncherController;Lexpo/interfaces/devmenu/ReactHostWrapper;Lcom/facebook/react/ReactActivity;)V
    .locals 1

    iput-object p1, p0, Lexpo/modules/devlauncher/DevLauncherController$ensureHostWasCleared$1;->this$0:Lexpo/modules/devlauncher/DevLauncherController;

    iput-object p2, p0, Lexpo/modules/devlauncher/DevLauncherController$ensureHostWasCleared$1;->$host:Lexpo/interfaces/devmenu/ReactHostWrapper;

    iput-object p3, p0, Lexpo/modules/devlauncher/DevLauncherController$ensureHostWasCleared$1;->$activityToBeInvalidated:Lcom/facebook/react/ReactActivity;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 293
    invoke-virtual {p0}, Lexpo/modules/devlauncher/DevLauncherController$ensureHostWasCleared$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 294
    iget-object v0, p0, Lexpo/modules/devlauncher/DevLauncherController$ensureHostWasCleared$1;->this$0:Lexpo/modules/devlauncher/DevLauncherController;

    invoke-static {v0}, Lexpo/modules/devlauncher/DevLauncherController;->access$getNetworkInterceptor$p(Lexpo/modules/devlauncher/DevLauncherController;)Lexpo/modules/devlauncher/launcher/DevLauncherNetworkInterceptor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lexpo/modules/devlauncher/launcher/DevLauncherNetworkInterceptor;->close()V

    .line 295
    :cond_0
    iget-object v0, p0, Lexpo/modules/devlauncher/DevLauncherController$ensureHostWasCleared$1;->this$0:Lexpo/modules/devlauncher/DevLauncherController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lexpo/modules/devlauncher/DevLauncherController;->access$setNetworkInterceptor$p(Lexpo/modules/devlauncher/DevLauncherController;Lexpo/modules/devlauncher/launcher/DevLauncherNetworkInterceptor;)V

    .line 296
    iget-object v0, p0, Lexpo/modules/devlauncher/DevLauncherController$ensureHostWasCleared$1;->this$0:Lexpo/modules/devlauncher/DevLauncherController;

    iget-object v1, p0, Lexpo/modules/devlauncher/DevLauncherController$ensureHostWasCleared$1;->$host:Lexpo/interfaces/devmenu/ReactHostWrapper;

    iget-object v2, p0, Lexpo/modules/devlauncher/DevLauncherController$ensureHostWasCleared$1;->$activityToBeInvalidated:Lcom/facebook/react/ReactActivity;

    invoke-static {v0, v1, v2}, Lexpo/modules/devlauncher/DevLauncherController;->access$clearHost(Lexpo/modules/devlauncher/DevLauncherController;Lexpo/interfaces/devmenu/ReactHostWrapper;Lcom/facebook/react/ReactActivity;)V

    .line 297
    return-void
.end method
