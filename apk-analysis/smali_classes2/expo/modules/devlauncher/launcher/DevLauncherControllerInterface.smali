.class public interface abstract Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;
.super Ljava/lang/Object;
.source "DevLauncherControllerInterface.kt"

# interfaces
.implements Lexpo/modules/updatesinterface/UpdatesInterfaceCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010$\u001a\u00020%H&J\u0018\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+H&J\u000e\u0010,\u001a\u0008\u0012\u0004\u0012\u00020.0-H&J\u001c\u0010/\u001a\u00020!2\u0008\u00100\u001a\u0004\u0018\u0001012\u0008\u00102\u001a\u0004\u0018\u00010)H&J,\u00103\u001a\u00020%2\u0006\u00104\u001a\u00020\r2\u0008\u00105\u001a\u0004\u0018\u00010\r2\n\u0008\u0002\u00106\u001a\u0004\u0018\u00010)H\u00a6@\u00a2\u0006\u0002\u00107J\"\u00103\u001a\u00020%2\u0006\u00104\u001a\u00020\r2\n\u0008\u0002\u00106\u001a\u0004\u0018\u00010)H\u00a6@\u00a2\u0006\u0002\u00108J\u0008\u00109\u001a\u00020%H&J\u0010\u0010:\u001a\u00020%2\u0006\u0010;\u001a\u00020<H&J\u0008\u0010=\u001a\u00020%H&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0012\u0010\n\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u0005R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\rX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\rX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u000fR\u0012\u0010\u0016\u001a\u00020\u0017X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u0012\u0010 \u001a\u00020!X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010#\u00a8\u0006>"
    }
    d2 = {
        "Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;",
        "Lexpo/modules/updatesinterface/UpdatesInterfaceCallbacks;",
        "appHost",
        "Lexpo/interfaces/devmenu/ReactHostWrapper;",
        "getAppHost",
        "()Lexpo/interfaces/devmenu/ReactHostWrapper;",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "getCoroutineScope",
        "()Lkotlinx/coroutines/CoroutineScope;",
        "devClientHost",
        "getDevClientHost",
        "latestLoadedApp",
        "Landroid/net/Uri;",
        "getLatestLoadedApp",
        "()Landroid/net/Uri;",
        "manifest",
        "Lexpo/modules/manifests/core/Manifest;",
        "getManifest",
        "()Lexpo/modules/manifests/core/Manifest;",
        "manifestURL",
        "getManifestURL",
        "mode",
        "Lexpo/modules/devlauncher/DevLauncherController$Mode;",
        "getMode",
        "()Lexpo/modules/devlauncher/DevLauncherController$Mode;",
        "updatesInterface",
        "Lexpo/modules/updatesinterface/UpdatesInterface;",
        "getUpdatesInterface",
        "()Lexpo/modules/updatesinterface/UpdatesInterface;",
        "setUpdatesInterface",
        "(Lexpo/modules/updatesinterface/UpdatesInterface;)V",
        "useDeveloperSupport",
        "",
        "getUseDeveloperSupport",
        "()Z",
        "clearRecentlyOpenedApps",
        "",
        "getCurrentReactActivityDelegate",
        "Lcom/facebook/react/ReactActivityDelegate;",
        "activity",
        "Lcom/facebook/react/ReactActivity;",
        "delegateSupplierDevLauncher",
        "Lexpo/modules/devlauncher/launcher/DevLauncherReactActivityDelegateSupplier;",
        "getRecentlyOpenedApps",
        "",
        "Lexpo/modules/devlauncher/launcher/DevLauncherAppEntry;",
        "handleIntent",
        "intent",
        "Landroid/content/Intent;",
        "activityToBeInvalidated",
        "loadApp",
        "url",
        "projectUrl",
        "mainActivity",
        "(Landroid/net/Uri;Landroid/net/Uri;Lcom/facebook/react/ReactActivity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "(Landroid/net/Uri;Lcom/facebook/react/ReactActivity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "navigateToLauncher",
        "onAppLoaded",
        "context",
        "Lcom/facebook/react/bridge/ReactContext;",
        "onAppLoadedWithError",
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


# virtual methods
.method public abstract clearRecentlyOpenedApps()V
.end method

.method public abstract getAppHost()Lexpo/interfaces/devmenu/ReactHostWrapper;
.end method

.method public abstract getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;
.end method

.method public abstract getCurrentReactActivityDelegate(Lcom/facebook/react/ReactActivity;Lexpo/modules/devlauncher/launcher/DevLauncherReactActivityDelegateSupplier;)Lcom/facebook/react/ReactActivityDelegate;
.end method

.method public abstract getDevClientHost()Lexpo/interfaces/devmenu/ReactHostWrapper;
.end method

.method public abstract getLatestLoadedApp()Landroid/net/Uri;
.end method

.method public abstract getManifest()Lexpo/modules/manifests/core/Manifest;
.end method

.method public abstract getManifestURL()Landroid/net/Uri;
.end method

.method public abstract getMode()Lexpo/modules/devlauncher/DevLauncherController$Mode;
.end method

.method public abstract getRecentlyOpenedApps()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lexpo/modules/devlauncher/launcher/DevLauncherAppEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUpdatesInterface()Lexpo/modules/updatesinterface/UpdatesInterface;
.end method

.method public abstract getUseDeveloperSupport()Z
.end method

.method public abstract handleIntent(Landroid/content/Intent;Lcom/facebook/react/ReactActivity;)Z
.end method

.method public abstract loadApp(Landroid/net/Uri;Landroid/net/Uri;Lcom/facebook/react/ReactActivity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Lcom/facebook/react/ReactActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract loadApp(Landroid/net/Uri;Lcom/facebook/react/ReactActivity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/facebook/react/ReactActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract navigateToLauncher()V
.end method

.method public abstract onAppLoaded(Lcom/facebook/react/bridge/ReactContext;)V
.end method

.method public abstract onAppLoadedWithError()V
.end method

.method public abstract setUpdatesInterface(Lexpo/modules/updatesinterface/UpdatesInterface;)V
.end method
