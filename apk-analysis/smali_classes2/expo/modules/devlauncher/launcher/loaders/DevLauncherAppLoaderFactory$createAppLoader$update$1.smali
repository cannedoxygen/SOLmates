.class final Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory$createAppLoader$update$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DevLauncherAppLoaderFactory.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;->createAppLoader(Landroid/net/Uri;Landroid/net/Uri;Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/json/JSONObject;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lorg/json/JSONObject;",
        "invoke",
        "(Lorg/json/JSONObject;)Ljava/lang/Boolean;"
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
.field final synthetic this$0:Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;


# direct methods
.method constructor <init>(Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;)V
    .locals 1

    iput-object p1, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory$createAppLoader$update$1;->this$0:Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/json/JSONObject;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "it"    # Lorg/json/JSONObject;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory$createAppLoader$update$1;->this$0:Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;

    sget-object v1, Lexpo/modules/manifests/core/Manifest;->Companion:Lexpo/modules/manifests/core/Manifest$Companion;

    invoke-virtual {v1, p1}, Lexpo/modules/manifests/core/Manifest$Companion;->fromManifestJson(Lorg/json/JSONObject;)Lexpo/modules/manifests/core/Manifest;

    move-result-object v1

    invoke-static {v0, v1}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;->access$setManifest$p(Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;Lexpo/modules/manifests/core/Manifest;)V

    .line 65
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory$createAppLoader$update$1;->this$0:Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;

    invoke-static {v0}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;->access$getManifest$p(Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;)Lexpo/modules/manifests/core/Manifest;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lexpo/modules/manifests/core/Manifest;->isUsingDeveloperTool()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 63
    move-object v0, p1

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {p0, v0}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory$createAppLoader$update$1;->invoke(Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
