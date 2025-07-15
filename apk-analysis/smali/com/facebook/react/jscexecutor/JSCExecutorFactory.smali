.class public final Lcom/facebook/react/jscexecutor/JSCExecutorFactory;
.super Ljava/lang/Object;
.source "JSCExecutorFactory.kt"

# interfaces
.implements Lcom/facebook/react/bridge/JavaScriptExecutorFactory;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0003H\u0016J\u0008\u0010\u000c\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/facebook/react/jscexecutor/JSCExecutorFactory;",
        "Lcom/facebook/react/bridge/JavaScriptExecutorFactory;",
        "appName",
        "",
        "deviceName",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "create",
        "Lcom/facebook/react/bridge/JavaScriptExecutor;",
        "startSamplingProfiler",
        "",
        "stopSamplingProfiler",
        "filename",
        "toString",
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


# instance fields
.field private final appName:Ljava/lang/String;

.field private final deviceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "deviceName"    # Ljava/lang/String;

    const-string v0, "appName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/react/jscexecutor/JSCExecutorFactory;->appName:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/react/jscexecutor/JSCExecutorFactory;->deviceName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public create()Lcom/facebook/react/bridge/JavaScriptExecutor;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    move-object v1, v0

    .local v1, "$this$create_u24lambda_u240":Lcom/facebook/react/bridge/WritableNativeMap;
    const/4 v2, 0x0

    .line 21
    .local v2, "$i$a$-apply-JSCExecutorFactory$create$jscConfig$1":I
    const-string v3, "OwnerIdentity"

    const-string v4, "ReactNative"

    invoke-virtual {v1, v3, v4}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const-string v3, "AppIdentity"

    iget-object v4, p0, Lcom/facebook/react/jscexecutor/JSCExecutorFactory;->appName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string v3, "DeviceIdentity"

    iget-object v4, p0, Lcom/facebook/react/jscexecutor/JSCExecutorFactory;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    nop

    .line 20
    .end local v1    # "$this$create_u24lambda_u240":Lcom/facebook/react/bridge/WritableNativeMap;
    .end local v2    # "$i$a$-apply-JSCExecutorFactory$create$jscConfig$1":I
    nop

    .line 19
    nop

    .line 25
    .local v0, "jscConfig":Lcom/facebook/react/bridge/WritableNativeMap;
    new-instance v1, Lcom/facebook/react/jscexecutor/JSCExecutor;

    move-object v2, v0

    check-cast v2, Lcom/facebook/react/bridge/ReadableNativeMap;

    invoke-direct {v1, v2}, Lcom/facebook/react/jscexecutor/JSCExecutor;-><init>(Lcom/facebook/react/bridge/ReadableNativeMap;)V

    check-cast v1, Lcom/facebook/react/bridge/JavaScriptExecutor;

    return-object v1
.end method

.method public startSamplingProfiler()V
    .locals 3

    .line 29
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting sampling profiler not supported on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopSamplingProfiler(Ljava/lang/String;)V
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;

    const-string v0, "filename"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping sampling profiler not supported on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 36
    const-string v0, "JSIExecutor+JSCRuntime"

    return-object v0
.end method
