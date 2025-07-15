.class Lcom/facebook/react/modules/network/NetworkingModule$2;
.super Ljava/lang/Object;
.source "NetworkingModule.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/modules/network/NetworkingModule;->sendRequestInternal(Ljava/lang/String;Ljava/lang/String;ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;ZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/modules/network/NetworkingModule;

.field final synthetic val$reactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

.field final synthetic val$requestId:I

.field final synthetic val$responseType:Ljava/lang/String;

.field final synthetic val$useIncrementalUpdates:Z


# direct methods
.method constructor <init>(Lcom/facebook/react/modules/network/NetworkingModule;ILcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/react/modules/network/NetworkingModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 463
    iput-object p1, p0, Lcom/facebook/react/modules/network/NetworkingModule$2;->this$0:Lcom/facebook/react/modules/network/NetworkingModule;

    iput p2, p0, Lcom/facebook/react/modules/network/NetworkingModule$2;->val$requestId:I

    iput-object p3, p0, Lcom/facebook/react/modules/network/NetworkingModule$2;->val$reactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    iput-object p4, p0, Lcom/facebook/react/modules/network/NetworkingModule$2;->val$responseType:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/facebook/react/modules/network/NetworkingModule$2;->val$useIncrementalUpdates:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 3
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .line 466
    iget-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule$2;->this$0:Lcom/facebook/react/modules/network/NetworkingModule;

    invoke-static {v0}, Lcom/facebook/react/modules/network/NetworkingModule;->-$$Nest$fgetmShuttingDown(Lcom/facebook/react/modules/network/NetworkingModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    return-void

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule$2;->this$0:Lcom/facebook/react/modules/network/NetworkingModule;

    iget v1, p0, Lcom/facebook/react/modules/network/NetworkingModule$2;->val$requestId:I

    invoke-static {v0, v1}, Lcom/facebook/react/modules/network/NetworkingModule;->-$$Nest$mremoveRequest(Lcom/facebook/react/modules/network/NetworkingModule;I)V

    .line 471
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 472
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 473
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error while executing request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    nop

    .line 474
    .local v0, "errorMessage":Ljava/lang/String;
    iget-object v1, p0, Lcom/facebook/react/modules/network/NetworkingModule$2;->val$reactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    iget v2, p0, Lcom/facebook/react/modules/network/NetworkingModule$2;->val$requestId:I

    invoke-static {v1, v2, v0, p2}, Lcom/facebook/react/modules/network/ResponseUtil;->onRequestError(Lcom/facebook/react/bridge/ReactApplicationContext;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 475
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 7
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 479
    iget-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule$2;->this$0:Lcom/facebook/react/modules/network/NetworkingModule;

    invoke-static {v0}, Lcom/facebook/react/modules/network/NetworkingModule;->-$$Nest$fgetmShuttingDown(Lcom/facebook/react/modules/network/NetworkingModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    return-void

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule$2;->this$0:Lcom/facebook/react/modules/network/NetworkingModule;

    iget v1, p0, Lcom/facebook/react/modules/network/NetworkingModule$2;->val$requestId:I

    invoke-static {v0, v1}, Lcom/facebook/react/modules/network/NetworkingModule;->-$$Nest$mremoveRequest(Lcom/facebook/react/modules/network/NetworkingModule;I)V

    .line 484
    iget-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule$2;->val$reactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    iget v1, p0, Lcom/facebook/react/modules/network/NetworkingModule$2;->val$requestId:I

    .line 487
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v2

    .line 488
    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/react/modules/network/NetworkingModule;->-$$Nest$smtranslateHeaders(Lokhttp3/Headers;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    .line 489
    invoke-virtual {p2}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v4

    .line 484
    invoke-static {v0, v1, v2, v3, v4}, Lcom/facebook/react/modules/network/ResponseUtil;->onResponseReceived(Lcom/facebook/react/bridge/ReactApplicationContext;IILcom/facebook/react/bridge/WritableMap;Ljava/lang/String;)V

    .line 506
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    .line 507
    .local v0, "responseBody":Lokhttp3/ResponseBody;
    const-string v1, "gzip"

    const-string v2, "Content-Encoding"

    invoke-virtual {p2, v2}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 509
    new-instance v1, Lokio/GzipSource;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v2

    invoke-direct {v1, v2}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    .line 510
    .local v1, "gzipSource":Lokio/GzipSource;
    const-string v2, "Content-Type"

    invoke-virtual {p2, v2}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 513
    .local v2, "contentType":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-static {v2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 515
    :goto_0
    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v4

    .line 512
    const-wide/16 v5, -0x1

    invoke-static {v3, v5, v6, v4}, Lokhttp3/ResponseBody;->create(Lokhttp3/MediaType;JLokio/BufferedSource;)Lokhttp3/ResponseBody;

    move-result-object v3

    move-object v0, v3

    .line 519
    .end local v1    # "gzipSource":Lokio/GzipSource;
    .end local v2    # "contentType":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/facebook/react/modules/network/NetworkingModule$2;->this$0:Lcom/facebook/react/modules/network/NetworkingModule;

    invoke-static {v1}, Lcom/facebook/react/modules/network/NetworkingModule;->-$$Nest$fgetmResponseHandlers(Lcom/facebook/react/modules/network/NetworkingModule;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/modules/network/NetworkingModule$ResponseHandler;

    .line 520
    .local v2, "handler":Lcom/facebook/react/modules/network/NetworkingModule$ResponseHandler;
    iget-object v3, p0, Lcom/facebook/react/modules/network/NetworkingModule$2;->val$responseType:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/facebook/react/modules/network/NetworkingModule$ResponseHandler;->supports(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 521
    invoke-interface {v2, v0}, Lcom/facebook/react/modules/network/NetworkingModule$ResponseHandler;->toResponseData(Lokhttp3/ResponseBody;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 522
    .local v1, "res":Lcom/facebook/react/bridge/WritableMap;
    iget-object v3, p0, Lcom/facebook/react/modules/network/NetworkingModule$2;->val$reactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    iget v4, p0, Lcom/facebook/react/modules/network/NetworkingModule$2;->val$requestId:I

    invoke-static {v3, v4, v1}, Lcom/facebook/react/modules/network/ResponseUtil;->onDataReceived(Lcom/facebook/react/bridge/ReactApplicationContext;ILcom/facebook/react/bridge/WritableMap;)V

    .line 523
    iget-object v3, p0, Lcom/facebook/react/modules/network/NetworkingModule$2;->val$reactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    iget v4, p0, Lcom/facebook/react/modules/network/NetworkingModule$2;->val$requestId:I

    invoke-static {v3, v4}, Lcom/facebook/react/modules/network/ResponseUtil;->onRequestSuccess(Lcom/facebook/react/bridge/ReactApplicationContext;I)V

    .line 524
    return-void

    .line 526
    .end local v1    # "res":Lcom/facebook/react/bridge/WritableMap;
    .end local v2    # "handler":Lcom/facebook/react/modules/network/NetworkingModule$ResponseHandler;
    :cond_3
    goto :goto_1

    .line 531
    :cond_4
    iget-boolean v1, p0, Lcom/facebook/react/modules/network/NetworkingModule$2;->val$useIncrementalUpdates:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const-string/jumbo v2, "text"

    if-eqz v1, :cond_5

    :try_start_1
    iget-object v1, p0, Lcom/facebook/react/modules/network/NetworkingModule$2;->val$responseType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 532
    iget-object v1, p0, Lcom/facebook/react/modules/network/NetworkingModule$2;->this$0:Lcom/facebook/react/modules/network/NetworkingModule;

    iget v2, p0, Lcom/facebook/react/modules/network/NetworkingModule$2;->val$requestId:I

    invoke-static {v1, v2, v0}, Lcom/facebook/react/modules/network/NetworkingModule;->-$$Nest$mreadWithProgress(Lcom/facebook/react/modules/network/NetworkingModule;ILokhttp3/ResponseBody;)V

    .line 533
    iget-object v1, p0, Lcom/facebook/react/modules/network/NetworkingModule$2;->val$reactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    iget v2, p0, Lcom/facebook/react/modules/network/NetworkingModule$2;->val$requestId:I

    invoke-static {v1, v2}, Lcom/facebook/react/modules/network/ResponseUtil;->onRequestSuccess(Lcom/facebook/react/bridge/ReactApplicationContext;I)V

    .line 534
    return-void

    .line 538
    :cond_5
    const-string v1, ""

    .line 539
    .local v1, "responseString":Ljava/lang/String;
    iget-object v3, p0, Lcom/facebook/react/modules/network/NetworkingModule$2;->val$responseType:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v2, :cond_7

    .line 541
    :try_start_2
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 553
    :goto_2
    goto :goto_3

    .line 542
    :catch_0
    move-exception v2

    .line 543
    .local v2, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {p2}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v3

    const-string v4, "HEAD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_2

    .line 550
    :cond_6
    iget-object v3, p0, Lcom/facebook/react/modules/network/NetworkingModule$2;->val$reactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    iget v4, p0, Lcom/facebook/react/modules/network/NetworkingModule$2;->val$requestId:I

    .line 551
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 550
    invoke-static {v3, v4, v5, v2}, Lcom/facebook/react/modules/network/ResponseUtil;->onRequestError(Lcom/facebook/react/bridge/ReactApplicationContext;ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 554
    .end local v2    # "e":Ljava/io/IOException;
    :cond_7
    iget-object v2, p0, Lcom/facebook/react/modules/network/NetworkingModule$2;->val$responseType:Ljava/lang/String;

    const-string v3, "base64"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 555
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 557
    :cond_8
    :goto_3
    iget-object v2, p0, Lcom/facebook/react/modules/network/NetworkingModule$2;->val$reactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    iget v3, p0, Lcom/facebook/react/modules/network/NetworkingModule$2;->val$requestId:I

    invoke-static {v2, v3, v1}, Lcom/facebook/react/modules/network/ResponseUtil;->onDataReceived(Lcom/facebook/react/bridge/ReactApplicationContext;ILjava/lang/String;)V

    .line 558
    iget-object v2, p0, Lcom/facebook/react/modules/network/NetworkingModule$2;->val$reactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    iget v3, p0, Lcom/facebook/react/modules/network/NetworkingModule$2;->val$requestId:I

    invoke-static {v2, v3}, Lcom/facebook/react/modules/network/ResponseUtil;->onRequestSuccess(Lcom/facebook/react/bridge/ReactApplicationContext;I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 562
    .end local v0    # "responseBody":Lokhttp3/ResponseBody;
    .end local v1    # "responseString":Ljava/lang/String;
    goto :goto_4

    .line 559
    :catch_1
    move-exception v0

    .line 560
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/facebook/react/modules/network/NetworkingModule$2;->val$reactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    iget v2, p0, Lcom/facebook/react/modules/network/NetworkingModule$2;->val$requestId:I

    .line 561
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 560
    invoke-static {v1, v2, v3, v0}, Lcom/facebook/react/modules/network/ResponseUtil;->onRequestError(Lcom/facebook/react/bridge/ReactApplicationContext;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 563
    .end local v0    # "e":Ljava/io/IOException;
    :goto_4
    return-void
.end method
