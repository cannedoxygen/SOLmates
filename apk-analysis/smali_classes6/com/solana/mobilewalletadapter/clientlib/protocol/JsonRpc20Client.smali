.class public Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;
.super Ljava/lang/Object;
.source "JsonRpc20Client.java"

# interfaces
.implements Lcom/solana/mobilewalletadapter/common/protocol/MessageReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$MethodCallResultFuture;,
        Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$PendingRequestTimeoutTask;,
        Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;,
        Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20RemoteException;,
        Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20Exception;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mNextMessageId:I

.field private mOutstandingRequest:Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$MethodCallResultFuture;

.field private mSender:Lcom/solana/mobilewalletadapter/common/protocol/MessageSender;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method static bridge synthetic -$$Nest$fgetmOutstandingRequest(Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;)Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$MethodCallResultFuture;
    .locals 0

    iget-object p0, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;->mOutstandingRequest:Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$MethodCallResultFuture;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mclearOutstandingRequest(Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;)V
    .locals 0

    invoke-direct {p0}, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;->clearOutstandingRequest()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;->mNextMessageId:I

    return-void
.end method

.method private clearOutstandingRequest()V
    .locals 2

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;->mOutstandingRequest:Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$MethodCallResultFuture;

    .line 229
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;->mTimer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;->mTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 231
    iput-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;->mTimer:Ljava/util/Timer;

    .line 233
    :cond_0
    return-void
.end method

.method private static decodeAsUtf8String([B)Ljava/lang/String;
    .locals 3
    .param p0, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 237
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 238
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 239
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 240
    .local v0, "utf8Dec":Ljava/nio/charset/CharsetDecoder;
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 241
    .local v1, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public methodCall(Ljava/lang/String;Ljava/lang/Object;I)Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;
    .locals 7
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/Object;
    .param p3, "timeoutMs"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 49
    const-string v0, "rpc."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 51
    if-eqz p2, :cond_1

    instance-of v0, p2, Lorg/json/JSONObject;

    if-nez v0, :cond_1

    instance-of v0, p2, Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "params must be JSONObject or JSONArray"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    :goto_0
    iget v0, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;->mNextMessageId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;->mNextMessageId:I

    .line 59
    .local v0, "id":I
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 60
    .local v1, "o":Lorg/json/JSONObject;
    const-string v2, "jsonrpc"

    const-string v3, "2.0"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const-string v2, "method"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    const-string v2, "params"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    const-string v2, "id"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    nop

    .line 69
    monitor-enter p0

    .line 70
    :try_start_1
    iget-object v2, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;->mSender:Lcom/solana/mobilewalletadapter/common/protocol/MessageSender;

    if-eqz v2, :cond_5

    .line 72
    iget-object v2, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;->mOutstandingRequest:Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$MethodCallResultFuture;

    if-nez v2, :cond_4

    .line 76
    iget-object v2, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;->mSender:Lcom/solana/mobilewalletadapter/common/protocol/MessageSender;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/solana/mobilewalletadapter/common/protocol/MessageSender;->send([B)V

    .line 78
    new-instance v2, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$MethodCallResultFuture;

    invoke-direct {v2, p0, v0}, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$MethodCallResultFuture;-><init>(Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;I)V

    .line 79
    .local v2, "future":Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$MethodCallResultFuture;
    iput-object v2, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;->mOutstandingRequest:Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$MethodCallResultFuture;

    .line 81
    if-lez p3, :cond_3

    .line 82
    iget-object v3, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;->mTimer:Ljava/util/Timer;

    if-nez v3, :cond_2

    .line 83
    new-instance v3, Ljava/util/Timer;

    const-class v4, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v3, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;->mTimer:Ljava/util/Timer;

    .line 85
    :cond_2
    iget-object v3, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;->mTimer:Ljava/util/Timer;

    new-instance v4, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$PendingRequestTimeoutTask;

    invoke-direct {v4, p0, v2}, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$PendingRequestTimeoutTask;-><init>(Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$MethodCallResultFuture;)V

    int-to-long v5, p3

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 87
    :cond_3
    monitor-exit p0

    .line 89
    return-object v2

    .line 73
    .end local v2    # "future":Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$MethodCallResultFuture;
    :cond_4
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Only a single request may be outstanding"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local v0    # "id":I
    .end local v1    # "o":Lorg/json/JSONObject;
    .end local p1    # "method":Ljava/lang/String;
    .end local p2    # "params":Ljava/lang/Object;
    .end local p3    # "timeoutMs":I
    throw v2

    .line 71
    .restart local v0    # "id":I
    .restart local v1    # "o":Lorg/json/JSONObject;
    .restart local p1    # "method":Ljava/lang/String;
    .restart local p2    # "params":Ljava/lang/Object;
    .restart local p3    # "timeoutMs":I
    :cond_5
    new-instance v2, Ljava/io/IOException;

    const-string v3, "JSON-RPC 2.0 client is disconnected"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "id":I
    .end local v1    # "o":Lorg/json/JSONObject;
    .end local p1    # "method":Ljava/lang/String;
    .end local p2    # "params":Ljava/lang/Object;
    .end local p3    # "timeoutMs":I
    throw v2

    .line 87
    .restart local v0    # "id":I
    .restart local v1    # "o":Lorg/json/JSONObject;
    .restart local p1    # "method":Ljava/lang/String;
    .restart local p2    # "params":Ljava/lang/Object;
    .restart local p3    # "timeoutMs":I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 64
    .end local v1    # "o":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Error preparing JSON-RPC 2.0 message"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 50
    .end local v0    # "id":I
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "reserved method name (starts with \'rpc.\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "method cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notification(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 97
    const-string v0, "rpc."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 99
    if-eqz p2, :cond_1

    instance-of v0, p2, Lorg/json/JSONObject;

    if-nez v0, :cond_1

    instance-of v0, p2, Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "params must be JSONObject or JSONArray"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_1
    :goto_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 107
    .local v0, "o":Lorg/json/JSONObject;
    const-string v1, "jsonrpc"

    const-string v2, "2.0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    const-string v1, "method"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    const-string v1, "params"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    nop

    .line 114
    monitor-enter p0

    .line 115
    :try_start_1
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;->mSender:Lcom/solana/mobilewalletadapter/common/protocol/MessageSender;

    if-eqz v1, :cond_2

    .line 119
    sget-object v1, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending notification \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' with params="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;->mSender:Lcom/solana/mobilewalletadapter/common/protocol/MessageSender;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/solana/mobilewalletadapter/common/protocol/MessageSender;->send([B)V

    .line 121
    monitor-exit p0

    .line 122
    return-void

    .line 116
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "JSON-RPC 2.0 client is disconnected"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "o":Lorg/json/JSONObject;
    .end local p1    # "method":Ljava/lang/String;
    .end local p2    # "params":Ljava/lang/Object;
    throw v1

    .line 121
    .restart local v0    # "o":Lorg/json/JSONObject;
    .restart local p1    # "method":Ljava/lang/String;
    .restart local p2    # "params":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 110
    .end local v0    # "o":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Error preparing JSON-RPC 2.0 message"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 98
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "reserved notification name (starts with \'rpc.\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "notification cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public receiverConnected(Lcom/solana/mobilewalletadapter/common/protocol/MessageSender;)V
    .locals 2
    .param p1, "messageSender"    # Lcom/solana/mobilewalletadapter/common/protocol/MessageSender;

    .line 126
    sget-object v0, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;->TAG:Ljava/lang/String;

    const-string v1, "JSON-RPC 2.0 client connected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    monitor-enter p0

    .line 129
    :try_start_0
    iput-object p1, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;->mSender:Lcom/solana/mobilewalletadapter/common/protocol/MessageSender;

    .line 130
    monitor-exit p0

    .line 131
    return-void

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public receiverDisconnected()V
    .locals 2

    .line 135
    monitor-enter p0

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;->mOutstandingRequest:Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$MethodCallResultFuture;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;->mOutstandingRequest:Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$MethodCallResultFuture;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$MethodCallResultFuture;->cancel(Z)Z

    .line 138
    invoke-direct {p0}, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;->clearOutstandingRequest()V

    .line 140
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    sget-object v0, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;->TAG:Ljava/lang/String;

    const-string v1, "JSON-RPC 2.0 client disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void

    .line 140
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public receiverMessageReceived([B)V
    .locals 10
    .param p1, "payload"    # [B

    .line 147
    sget-object v0, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;->TAG:Ljava/lang/String;

    const-string v1, "JSON-RPC 2.0 message received"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :try_start_0
    invoke-static {p1}, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;->decodeAsUtf8String([B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_3

    .line 155
    .local v0, "jsonStr":Ljava/lang/String;
    nop

    .line 160
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 161
    .local v1, "o":Lorg/json/JSONObject;
    const-string v2, "2.0"

    const-string v3, "jsonrpc"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 162
    sget-object v2, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;->TAG:Ljava/lang/String;

    const-string v3, "Received other than a JSON-RPC 2.0 message"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 163
    return-void

    .line 168
    :cond_0
    nop

    .line 172
    const-string v2, "id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "id":Ljava/lang/String;
    :try_start_2
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 179
    .local v3, "idAsInt":I
    nop

    .line 181
    monitor-enter p0

    .line 182
    :try_start_3
    iget-object v4, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;->mOutstandingRequest:Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$MethodCallResultFuture;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;->mOutstandingRequest:Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$MethodCallResultFuture;

    invoke-static {v4}, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$MethodCallResultFuture;->-$$Nest$fgetmId(Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$MethodCallResultFuture;)I

    move-result v4

    if-ne v4, v3, :cond_1

    .line 183
    iget-object v4, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;->mOutstandingRequest:Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$MethodCallResultFuture;

    .line 184
    .local v4, "r":Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$MethodCallResultFuture;
    invoke-direct {p0}, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;->clearOutstandingRequest()V

    goto :goto_0

    .line 186
    .end local v4    # "r":Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$MethodCallResultFuture;
    :cond_1
    const/4 v4, 0x0

    .line 188
    .restart local v4    # "r":Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$MethodCallResultFuture;
    :goto_0
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 189
    if-nez v4, :cond_2

    .line 190
    sget-object v5, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to locate a request with id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-void

    .line 195
    :cond_2
    const-string v5, "error"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 196
    .local v5, "error":Lorg/json/JSONObject;
    if-eqz v5, :cond_3

    .line 199
    :try_start_4
    const-string v6, "code"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 205
    .local v6, "code":I
    nop

    .line 207
    const-string v7, "message"

    const-string v8, ""

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 208
    .local v7, "message":Ljava/lang/String;
    const-string v8, "data"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 209
    .local v8, "data":Ljava/lang/String;
    new-instance v9, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20RemoteException;

    invoke-direct {v9, v6, v7, v8}, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20RemoteException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$MethodCallResultFuture;->completeExceptionally(Ljava/lang/Exception;)Z

    .line 210
    return-void

    .line 200
    .end local v6    # "code":I
    .end local v7    # "message":Ljava/lang/String;
    .end local v8    # "data":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 201
    .local v6, "e":Lorg/json/JSONException;
    sget-object v7, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received malformed error response for request with id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance v7, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received malformed error response for request with id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$MethodCallResultFuture;->completeExceptionally(Ljava/lang/Exception;)Z

    .line 204
    return-void

    .line 214
    .end local v6    # "e":Lorg/json/JSONException;
    :cond_3
    const-string v6, "result"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 215
    .local v6, "result":Ljava/lang/Object;
    if-eqz v6, :cond_4

    .line 216
    invoke-virtual {v4, v6}, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$MethodCallResultFuture;->complete(Ljava/lang/Object;)Z

    .line 217
    return-void

    .line 221
    :cond_4
    sget-object v7, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received a response with neither error nor result for request with id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    new-instance v7, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received a response with neither error nor result for request with id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$MethodCallResultFuture;->completeExceptionally(Ljava/lang/Exception;)Z

    .line 224
    return-void

    .line 188
    .end local v4    # "r":Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$MethodCallResultFuture;
    .end local v5    # "error":Lorg/json/JSONObject;
    .end local v6    # "result":Ljava/lang/Object;
    :catchall_0
    move-exception v4

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v4

    .line 176
    .end local v3    # "idAsInt":I
    :catch_1
    move-exception v3

    .line 177
    .local v3, "ignored":Ljava/lang/NumberFormatException;
    sget-object v4, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Request id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " could not be interpreted as an int, aborting"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-void

    .line 165
    .end local v1    # "o":Lorg/json/JSONObject;
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "ignored":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v1

    .line 166
    .local v1, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;->TAG:Ljava/lang/String;

    const-string v3, "Incoming JSON-RPC 2.0 payload is not valid"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    return-void

    .line 152
    .end local v0    # "jsonStr":Ljava/lang/String;
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_3
    move-exception v0

    .line 153
    .local v0, "e":Ljava/nio/charset/CharacterCodingException;
    sget-object v1, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;->TAG:Ljava/lang/String;

    const-string v2, "Incoming JSON-RPC 2.0 payload contains UTF-8 errors; not decoding"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    return-void
.end method
