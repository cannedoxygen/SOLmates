.class public Lcom/facebook/react/modules/network/ResponseUtil;
.super Ljava/lang/Object;
.source "ResponseUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onDataReceived(Lcom/facebook/react/bridge/ReactApplicationContext;ILcom/facebook/react/bridge/WritableMap;)V
    .locals 2
    .param p0, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .param p1, "requestId"    # I
    .param p2, "data"    # Lcom/facebook/react/bridge/WritableMap;

    .line 72
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 73
    .local v0, "args":Lcom/facebook/react/bridge/WritableArray;
    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    .line 74
    invoke-interface {v0, p2}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 76
    if-eqz p0, :cond_0

    .line 77
    const-string v1, "didReceiveNetworkData"

    invoke-virtual {p0, v1, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->emitDeviceEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    :cond_0
    return-void
.end method

.method public static onDataReceived(Lcom/facebook/react/bridge/ReactApplicationContext;ILjava/lang/String;)V
    .locals 2
    .param p0, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .param p1, "requestId"    # I
    .param p2, "data"    # Ljava/lang/String;

    .line 61
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 62
    .local v0, "args":Lcom/facebook/react/bridge/WritableArray;
    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    .line 63
    invoke-interface {v0, p2}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    .line 65
    if-eqz p0, :cond_0

    .line 66
    const-string v1, "didReceiveNetworkData"

    invoke-virtual {p0, v1, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->emitDeviceEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    :cond_0
    return-void
.end method

.method public static onDataReceivedProgress(Lcom/facebook/react/bridge/ReactApplicationContext;IJJ)V
    .locals 2
    .param p0, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .param p1, "requestId"    # I
    .param p2, "progress"    # J
    .param p4, "total"    # J

    .line 49
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 50
    .local v0, "args":Lcom/facebook/react/bridge/WritableArray;
    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    .line 51
    long-to-int v1, p2

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    .line 52
    long-to-int v1, p4

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    .line 54
    if-eqz p0, :cond_0

    .line 55
    const-string v1, "didReceiveNetworkDataProgress"

    invoke-virtual {p0, v1, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->emitDeviceEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    :cond_0
    return-void
.end method

.method public static onDataSend(Lcom/facebook/react/bridge/ReactApplicationContext;IJJ)V
    .locals 2
    .param p0, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .param p1, "requestId"    # I
    .param p2, "progress"    # J
    .param p4, "total"    # J

    .line 21
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 22
    .local v0, "args":Lcom/facebook/react/bridge/WritableArray;
    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    .line 23
    long-to-int v1, p2

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    .line 24
    long-to-int v1, p4

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    .line 25
    if-eqz p0, :cond_0

    .line 26
    const-string v1, "didSendNetworkData"

    invoke-virtual {p0, v1, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->emitDeviceEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    :cond_0
    return-void
.end method

.method public static onIncrementalDataReceived(Lcom/facebook/react/bridge/ReactApplicationContext;ILjava/lang/String;JJ)V
    .locals 2
    .param p0, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .param p1, "requestId"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "progress"    # J
    .param p5, "total"    # J

    .line 36
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 37
    .local v0, "args":Lcom/facebook/react/bridge/WritableArray;
    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    .line 38
    invoke-interface {v0, p2}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    .line 39
    long-to-int v1, p3

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    .line 40
    long-to-int v1, p5

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    .line 42
    if-eqz p0, :cond_0

    .line 43
    const-string v1, "didReceiveNetworkIncrementalData"

    invoke-virtual {p0, v1, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->emitDeviceEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    :cond_0
    return-void
.end method

.method public static onRequestError(Lcom/facebook/react/bridge/ReactApplicationContext;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .param p1, "requestId"    # I
    .param p2, "error"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Throwable;

    .line 83
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 84
    .local v0, "args":Lcom/facebook/react/bridge/WritableArray;
    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    .line 85
    invoke-interface {v0, p2}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    .line 87
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/net/SocketTimeoutException;

    if-ne v1, v2, :cond_0

    .line 88
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/WritableArray;->pushBoolean(Z)V

    .line 91
    :cond_0
    if-eqz p0, :cond_1

    .line 92
    const-string v1, "didCompleteNetworkResponse"

    invoke-virtual {p0, v1, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->emitDeviceEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    :cond_1
    return-void
.end method

.method public static onRequestSuccess(Lcom/facebook/react/bridge/ReactApplicationContext;I)V
    .locals 2
    .param p0, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .param p1, "requestId"    # I

    .line 98
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 99
    .local v0, "args":Lcom/facebook/react/bridge/WritableArray;
    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    .line 100
    invoke-interface {v0}, Lcom/facebook/react/bridge/WritableArray;->pushNull()V

    .line 102
    if-eqz p0, :cond_0

    .line 103
    const-string v1, "didCompleteNetworkResponse"

    invoke-virtual {p0, v1, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->emitDeviceEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    :cond_0
    return-void
.end method

.method public static onResponseReceived(Lcom/facebook/react/bridge/ReactApplicationContext;IILcom/facebook/react/bridge/WritableMap;Ljava/lang/String;)V
    .locals 2
    .param p0, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .param p1, "requestId"    # I
    .param p2, "statusCode"    # I
    .param p3, "headers"    # Lcom/facebook/react/bridge/WritableMap;
    .param p4, "url"    # Ljava/lang/String;

    .line 113
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 114
    .local v0, "args":Lcom/facebook/react/bridge/WritableArray;
    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    .line 115
    invoke-interface {v0, p2}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    .line 116
    invoke-interface {v0, p3}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 117
    invoke-interface {v0, p4}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    .line 119
    if-eqz p0, :cond_0

    .line 120
    const-string v1, "didReceiveNetworkResponse"

    invoke-virtual {p0, v1, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->emitDeviceEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    :cond_0
    return-void
.end method
