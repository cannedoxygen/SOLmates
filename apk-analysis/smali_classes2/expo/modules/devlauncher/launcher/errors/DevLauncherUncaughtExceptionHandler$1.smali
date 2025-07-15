.class public final Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler$1;
.super Ljava/lang/Object;
.source "DevLauncherUncaughtExceptionHandler.kt"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;-><init>(Lexpo/modules/devlauncher/DevLauncherController;Landroid/app/Application;Ljava/lang/Thread$UncaughtExceptionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u0007H\u0016J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "expo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler$1",
        "Landroid/app/Application$ActivityLifecycleCallbacks;",
        "onActivityCreated",
        "",
        "activity",
        "Landroid/app/Activity;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onActivityDestroyed",
        "onActivityPaused",
        "onActivityResumed",
        "onActivitySaveInstanceState",
        "outState",
        "onActivityStarted",
        "onActivityStopped",
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
.field final synthetic this$0:Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;


# direct methods
.method constructor <init>(Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;)V
    .locals 0
    .param p1, "$receiver"    # Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;

    iput-object p1, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler$1;->this$0:Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler$1;->this$0:Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;

    invoke-static {v0}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;->access$getExceptionWasReported$p(Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;

    if-eqz v0, :cond_1

    .line 31
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler$1;->this$0:Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;

    invoke-static {v0}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;->access$getTimerTask$p(Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;)Ljava/util/TimerTask;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 32
    :cond_0
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler$1;->this$0:Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;->access$setTimerTask$p(Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;Ljava/util/TimerTask;)V

    .line 33
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler$1;->this$0:Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;->access$setExceptionWasReported$p(Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;Z)V

    .line 34
    return-void

    .line 36
    :cond_1
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    return-void
.end method
