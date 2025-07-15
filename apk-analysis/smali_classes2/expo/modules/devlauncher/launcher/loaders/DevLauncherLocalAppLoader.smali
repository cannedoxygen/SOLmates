.class public final Lexpo/modules/devlauncher/launcher/loaders/DevLauncherLocalAppLoader;
.super Lexpo/modules/devlauncher/launcher/loaders/DevLauncherExpoAppLoader;
.source "DevLauncherLocalAppLoader.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u000b\u001a\u00020\u000cH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lexpo/modules/devlauncher/launcher/loaders/DevLauncherLocalAppLoader;",
        "Lexpo/modules/devlauncher/launcher/loaders/DevLauncherExpoAppLoader;",
        "manifest",
        "Lexpo/modules/manifests/core/Manifest;",
        "appHost",
        "Lexpo/interfaces/devmenu/ReactHostWrapper;",
        "context",
        "Landroid/content/Context;",
        "controller",
        "Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;",
        "(Lexpo/modules/manifests/core/Manifest;Lexpo/interfaces/devmenu/ReactHostWrapper;Landroid/content/Context;Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;)V",
        "injectBundleLoader",
        "",
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
.field private final appHost:Lexpo/interfaces/devmenu/ReactHostWrapper;

.field private final context:Landroid/content/Context;

.field private final manifest:Lexpo/modules/manifests/core/Manifest;


# direct methods
.method public constructor <init>(Lexpo/modules/manifests/core/Manifest;Lexpo/interfaces/devmenu/ReactHostWrapper;Landroid/content/Context;Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;)V
    .locals 9
    .param p1, "manifest"    # Lexpo/modules/manifests/core/Manifest;
    .param p2, "appHost"    # Lexpo/interfaces/devmenu/ReactHostWrapper;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "controller"    # Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    const-string v0, "manifest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appHost"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controller"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v8}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherExpoAppLoader;-><init>(Lexpo/modules/manifests/core/Manifest;Lexpo/interfaces/devmenu/ReactHostWrapper;Landroid/content/Context;Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;Lexpo/modules/devlauncher/launcher/configurators/DevLauncherExpoActivityConfigurator;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 15
    iput-object p1, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherLocalAppLoader;->manifest:Lexpo/modules/manifests/core/Manifest;

    .line 16
    iput-object p2, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherLocalAppLoader;->appHost:Lexpo/interfaces/devmenu/ReactHostWrapper;

    .line 17
    iput-object p3, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherLocalAppLoader;->context:Landroid/content/Context;

    .line 14
    return-void
.end method


# virtual methods
.method public injectBundleLoader()Z
    .locals 4

    .line 21
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherLocalAppLoader;->context:Landroid/content/Context;

    iget-object v1, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherLocalAppLoader;->appHost:Lexpo/interfaces/devmenu/ReactHostWrapper;

    iget-object v2, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherLocalAppLoader;->manifest:Lexpo/modules/manifests/core/Manifest;

    invoke-virtual {v2}, Lexpo/modules/manifests/core/Manifest;->getBundleURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "parse(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lexpo/modules/devlauncher/helpers/DevLauncherReactUtilsKt;->injectReactInterceptor(Landroid/content/Context;Lexpo/interfaces/devmenu/ReactHostWrapper;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method
