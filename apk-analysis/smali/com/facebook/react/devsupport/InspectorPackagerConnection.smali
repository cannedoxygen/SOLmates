.class public Lcom/facebook/react/devsupport/InspectorPackagerConnection;
.super Ljava/lang/Object;
.source "InspectorPackagerConnection.java"

# interfaces
.implements Lcom/facebook/react/devsupport/IInspectorPackagerConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InspectorPackagerConnection"


# instance fields
.field private final mConnection:Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;

.field private final mInspectorConnections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/react/bridge/Inspector$LocalConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmInspectorConnections(Lcom/facebook/react/devsupport/InspectorPackagerConnection;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection;->mInspectorConnections:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mmakePageIdPayload(Lcom/facebook/react/devsupport/InspectorPackagerConnection;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/react/devsupport/InspectorPackagerConnection;->makePageIdPayload(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msendEvent(Lcom/facebook/react/devsupport/InspectorPackagerConnection;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/facebook/react/devsupport/InspectorPackagerConnection;->sendEvent(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendWrappedEvent(Lcom/facebook/react/devsupport/InspectorPackagerConnection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/facebook/react/devsupport/InspectorPackagerConnection;->sendWrappedEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;

    invoke-direct {v0, p0, p1}, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;-><init>(Lcom/facebook/react/devsupport/InspectorPackagerConnection;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection;->mConnection:Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection;->mInspectorConnections:Ljava/util/Map;

    .line 40
    iput-object p2, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection;->mPackageName:Ljava/lang/String;

    .line 41
    return-void
.end method

.method private getPages()Lorg/json/JSONArray;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 148
    invoke-static {}, Lcom/facebook/react/bridge/Inspector;->getPages()Ljava/util/List;

    move-result-object v0

    .line 149
    .local v0, "pages":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/bridge/Inspector$Page;>;"
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 150
    .local v1, "array":Lorg/json/JSONArray;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/bridge/Inspector$Page;

    .line 151
    .local v3, "page":Lcom/facebook/react/bridge/Inspector$Page;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 152
    .local v4, "jsonPage":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lcom/facebook/react/bridge/Inspector$Page;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "id"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    const-string/jumbo v5, "title"

    invoke-virtual {v3}, Lcom/facebook/react/bridge/Inspector$Page;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    const-string v5, "app"

    iget-object v6, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    const-string/jumbo v5, "vm"

    invoke-virtual {v3}, Lcom/facebook/react/bridge/Inspector$Page;->getVM()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 157
    .end local v3    # "page":Lcom/facebook/react/bridge/Inspector$Page;
    .end local v4    # "jsonPage":Lorg/json/JSONObject;
    goto :goto_0

    .line 158
    :cond_0
    return-object v1
.end method

.method private handleConnect(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "payload"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 87
    const-string/jumbo v0, "pageId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "pageId":Ljava/lang/String;
    iget-object v1, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection;->mInspectorConnections:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/Inspector$LocalConnection;

    .line 89
    .local v1, "inspectorConnection":Lcom/facebook/react/bridge/Inspector$LocalConnection;
    if-nez v1, :cond_0

    .line 95
    nop

    .line 97
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/facebook/react/devsupport/InspectorPackagerConnection$1;

    invoke-direct {v3, p0, v0}, Lcom/facebook/react/devsupport/InspectorPackagerConnection$1;-><init>(Lcom/facebook/react/devsupport/InspectorPackagerConnection;Ljava/lang/String;)V

    .line 96
    invoke-static {v2, v3}, Lcom/facebook/react/bridge/Inspector;->connect(ILcom/facebook/react/bridge/Inspector$RemoteConnection;)Lcom/facebook/react/bridge/Inspector$LocalConnection;

    move-result-object v2

    move-object v1, v2

    .line 118
    iget-object v2, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection;->mInspectorConnections:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    goto :goto_0

    .line 119
    :catch_0
    move-exception v2

    .line 120
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to open page: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "InspectorPackagerConnection"

    invoke-static {v4, v3, v2}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    const-string v3, "disconnect"

    invoke-direct {p0, v0}, Lcom/facebook/react/devsupport/InspectorPackagerConnection;->makePageIdPayload(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/facebook/react/devsupport/InspectorPackagerConnection;->sendEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 90
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Already connected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private handleDisconnect(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "payload"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 126
    const-string/jumbo v0, "pageId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "pageId":Ljava/lang/String;
    iget-object v1, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection;->mInspectorConnections:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/Inspector$LocalConnection;

    .line 128
    .local v1, "inspectorConnection":Lcom/facebook/react/bridge/Inspector$LocalConnection;
    if-nez v1, :cond_0

    .line 129
    return-void

    .line 132
    :cond_0
    invoke-virtual {v1}, Lcom/facebook/react/bridge/Inspector$LocalConnection;->disconnect()V

    .line 133
    return-void
.end method

.method private handleWrappedEvent(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "payload"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 136
    const-string/jumbo v0, "pageId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "pageId":Ljava/lang/String;
    const-string/jumbo v1, "wrappedEvent"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "wrappedEvent":Ljava/lang/String;
    iget-object v2, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection;->mInspectorConnections:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/bridge/Inspector$LocalConnection;

    .line 139
    .local v2, "inspectorConnection":Lcom/facebook/react/bridge/Inspector$LocalConnection;
    if-nez v2, :cond_0

    .line 141
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PageID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is disconnected. Dropping event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "InspectorPackagerConnection"

    invoke-static {v4, v3}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-void

    .line 144
    :cond_0
    invoke-virtual {v2, v1}, Lcom/facebook/react/bridge/Inspector$LocalConnection;->sendMessage(Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method private makePageIdPayload(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .param p1, "pageId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 176
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 177
    .local v0, "payload":Lorg/json/JSONObject;
    const-string/jumbo v1, "pageId"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    return-object v0
.end method

.method private sendEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "payload"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 169
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 170
    .local v0, "jsonMessage":Lorg/json/JSONObject;
    const-string v1, "event"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    const-string/jumbo v1, "payload"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    iget-object v1, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection;->mConnection:Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;

    invoke-virtual {v1, v0}, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->send(Lorg/json/JSONObject;)V

    .line 173
    return-void
.end method

.method private sendWrappedEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "pageId"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 162
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 163
    .local v0, "payload":Lorg/json/JSONObject;
    const-string/jumbo v1, "pageId"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    const-string/jumbo v1, "wrappedEvent"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    invoke-direct {p0, v1, v0}, Lcom/facebook/react/devsupport/InspectorPackagerConnection;->sendEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 166
    return-void
.end method


# virtual methods
.method closeAllConnections()V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection;->mInspectorConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 81
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/facebook/react/bridge/Inspector$LocalConnection;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/bridge/Inspector$LocalConnection;

    invoke-virtual {v2}, Lcom/facebook/react/bridge/Inspector$LocalConnection;->disconnect()V

    .line 82
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/facebook/react/bridge/Inspector$LocalConnection;>;"
    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection;->mInspectorConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 84
    return-void
.end method

.method public closeQuietly()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection;->mConnection:Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;

    invoke-virtual {v0}, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->close()V

    .line 49
    return-void
.end method

.method public connect()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection;->mConnection:Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;

    invoke-virtual {v0}, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->connect()V

    .line 45
    return-void
.end method

.method handleProxyMessage(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "message"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    const-string v0, "event"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "event":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "getPages"

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "wrappedEvent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v1, "connect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v1, "disconnect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    const-string/jumbo v3, "payload"

    packed-switch v1, :pswitch_data_0

    .line 75
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    :pswitch_0
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/react/devsupport/InspectorPackagerConnection;->handleDisconnect(Lorg/json/JSONObject;)V

    .line 73
    goto :goto_2

    .line 69
    :pswitch_1
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/react/devsupport/InspectorPackagerConnection;->handleConnect(Lorg/json/JSONObject;)V

    .line 70
    goto :goto_2

    .line 66
    :pswitch_2
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/react/devsupport/InspectorPackagerConnection;->handleWrappedEvent(Lorg/json/JSONObject;)V

    .line 67
    goto :goto_2

    .line 63
    :pswitch_3
    invoke-direct {p0}, Lcom/facebook/react/devsupport/InspectorPackagerConnection;->getPages()Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/facebook/react/devsupport/InspectorPackagerConnection;->sendEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    nop

    .line 77
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1f9d589c -> :sswitch_3
        0x38b478ea -> :sswitch_2
        0x4f310915 -> :sswitch_1
        0x74f5960e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public sendEventToAllConnections(Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection;->mInspectorConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 54
    .local v1, "inspectorConnectionEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/facebook/react/bridge/Inspector$LocalConnection;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/bridge/Inspector$LocalConnection;

    .line 55
    .local v2, "inspectorConnection":Lcom/facebook/react/bridge/Inspector$LocalConnection;
    invoke-virtual {v2, p1}, Lcom/facebook/react/bridge/Inspector$LocalConnection;->sendMessage(Ljava/lang/String;)V

    .line 56
    .end local v1    # "inspectorConnectionEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/facebook/react/bridge/Inspector$LocalConnection;>;"
    .end local v2    # "inspectorConnection":Lcom/facebook/react/bridge/Inspector$LocalConnection;
    goto :goto_0

    .line 57
    :cond_0
    return-void
.end method
