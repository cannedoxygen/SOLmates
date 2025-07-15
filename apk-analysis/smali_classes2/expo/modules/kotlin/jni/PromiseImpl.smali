.class public final Lexpo/modules/kotlin/jni/PromiseImpl;
.super Ljava/lang/Object;
.source "PromiseImpl.kt"

# interfaces
.implements Lexpo/modules/kotlin/Promise;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPromiseImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PromiseImpl.kt\nexpo/modules/kotlin/jni/PromiseImpl\n*L\n1#1,90:1\n63#1,17:91\n63#1,17:108\n63#1,17:125\n63#1,17:142\n63#1,17:159\n63#1,17:176\n63#1,17:193\n63#1,17:210\n*S KotlinDebug\n*F\n+ 1 PromiseImpl.kt\nexpo/modules/kotlin/jni/PromiseImpl\n*L\n20#1:91,17\n24#1:108,17\n28#1:125,17\n32#1:142,17\n36#1:159,17\n40#1:176,17\n44#1:193,17\n57#1:210,17\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0002\u0010\u0007\n\u0002\u0010\u0008\n\u0002\u0010\u001e\n\u0002\u0010$\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0008\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0017\u0010\u0011\u001a\u00020\u00122\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0014H\u0082\u0008J$\u0010\u0015\u001a\u00020\u00122\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u000bJ$\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u000b2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0008\u0010\u001d\u001a\u00020\u0012H\u0016J\u0012\u0010\u001d\u001a\u00020\u00122\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J\u0010\u0010\u001d\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\rH\u0016J\u0010\u0010\u001d\u001a\u00020\u00122\u0006\u0010 \u001a\u00020!H\u0016J\u0010\u0010\u001d\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\"H\u0016J\u0010\u0010\u001d\u001a\u00020\u00122\u0006\u0010 \u001a\u00020#H\u0016J\u0010\u0010\u001d\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u000bH\u0016J\u0018\u0010\u001d\u001a\u00020\u00122\u000e\u0010 \u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001f0$H\u0016J\u001e\u0010\u001d\u001a\u00020\u00122\u0014\u0010 \u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u001f0%H\u0016R\u0016\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0002\u001a\u00020\u00038\u0000X\u0081\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\r@BX\u0080\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006&"
    }
    d2 = {
        "Lexpo/modules/kotlin/jni/PromiseImpl;",
        "Lexpo/modules/kotlin/Promise;",
        "callback",
        "Lexpo/modules/kotlin/jni/JavaCallback;",
        "(Lexpo/modules/kotlin/jni/JavaCallback;)V",
        "appContextHolder",
        "Ljava/lang/ref/WeakReference;",
        "Lexpo/modules/kotlin/AppContext;",
        "getCallback$expo_modules_core_debug",
        "()Lexpo/modules/kotlin/jni/JavaCallback;",
        "fullFunctionName",
        "",
        "<set-?>",
        "",
        "wasSettled",
        "getWasSettled$expo_modules_core_debug",
        "()Z",
        "checkIfWasSettled",
        "",
        "body",
        "Lkotlin/Function0;",
        "decorateWithDebugInformation",
        "moduleName",
        "functionName",
        "reject",
        "code",
        "message",
        "cause",
        "",
        "resolve",
        "value",
        "",
        "result",
        "",
        "",
        "",
        "",
        "",
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
.field private appContextHolder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/kotlin/AppContext;",
            ">;"
        }
    .end annotation
.end field

.field private final callback:Lexpo/modules/kotlin/jni/JavaCallback;

.field private fullFunctionName:Ljava/lang/String;

.field private wasSettled:Z


# direct methods
.method public constructor <init>(Lexpo/modules/kotlin/jni/JavaCallback;)V
    .locals 1
    .param p1, "callback"    # Lexpo/modules/kotlin/jni/JavaCallback;

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lexpo/modules/kotlin/jni/PromiseImpl;->callback:Lexpo/modules/kotlin/jni/JavaCallback;

    .line 12
    return-void
.end method

.method private final checkIfWasSettled(Lkotlin/jvm/functions/Function0;)V
    .locals 6
    .param p1, "body"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 63
    .local v0, "$i$f$checkIfWasSettled":I
    iget-boolean v1, p0, Lexpo/modules/kotlin/jni/PromiseImpl;->wasSettled:Z

    if-eqz v1, :cond_3

    .line 64
    new-instance v1, Lexpo/modules/kotlin/exception/PromiseAlreadySettledException;

    iget-object v2, p0, Lexpo/modules/kotlin/jni/PromiseImpl;->fullFunctionName:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, "unknown"

    :cond_0
    invoke-direct {v1, v2}, Lexpo/modules/kotlin/exception/PromiseAlreadySettledException;-><init>(Ljava/lang/String;)V

    .line 65
    .local v1, "exception":Lexpo/modules/kotlin/exception/PromiseAlreadySettledException;
    iget-object v2, p0, Lexpo/modules/kotlin/jni/PromiseImpl;->appContextHolder:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/kotlin/AppContext;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lexpo/modules/kotlin/AppContext;->getErrorManager()Lexpo/modules/kotlin/defaultmodules/ErrorManagerModule;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 68
    .local v2, "errorManager":Lexpo/modules/kotlin/defaultmodules/ErrorManagerModule;
    :goto_0
    sget-boolean v3, Lexpo/modules/BuildConfig;->DEBUG:Z

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 69
    move-object v3, v1

    check-cast v3, Lexpo/modules/kotlin/exception/CodedException;

    invoke-virtual {v2, v3}, Lexpo/modules/kotlin/defaultmodules/ErrorManagerModule;->reportExceptionToLogBox(Lexpo/modules/kotlin/exception/CodedException;)V

    .line 70
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v3

    const-string v4, "Trying to resolve promise that was already settled"

    move-object v5, v1

    check-cast v5, Ljava/lang/Throwable;

    invoke-virtual {v3, v4, v5}, Lexpo/modules/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    return-void

    .line 74
    :cond_2
    throw v1

    .line 77
    .end local v1    # "exception":Lexpo/modules/kotlin/exception/PromiseAlreadySettledException;
    .end local v2    # "errorManager":Lexpo/modules/kotlin/defaultmodules/ErrorManagerModule;
    :cond_3
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 78
    const/4 v1, 0x1

    iput-boolean v1, p0, Lexpo/modules/kotlin/jni/PromiseImpl;->wasSettled:Z

    .line 79
    return-void
.end method


# virtual methods
.method public final decorateWithDebugInformation(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "appContextHolder"    # Ljava/lang/ref/WeakReference;
    .param p2, "moduleName"    # Ljava/lang/String;
    .param p3, "functionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/kotlin/AppContext;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "appContextHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moduleName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "functionName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iput-object p1, p0, Lexpo/modules/kotlin/jni/PromiseImpl;->appContextHolder:Ljava/lang/ref/WeakReference;

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/kotlin/jni/PromiseImpl;->fullFunctionName:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public final getCallback$expo_modules_core_debug()Lexpo/modules/kotlin/jni/JavaCallback;
    .locals 1

    .line 13
    iget-object v0, p0, Lexpo/modules/kotlin/jni/PromiseImpl;->callback:Lexpo/modules/kotlin/jni/JavaCallback;

    return-object v0
.end method

.method public final getWasSettled$expo_modules_core_debug()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lexpo/modules/kotlin/jni/PromiseImpl;->wasSettled:Z

    return v0
.end method

.method public reject(Lexpo/modules/kotlin/exception/CodedException;)V
    .locals 0
    .param p1, "exception"    # Lexpo/modules/kotlin/exception/CodedException;

    .line 11
    invoke-static {p0, p1}, Lexpo/modules/kotlin/Promise$DefaultImpls;->reject(Lexpo/modules/kotlin/Promise;Lexpo/modules/kotlin/exception/CodedException;)V

    return-void
.end method

.method public reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    move-object v0, p0

    .local v0, "this_$iv":Lexpo/modules/kotlin/jni/PromiseImpl;
    const/4 v1, 0x0

    .line 210
    .local v1, "$i$f$checkIfWasSettled":I
    iget-boolean v2, v0, Lexpo/modules/kotlin/jni/PromiseImpl;->wasSettled:Z

    const/4 v3, 0x0

    const-string v4, "unknown"

    if-eqz v2, :cond_3

    .line 211
    new-instance v2, Lexpo/modules/kotlin/exception/PromiseAlreadySettledException;

    iget-object v5, v0, Lexpo/modules/kotlin/jni/PromiseImpl;->fullFunctionName:Ljava/lang/String;

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    move-object v4, v5

    :goto_0
    invoke-direct {v2, v4}, Lexpo/modules/kotlin/exception/PromiseAlreadySettledException;-><init>(Ljava/lang/String;)V

    .line 212
    .local v2, "exception$iv":Lexpo/modules/kotlin/exception/PromiseAlreadySettledException;
    iget-object v4, v0, Lexpo/modules/kotlin/jni/PromiseImpl;->appContextHolder:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lexpo/modules/kotlin/AppContext;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lexpo/modules/kotlin/AppContext;->getErrorManager()Lexpo/modules/kotlin/defaultmodules/ErrorManagerModule;

    move-result-object v3

    .line 215
    .local v3, "errorManager$iv":Lexpo/modules/kotlin/defaultmodules/ErrorManagerModule;
    :cond_1
    sget-boolean v4, Lexpo/modules/BuildConfig;->DEBUG:Z

    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    .line 216
    move-object v4, v2

    check-cast v4, Lexpo/modules/kotlin/exception/CodedException;

    invoke-virtual {v3, v4}, Lexpo/modules/kotlin/defaultmodules/ErrorManagerModule;->reportExceptionToLogBox(Lexpo/modules/kotlin/exception/CodedException;)V

    .line 217
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v4

    const-string v5, "Trying to resolve promise that was already settled"

    move-object v6, v2

    check-cast v6, Ljava/lang/Throwable;

    invoke-virtual {v4, v5, v6}, Lexpo/modules/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 218
    goto :goto_2

    .line 221
    :cond_2
    throw v2

    .line 224
    .end local v2    # "exception$iv":Lexpo/modules/kotlin/exception/PromiseAlreadySettledException;
    .end local v3    # "errorManager$iv":Lexpo/modules/kotlin/defaultmodules/ErrorManagerModule;
    :cond_3
    const/4 v2, 0x0

    .line 59
    .local v2, "$i$a$-checkIfWasSettled-PromiseImpl$reject$1":I
    iget-object v5, p0, Lexpo/modules/kotlin/jni/PromiseImpl;->callback:Lexpo/modules/kotlin/jni/JavaCallback;

    if-nez p2, :cond_6

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    :cond_4
    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    move-object v4, v3

    goto :goto_1

    :cond_6
    move-object v4, p2

    :goto_1
    invoke-virtual {v5, p1, v4}, Lexpo/modules/kotlin/jni/JavaCallback;->invoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    nop

    .line 224
    .end local v2    # "$i$a$-checkIfWasSettled-PromiseImpl$reject$1":I
    nop

    .line 225
    const/4 v2, 0x1

    iput-boolean v2, v0, Lexpo/modules/kotlin/jni/PromiseImpl;->wasSettled:Z

    .line 226
    nop

    .line 60
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/jni/PromiseImpl;
    .end local v1    # "$i$f$checkIfWasSettled":I
    :goto_2
    return-void
.end method

.method public resolve()V
    .locals 7

    .line 24
    move-object v0, p0

    .local v0, "this_$iv":Lexpo/modules/kotlin/jni/PromiseImpl;
    const/4 v1, 0x0

    .line 108
    .local v1, "$i$f$checkIfWasSettled":I
    iget-boolean v2, v0, Lexpo/modules/kotlin/jni/PromiseImpl;->wasSettled:Z

    if-eqz v2, :cond_3

    .line 109
    new-instance v2, Lexpo/modules/kotlin/exception/PromiseAlreadySettledException;

    iget-object v3, v0, Lexpo/modules/kotlin/jni/PromiseImpl;->fullFunctionName:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string v3, "unknown"

    :cond_0
    invoke-direct {v2, v3}, Lexpo/modules/kotlin/exception/PromiseAlreadySettledException;-><init>(Ljava/lang/String;)V

    .line 110
    .local v2, "exception$iv":Lexpo/modules/kotlin/exception/PromiseAlreadySettledException;
    iget-object v3, v0, Lexpo/modules/kotlin/jni/PromiseImpl;->appContextHolder:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lexpo/modules/kotlin/AppContext;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lexpo/modules/kotlin/AppContext;->getErrorManager()Lexpo/modules/kotlin/defaultmodules/ErrorManagerModule;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 113
    .local v3, "errorManager$iv":Lexpo/modules/kotlin/defaultmodules/ErrorManagerModule;
    :goto_0
    sget-boolean v4, Lexpo/modules/BuildConfig;->DEBUG:Z

    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    .line 114
    move-object v4, v2

    check-cast v4, Lexpo/modules/kotlin/exception/CodedException;

    invoke-virtual {v3, v4}, Lexpo/modules/kotlin/defaultmodules/ErrorManagerModule;->reportExceptionToLogBox(Lexpo/modules/kotlin/exception/CodedException;)V

    .line 115
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v4

    const-string v5, "Trying to resolve promise that was already settled"

    move-object v6, v2

    check-cast v6, Ljava/lang/Throwable;

    invoke-virtual {v4, v5, v6}, Lexpo/modules/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    goto :goto_1

    .line 119
    :cond_2
    throw v2

    .line 122
    .end local v2    # "exception$iv":Lexpo/modules/kotlin/exception/PromiseAlreadySettledException;
    .end local v3    # "errorManager$iv":Lexpo/modules/kotlin/defaultmodules/ErrorManagerModule;
    :cond_3
    const/4 v2, 0x0

    .line 25
    .local v2, "$i$a$-checkIfWasSettled-PromiseImpl$resolve$2":I
    iget-object v3, p0, Lexpo/modules/kotlin/jni/PromiseImpl;->callback:Lexpo/modules/kotlin/jni/JavaCallback;

    invoke-virtual {v3}, Lexpo/modules/kotlin/jni/JavaCallback;->invoke()V

    .line 26
    nop

    .line 122
    .end local v2    # "$i$a$-checkIfWasSettled-PromiseImpl$resolve$2":I
    nop

    .line 123
    const/4 v2, 0x1

    iput-boolean v2, v0, Lexpo/modules/kotlin/jni/PromiseImpl;->wasSettled:Z

    .line 124
    nop

    .line 26
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/jni/PromiseImpl;
    .end local v1    # "$i$f$checkIfWasSettled":I
    :goto_1
    return-void
.end method

.method public resolve(D)V
    .locals 7
    .param p1, "result"    # D

    .line 36
    move-object v0, p0

    .local v0, "this_$iv":Lexpo/modules/kotlin/jni/PromiseImpl;
    const/4 v1, 0x0

    .line 159
    .local v1, "$i$f$checkIfWasSettled":I
    iget-boolean v2, v0, Lexpo/modules/kotlin/jni/PromiseImpl;->wasSettled:Z

    if-eqz v2, :cond_3

    .line 160
    new-instance v2, Lexpo/modules/kotlin/exception/PromiseAlreadySettledException;

    iget-object v3, v0, Lexpo/modules/kotlin/jni/PromiseImpl;->fullFunctionName:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string v3, "unknown"

    :cond_0
    invoke-direct {v2, v3}, Lexpo/modules/kotlin/exception/PromiseAlreadySettledException;-><init>(Ljava/lang/String;)V

    .line 161
    .local v2, "exception$iv":Lexpo/modules/kotlin/exception/PromiseAlreadySettledException;
    iget-object v3, v0, Lexpo/modules/kotlin/jni/PromiseImpl;->appContextHolder:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lexpo/modules/kotlin/AppContext;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lexpo/modules/kotlin/AppContext;->getErrorManager()Lexpo/modules/kotlin/defaultmodules/ErrorManagerModule;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 164
    .local v3, "errorManager$iv":Lexpo/modules/kotlin/defaultmodules/ErrorManagerModule;
    :goto_0
    sget-boolean v4, Lexpo/modules/BuildConfig;->DEBUG:Z

    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    .line 165
    move-object v4, v2

    check-cast v4, Lexpo/modules/kotlin/exception/CodedException;

    invoke-virtual {v3, v4}, Lexpo/modules/kotlin/defaultmodules/ErrorManagerModule;->reportExceptionToLogBox(Lexpo/modules/kotlin/exception/CodedException;)V

    .line 166
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v4

    const-string v5, "Trying to resolve promise that was already settled"

    move-object v6, v2

    check-cast v6, Ljava/lang/Throwable;

    invoke-virtual {v4, v5, v6}, Lexpo/modules/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    goto :goto_1

    .line 170
    :cond_2
    throw v2

    .line 173
    .end local v2    # "exception$iv":Lexpo/modules/kotlin/exception/PromiseAlreadySettledException;
    .end local v3    # "errorManager$iv":Lexpo/modules/kotlin/defaultmodules/ErrorManagerModule;
    :cond_3
    const/4 v2, 0x0

    .line 37
    .local v2, "$i$a$-checkIfWasSettled-PromiseImpl$resolve$5":I
    iget-object v3, p0, Lexpo/modules/kotlin/jni/PromiseImpl;->callback:Lexpo/modules/kotlin/jni/JavaCallback;

    invoke-virtual {v3, p1, p2}, Lexpo/modules/kotlin/jni/JavaCallback;->invoke(D)V

    .line 38
    nop

    .line 173
    .end local v2    # "$i$a$-checkIfWasSettled-PromiseImpl$resolve$5":I
    nop

    .line 174
    const/4 v2, 0x1

    iput-boolean v2, v0, Lexpo/modules/kotlin/jni/PromiseImpl;->wasSettled:Z

    .line 175
    nop

    .line 38
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/jni/PromiseImpl;
    .end local v1    # "$i$f$checkIfWasSettled":I
    :goto_1
    return-void
.end method

.method public resolve(F)V
    .locals 7
    .param p1, "result"    # F

    .line 40
    move-object v0, p0

    .local v0, "this_$iv":Lexpo/modules/kotlin/jni/PromiseImpl;
    const/4 v1, 0x0

    .line 176
    .local v1, "$i$f$checkIfWasSettled":I
    iget-boolean v2, v0, Lexpo/modules/kotlin/jni/PromiseImpl;->wasSettled:Z

    if-eqz v2, :cond_3

    .line 177
    new-instance v2, Lexpo/modules/kotlin/exception/PromiseAlreadySettledException;

    iget-object v3, v0, Lexpo/modules/kotlin/jni/PromiseImpl;->fullFunctionName:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string v3, "unknown"

    :cond_0
    invoke-direct {v2, v3}, Lexpo/modules/kotlin/exception/PromiseAlreadySettledException;-><init>(Ljava/lang/String;)V

    .line 178
    .local v2, "exception$iv":Lexpo/modules/kotlin/exception/PromiseAlreadySettledException;
    iget-object v3, v0, Lexpo/modules/kotlin/jni/PromiseImpl;->appContextHolder:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lexpo/modules/kotlin/AppContext;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lexpo/modules/kotlin/AppContext;->getErrorManager()Lexpo/modules/kotlin/defaultmodules/ErrorManagerModule;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 181
    .local v3, "errorManager$iv":Lexpo/modules/kotlin/defaultmodules/ErrorManagerModule;
    :goto_0
    sget-boolean v4, Lexpo/modules/BuildConfig;->DEBUG:Z

    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    .line 182
    move-object v4, v2

    check-cast v4, Lexpo/modules/kotlin/exception/CodedException;

    invoke-virtual {v3, v4}, Lexpo/modules/kotlin/defaultmodules/ErrorManagerModule;->reportExceptionToLogBox(Lexpo/modules/kotlin/exception/CodedException;)V

    .line 183
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v4

    const-string v5, "Trying to resolve promise that was already settled"

    move-object v6, v2

    check-cast v6, Ljava/lang/Throwable;

    invoke-virtual {v4, v5, v6}, Lexpo/modules/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 184
    goto :goto_1

    .line 187
    :cond_2
    throw v2

    .line 190
    .end local v2    # "exception$iv":Lexpo/modules/kotlin/exception/PromiseAlreadySettledException;
    .end local v3    # "errorManager$iv":Lexpo/modules/kotlin/defaultmodules/ErrorManagerModule;
    :cond_3
    const/4 v2, 0x0

    .line 41
    .local v2, "$i$a$-checkIfWasSettled-PromiseImpl$resolve$6":I
    iget-object v3, p0, Lexpo/modules/kotlin/jni/PromiseImpl;->callback:Lexpo/modules/kotlin/jni/JavaCallback;

    invoke-virtual {v3, p1}, Lexpo/modules/kotlin/jni/JavaCallback;->invoke(F)V

    .line 42
    nop

    .line 190
    .end local v2    # "$i$a$-checkIfWasSettled-PromiseImpl$resolve$6":I
    nop

    .line 191
    const/4 v2, 0x1

    iput-boolean v2, v0, Lexpo/modules/kotlin/jni/PromiseImpl;->wasSettled:Z

    .line 192
    nop

    .line 42
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/jni/PromiseImpl;
    .end local v1    # "$i$f$checkIfWasSettled":I
    :goto_1
    return-void
.end method

.method public resolve(I)V
    .locals 7
    .param p1, "result"    # I

    .line 28
    move-object v0, p0

    .local v0, "this_$iv":Lexpo/modules/kotlin/jni/PromiseImpl;
    const/4 v1, 0x0

    .line 125
    .local v1, "$i$f$checkIfWasSettled":I
    iget-boolean v2, v0, Lexpo/modules/kotlin/jni/PromiseImpl;->wasSettled:Z

    if-eqz v2, :cond_3

    .line 126
    new-instance v2, Lexpo/modules/kotlin/exception/PromiseAlreadySettledException;

    iget-object v3, v0, Lexpo/modules/kotlin/jni/PromiseImpl;->fullFunctionName:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string v3, "unknown"

    :cond_0
    invoke-direct {v2, v3}, Lexpo/modules/kotlin/exception/PromiseAlreadySettledException;-><init>(Ljava/lang/String;)V

    .line 127
    .local v2, "exception$iv":Lexpo/modules/kotlin/exception/PromiseAlreadySettledException;
    iget-object v3, v0, Lexpo/modules/kotlin/jni/PromiseImpl;->appContextHolder:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lexpo/modules/kotlin/AppContext;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lexpo/modules/kotlin/AppContext;->getErrorManager()Lexpo/modules/kotlin/defaultmodules/ErrorManagerModule;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 130
    .local v3, "errorManager$iv":Lexpo/modules/kotlin/defaultmodules/ErrorManagerModule;
    :goto_0
    sget-boolean v4, Lexpo/modules/BuildConfig;->DEBUG:Z

    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    .line 131
    move-object v4, v2

    check-cast v4, Lexpo/modules/kotlin/exception/CodedException;

    invoke-virtual {v3, v4}, Lexpo/modules/kotlin/defaultmodules/ErrorManagerModule;->reportExceptionToLogBox(Lexpo/modules/kotlin/exception/CodedException;)V

    .line 132
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v4

    const-string v5, "Trying to resolve promise that was already settled"

    move-object v6, v2

    check-cast v6, Ljava/lang/Throwable;

    invoke-virtual {v4, v5, v6}, Lexpo/modules/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    goto :goto_1

    .line 136
    :cond_2
    throw v2

    .line 139
    .end local v2    # "exception$iv":Lexpo/modules/kotlin/exception/PromiseAlreadySettledException;
    .end local v3    # "errorManager$iv":Lexpo/modules/kotlin/defaultmodules/ErrorManagerModule;
    :cond_3
    const/4 v2, 0x0

    .line 29
    .local v2, "$i$a$-checkIfWasSettled-PromiseImpl$resolve$3":I
    iget-object v3, p0, Lexpo/modules/kotlin/jni/PromiseImpl;->callback:Lexpo/modules/kotlin/jni/JavaCallback;

    invoke-virtual {v3, p1}, Lexpo/modules/kotlin/jni/JavaCallback;->invoke(I)V

    .line 30
    nop

    .line 139
    .end local v2    # "$i$a$-checkIfWasSettled-PromiseImpl$resolve$3":I
    nop

    .line 140
    const/4 v2, 0x1

    iput-boolean v2, v0, Lexpo/modules/kotlin/jni/PromiseImpl;->wasSettled:Z

    .line 141
    nop

    .line 30
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/jni/PromiseImpl;
    .end local v1    # "$i$f$checkIfWasSettled":I
    :goto_1
    return-void
.end method

.method public resolve(Ljava/lang/Object;)V
    .locals 7
    .param p1, "value"    # Ljava/lang/Object;

    .line 20
    move-object v0, p0

    .local v0, "this_$iv":Lexpo/modules/kotlin/jni/PromiseImpl;
    const/4 v1, 0x0

    .line 91
    .local v1, "$i$f$checkIfWasSettled":I
    iget-boolean v2, v0, Lexpo/modules/kotlin/jni/PromiseImpl;->wasSettled:Z

    if-eqz v2, :cond_3

    .line 92
    new-instance v2, Lexpo/modules/kotlin/exception/PromiseAlreadySettledException;

    iget-object v3, v0, Lexpo/modules/kotlin/jni/PromiseImpl;->fullFunctionName:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string v3, "unknown"

    :cond_0
    invoke-direct {v2, v3}, Lexpo/modules/kotlin/exception/PromiseAlreadySettledException;-><init>(Ljava/lang/String;)V

    .line 93
    .local v2, "exception$iv":Lexpo/modules/kotlin/exception/PromiseAlreadySettledException;
    iget-object v3, v0, Lexpo/modules/kotlin/jni/PromiseImpl;->appContextHolder:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lexpo/modules/kotlin/AppContext;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lexpo/modules/kotlin/AppContext;->getErrorManager()Lexpo/modules/kotlin/defaultmodules/ErrorManagerModule;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 96
    .local v3, "errorManager$iv":Lexpo/modules/kotlin/defaultmodules/ErrorManagerModule;
    :goto_0
    sget-boolean v4, Lexpo/modules/BuildConfig;->DEBUG:Z

    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    .line 97
    move-object v4, v2

    check-cast v4, Lexpo/modules/kotlin/exception/CodedException;

    invoke-virtual {v3, v4}, Lexpo/modules/kotlin/defaultmodules/ErrorManagerModule;->reportExceptionToLogBox(Lexpo/modules/kotlin/exception/CodedException;)V

    .line 98
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v4

    const-string v5, "Trying to resolve promise that was already settled"

    move-object v6, v2

    check-cast v6, Ljava/lang/Throwable;

    invoke-virtual {v4, v5, v6}, Lexpo/modules/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    goto :goto_1

    .line 102
    :cond_2
    throw v2

    .line 105
    .end local v2    # "exception$iv":Lexpo/modules/kotlin/exception/PromiseAlreadySettledException;
    .end local v3    # "errorManager$iv":Lexpo/modules/kotlin/defaultmodules/ErrorManagerModule;
    :cond_3
    const/4 v2, 0x0

    .line 21
    .local v2, "$i$a$-checkIfWasSettled-PromiseImpl$resolve$1":I
    iget-object v3, p0, Lexpo/modules/kotlin/jni/PromiseImpl;->callback:Lexpo/modules/kotlin/jni/JavaCallback;

    invoke-virtual {v3, p1}, Lexpo/modules/kotlin/jni/JavaCallback;->invoke(Ljava/lang/Object;)V

    .line 22
    nop

    .line 105
    .end local v2    # "$i$a$-checkIfWasSettled-PromiseImpl$resolve$1":I
    nop

    .line 106
    const/4 v2, 0x1

    iput-boolean v2, v0, Lexpo/modules/kotlin/jni/PromiseImpl;->wasSettled:Z

    .line 107
    nop

    .line 22
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/jni/PromiseImpl;
    .end local v1    # "$i$f$checkIfWasSettled":I
    :goto_1
    return-void
.end method

.method public resolve(Ljava/lang/String;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/String;

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    move-object v0, p0

    .local v0, "this_$iv":Lexpo/modules/kotlin/jni/PromiseImpl;
    const/4 v1, 0x0

    .line 193
    .local v1, "$i$f$checkIfWasSettled":I
    iget-boolean v2, v0, Lexpo/modules/kotlin/jni/PromiseImpl;->wasSettled:Z

    if-eqz v2, :cond_3

    .line 194
    new-instance v2, Lexpo/modules/kotlin/exception/PromiseAlreadySettledException;

    iget-object v3, v0, Lexpo/modules/kotlin/jni/PromiseImpl;->fullFunctionName:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string v3, "unknown"

    :cond_0
    invoke-direct {v2, v3}, Lexpo/modules/kotlin/exception/PromiseAlreadySettledException;-><init>(Ljava/lang/String;)V

    .line 195
    .local v2, "exception$iv":Lexpo/modules/kotlin/exception/PromiseAlreadySettledException;
    iget-object v3, v0, Lexpo/modules/kotlin/jni/PromiseImpl;->appContextHolder:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lexpo/modules/kotlin/AppContext;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lexpo/modules/kotlin/AppContext;->getErrorManager()Lexpo/modules/kotlin/defaultmodules/ErrorManagerModule;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 198
    .local v3, "errorManager$iv":Lexpo/modules/kotlin/defaultmodules/ErrorManagerModule;
    :goto_0
    sget-boolean v4, Lexpo/modules/BuildConfig;->DEBUG:Z

    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    .line 199
    move-object v4, v2

    check-cast v4, Lexpo/modules/kotlin/exception/CodedException;

    invoke-virtual {v3, v4}, Lexpo/modules/kotlin/defaultmodules/ErrorManagerModule;->reportExceptionToLogBox(Lexpo/modules/kotlin/exception/CodedException;)V

    .line 200
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v4

    const-string v5, "Trying to resolve promise that was already settled"

    move-object v6, v2

    check-cast v6, Ljava/lang/Throwable;

    invoke-virtual {v4, v5, v6}, Lexpo/modules/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 201
    goto :goto_1

    .line 204
    :cond_2
    throw v2

    .line 207
    .end local v2    # "exception$iv":Lexpo/modules/kotlin/exception/PromiseAlreadySettledException;
    .end local v3    # "errorManager$iv":Lexpo/modules/kotlin/defaultmodules/ErrorManagerModule;
    :cond_3
    const/4 v2, 0x0

    .line 45
    .local v2, "$i$a$-checkIfWasSettled-PromiseImpl$resolve$7":I
    iget-object v3, p0, Lexpo/modules/kotlin/jni/PromiseImpl;->callback:Lexpo/modules/kotlin/jni/JavaCallback;

    invoke-virtual {v3, p1}, Lexpo/modules/kotlin/jni/JavaCallback;->invoke(Ljava/lang/String;)V

    .line 46
    nop

    .line 207
    .end local v2    # "$i$a$-checkIfWasSettled-PromiseImpl$resolve$7":I
    nop

    .line 208
    const/4 v2, 0x1

    iput-boolean v2, v0, Lexpo/modules/kotlin/jni/PromiseImpl;->wasSettled:Z

    .line 209
    nop

    .line 46
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/jni/PromiseImpl;
    .end local v1    # "$i$f$checkIfWasSettled":I
    :goto_1
    return-void
.end method

.method public resolve(Ljava/util/Collection;)V
    .locals 1
    .param p1, "result"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lexpo/modules/kotlin/jni/PromiseImpl;->callback:Lexpo/modules/kotlin/jni/JavaCallback;

    invoke-virtual {v0, p1}, Lexpo/modules/kotlin/jni/JavaCallback;->invoke(Ljava/util/Collection;)V

    .line 50
    return-void
.end method

.method public resolve(Ljava/util/Map;)V
    .locals 1
    .param p1, "result"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lexpo/modules/kotlin/jni/PromiseImpl;->callback:Lexpo/modules/kotlin/jni/JavaCallback;

    invoke-virtual {v0, p1}, Lexpo/modules/kotlin/jni/JavaCallback;->invoke(Ljava/util/Map;)V

    .line 54
    return-void
.end method

.method public resolve(Z)V
    .locals 7
    .param p1, "result"    # Z

    .line 32
    move-object v0, p0

    .local v0, "this_$iv":Lexpo/modules/kotlin/jni/PromiseImpl;
    const/4 v1, 0x0

    .line 142
    .local v1, "$i$f$checkIfWasSettled":I
    iget-boolean v2, v0, Lexpo/modules/kotlin/jni/PromiseImpl;->wasSettled:Z

    if-eqz v2, :cond_3

    .line 143
    new-instance v2, Lexpo/modules/kotlin/exception/PromiseAlreadySettledException;

    iget-object v3, v0, Lexpo/modules/kotlin/jni/PromiseImpl;->fullFunctionName:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string v3, "unknown"

    :cond_0
    invoke-direct {v2, v3}, Lexpo/modules/kotlin/exception/PromiseAlreadySettledException;-><init>(Ljava/lang/String;)V

    .line 144
    .local v2, "exception$iv":Lexpo/modules/kotlin/exception/PromiseAlreadySettledException;
    iget-object v3, v0, Lexpo/modules/kotlin/jni/PromiseImpl;->appContextHolder:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lexpo/modules/kotlin/AppContext;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lexpo/modules/kotlin/AppContext;->getErrorManager()Lexpo/modules/kotlin/defaultmodules/ErrorManagerModule;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 147
    .local v3, "errorManager$iv":Lexpo/modules/kotlin/defaultmodules/ErrorManagerModule;
    :goto_0
    sget-boolean v4, Lexpo/modules/BuildConfig;->DEBUG:Z

    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    .line 148
    move-object v4, v2

    check-cast v4, Lexpo/modules/kotlin/exception/CodedException;

    invoke-virtual {v3, v4}, Lexpo/modules/kotlin/defaultmodules/ErrorManagerModule;->reportExceptionToLogBox(Lexpo/modules/kotlin/exception/CodedException;)V

    .line 149
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v4

    const-string v5, "Trying to resolve promise that was already settled"

    move-object v6, v2

    check-cast v6, Ljava/lang/Throwable;

    invoke-virtual {v4, v5, v6}, Lexpo/modules/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    goto :goto_1

    .line 153
    :cond_2
    throw v2

    .line 156
    .end local v2    # "exception$iv":Lexpo/modules/kotlin/exception/PromiseAlreadySettledException;
    .end local v3    # "errorManager$iv":Lexpo/modules/kotlin/defaultmodules/ErrorManagerModule;
    :cond_3
    const/4 v2, 0x0

    .line 33
    .local v2, "$i$a$-checkIfWasSettled-PromiseImpl$resolve$4":I
    iget-object v3, p0, Lexpo/modules/kotlin/jni/PromiseImpl;->callback:Lexpo/modules/kotlin/jni/JavaCallback;

    invoke-virtual {v3, p1}, Lexpo/modules/kotlin/jni/JavaCallback;->invoke(Z)V

    .line 34
    nop

    .line 156
    .end local v2    # "$i$a$-checkIfWasSettled-PromiseImpl$resolve$4":I
    nop

    .line 157
    const/4 v2, 0x1

    iput-boolean v2, v0, Lexpo/modules/kotlin/jni/PromiseImpl;->wasSettled:Z

    .line 158
    nop

    .line 34
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/jni/PromiseImpl;
    .end local v1    # "$i$f$checkIfWasSettled":I
    :goto_1
    return-void
.end method
