.class public final Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$Companion;
.super Ljava/lang/Object;
.source "DevLauncherErrorActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0008\u001a\u00020\tJ\u0016\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0004J\u0016\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0004J\u0016\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00020\u0004R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$Companion;",
        "",
        "()V",
        "currentError",
        "Lexpo/modules/devlauncher/launcher/errors/DevLauncherAppError;",
        "openedErrorActivity",
        "Ljava/lang/ref/WeakReference;",
        "Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;",
        "isVisible",
        "",
        "showError",
        "",
        "activity",
        "Landroid/app/Activity;",
        "error",
        "showErrorIfNotVisible",
        "showFatalError",
        "context",
        "Landroid/content/Context;",
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
.method private constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final isVisible()Z
    .locals 2

    .line 100
    invoke-static {}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->access$getOpenedErrorActivity$cp()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;

    .line 101
    .local v0, "errorActivity":Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final showError(Landroid/app/Activity;Lexpo/modules/devlauncher/launcher/errors/DevLauncherAppError;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "error"    # Lexpo/modules/devlauncher/launcher/errors/DevLauncherAppError;

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->access$getOpenedErrorActivity$cp()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;

    .line 119
    .local v0, "errorActivity":Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {v0, p2}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->displayError(Lexpo/modules/devlauncher/launcher/errors/DevLauncherAppError;)V

    goto :goto_1

    .line 120
    :cond_1
    :goto_0
    monitor-enter p0

    const/4 v1, 0x0

    .line 121
    .local v1, "$i$a$-synchronized-DevLauncherErrorActivity$Companion$showError$1":I
    :try_start_0
    sget-object v2, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->Companion:Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$Companion;

    invoke-static {p2}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->access$setCurrentError$cp(Lexpo/modules/devlauncher/launcher/errors/DevLauncherAppError;)V

    .line 122
    nop

    .end local v1    # "$i$a$-synchronized-DevLauncherErrorActivity$Companion$showError$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    monitor-exit p0

    .line 124
    nop

    .line 125
    new-instance v1, Landroid/content/Intent;

    move-object v2, p1

    check-cast v2, Landroid/content/Context;

    const-class v3, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 130
    :goto_1
    return-void

    .line 120
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final showErrorIfNotVisible(Landroid/app/Activity;Lexpo/modules/devlauncher/launcher/errors/DevLauncherAppError;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "error"    # Lexpo/modules/devlauncher/launcher/errors/DevLauncherAppError;

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->access$getOpenedErrorActivity$cp()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;

    .line 106
    .local v0, "errorActivity":Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    :cond_0
    monitor-enter p0

    const/4 v1, 0x0

    .line 108
    .local v1, "$i$a$-synchronized-DevLauncherErrorActivity$Companion$showErrorIfNotVisible$1":I
    :try_start_0
    sget-object v2, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->Companion:Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$Companion;

    invoke-static {p2}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->access$setCurrentError$cp(Lexpo/modules/devlauncher/launcher/errors/DevLauncherAppError;)V

    .line 109
    nop

    .end local v1    # "$i$a$-synchronized-DevLauncherErrorActivity$Companion$showErrorIfNotVisible$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    monitor-exit p0

    .line 111
    nop

    .line 112
    new-instance v1, Landroid/content/Intent;

    move-object v2, p1

    check-cast v2, Landroid/content/Context;

    const-class v3, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 115
    :cond_1
    return-void

    .line 107
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final showFatalError(Landroid/content/Context;Lexpo/modules/devlauncher/launcher/errors/DevLauncherAppError;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "error"    # Lexpo/modules/devlauncher/launcher/errors/DevLauncherAppError;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    monitor-enter p0

    const/4 v0, 0x0

    .line 134
    .local v0, "$i$a$-synchronized-DevLauncherErrorActivity$Companion$showFatalError$1":I
    :try_start_0
    sget-object v1, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->Companion:Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$Companion;

    invoke-static {p2}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->access$setCurrentError$cp(Lexpo/modules/devlauncher/launcher/errors/DevLauncherAppError;)V

    .line 135
    nop

    .end local v0    # "$i$a$-synchronized-DevLauncherErrorActivity$Companion$showFatalError$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit p0

    .line 137
    nop

    .line 138
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v1, v0

    .local v1, "$this$showFatalError_u24lambda_u243":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 139
    .local v2, "$i$a$-apply-DevLauncherErrorActivity$Companion$showFatalError$2":I
    nop

    .line 140
    nop

    .line 139
    const v3, 0x10018000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 144
    nop

    .line 138
    .end local v1    # "$this$showFatalError_u24lambda_u243":Landroid/content/Intent;
    .end local v2    # "$i$a$-apply-DevLauncherErrorActivity$Companion$showFatalError$2":I
    nop

    .line 137
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 146
    return-void

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
