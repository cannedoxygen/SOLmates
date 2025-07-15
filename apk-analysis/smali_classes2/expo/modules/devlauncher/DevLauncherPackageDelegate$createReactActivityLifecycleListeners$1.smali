.class public final Lexpo/modules/devlauncher/DevLauncherPackageDelegate$createReactActivityLifecycleListeners$1;
.super Ljava/lang/Object;
.source "DevLauncherPackageDelegate.kt"

# interfaces
.implements Lexpo/modules/core/interfaces/ReactActivityLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/devlauncher/DevLauncherPackageDelegate;->createReactActivityLifecycleListeners(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "expo/modules/devlauncher/DevLauncherPackageDelegate$createReactActivityLifecycleListeners$1",
        "Lexpo/modules/core/interfaces/ReactActivityLifecycleListener;",
        "onNewIntent",
        "",
        "intent",
        "Landroid/content/Intent;",
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
.field final synthetic $activityContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "$activityContext"    # Landroid/content/Context;

    iput-object p1, p0, Lexpo/modules/devlauncher/DevLauncherPackageDelegate$createReactActivityLifecycleListeners$1;->$activityContext:Landroid/content/Context;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewIntent(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 45
    if-eqz p1, :cond_1

    iget-object v0, p0, Lexpo/modules/devlauncher/DevLauncherPackageDelegate$createReactActivityLifecycleListeners$1;->$activityContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lexpo/modules/devlauncher/DevLauncherPackageDelegate$createReactActivityLifecycleListeners$1;->$activityContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/facebook/react/ReactActivity;

    if-nez v0, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    sget-object v0, Lexpo/modules/devlauncher/DevLauncherController;->Companion:Lexpo/modules/devlauncher/DevLauncherController$Companion;

    iget-object v1, p0, Lexpo/modules/devlauncher/DevLauncherPackageDelegate$createReactActivityLifecycleListeners$1;->$activityContext:Landroid/content/Context;

    check-cast v1, Lcom/facebook/react/ReactActivity;

    invoke-virtual {v0, v1, p1}, Lexpo/modules/devlauncher/DevLauncherController$Companion;->tryToHandleIntent(Lcom/facebook/react/ReactActivity;Landroid/content/Intent;)Z

    move-result v0

    return v0

    .line 46
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
