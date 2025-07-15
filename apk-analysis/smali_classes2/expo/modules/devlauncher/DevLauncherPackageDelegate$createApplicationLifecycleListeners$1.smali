.class public final Lexpo/modules/devlauncher/DevLauncherPackageDelegate$createApplicationLifecycleListeners$1;
.super Ljava/lang/Object;
.source "DevLauncherPackageDelegate.kt"

# interfaces
.implements Lexpo/modules/core/interfaces/ApplicationLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/devlauncher/DevLauncherPackageDelegate;->createApplicationLifecycleListeners(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "expo/modules/devlauncher/DevLauncherPackageDelegate$createApplicationLifecycleListeners$1",
        "Lexpo/modules/core/interfaces/ApplicationLifecycleListener;",
        "onCreate",
        "",
        "application",
        "Landroid/app/Application;",
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/app/Application;)V
    .locals 7
    .param p1, "application"    # Landroid/app/Application;

    .line 35
    instance-of v0, p1, Lcom/facebook/react/ReactApplication;

    if-eqz v0, :cond_0

    .line 36
    sget-object v1, Lexpo/modules/devlauncher/DevLauncherController;->Companion:Lexpo/modules/devlauncher/DevLauncherController$Companion;

    move-object v2, p1

    check-cast v2, Lcom/facebook/react/ReactApplication;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lexpo/modules/devlauncher/DevLauncherController$Companion;->initialize$default(Lexpo/modules/devlauncher/DevLauncherController$Companion;Lcom/facebook/react/ReactApplication;Ljava/util/List;Ljava/lang/Class;ILjava/lang/Object;)V

    .line 37
    return-void

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
