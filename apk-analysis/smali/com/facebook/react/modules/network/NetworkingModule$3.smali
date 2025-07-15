.class Lcom/facebook/react/modules/network/NetworkingModule$3;
.super Ljava/lang/Object;
.source "NetworkingModule.java"

# interfaces
.implements Lcom/facebook/react/modules/network/ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/modules/network/NetworkingModule;->wrapRequestBodyWithProgressEmitter(Lokhttp3/RequestBody;I)Lokhttp3/RequestBody;
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


# direct methods
.method constructor <init>(Lcom/facebook/react/modules/network/NetworkingModule;Lcom/facebook/react/bridge/ReactApplicationContext;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/react/modules/network/NetworkingModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 576
    iput-object p1, p0, Lcom/facebook/react/modules/network/NetworkingModule$3;->this$0:Lcom/facebook/react/modules/network/NetworkingModule;

    iput-object p2, p0, Lcom/facebook/react/modules/network/NetworkingModule$3;->val$reactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    iput p3, p0, Lcom/facebook/react/modules/network/NetworkingModule$3;->val$requestId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 577
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/facebook/react/modules/network/NetworkingModule$3;->last:J

    return-void
.end method


# virtual methods
.method public onProgress(JJZ)V
    .locals 9
    .param p1, "bytesWritten"    # J
    .param p3, "contentLength"    # J
    .param p5, "done"    # Z

    .line 581
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 582
    .local v0, "now":J
    if-nez p5, :cond_0

    iget-wide v2, p0, Lcom/facebook/react/modules/network/NetworkingModule$3;->last:J

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/react/modules/network/NetworkingModule;->-$$Nest$smshouldDispatch(JJ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 583
    :cond_0
    iget-object v3, p0, Lcom/facebook/react/modules/network/NetworkingModule$3;->val$reactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    iget v4, p0, Lcom/facebook/react/modules/network/NetworkingModule$3;->val$requestId:I

    move-wide v5, p1

    move-wide v7, p3

    invoke-static/range {v3 .. v8}, Lcom/facebook/react/modules/network/ResponseUtil;->onDataSend(Lcom/facebook/react/bridge/ReactApplicationContext;IJJ)V

    .line 585
    iput-wide v0, p0, Lcom/facebook/react/modules/network/NetworkingModule$3;->last:J

    .line 587
    :cond_1
    return-void
.end method
