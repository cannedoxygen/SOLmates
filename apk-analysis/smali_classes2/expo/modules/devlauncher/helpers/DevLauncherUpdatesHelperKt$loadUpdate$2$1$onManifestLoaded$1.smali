.class public final Lexpo/modules/devlauncher/helpers/DevLauncherUpdatesHelperKt$loadUpdate$2$1$onManifestLoaded$1;
.super Ljava/lang/Object;
.source "DevLauncherUpdatesHelper.kt"

# interfaces
.implements Lexpo/modules/updatesinterface/UpdatesInterface$Update;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/devlauncher/helpers/DevLauncherUpdatesHelperKt$loadUpdate$2$1;->onManifestLoaded(Lorg/json/JSONObject;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001R\u0014\u0010\u0002\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "expo/modules/devlauncher/helpers/DevLauncherUpdatesHelperKt$loadUpdate$2$1$onManifestLoaded$1",
        "Lexpo/modules/updatesinterface/UpdatesInterface$Update;",
        "launchAssetPath",
        "",
        "getLaunchAssetPath",
        "()Ljava/lang/String;",
        "manifest",
        "Lorg/json/JSONObject;",
        "getManifest",
        "()Lorg/json/JSONObject;",
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
.field private final manifest:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "$manifest"    # Lorg/json/JSONObject;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lexpo/modules/devlauncher/helpers/DevLauncherUpdatesHelperKt$loadUpdate$2$1$onManifestLoaded$1;->manifest:Lorg/json/JSONObject;

    .line 35
    return-void
.end method


# virtual methods
.method public getLaunchAssetPath()Ljava/lang/String;
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Tried to access launch asset path for a manifest that was not loaded"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getManifest()Lorg/json/JSONObject;
    .locals 1

    .line 36
    iget-object v0, p0, Lexpo/modules/devlauncher/helpers/DevLauncherUpdatesHelperKt$loadUpdate$2$1$onManifestLoaded$1;->manifest:Lorg/json/JSONObject;

    return-object v0
.end method
