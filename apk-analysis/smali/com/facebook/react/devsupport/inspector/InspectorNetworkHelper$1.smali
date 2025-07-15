.class Lcom/facebook/react/devsupport/inspector/InspectorNetworkHelper$1;
.super Ljava/lang/Object;
.source "InspectorNetworkHelper.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/devsupport/inspector/InspectorNetworkHelper;->loadNetworkResource(Ljava/lang/String;Lcom/facebook/react/devsupport/inspector/InspectorNetworkRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/facebook/react/devsupport/inspector/InspectorNetworkRequestListener;


# direct methods
.method constructor <init>(Lcom/facebook/react/devsupport/inspector/InspectorNetworkRequestListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/facebook/react/devsupport/inspector/InspectorNetworkHelper$1;->val$listener:Lcom/facebook/react/devsupport/inspector/InspectorNetworkRequestListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .line 52
    invoke-interface {p1}, Lokhttp3/Call;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/devsupport/inspector/InspectorNetworkHelper$1;->val$listener:Lcom/facebook/react/devsupport/inspector/InspectorNetworkRequestListener;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/react/devsupport/inspector/InspectorNetworkRequestListener;->onError(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 9
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;

    .line 61
    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    .line 62
    .local v0, "headers":Lokhttp3/Headers;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 64
    .local v1, "headersMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Lokhttp3/Headers;->names()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 65
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .end local v3    # "name":Ljava/lang/String;
    goto :goto_0

    .line 68
    :cond_0
    iget-object v2, p0, Lcom/facebook/react/devsupport/inspector/InspectorNetworkHelper$1;->val$listener:Lcom/facebook/react/devsupport/inspector/InspectorNetworkRequestListener;

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/facebook/react/devsupport/inspector/InspectorNetworkRequestListener;->onHeaders(ILjava/util/Map;)V

    .line 70
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .local v2, "responseBody":Lokhttp3/ResponseBody;
    if-eqz v2, :cond_2

    .line 72
    :try_start_1
    invoke-virtual {v2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v3

    .line 73
    .local v3, "inputStream":Ljava/io/InputStream;
    const/16 v4, 0x400

    .line 74
    .local v4, "chunkSize":I
    new-array v5, v4, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    .local v5, "buffer":[B
    :goto_1
    :try_start_2
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    move v7, v6

    .local v7, "bytesRead":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_1

    .line 79
    new-instance v6, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v6, v5, v8, v7}, Ljava/lang/String;-><init>([BII)V

    .line 80
    .local v6, "chunk":Ljava/lang/String;
    iget-object v8, p0, Lcom/facebook/react/devsupport/inspector/InspectorNetworkHelper$1;->val$listener:Lcom/facebook/react/devsupport/inspector/InspectorNetworkRequestListener;

    invoke-virtual {v8, v6}, Lcom/facebook/react/devsupport/inspector/InspectorNetworkRequestListener;->onData(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    .end local v6    # "chunk":Ljava/lang/String;
    goto :goto_1

    .line 83
    :cond_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 84
    goto :goto_2

    .line 83
    .end local v7    # "bytesRead":I
    :catchall_0
    move-exception v6

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 84
    nop

    .end local v0    # "headers":Lokhttp3/Headers;
    .end local v1    # "headersMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "responseBody":Lokhttp3/ResponseBody;
    .end local p1    # "call":Lokhttp3/Call;
    .end local p2    # "response":Lokhttp3/Response;
    throw v6

    .line 87
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "chunkSize":I
    .end local v5    # "buffer":[B
    .restart local v0    # "headers":Lokhttp3/Headers;
    .restart local v1    # "headersMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "responseBody":Lokhttp3/ResponseBody;
    .restart local p1    # "call":Lokhttp3/Call;
    .restart local p2    # "response":Lokhttp3/Response;
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/facebook/react/devsupport/inspector/InspectorNetworkHelper$1;->val$listener:Lcom/facebook/react/devsupport/inspector/InspectorNetworkRequestListener;

    invoke-virtual {v3}, Lcom/facebook/react/devsupport/inspector/InspectorNetworkRequestListener;->onCompletion()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 88
    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Lokhttp3/ResponseBody;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 90
    .end local v2    # "responseBody":Lokhttp3/ResponseBody;
    :cond_3
    goto :goto_4

    .line 70
    .restart local v2    # "responseBody":Lokhttp3/ResponseBody;
    :catchall_1
    move-exception v3

    if-eqz v2, :cond_4

    :try_start_5
    invoke-virtual {v2}, Lokhttp3/ResponseBody;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v4

    :try_start_6
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "headers":Lokhttp3/Headers;
    .end local v1    # "headersMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p1    # "call":Lokhttp3/Call;
    .end local p2    # "response":Lokhttp3/Response;
    :cond_4
    :goto_3
    throw v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 88
    .end local v2    # "responseBody":Lokhttp3/ResponseBody;
    .restart local v0    # "headers":Lokhttp3/Headers;
    .restart local v1    # "headersMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p1    # "call":Lokhttp3/Call;
    .restart local p2    # "response":Lokhttp3/Response;
    :catch_0
    move-exception v2

    .line 89
    .local v2, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/facebook/react/devsupport/inspector/InspectorNetworkHelper$1;->val$listener:Lcom/facebook/react/devsupport/inspector/InspectorNetworkRequestListener;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/react/devsupport/inspector/InspectorNetworkRequestListener;->onError(Ljava/lang/String;)V

    .line 91
    .end local v2    # "e":Ljava/io/IOException;
    :goto_4
    return-void
.end method
