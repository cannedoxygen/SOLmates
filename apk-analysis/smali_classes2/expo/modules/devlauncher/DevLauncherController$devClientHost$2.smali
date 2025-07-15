.class final Lexpo/modules/devlauncher/DevLauncherController$devClientHost$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DevLauncherController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/devlauncher/DevLauncherController;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lexpo/interfaces/devmenu/ReactHostWrapper;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lexpo/interfaces/devmenu/ReactHostWrapper;",
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

    iput-object p1, p0, Lexpo/modules/devlauncher/DevLauncherController$devClientHost$2;->this$0:Lexpo/modules/devlauncher/DevLauncherController;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lexpo/interfaces/devmenu/ReactHostWrapper;
    .locals 4

    .line 86
    new-instance v0, Lexpo/interfaces/devmenu/ReactHostWrapper;

    .line 87
    new-instance v1, Lexpo/modules/devlauncher/launcher/DevLauncherReactNativeHost;

    iget-object v2, p0, Lexpo/modules/devlauncher/DevLauncherController$devClientHost$2;->this$0:Lexpo/modules/devlauncher/DevLauncherController;

    invoke-static {v2}, Lexpo/modules/devlauncher/DevLauncherController;->access$getContext(Lexpo/modules/devlauncher/DevLauncherController;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.app.Application"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/app/Application;

    invoke-static {}, Lexpo/modules/devlauncher/DevLauncherControllerKt;->access$getDEV_LAUNCHER_HOST$p()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lexpo/modules/devlauncher/launcher/DevLauncherReactNativeHost;-><init>(Landroid/app/Application;Ljava/lang/String;)V

    check-cast v1, Lcom/facebook/react/ReactNativeHost;

    .line 88
    new-instance v2, Lexpo/modules/devlauncher/DevLauncherController$devClientHost$2$1;

    iget-object v3, p0, Lexpo/modules/devlauncher/DevLauncherController$devClientHost$2;->this$0:Lexpo/modules/devlauncher/DevLauncherController;

    invoke-direct {v2, v3}, Lexpo/modules/devlauncher/DevLauncherController$devClientHost$2$1;-><init>(Lexpo/modules/devlauncher/DevLauncherController;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 86
    invoke-direct {v0, v1, v2}, Lexpo/interfaces/devmenu/ReactHostWrapper;-><init>(Lcom/facebook/react/ReactNativeHost;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 85
    invoke-virtual {p0}, Lexpo/modules/devlauncher/DevLauncherController$devClientHost$2;->invoke()Lexpo/interfaces/devmenu/ReactHostWrapper;

    move-result-object v0

    return-object v0
.end method
