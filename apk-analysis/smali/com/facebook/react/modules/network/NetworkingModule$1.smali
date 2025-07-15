.class Lcom/facebook/react/modules/network/NetworkingModule$1;
.super Ljava/lang/Object;
.source "NetworkingModule.java"

# interfaces
.implements Lcom/facebook/react/modules/network/ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/modules/network/NetworkingModule;->sendRequestInternal(Ljava/lang/String;Ljava/lang/String;ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;ZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field last:J

.field final synthetic this$0:Lcom/facebook/react/modules/network/NetworkingModule;

.field final synthetic val$reactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

.field final synthetic val$requestId:I

.field final synthetic val$responseType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/react/modules/network/NetworkingModule;Ljava/lang/String;Lcom/facebook/react/bridge/ReactApplicationContext;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/react/modules/network/NetworkingModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 322
    iput-object p1, p0, Lcom/facebook/react/modules/network/NetworkingModule$1;->this$0:Lcom/facebook/react/modules/network/NetworkingModule;

    iput-object p2, p0, Lcom/facebook/react/modules/network/NetworkingModule$1;->val$responseType:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/react/modules/network/NetworkingModule$1;->val$reactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    iput p4, p0, Lcom/facebook/react/modules/network/NetworkingModule$1;->val$requestId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/facebook/react/modules/network/NetworkingModule$1;->last:J

    return-void
.end method


# virtual methods
.method public onProgress(JJZ)V
    .locals 9
    .param p1, "bytesWritten"    # J
    .param p3, "contentLength"    # J
    .param p5, "done"    # Z

    .line 327
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 328
    .local v0, "now":J
    if-nez p5, :cond_0

    iget-wide v2, p0, Lcom/facebook/react/modules/network/NetworkingModule$1;->last:J

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/react/modules/network/NetworkingModule;->-$$Nest$smshouldDispatch(JJ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 329
    return-void

    .line 331
    :cond_0
    iget-object v2, p0, Lcom/facebook/react/modules/network/NetworkingModule$1;->val$responseType:Ljava/lang/String;

    const-string/jumbo v3, "text"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 335
    return-void

    .line 337
    :cond_1
    iget-object v3, p0, Lcom/facebook/react/modules/network/NetworkingModule$1;->val$reactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    iget v4, p0, Lcom/facebook/react/modules/network/NetworkingModule$1;->val$requestId:I

    move-wide v5, p1

    move-wide v7, p3

    invoke-static/range {v3 .. v8}, Lcom/facebook/react/modules/network/ResponseUtil;->onDataReceivedProgress(Lcom/facebook/react/bridge/ReactApplicationContext;IJJ)V

    .line 339
    iput-wide v0, p0, Lcom/facebook/react/modules/network/NetworkingModule$1;->last:J

    .line 340
    return-void
.end method
