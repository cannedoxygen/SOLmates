.class public Lcom/facebook/hermes/reactexecutor/HermesExecutor;
.super Lcom/facebook/react/bridge/JavaScriptExecutor;
.source "HermesExecutor.java"


# static fields
.field private static mode_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 20
    invoke-static {}, Lcom/facebook/hermes/reactexecutor/HermesExecutor;->loadLibrary()V

    .line 21
    return-void
.end method

.method constructor <init>(Lcom/facebook/hermes/reactexecutor/RuntimeConfig;ZLjava/lang/String;)V
    .locals 2
    .param p1, "config"    # Lcom/facebook/hermes/reactexecutor/RuntimeConfig;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "enableDebugger"    # Z
    .param p3, "debuggerName"    # Ljava/lang/String;

    .line 34
    nop

    .line 35
    if-nez p1, :cond_0

    .line 36
    invoke-static {p2, p3}, Lcom/facebook/hermes/reactexecutor/HermesExecutor;->initHybridDefaultConfig(ZLjava/lang/String;)Lcom/facebook/jni/HybridData;

    move-result-object v0

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/hermes/reactexecutor/RuntimeConfig;->getHeapSizeMB()J

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Lcom/facebook/hermes/reactexecutor/HermesExecutor;->initHybrid(ZLjava/lang/String;J)Lcom/facebook/jni/HybridData;

    move-result-object v0

    .line 34
    :goto_0
    invoke-direct {p0, v0}, Lcom/facebook/react/bridge/JavaScriptExecutor;-><init>(Lcom/facebook/jni/HybridData;)V

    .line 38
    return-void
.end method

.method private static native initHybrid(ZLjava/lang/String;J)Lcom/facebook/jni/HybridData;
.end method

.method private static native initHybridDefaultConfig(ZLjava/lang/String;)Lcom/facebook/jni/HybridData;
.end method

.method public static loadLibrary()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;
        }
    .end annotation

    .line 24
    sget-object v0, Lcom/facebook/hermes/reactexecutor/HermesExecutor;->mode_:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 26
    const-string v0, "hermes"

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    .line 27
    const-string v0, "hermes_executor"

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    .line 29
    sget-boolean v0, Lcom/facebook/react/common/build/ReactBuildConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Debug"

    goto :goto_0

    :cond_0
    const-string v0, "Release"

    :goto_0
    sput-object v0, Lcom/facebook/hermes/reactexecutor/HermesExecutor;->mode_:Ljava/lang/String;

    .line 31
    :cond_1
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HermesExecutor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/hermes/reactexecutor/HermesExecutor;->mode_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
