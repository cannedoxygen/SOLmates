.class public final Lcom/facebook/react/util/RNLog;
.super Ljava/lang/Object;
.source "RNLog.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0007J\u001a\u0010\u000e\u001a\u00020\u000b2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u000c\u001a\u00020\rH\u0007J\u0010\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0007J\u0010\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0007J\u0010\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0004H\u0002J$\u0010\u0014\u001a\u00020\u000b2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0013\u001a\u00020\u0004H\u0002J\u0010\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0007J\u001a\u0010\u0016\u001a\u00020\u000b2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u000c\u001a\u00020\rH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/facebook/react/util/RNLog;",
        "",
        "()V",
        "ADVICE",
        "",
        "ERROR",
        "LOG",
        "MINIMUM_LEVEL_FOR_UI",
        "TRACE",
        "WARN",
        "a",
        "",
        "message",
        "",
        "e",
        "context",
        "Lcom/facebook/react/bridge/ReactContext;",
        "l",
        "levelToString",
        "level",
        "logInternal",
        "t",
        "w",
        "ReactAndroid_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final ADVICE:I = 0x4

.field public static final ERROR:I = 0x6

.field public static final INSTANCE:Lcom/facebook/react/util/RNLog;

.field public static final LOG:I = 0x2

.field public static final MINIMUM_LEVEL_FOR_UI:I = 0x5

.field public static final TRACE:I = 0x3

.field public static final WARN:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/react/util/RNLog;

    invoke-direct {v0}, Lcom/facebook/react/util/RNLog;-><init>()V

    sput-object v0, Lcom/facebook/react/util/RNLog;->INSTANCE:Lcom/facebook/react/util/RNLog;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "message"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(ADVICE)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReactNative"

    invoke-static {v1, v0}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public static final e(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Lcom/facebook/react/bridge/ReactContext;
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    sget-object v0, Lcom/facebook/react/util/RNLog;->INSTANCE:Lcom/facebook/react/util/RNLog;

    const/4 v1, 0x6

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/react/util/RNLog;->logInternal(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;I)V

    .line 77
    const-string v0, "ReactNative"

    invoke-static {v0, p1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public static final e(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "message"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    const-string v0, "ReactNative"

    invoke-static {v0, p0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public static final l(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "message"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    const-string v0, "ReactNative"

    invoke-static {v0, p0}, Lcom/facebook/common/logging/FLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method private final levelToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "level"    # I

    .line 100
    packed-switch p1, :pswitch_data_0

    .line 106
    const-string/jumbo v0, "none"

    goto :goto_0

    .line 105
    :pswitch_0
    const-string v0, "error"

    goto :goto_0

    .line 104
    :pswitch_1
    const-string/jumbo v0, "warn"

    goto :goto_0

    .line 102
    :pswitch_2
    const-string v0, "log"

    .line 107
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final logInternal(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;I)V
    .locals 3
    .param p1, "context"    # Lcom/facebook/react/bridge/ReactContext;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "level"    # I

    .line 92
    const/4 v0, 0x5

    if-lt p3, v0, :cond_1

    .line 93
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactContext;->hasActiveReactInstance()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 94
    const-class v0, Lcom/facebook/react/util/RCTLog;

    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/util/RCTLog;

    invoke-direct {p0, p3}, Lcom/facebook/react/util/RNLog;->levelToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/facebook/react/util/RCTLog;->logIfNoNativeHook(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_1
    return-void
.end method

.method public static final t(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "message"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    const-string v0, "ReactNative"

    invoke-static {v0, p0}, Lcom/facebook/common/logging/FLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static final w(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Lcom/facebook/react/bridge/ReactContext;
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    sget-object v0, Lcom/facebook/react/util/RNLog;->INSTANCE:Lcom/facebook/react/util/RNLog;

    const/4 v1, 0x5

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/react/util/RNLog;->logInternal(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;I)V

    .line 65
    const-string v0, "ReactNative"

    invoke-static {v0, p1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method
