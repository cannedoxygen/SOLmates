.class public final Lexpo/modules/core/logging/PersistentFileLogHandler;
.super Lexpo/modules/core/logging/LogHandler;
.source "PersistentFileLogHandler.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\'\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00032\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0010\u00a2\u0006\u0002\u0008\u0010R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lexpo/modules/core/logging/PersistentFileLogHandler;",
        "Lexpo/modules/core/logging/LogHandler;",
        "category",
        "",
        "filesDirectory",
        "Ljava/io/File;",
        "(Ljava/lang/String;Ljava/io/File;)V",
        "persistentFileLog",
        "Lexpo/modules/core/logging/PersistentFileLog;",
        "log",
        "",
        "type",
        "Lexpo/modules/core/logging/LogType;",
        "message",
        "cause",
        "",
        "log$expo_modules_core_debug",
        "expo-modules-core_debug"
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
.field private final persistentFileLog:Lexpo/modules/core/logging/PersistentFileLog;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 1
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "filesDirectory"    # Ljava/io/File;

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filesDirectory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Lexpo/modules/core/logging/LogHandler;-><init>()V

    .line 14
    new-instance v0, Lexpo/modules/core/logging/PersistentFileLog;

    invoke-direct {v0, p1, p2}, Lexpo/modules/core/logging/PersistentFileLog;-><init>(Ljava/lang/String;Ljava/io/File;)V

    iput-object v0, p0, Lexpo/modules/core/logging/PersistentFileLogHandler;->persistentFileLog:Lexpo/modules/core/logging/PersistentFileLog;

    .line 9
    return-void
.end method


# virtual methods
.method public log$expo_modules_core_debug(Lexpo/modules/core/logging/LogType;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 8
    .param p1, "type"    # Lexpo/modules/core/logging/LogType;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lexpo/modules/core/logging/PersistentFileLogHandler;->persistentFileLog:Lexpo/modules/core/logging/PersistentFileLog;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p2, v1, v2, v1}, Lexpo/modules/core/logging/PersistentFileLog;->appendEntry$default(Lexpo/modules/core/logging/PersistentFileLog;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 18
    if-eqz p3, :cond_0

    move-object v0, p3

    .local v0, "it":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 19
    .local v3, "$i$a$-let-PersistentFileLogHandler$log$1":I
    iget-object v4, p0, Lexpo/modules/core/logging/PersistentFileLogHandler;->persistentFileLog:Lexpo/modules/core/logging/PersistentFileLog;

    invoke-static {p3}, Lexpo/modules/core/logging/LoggerUtilsKt;->localizedMessageWithCauseLocalizedMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p3}, Lkotlin/ExceptionsKt;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1, v2, v1}, Lexpo/modules/core/logging/PersistentFileLog;->appendEntry$default(Lexpo/modules/core/logging/PersistentFileLog;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 20
    nop

    .line 18
    .end local v0    # "it":Ljava/lang/Throwable;
    .end local v3    # "$i$a$-let-PersistentFileLogHandler$log$1":I
    nop

    .line 21
    :cond_0
    return-void
.end method
