.class public final Lexpo/modules/devlauncher/launcher/DevLauncherActivity$createReactActivityDelegate$1;
.super Lcom/facebook/react/defaults/DefaultReactActivityDelegate;
.source "DevLauncherActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/devlauncher/launcher/DevLauncherActivity;->createReactActivityDelegate()Lcom/facebook/react/ReactActivityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0014J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0007H\u0014\u00a8\u0006\u0008"
    }
    d2 = {
        "expo/modules/devlauncher/launcher/DevLauncherActivity$createReactActivityDelegate$1",
        "Lcom/facebook/react/defaults/DefaultReactActivityDelegate;",
        "getLaunchOptions",
        "Landroid/os/Bundle;",
        "getReactHost",
        "Lcom/facebook/react/ReactHost;",
        "getReactNativeHost",
        "Lcom/facebook/react/ReactNativeHost;",
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
.field final synthetic this$0:Lexpo/modules/devlauncher/launcher/DevLauncherActivity;


# direct methods
.method constructor <init>(Lexpo/modules/devlauncher/launcher/DevLauncherActivity;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "$receiver"    # Lexpo/modules/devlauncher/launcher/DevLauncherActivity;
    .param p2, "$super_call_param$1"    # Ljava/lang/String;
    .param p3, "$super_call_param$2"    # Z

    iput-object p1, p0, Lexpo/modules/devlauncher/launcher/DevLauncherActivity$createReactActivityDelegate$1;->this$0:Lexpo/modules/devlauncher/launcher/DevLauncherActivity;

    .line 36
    move-object v0, p1

    check-cast v0, Lcom/facebook/react/ReactActivity;

    invoke-direct {p0, v0, p2, p3}, Lcom/facebook/react/defaults/DefaultReactActivityDelegate;-><init>(Lcom/facebook/react/ReactActivity;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected getLaunchOptions()Landroid/os/Bundle;
    .locals 5

    .line 42
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lexpo/modules/devlauncher/launcher/DevLauncherActivity$createReactActivityDelegate$1;->this$0:Lexpo/modules/devlauncher/launcher/DevLauncherActivity;

    move-object v2, v0

    .local v2, "$this$getLaunchOptions_u24lambda_u240":Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 43
    .local v3, "$i$a$-apply-DevLauncherActivity$createReactActivityDelegate$1$getLaunchOptions$1":I
    const-string v4, "isSimulator"

    invoke-static {v1}, Lexpo/modules/devlauncher/launcher/DevLauncherActivity;->access$isSimulator(Lexpo/modules/devlauncher/launcher/DevLauncherActivity;)Z

    move-result v1

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 44
    nop

    .line 42
    .end local v2    # "$this$getLaunchOptions_u24lambda_u240":Landroid/os/Bundle;
    .end local v3    # "$i$a$-apply-DevLauncherActivity$createReactActivityDelegate$1$getLaunchOptions$1":I
    nop

    .line 44
    return-object v0
.end method

.method public getReactHost()Lcom/facebook/react/ReactHost;
    .locals 1

    .line 40
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/DevLauncherActivity$createReactActivityDelegate$1;->this$0:Lexpo/modules/devlauncher/launcher/DevLauncherActivity;

    invoke-static {v0}, Lexpo/modules/devlauncher/launcher/DevLauncherActivity;->access$getController(Lexpo/modules/devlauncher/launcher/DevLauncherActivity;)Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    move-result-object v0

    invoke-interface {v0}, Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;->getDevClientHost()Lexpo/interfaces/devmenu/ReactHostWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getReactHost()Lcom/facebook/react/ReactHost;

    move-result-object v0

    return-object v0
.end method

.method protected getReactNativeHost()Lcom/facebook/react/ReactNativeHost;
    .locals 1

    .line 38
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/DevLauncherActivity$createReactActivityDelegate$1;->this$0:Lexpo/modules/devlauncher/launcher/DevLauncherActivity;

    invoke-static {v0}, Lexpo/modules/devlauncher/launcher/DevLauncherActivity;->access$getController(Lexpo/modules/devlauncher/launcher/DevLauncherActivity;)Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    move-result-object v0

    invoke-interface {v0}, Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;->getDevClientHost()Lexpo/interfaces/devmenu/ReactHostWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v0

    return-object v0
.end method
