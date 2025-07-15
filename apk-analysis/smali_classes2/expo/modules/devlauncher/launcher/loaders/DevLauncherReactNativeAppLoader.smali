.class public final Lexpo/modules/devlauncher/launcher/loaders/DevLauncherReactNativeAppLoader;
.super Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;
.source "DevLauncherReactNativeAppLoader.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u000b\u001a\u00020\u000cH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lexpo/modules/devlauncher/launcher/loaders/DevLauncherReactNativeAppLoader;",
        "Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;",
        "url",
        "Landroid/net/Uri;",
        "appHost",
        "Lexpo/interfaces/devmenu/ReactHostWrapper;",
        "context",
        "Landroid/content/Context;",
        "controller",
        "Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;",
        "(Landroid/net/Uri;Lexpo/interfaces/devmenu/ReactHostWrapper;Landroid/content/Context;Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;)V",
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

.field private final url:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lexpo/interfaces/devmenu/ReactHostWrapper;Landroid/content/Context;Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;)V
    .locals 1
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "appHost"    # Lexpo/interfaces/devmenu/ReactHostWrapper;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "controller"    # Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appHost"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controller"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p2, p3, p4}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;-><init>(Lexpo/interfaces/devmenu/ReactHostWrapper;Landroid/content/Context;Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;)V

    .line 10
    iput-object p1, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherReactNativeAppLoader;->url:Landroid/net/Uri;

    .line 11
    iput-object p2, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherReactNativeAppLoader;->appHost:Lexpo/interfaces/devmenu/ReactHostWrapper;

    .line 12
    iput-object p3, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherReactNativeAppLoader;->context:Landroid/content/Context;

    .line 9
    return-void
.end method


# virtual methods
.method public injectBundleLoader()Z
    .locals 3

    .line 16
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherReactNativeAppLoader;->context:Landroid/content/Context;

    iget-object v1, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherReactNativeAppLoader;->appHost:Lexpo/interfaces/devmenu/ReactHostWrapper;

    iget-object v2, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherReactNativeAppLoader;->url:Landroid/net/Uri;

    invoke-static {v0, v1, v2}, Lexpo/modules/devlauncher/helpers/DevLauncherReactUtilsKt;->injectReactInterceptor(Landroid/content/Context;Lexpo/interfaces/devmenu/ReactHostWrapper;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method
