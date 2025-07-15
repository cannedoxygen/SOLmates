.class final Lexpo/modules/devlauncher/DevLauncherController$devClientHost$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DevLauncherController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/devlauncher/DevLauncherController$devClientHost$2;->invoke()Lexpo/interfaces/devmenu/ReactHostWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/facebook/react/ReactHost;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/facebook/react/ReactHost;",
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
.field final synthetic this$0:Lexpo/modules/devlauncher/DevLauncherController;


# direct methods
.method constructor <init>(Lexpo/modules/devlauncher/DevLauncherController;)V
    .locals 1

    iput-object p1, p0, Lexpo/modules/devlauncher/DevLauncherController$devClientHost$2$1;->this$0:Lexpo/modules/devlauncher/DevLauncherController;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/facebook/react/ReactHost;
    .locals 3

    .line 88
    sget-object v0, Lexpo/modules/devlauncher/launcher/DevLauncherReactHost;->INSTANCE:Lexpo/modules/devlauncher/launcher/DevLauncherReactHost;

    iget-object v1, p0, Lexpo/modules/devlauncher/DevLauncherController$devClientHost$2$1;->this$0:Lexpo/modules/devlauncher/DevLauncherController;

    invoke-static {v1}, Lexpo/modules/devlauncher/DevLauncherController;->access$getContext(Lexpo/modules/devlauncher/DevLauncherController;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.app.Application"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/app/Application;

    invoke-static {}, Lexpo/modules/devlauncher/DevLauncherControllerKt;->access$getDEV_LAUNCHER_HOST$p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lexpo/modules/devlauncher/launcher/DevLauncherReactHost;->create(Landroid/app/Application;Ljava/lang/String;)Lcom/facebook/react/ReactHost;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 88
    invoke-virtual {p0}, Lexpo/modules/devlauncher/DevLauncherController$devClientHost$2$1;->invoke()Lcom/facebook/react/ReactHost;

    move-result-object v0

    return-object v0
.end method
