.class Lcom/neovisionaries/ws/client/ProxyHandshaker;
.super Ljava/lang/Object;
.source "ProxyHandshaker.java"


# static fields
.field private static final RN:Ljava/lang/String; = "\r\n"


# instance fields
.field private final mHost:Ljava/lang/String;

.field private final mPort:I

.field private final mSettings:Lcom/neovisionaries/ws/client/ProxySettings;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/neovisionaries/ws/client/ProxySettings;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "settings"    # Lcom/neovisionaries/ws/client/ProxySettings;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/neovisionaries/ws/client/ProxyHandshaker;->mHost:Ljava/lang/String;

    .line 39
    iput p2, p0, Lcom/neovisionaries/ws/client/ProxyHandshaker;->mPort:I

    .line 40
    iput-object p3, p0, Lcom/neovisionaries/ws/client/ProxyHandshaker;->mSettings:Lcom/neovisionaries/ws/client/ProxySettings;

    .line 41
    return-void
.end method

.method private addHeaders(Ljava/lang/StringBuilder;)V
    .locals 7
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .line 95
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ProxyHandshaker;->mSettings:Lcom/neovisionaries/ws/client/ProxySettings;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/ProxySettings;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 98
    .local v1, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 101
    .local v2, "name":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 103
    .local v4, "value":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 105
    const-string v4, ""

    .line 108
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .end local v4    # "value":Ljava/lang/String;
    goto :goto_1

    .line 110
    .end local v1    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 111
    :cond_2
    return-void
.end method

.method private addProxyAuthorization(Ljava/lang/StringBuilder;)V
    .locals 5
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .line 116
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ProxyHandshaker;->mSettings:Lcom/neovisionaries/ws/client/ProxySettings;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/ProxySettings;->getId()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/neovisionaries/ws/client/ProxyHandshaker;->mSettings:Lcom/neovisionaries/ws/client/ProxySettings;

    invoke-virtual {v1}, Lcom/neovisionaries/ws/client/ProxySettings;->getPassword()Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "password":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 127
    const-string v1, ""

    .line 131
    :cond_1
    const-string v2, "%s:%s"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "credentials":Ljava/lang/String;
    nop

    .line 135
    const-string v3, "Proxy-Authorization: Basic "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 136
    invoke-static {v2}, Lcom/neovisionaries/ws/client/Base64;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 137
    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    return-void

    .line 120
    .end local v1    # "password":Ljava/lang/String;
    .end local v2    # "credentials":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void
.end method

.method private buildRequest()Ljava/lang/String;
    .locals 4

    .line 73
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ProxyHandshaker;->mHost:Ljava/lang/String;

    iget v1, p0, Lcom/neovisionaries/ws/client/ProxyHandshaker;->mPort:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s:%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "host":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    const-string v2, "CONNECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " HTTP/1.1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 78
    const-string v3, "Host: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 82
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-direct {p0, v1}, Lcom/neovisionaries/ws/client/ProxyHandshaker;->addHeaders(Ljava/lang/StringBuilder;)V

    .line 85
    invoke-direct {p0, v1}, Lcom/neovisionaries/ws/client/ProxyHandshaker;->addProxyAuthorization(Ljava/lang/StringBuilder;)V

    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private readStatusLine(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Lcom/neovisionaries/ws/client/Misc;->readLine(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "statusLine":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 167
    const-string v1, " +"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "elements":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    .line 177
    const/4 v2, 0x1

    aget-object v2, v1, v2

    const-string v3, "200"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    return-void

    .line 179
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The status code in the response from the proxy server is not \'200 Connection established\'. The status line is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 171
    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The status line in the response from the proxy server is badly formatted. The status line is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 163
    .end local v1    # "elements":[Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "The response from the proxy server does not contain a status line."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private receiveResponse(Ljava/net/Socket;)V
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 147
    .local v0, "input":Ljava/io/InputStream;
    invoke-direct {p0, v0}, Lcom/neovisionaries/ws/client/ProxyHandshaker;->readStatusLine(Ljava/io/InputStream;)V

    .line 151
    invoke-direct {p0, v0}, Lcom/neovisionaries/ws/client/ProxyHandshaker;->skipHeaders(Ljava/io/InputStream;)V

    .line 152
    return-void
.end method

.method private sendRequest(Ljava/net/Socket;)V
    .locals 3
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ProxyHandshaker;->buildRequest()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "request":Ljava/lang/String;
    invoke-static {v0}, Lcom/neovisionaries/ws/client/Misc;->getBytesUTF8(Ljava/lang/String;)[B

    move-result-object v1

    .line 63
    .local v1, "requestBytes":[B
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 66
    .local v2, "output":Ljava/io/OutputStream;
    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 67
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 68
    return-void
.end method

.method private skipHeaders(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    const/4 v0, 0x0

    .line 196
    .local v0, "count":I
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 199
    .local v1, "ch":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    .line 206
    const/16 v3, 0xa

    if-ne v1, v3, :cond_1

    .line 209
    if-nez v0, :cond_0

    .line 212
    return-void

    .line 216
    :cond_0
    const/4 v0, 0x0

    .line 217
    goto :goto_0

    .line 221
    :cond_1
    const/16 v4, 0xd

    if-eq v1, v4, :cond_2

    .line 224
    add-int/lit8 v0, v0, 0x1

    .line 225
    goto :goto_0

    .line 229
    :cond_2
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 232
    if-eq v1, v2, :cond_5

    .line 238
    if-eq v1, v3, :cond_3

    .line 241
    add-int/lit8 v0, v0, 0x2

    .line 242
    goto :goto_0

    .line 248
    :cond_3
    if-nez v0, :cond_4

    .line 251
    return-void

    .line 255
    :cond_4
    const/4 v0, 0x0

    .line 256
    .end local v1    # "ch":I
    goto :goto_0

    .line 235
    .restart local v1    # "ch":I
    :cond_5
    new-instance v2, Ljava/io/EOFException;

    const-string v3, "The end of the stream from the proxy server was reached unexpectedly after a carriage return."

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 202
    :cond_6
    new-instance v2, Ljava/io/EOFException;

    const-string v3, "The end of the stream from the proxy server was reached unexpectedly."

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method getProxiedHostname()Ljava/lang/String;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ProxyHandshaker;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method public perform(Ljava/net/Socket;)V
    .locals 0
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ProxyHandshaker;->sendRequest(Ljava/net/Socket;)V

    .line 50
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ProxyHandshaker;->receiveResponse(Ljava/net/Socket;)V

    .line 51
    return-void
.end method
