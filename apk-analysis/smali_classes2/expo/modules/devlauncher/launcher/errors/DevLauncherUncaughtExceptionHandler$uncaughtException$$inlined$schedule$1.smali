.class public final Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler$uncaughtException$$inlined$schedule$1;
.super Ljava/util/TimerTask;
.source "Timer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTimer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Timer.kt\nkotlin/concurrent/TimersKt$timerTask$1\n+ 2 DevLauncherUncaughtExceptionHandler.kt\nexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler\n*L\n1#1,148:1\n78#2,16:149\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004\u00b8\u0006\u0000"
    }
    d2 = {
        "kotlin/concurrent/TimersKt$timerTask$1",
        "Ljava/util/TimerTask;",
        "run",
        "",
        "kotlin-stdlib"
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
.field final synthetic $exception$inlined:Ljava/lang/Throwable;

.field final synthetic $thread$inlined:Ljava/lang/Thread;

.field final synthetic this$0:Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;


# direct methods
.method public constructor <init>(Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler$uncaughtException$$inlined$schedule$1;->this$0:Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;

    iput-object p2, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler$uncaughtException$$inlined$schedule$1;->$thread$inlined:Ljava/lang/Thread;

    iput-object p3, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler$uncaughtException$$inlined$schedule$1;->$exception$inlined:Ljava/lang/Throwable;

    .line 146
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 147
    move-object v0, p0

    check-cast v0, Ljava/util/TimerTask;

    .local v0, "$this$uncaughtException_u24lambda_u241":Ljava/util/TimerTask;
    const/4 v1, 0x0

    .line 149
    .local v1, "$i$a$-schedule-DevLauncherUncaughtExceptionHandler$uncaughtException$2":I
    iget-object v2, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler$uncaughtException$$inlined$schedule$1;->this$0:Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;

    invoke-static {v2}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;->access$getExceptionWasReported$p(Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 151
    goto :goto_0

    .line 156
    :cond_0
    iget-object v2, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler$uncaughtException$$inlined$schedule$1;->this$0:Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;

    invoke-static {v2}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;->access$getDefaultUncaughtHandler$p(Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 157
    iget-object v2, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler$uncaughtException$$inlined$schedule$1;->this$0:Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;

    invoke-static {v2}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;->access$getDefaultUncaughtHandler$p(Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    iget-object v3, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler$uncaughtException$$inlined$schedule$1;->$thread$inlined:Ljava/lang/Thread;

    iget-object v4, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler$uncaughtException$$inlined$schedule$1;->$exception$inlined:Ljava/lang/Throwable;

    invoke-interface {v2, v3, v4}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 164
    nop

    .line 147
    .end local v0    # "$this$uncaughtException_u24lambda_u241":Ljava/util/TimerTask;
    .end local v1    # "$i$a$-schedule-DevLauncherUncaughtExceptionHandler$uncaughtException$2":I
    :goto_0
    return-void

    .line 160
    .restart local v0    # "$this$uncaughtException_u24lambda_u241":Ljava/util/TimerTask;
    .restart local v1    # "$i$a$-schedule-DevLauncherUncaughtExceptionHandler$uncaughtException$2":I
    :cond_1
    const-string v2, "exception"

    iget-object v3, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler$uncaughtException$$inlined$schedule$1;->$exception$inlined:Ljava/lang/Throwable;

    const-string v4, "UNCAUGHT_EXCEPTION"

    invoke-static {v4, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    .line 162
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "System.exit returned normally, while it was supposed to halt JVM."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
