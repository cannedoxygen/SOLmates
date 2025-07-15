.class Lcom/facebook/react/internal/turbomodule/core/TurboModulePerfLogger;
.super Ljava/lang/Object;
.source "TurboModulePerfLogger.java"


# static fields
.field private static sNativeModulePerfLogger:Lcom/facebook/react/reactperflogger/NativeModulePerfLogger;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/react/internal/turbomodule/core/TurboModulePerfLogger;->sNativeModulePerfLogger:Lcom/facebook/react/reactperflogger/NativeModulePerfLogger;

    .line 22
    invoke-static {}, Lcom/facebook/react/internal/turbomodule/core/NativeModuleSoLoader;->maybeLoadSoLibrary()V

    .line 23
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableLogging(Lcom/facebook/react/reactperflogger/NativeModulePerfLogger;)V
    .locals 0
    .param p0, "perfLogger"    # Lcom/facebook/react/reactperflogger/NativeModulePerfLogger;

    .line 88
    if-eqz p0, :cond_0

    .line 89
    sput-object p0, Lcom/facebook/react/internal/turbomodule/core/TurboModulePerfLogger;->sNativeModulePerfLogger:Lcom/facebook/react/reactperflogger/NativeModulePerfLogger;

    .line 90
    invoke-static {p0}, Lcom/facebook/react/internal/turbomodule/core/TurboModulePerfLogger;->jniEnableCppLogging(Lcom/facebook/react/reactperflogger/NativeModulePerfLogger;)V

    .line 92
    :cond_0
    return-void
.end method

.method private static native jniEnableCppLogging(Lcom/facebook/react/reactperflogger/NativeModulePerfLogger;)V
.end method

.method public static moduleCreateCacheHit(Ljava/lang/String;I)V
    .locals 1
    .param p0, "moduleName"    # Ljava/lang/String;
    .param p1, "id"    # I

    .line 44
    sget-object v0, Lcom/facebook/react/internal/turbomodule/core/TurboModulePerfLogger;->sNativeModulePerfLogger:Lcom/facebook/react/reactperflogger/NativeModulePerfLogger;

    if-eqz v0, :cond_0

    .line 45
    sget-object v0, Lcom/facebook/react/internal/turbomodule/core/TurboModulePerfLogger;->sNativeModulePerfLogger:Lcom/facebook/react/reactperflogger/NativeModulePerfLogger;

    invoke-virtual {v0, p0, p1}, Lcom/facebook/react/reactperflogger/NativeModulePerfLogger;->moduleCreateCacheHit(Ljava/lang/String;I)V

    .line 47
    :cond_0
    return-void
.end method

.method public static moduleCreateConstructEnd(Ljava/lang/String;I)V
    .locals 1
    .param p0, "moduleName"    # Ljava/lang/String;
    .param p1, "id"    # I

    .line 56
    sget-object v0, Lcom/facebook/react/internal/turbomodule/core/TurboModulePerfLogger;->sNativeModulePerfLogger:Lcom/facebook/react/reactperflogger/NativeModulePerfLogger;

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Lcom/facebook/react/internal/turbomodule/core/TurboModulePerfLogger;->sNativeModulePerfLogger:Lcom/facebook/react/reactperflogger/NativeModulePerfLogger;

    invoke-virtual {v0, p0, p1}, Lcom/facebook/react/reactperflogger/NativeModulePerfLogger;->moduleCreateConstructEnd(Ljava/lang/String;I)V

    .line 59
    :cond_0
    return-void
.end method

.method public static moduleCreateConstructStart(Ljava/lang/String;I)V
    .locals 1
    .param p0, "moduleName"    # Ljava/lang/String;
    .param p1, "id"    # I

    .line 50
    sget-object v0, Lcom/facebook/react/internal/turbomodule/core/TurboModulePerfLogger;->sNativeModulePerfLogger:Lcom/facebook/react/reactperflogger/NativeModulePerfLogger;

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Lcom/facebook/react/internal/turbomodule/core/TurboModulePerfLogger;->sNativeModulePerfLogger:Lcom/facebook/react/reactperflogger/NativeModulePerfLogger;

    invoke-virtual {v0, p0, p1}, Lcom/facebook/react/reactperflogger/NativeModulePerfLogger;->moduleCreateConstructStart(Ljava/lang/String;I)V

    .line 53
    :cond_0
    return-void
.end method

.method public static moduleCreateEnd(Ljava/lang/String;I)V
    .locals 1
    .param p0, "moduleName"    # Ljava/lang/String;
    .param p1, "id"    # I

    .line 74
    sget-object v0, Lcom/facebook/react/internal/turbomodule/core/TurboModulePerfLogger;->sNativeModulePerfLogger:Lcom/facebook/react/reactperflogger/NativeModulePerfLogger;

    if-eqz v0, :cond_0

    .line 75
    sget-object v0, Lcom/facebook/react/internal/turbomodule/core/TurboModulePerfLogger;->sNativeModulePerfLogger:Lcom/facebook/react/reactperflogger/NativeModulePerfLogger;

    invoke-virtual {v0, p0, p1}, Lcom/facebook/react/reactperflogger/NativeModulePerfLogger;->moduleCreateEnd(Ljava/lang/String;I)V

    .line 77
    :cond_0
    return-void
.end method

.method public static moduleCreateFail(Ljava/lang/String;I)V
    .locals 1
    .param p0, "moduleName"    # Ljava/lang/String;
    .param p1, "id"    # I

    .line 80
    sget-object v0, Lcom/facebook/react/internal/turbomodule/core/TurboModulePerfLogger;->sNativeModulePerfLogger:Lcom/facebook/react/reactperflogger/NativeModulePerfLogger;

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lcom/facebook/react/internal/turbomodule/core/TurboModulePerfLogger;->sNativeModulePerfLogger:Lcom/facebook/react/reactperflogger/NativeModulePerfLogger;

    invoke-virtual {v0, p0, p1}, Lcom/facebook/react/reactperflogger/NativeModulePerfLogger;->moduleCreateFail(Ljava/lang/String;I)V

    .line 83
    :cond_0
    return-void
.end method

.method public static moduleCreateSetUpEnd(Ljava/lang/String;I)V
    .locals 1
    .param p0, "moduleName"    # Ljava/lang/String;
    .param p1, "id"    # I

    .line 68
    sget-object v0, Lcom/facebook/react/internal/turbomodule/core/TurboModulePerfLogger;->sNativeModulePerfLogger:Lcom/facebook/react/reactperflogger/NativeModulePerfLogger;

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Lcom/facebook/react/internal/turbomodule/core/TurboModulePerfLogger;->sNativeModulePerfLogger:Lcom/facebook/react/reactperflogger/NativeModulePerfLogger;

    invoke-virtual {v0, p0, p1}, Lcom/facebook/react/reactperflogger/NativeModulePerfLogger;->moduleCreateSetUpEnd(Ljava/lang/String;I)V

    .line 71
    :cond_0
    return-void
.end method

.method public static moduleCreateSetUpStart(Ljava/lang/String;I)V
    .locals 1
    .param p0, "moduleName"    # Ljava/lang/String;
    .param p1, "id"    # I

    .line 62
    sget-object v0, Lcom/facebook/react/internal/turbomodule/core/TurboModulePerfLogger;->sNativeModulePerfLogger:Lcom/facebook/react/reactperflogger/NativeModulePerfLogger;

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lcom/facebook/react/internal/turbomodule/core/TurboModulePerfLogger;->sNativeModulePerfLogger:Lcom/facebook/react/reactperflogger/NativeModulePerfLogger;

    invoke-virtual {v0, p0, p1}, Lcom/facebook/react/reactperflogger/NativeModulePerfLogger;->moduleCreateSetUpStart(Ljava/lang/String;I)V

    .line 65
    :cond_0
    return-void
.end method

.method public static moduleCreateStart(Ljava/lang/String;I)V
    .locals 1
    .param p0, "moduleName"    # Ljava/lang/String;
    .param p1, "id"    # I

    .line 38
    sget-object v0, Lcom/facebook/react/internal/turbomodule/core/TurboModulePerfLogger;->sNativeModulePerfLogger:Lcom/facebook/react/reactperflogger/NativeModulePerfLogger;

    if-eqz v0, :cond_0

    .line 39
    sget-object v0, Lcom/facebook/react/internal/turbomodule/core/TurboModulePerfLogger;->sNativeModulePerfLogger:Lcom/facebook/react/reactperflogger/NativeModulePerfLogger;

    invoke-virtual {v0, p0, p1}, Lcom/facebook/react/reactperflogger/NativeModulePerfLogger;->moduleCreateStart(Ljava/lang/String;I)V

    .line 41
    :cond_0
    return-void
.end method

.method public static moduleDataCreateEnd(Ljava/lang/String;I)V
    .locals 1
    .param p0, "moduleName"    # Ljava/lang/String;
    .param p1, "id"    # I

    .line 32
    sget-object v0, Lcom/facebook/react/internal/turbomodule/core/TurboModulePerfLogger;->sNativeModulePerfLogger:Lcom/facebook/react/reactperflogger/NativeModulePerfLogger;

    if-eqz v0, :cond_0

    .line 33
    sget-object v0, Lcom/facebook/react/internal/turbomodule/core/TurboModulePerfLogger;->sNativeModulePerfLogger:Lcom/facebook/react/reactperflogger/NativeModulePerfLogger;

    invoke-virtual {v0, p0, p1}, Lcom/facebook/react/reactperflogger/NativeModulePerfLogger;->moduleDataCreateEnd(Ljava/lang/String;I)V

    .line 35
    :cond_0
    return-void
.end method

.method public static moduleDataCreateStart(Ljava/lang/String;I)V
    .locals 1
    .param p0, "moduleName"    # Ljava/lang/String;
    .param p1, "id"    # I

    .line 26
    sget-object v0, Lcom/facebook/react/internal/turbomodule/core/TurboModulePerfLogger;->sNativeModulePerfLogger:Lcom/facebook/react/reactperflogger/NativeModulePerfLogger;

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Lcom/facebook/react/internal/turbomodule/core/TurboModulePerfLogger;->sNativeModulePerfLogger:Lcom/facebook/react/reactperflogger/NativeModulePerfLogger;

    invoke-virtual {v0, p0, p1}, Lcom/facebook/react/reactperflogger/NativeModulePerfLogger;->moduleDataCreateStart(Ljava/lang/String;I)V

    .line 29
    :cond_0
    return-void
.end method
