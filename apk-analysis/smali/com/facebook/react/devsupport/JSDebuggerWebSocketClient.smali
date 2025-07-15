.class public Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient;
.super Lokhttp3/WebSocketListener;
.source "JSDebuggerWebSocketClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient$JSDebuggerCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "JSDebuggerWebSocketClient"


# instance fields
.field private final mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient$JSDebuggerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectCallback:Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient$JSDebuggerCallback;

.field private mHttpClient:Lokhttp3/OkHttpClient;

.field private final mRequestID:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWebSocket:Lokhttp3/WebSocket;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lokhttp3/WebSocketListener;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient;->mRequestID:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method abort(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation runtime Lcom/facebook/react/common/annotations/VisibleForTesting;
    .end annotation

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error occurred, shutting down websocket connection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JSDebuggerWebSocketClient"

    invoke-static {v1, v0, p2}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 232
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient;->closeQuietly()V

    .line 235
    iget-object v0, p0, Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient;->mConnectCallback:Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient$JSDebuggerCallback;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient;->mConnectCallback:Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient$JSDebuggerCallback;

    invoke-interface {v0, p2}, Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient$JSDebuggerCallback;->onFailure(Ljava/lang/Throwable;)V

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient;->mConnectCallback:Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient$JSDebuggerCallback;

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient$JSDebuggerCallback;

    .line 240
    .local v1, "callback":Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient$JSDebuggerCallback;
    invoke-interface {v1, p2}, Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient$JSDebuggerCallback;->onFailure(Ljava/lang/Throwable;)V

    .line 241
    .end local v1    # "callback":Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient$JSDebuggerCallback;
    goto :goto_0

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 243
    return-void
.end method

.method public closeQuietly()V
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient;->mWebSocket:Lokhttp3/WebSocket;

    if-eqz v0, :cond_0

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient;->mWebSocket:Lokhttp3/WebSocket;

    const-string v1, "End of session"

    const/16 v2, 0x3e8

    invoke-interface {v0, v2, v1}, Lokhttp3/WebSocket;->close(ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 139
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient;->mWebSocket:Lokhttp3/WebSocket;

    .line 141
    :cond_0
    return-void
.end method

.method public connect(Ljava/lang/String;Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient$JSDebuggerCallback;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient$JSDebuggerCallback;

    .line 50
    iget-object v0, p0, Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient;->mHttpClient:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_0

    .line 53
    iput-object p2, p0, Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient;->mConnectCallback:Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient$JSDebuggerCallback;

    .line 54
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 56
    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 57
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 58
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient;->mHttpClient:Lokhttp3/OkHttpClient;

    .line 61
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 62
    .local v0, "request":Lokhttp3/Request;
    iget-object v1, p0, Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient;->mHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0, p0}, Lokhttp3/OkHttpClient;->newWebSocket(Lokhttp3/Request;Lokhttp3/WebSocketListener;)Lokhttp3/WebSocket;

    .line 63
    return-void

    .line 51
    .end local v0    # "request":Lokhttp3/Request;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JSDebuggerWebSocketClient is already initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executeJSCall(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient$JSDebuggerCallback;)V
    .locals 6
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "jsonArgsArray"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient$JSDebuggerCallback;

    .line 114
    iget-object v0, p0, Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient;->mRequestID:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 115
    .local v0, "requestID":I
    iget-object v1, p0, Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 119
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v2, Landroid/util/JsonWriter;

    invoke-direct {v2, v1}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 121
    .local v2, "js":Landroid/util/JsonWriter;
    invoke-virtual {v2}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    move-result-object v3

    const-string v4, "method"

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 124
    const-string v3, ",\"arguments\":"

    invoke-virtual {v1, v3}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 125
    invoke-virtual {v2}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/JsonWriter;->close()V

    .line 126
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient;->sendMessage(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v1    # "sw":Ljava/io/StringWriter;
    .end local v2    # "js":Landroid/util/JsonWriter;
    goto :goto_0

    .line 127
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient;->triggerRequestFailure(ILjava/lang/Throwable;)V

    .line 130
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public loadBundle(Ljava/lang/String;Ljava/util/HashMap;Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient$JSDebuggerCallback;)V
    .locals 7
    .param p1, "sourceURL"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient$JSDebuggerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient$JSDebuggerCallback;",
            ")V"
        }
    .end annotation

    .line 87
    .local p2, "injectedObjects":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient;->mRequestID:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 88
    .local v0, "requestID":I
    iget-object v1, p0, Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 92
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v2, Landroid/util/JsonWriter;

    invoke-direct {v2, v1}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 94
    invoke-virtual {v2}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    move-result-object v2

    const-string v3, "id"

    .line 95
    invoke-virtual {v2, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    int-to-long v3, v0

    .line 96
    invoke-virtual {v2, v3, v4}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    move-result-object v2

    const-string v3, "method"

    .line 97
    invoke-virtual {v2, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    const-string v3, "executeApplicationScript"

    .line 98
    invoke-virtual {v2, v3}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    const-string/jumbo v3, "url"

    .line 99
    invoke-virtual {v2, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    .line 100
    invoke-virtual {v2, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    const-string v3, "inject"

    .line 101
    invoke-virtual {v2, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    .line 102
    invoke-virtual {v2}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    move-result-object v2

    .line 103
    .local v2, "js":Landroid/util/JsonWriter;
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 104
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v2, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 105
    nop

    .end local v4    # "key":Ljava/lang/String;
    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {v2}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/JsonWriter;->close()V

    .line 107
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient;->sendMessage(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .end local v1    # "sw":Ljava/io/StringWriter;
    .end local v2    # "js":Landroid/util/JsonWriter;
    goto :goto_1

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient;->triggerRequestFailure(ILjava/lang/Throwable;)V

    .line 111
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method

.method public onClosed(Lokhttp3/WebSocket;ILjava/lang/String;)V
    .locals 1
    .param p1, "webSocket"    # Lokhttp3/WebSocket;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient;->mWebSocket:Lokhttp3/WebSocket;

    .line 227
    return-void
.end method

.method public onFailure(Lokhttp3/WebSocket;Ljava/lang/Throwable;Lokhttp3/Response;)V
    .locals 1
    .param p1, "webSocket"    # Lokhttp3/WebSocket;
    .param p2, "t"    # Ljava/lang/Throwable;
    .param p3, "response"    # Lokhttp3/Response;

    .line 214
    const-string v0, "Websocket exception"

    invoke-virtual {p0, v0, p2}, Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient;->abort(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 215
    return-void
.end method

.method public onMessage(Lokhttp3/WebSocket;Ljava/lang/String;)V
    .locals 6
    .param p1, "webSocket"    # Lokhttp3/WebSocket;
    .param p2, "text"    # Ljava/lang/String;

    .line 177
    const/4 v0, 0x0

    .line 180
    .local v0, "replyID":Ljava/lang/Integer;
    :try_start_0
    new-instance v1, Landroid/util/JsonReader;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 181
    .local v1, "reader":Landroid/util/JsonReader;
    const/4 v2, 0x0

    .line 182
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/util/JsonReader;->beginObject()V

    .line 183
    :goto_0
    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 184
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 186
    .local v3, "field":Ljava/lang/String;
    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    invoke-virtual {v1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v5

    if-ne v4, v5, :cond_0

    .line 187
    invoke-virtual {v1}, Landroid/util/JsonReader;->skipValue()V

    .line 188
    goto :goto_0

    .line 191
    :cond_0
    const-string/jumbo v4, "replyID"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 192
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v0, v4

    goto :goto_1

    .line 193
    :cond_1
    const-string/jumbo v4, "result"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 194
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    goto :goto_1

    .line 195
    :cond_2
    const-string v4, "error"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 196
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    .line 197
    .local v4, "error":Ljava/lang/String;
    new-instance v5, Lcom/facebook/react/common/JavascriptException;

    invoke-direct {v5, v4}, Lcom/facebook/react/common/JavascriptException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5}, Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient;->abort(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 199
    .end local v3    # "field":Ljava/lang/String;
    .end local v4    # "error":Ljava/lang/String;
    :cond_3
    :goto_1
    goto :goto_0

    .line 200
    :cond_4
    if-eqz v0, :cond_5

    .line 201
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3, v2}, Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient;->triggerRequestSuccess(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .end local v1    # "reader":Landroid/util/JsonReader;
    .end local v2    # "result":Ljava/lang/String;
    :cond_5
    goto :goto_2

    .line 203
    :catch_0
    move-exception v1

    .line 204
    .local v1, "e":Ljava/io/IOException;
    if-eqz v0, :cond_6

    .line 205
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2, v1}, Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient;->triggerRequestFailure(ILjava/lang/Throwable;)V

    goto :goto_2

    .line 207
    :cond_6
    const-string v2, "Parsing response message from websocket failed"

    invoke-virtual {p0, v2, v1}, Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient;->abort(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 210
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    return-void
.end method

.method public onOpen(Lokhttp3/WebSocket;Lokhttp3/Response;)V
    .locals 2
    .param p1, "webSocket"    # Lokhttp3/WebSocket;
    .param p2, "response"    # Lokhttp3/Response;

    .line 219
    iput-object p1, p0, Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient;->mWebSocket:Lokhttp3/WebSocket;

    .line 220
    iget-object v0, p0, Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient;->mConnectCallback:Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient$JSDebuggerCallback;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient$JSDebuggerCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient$JSDebuggerCallback;->onSuccess(Ljava/lang/String;)V

    .line 221
    iput-object v1, p0, Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient;->mConnectCallback:Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient$JSDebuggerCallback;

    .line 222
    return-void
.end method

.method public prepareJSRuntime(Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient$JSDebuggerCallback;)V
    .locals 6
    .param p1, "callback"    # Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient$JSDebuggerCallback;

    .line 66
    iget-object v0, p0, Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient;->mRequestID:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 67
    .local v0, "requestID":I
    iget-object v1, p0, Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 71
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v2, Landroid/util/JsonWriter;

    invoke-direct {v2, v1}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 72
    .local v2, "js":Landroid/util/JsonWriter;
    invoke-virtual {v2}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    move-result-object v3

    const-string v4, "id"

    .line 73
    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    int-to-long v4, v0

    .line 74
    invoke-virtual {v3, v4, v5}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    move-result-object v3

    const-string v4, "method"

    .line 75
    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    const-string/jumbo v4, "prepareJSRuntime"

    .line 76
    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    .line 77
    invoke-virtual {v3}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    move-result-object v3

    .line 78
    invoke-virtual {v3}, Landroid/util/JsonWriter;->close()V

    .line 79
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient;->sendMessage(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v1    # "sw":Ljava/io/StringWriter;
    .end local v2    # "js":Landroid/util/JsonWriter;
    goto :goto_0

    .line 80
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient;->triggerRequestFailure(ILjava/lang/Throwable;)V

    .line 83
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method sendMessage(ILjava/lang/String;)V
    .locals 2
    .param p1, "requestID"    # I
    .param p2, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/common/annotations/VisibleForTesting;
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient;->mWebSocket:Lokhttp3/WebSocket;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "WebSocket connection no longer valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient;->triggerRequestFailure(ILjava/lang/Throwable;)V

    .line 148
    return-void

    .line 151
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient;->mWebSocket:Lokhttp3/WebSocket;

    invoke-interface {v0, p2}, Lokhttp3/WebSocket;->send(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, p1, v0}, Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient;->triggerRequestFailure(ILjava/lang/Throwable;)V

    .line 155
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method triggerRequestFailure(ILjava/lang/Throwable;)V
    .locals 3
    .param p1, "requestID"    # I
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation runtime Lcom/facebook/react/common/annotations/VisibleForTesting;
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient$JSDebuggerCallback;

    .line 160
    .local v0, "callback":Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient$JSDebuggerCallback;
    if-eqz v0, :cond_0

    .line 161
    iget-object v1, p0, Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-interface {v0, p2}, Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient$JSDebuggerCallback;->onFailure(Ljava/lang/Throwable;)V

    .line 164
    :cond_0
    return-void
.end method

.method triggerRequestSuccess(ILjava/lang/String;)V
    .locals 3
    .param p1, "requestID"    # I
    .param p2, "response"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/common/annotations/VisibleForTesting;
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient$JSDebuggerCallback;

    .line 169
    .local v0, "callback":Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient$JSDebuggerCallback;
    if-eqz v0, :cond_0

    .line 170
    iget-object v1, p0, Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-interface {v0, p2}, Lcom/facebook/react/devsupport/JSDebuggerWebSocketClient$JSDebuggerCallback;->onSuccess(Ljava/lang/String;)V

    .line 173
    :cond_0
    return-void
.end method
