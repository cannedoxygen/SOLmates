.class public interface abstract Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactoryInterface;
.super Ljava/lang/Object;
.source "DevLauncherAppLoaderFactory.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008f\u0018\u00002\u00020\u0001J&\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\u00a6@\u00a2\u0006\u0002\u0010\tJ\n\u0010\n\u001a\u0004\u0018\u00010\u000bH&J\u0008\u0010\u000c\u001a\u00020\rH&\u00a8\u0006\u000e"
    }
    d2 = {
        "Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactoryInterface;",
        "",
        "createAppLoader",
        "Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;",
        "url",
        "Landroid/net/Uri;",
        "projectUrl",
        "manifestParser",
        "Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser;",
        "(Landroid/net/Uri;Landroid/net/Uri;Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getManifest",
        "Lexpo/modules/manifests/core/Manifest;",
        "shouldUseDeveloperSupport",
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


# virtual methods
.method public abstract createAppLoader(Landroid/net/Uri;Landroid/net/Uri;Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract getManifest()Lexpo/modules/manifests/core/Manifest;
.end method

.method public abstract shouldUseDeveloperSupport()Z
.end method
