.class Lcom/facebook/react/packagerconnection/JSPackagerClient$ResponderImpl;
.super Ljava/lang/Object;
.source "JSPackagerClient.java"

# interfaces
.implements Lcom/facebook/react/packagerconnection/Responder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/packagerconnection/JSPackagerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResponderImpl"
.end annotation


# instance fields
.field private mId:Ljava/lang/Object;

.field final synthetic this$0:Lcom/facebook/react/packagerconnection/JSPackagerClient;


# direct methods
.method public constructor <init>(Lcom/facebook/react/packagerconnection/JSPackagerClient;Ljava/lang/Object;)V
    .locals 0
    .param p2, "id"    # Ljava/lang/Object;

    .line 26
    iput-object p1, p0, Lcom/facebook/react/packagerconnection/JSPackagerClient$ResponderImpl;->this$0:Lcom/facebook/react/packagerconnection/JSPackagerClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p2, p0, Lcom/facebook/react/packagerconnection/JSPackagerClient$ResponderImpl;->mId:Ljava/lang/Object;

    .line 28
    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Object;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Object;

    .line 44
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 45
    .local v0, "message":Lorg/json/JSONObject;
    const-string/jumbo v1, "version"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 46
    const-string v1, "id"

    iget-object v2, p0, Lcom/facebook/react/packagerconnection/JSPackagerClient$ResponderImpl;->mId:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    const-string v1, "error"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    iget-object v1, p0, Lcom/facebook/react/packagerconnection/JSPackagerClient$ResponderImpl;->this$0:Lcom/facebook/react/packagerconnection/JSPackagerClient;

    invoke-static {v1}, Lcom/facebook/react/packagerconnection/JSPackagerClient;->-$$Nest$fgetmWebSocket(Lcom/facebook/react/packagerconnection/JSPackagerClient;)Lcom/facebook/react/packagerconnection/ReconnectingWebSocket;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/react/packagerconnection/ReconnectingWebSocket;->sendMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v0    # "message":Lorg/json/JSONObject;
    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/facebook/react/packagerconnection/JSPackagerClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Responding with error failed"

    invoke-static {v1, v2, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public respond(Ljava/lang/Object;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Object;

    .line 32
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 33
    .local v0, "message":Lorg/json/JSONObject;
    const-string/jumbo v1, "version"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 34
    const-string v1, "id"

    iget-object v2, p0, Lcom/facebook/react/packagerconnection/JSPackagerClient$ResponderImpl;->mId:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    iget-object v1, p0, Lcom/facebook/react/packagerconnection/JSPackagerClient$ResponderImpl;->this$0:Lcom/facebook/react/packagerconnection/JSPackagerClient;

    invoke-static {v1}, Lcom/facebook/react/packagerconnection/JSPackagerClient;->-$$Nest$fgetmWebSocket(Lcom/facebook/react/packagerconnection/JSPackagerClient;)Lcom/facebook/react/packagerconnection/ReconnectingWebSocket;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/react/packagerconnection/ReconnectingWebSocket;->sendMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .end local v0    # "message":Lorg/json/JSONObject;
    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/facebook/react/packagerconnection/JSPackagerClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Responding failed"

    invoke-static {v1, v2, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
