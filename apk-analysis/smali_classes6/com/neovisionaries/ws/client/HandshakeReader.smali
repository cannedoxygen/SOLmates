.class Lcom/neovisionaries/ws/client/HandshakeReader;
.super Ljava/lang/Object;
.source "HandshakeReader.java"


# static fields
.field private static final ACCEPT_MAGIC:Ljava/lang/String; = "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"


# instance fields
.field private final mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;


# direct methods
.method public constructor <init>(Lcom/neovisionaries/ws/client/WebSocket;)V
    .locals 0
    .param p1, "websocket"    # Lcom/neovisionaries/ws/client/WebSocket;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/neovisionaries/ws/client/HandshakeReader;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    .line 42
    return-void
.end method

.method private getContentLength(Ljava/util/Map;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)I"
        }
    .end annotation

    .line 279
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :try_start_0
    const-string v0, "Content-Length"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 281
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, -0x1

    return v1
.end method

.method private parseHttpHeader(Ljava/util/Map;Ljava/lang/String;)V
    .locals 5
    .param p2, "header"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 190
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v0, ":"

    const/4 v1, 0x2

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "pair":[Ljava/lang/String;
    array-length v2, v0

    if-ge v2, v1, :cond_0

    .line 195
    return-void

    .line 199
    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, "value":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 206
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v3, :cond_1

    .line 208
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v4

    .line 209
    invoke-interface {p1, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :cond_1
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    return-void
.end method

.method private readBody(Ljava/util/Map;Lcom/neovisionaries/ws/client/WebSocketInputStream;)[B
    .locals 3
    .param p2, "input"    # Lcom/neovisionaries/ws/client/WebSocketInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/neovisionaries/ws/client/WebSocketInputStream;",
            ")[B"
        }
    .end annotation

    .line 245
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/HandshakeReader;->getContentLength(Ljava/util/Map;)I

    move-result v0

    .line 247
    .local v0, "length":I
    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 250
    return-object v1

    .line 256
    :cond_0
    :try_start_0
    new-array v2, v0, [B

    .line 259
    .local v2, "body":[B
    invoke-virtual {p2, v2, v0}, Lcom/neovisionaries/ws/client/WebSocketInputStream;->readBytes([BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    return-object v2

    .line 264
    .end local v2    # "body":[B
    :catchall_0
    move-exception v2

    .line 267
    .local v2, "t":Ljava/lang/Throwable;
    return-object v1
.end method

.method private readHttpHeaders(Lcom/neovisionaries/ws/client/WebSocketInputStream;)Ljava/util/Map;
    .locals 7
    .param p1, "input"    # Lcom/neovisionaries/ws/client/WebSocketInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/neovisionaries/ws/client/WebSocketInputStream;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 122
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 125
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    .line 132
    .local v1, "builder":Ljava/lang/StringBuilder;
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketInputStream;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .local v2, "line":Ljava/lang/String;
    nop

    .line 143
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    .line 155
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 158
    .local v3, "ch":C
    const/16 v4, 0x20

    if-eq v3, v4, :cond_3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_1

    goto :goto_1

    .line 175
    :cond_1
    if-eqz v1, :cond_2

    .line 177
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/neovisionaries/ws/client/HandshakeReader;->parseHttpHeader(Ljava/util/Map;Ljava/lang/String;)V

    .line 180
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    .line 181
    .end local v3    # "ch":C
    goto :goto_0

    .line 160
    .restart local v3    # "ch":C
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 163
    goto :goto_0

    .line 167
    :cond_4
    const-string v4, "^[ \t]+"

    const-string v5, " "

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 170
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    goto :goto_0

    .line 145
    .end local v3    # "ch":C
    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    .line 147
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/neovisionaries/ws/client/HandshakeReader;->parseHttpHeader(Ljava/util/Map;Ljava/lang/String;)V

    .line 183
    :cond_6
    return-object v0

    .line 134
    .end local v2    # "line":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 137
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v4, Lcom/neovisionaries/ws/client/WebSocketError;->HTTP_HEADER_FAILURE:Lcom/neovisionaries/ws/client/WebSocketError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "An error occurred while HTTP header section was being read: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 139
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v2}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private readStatusLine(Lcom/neovisionaries/ws/client/WebSocketInputStream;)Lcom/neovisionaries/ws/client/StatusLine;
    .locals 6
    .param p1, "input"    # Lcom/neovisionaries/ws/client/WebSocketInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 86
    :try_start_0
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketInputStream;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 94
    .local v0, "line":Ljava/lang/String;
    nop

    .line 96
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    :try_start_1
    new-instance v1, Lcom/neovisionaries/ws/client/StatusLine;

    invoke-direct {v1, v0}, Lcom/neovisionaries/ws/client/StatusLine;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    .line 109
    :catch_0
    move-exception v1

    .line 112
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v3, Lcom/neovisionaries/ws/client/WebSocketError;->STATUS_LINE_BAD_FORMAT:Lcom/neovisionaries/ws/client/WebSocketError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The status line of the opening handshake response is badly formatted. The status line is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;)V

    throw v2

    .line 99
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v2, Lcom/neovisionaries/ws/client/WebSocketError;->STATUS_LINE_EMPTY:Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v3, "The status line of the opening handshake response is empty."

    invoke-direct {v1, v2, v3}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;)V

    throw v1

    .line 88
    .end local v0    # "line":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 91
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v2, Lcom/neovisionaries/ws/client/WebSocketError;->OPENING_HANDSHAKE_RESPONSE_FAILURE:Lcom/neovisionaries/ws/client/WebSocketError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read an opening handshake response from the server: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 93
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private validateAccept(Lcom/neovisionaries/ws/client/StatusLine;Ljava/util/Map;Ljava/lang/String;)V
    .locals 7
    .param p1, "statusLine"    # Lcom/neovisionaries/ws/client/StatusLine;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/neovisionaries/ws/client/StatusLine;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 404
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v0, "Sec-WebSocket-Accept"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 406
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 416
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 419
    .local v1, "actual":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 427
    .local v2, "input":Ljava/lang/String;
    :try_start_0
    const-string v3, "SHA-1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 430
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-static {v2}, Lcom/neovisionaries/ws/client/Misc;->getBytesUTF8(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    .line 433
    .local v4, "digest":[B
    invoke-static {v4}, Lcom/neovisionaries/ws/client/Base64;->encode([B)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v5

    .line 439
    .end local v4    # "digest":[B
    .local v3, "expected":Ljava/lang/String;
    nop

    .line 441
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 451
    return-void

    .line 444
    :cond_0
    new-instance v4, Lcom/neovisionaries/ws/client/OpeningHandshakeException;

    sget-object v5, Lcom/neovisionaries/ws/client/WebSocketError;->UNEXPECTED_SEC_WEBSOCKET_ACCEPT_HEADER:Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v6, "The value of \'Sec-WebSocket-Accept\' header is different from the expected one."

    invoke-direct {v4, v5, v6, p1, p2}, Lcom/neovisionaries/ws/client/OpeningHandshakeException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;Lcom/neovisionaries/ws/client/StatusLine;Ljava/util/Map;)V

    throw v4

    .line 435
    .end local v3    # "expected":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 438
    .local v3, "e":Ljava/lang/Exception;
    return-void

    .line 409
    .end local v1    # "actual":Ljava/lang/String;
    .end local v2    # "input":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v1, Lcom/neovisionaries/ws/client/OpeningHandshakeException;

    sget-object v2, Lcom/neovisionaries/ws/client/WebSocketError;->NO_SEC_WEBSOCKET_ACCEPT_HEADER:Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v3, "The opening handshake response does not contain \'Sec-WebSocket-Accept\' header."

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/neovisionaries/ws/client/OpeningHandshakeException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;Lcom/neovisionaries/ws/client/StatusLine;Ljava/util/Map;)V

    throw v1
.end method

.method private validateConnection(Lcom/neovisionaries/ws/client/StatusLine;Ljava/util/Map;)V
    .locals 8
    .param p1, "statusLine"    # Lcom/neovisionaries/ws/client/StatusLine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/neovisionaries/ws/client/StatusLine;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 352
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v0, "Connection"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 354
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_3

    .line 363
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 366
    .local v2, "value":Ljava/lang/String;
    const-string v3, "\\s*,\\s*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 368
    .local v3, "elements":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 370
    .local v6, "element":Ljava/lang/String;
    const-string v7, "Upgrade"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 373
    return-void

    .line 368
    .end local v6    # "element":Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 376
    .end local v2    # "value":Ljava/lang/String;
    .end local v3    # "elements":[Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 379
    :cond_2
    new-instance v1, Lcom/neovisionaries/ws/client/OpeningHandshakeException;

    sget-object v2, Lcom/neovisionaries/ws/client/WebSocketError;->NO_UPGRADE_IN_CONNECTION_HEADER:Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v3, "\'Upgrade\' was not found in \'Connection\' header."

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/neovisionaries/ws/client/OpeningHandshakeException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;Lcom/neovisionaries/ws/client/StatusLine;Ljava/util/Map;)V

    throw v1

    .line 357
    :cond_3
    new-instance v1, Lcom/neovisionaries/ws/client/OpeningHandshakeException;

    sget-object v2, Lcom/neovisionaries/ws/client/WebSocketError;->NO_CONNECTION_HEADER:Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v3, "The opening handshake response does not contain \'Connection\' header."

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/neovisionaries/ws/client/OpeningHandshakeException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;Lcom/neovisionaries/ws/client/StatusLine;Ljava/util/Map;)V

    throw v1
.end method

.method private validateExtensionCombination(Lcom/neovisionaries/ws/client/StatusLine;Ljava/util/Map;Ljava/util/List;)V
    .locals 5
    .param p1, "statusLine"    # Lcom/neovisionaries/ws/client/StatusLine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/neovisionaries/ws/client/StatusLine;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/neovisionaries/ws/client/WebSocketExtension;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 535
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .local p3, "extensions":Ljava/util/List;, "Ljava/util/List<Lcom/neovisionaries/ws/client/WebSocketExtension;>;"
    const/4 v0, 0x0

    .line 537
    .local v0, "pmce":Lcom/neovisionaries/ws/client/WebSocketExtension;
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neovisionaries/ws/client/WebSocketExtension;

    .line 540
    .local v2, "extension":Lcom/neovisionaries/ws/client/WebSocketExtension;
    instance-of v3, v2, Lcom/neovisionaries/ws/client/PerMessageCompressionExtension;

    if-nez v3, :cond_0

    .line 542
    goto :goto_0

    .line 546
    :cond_0
    if-nez v0, :cond_1

    .line 549
    move-object v0, v2

    .line 550
    goto :goto_0

    .line 554
    :cond_1
    nop

    .line 556
    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocketExtension;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/neovisionaries/ws/client/WebSocketExtension;->getName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 554
    const-string v3, "\'%s\' extension and \'%s\' extension conflict with each other."

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 559
    .local v1, "message":Ljava/lang/String;
    new-instance v3, Lcom/neovisionaries/ws/client/OpeningHandshakeException;

    sget-object v4, Lcom/neovisionaries/ws/client/WebSocketError;->EXTENSIONS_CONFLICT:Lcom/neovisionaries/ws/client/WebSocketError;

    invoke-direct {v3, v4, v1, p1, p2}, Lcom/neovisionaries/ws/client/OpeningHandshakeException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;Lcom/neovisionaries/ws/client/StatusLine;Ljava/util/Map;)V

    throw v3

    .line 562
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "extension":Lcom/neovisionaries/ws/client/WebSocketExtension;
    :cond_2
    return-void
.end method

.method private validateExtensions(Lcom/neovisionaries/ws/client/StatusLine;Ljava/util/Map;)V
    .locals 11
    .param p1, "statusLine"    # Lcom/neovisionaries/ws/client/StatusLine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/neovisionaries/ws/client/StatusLine;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 471
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v0, "Sec-WebSocket-Extensions"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 473
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 479
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 481
    .local v1, "extensions":Ljava/util/List;, "Ljava/util/List<Lcom/neovisionaries/ws/client/WebSocketExtension;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 484
    .local v3, "value":Ljava/lang/String;
    const-string v4, "\\s*,\\s*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 486
    .local v4, "elements":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    .line 489
    .local v7, "element":Ljava/lang/String;
    invoke-static {v7}, Lcom/neovisionaries/ws/client/WebSocketExtension;->parse(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocketExtension;

    move-result-object v8

    .line 491
    .local v8, "extension":Lcom/neovisionaries/ws/client/WebSocketExtension;
    if-eqz v8, :cond_2

    .line 501
    invoke-virtual {v8}, Lcom/neovisionaries/ws/client/WebSocketExtension;->getName()Ljava/lang/String;

    move-result-object v9

    .line 504
    .local v9, "name":Ljava/lang/String;
    iget-object v10, p0, Lcom/neovisionaries/ws/client/HandshakeReader;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v10}, Lcom/neovisionaries/ws/client/WebSocket;->getHandshakeBuilder()Lcom/neovisionaries/ws/client/HandshakeBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/neovisionaries/ws/client/HandshakeBuilder;->containsExtension(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 514
    invoke-virtual {v8}, Lcom/neovisionaries/ws/client/WebSocketExtension;->validate()V

    .line 517
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    .end local v7    # "element":Ljava/lang/String;
    .end local v8    # "extension":Lcom/neovisionaries/ws/client/WebSocketExtension;
    .end local v9    # "name":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 507
    .restart local v7    # "element":Ljava/lang/String;
    .restart local v8    # "extension":Lcom/neovisionaries/ws/client/WebSocketExtension;
    .restart local v9    # "name":Ljava/lang/String;
    :cond_1
    new-instance v2, Lcom/neovisionaries/ws/client/OpeningHandshakeException;

    sget-object v5, Lcom/neovisionaries/ws/client/WebSocketError;->UNSUPPORTED_EXTENSION:Lcom/neovisionaries/ws/client/WebSocketError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The extension contained in the Sec-WebSocket-Extensions header is not supported: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6, p1, p2}, Lcom/neovisionaries/ws/client/OpeningHandshakeException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;Lcom/neovisionaries/ws/client/StatusLine;Ljava/util/Map;)V

    throw v2

    .line 494
    .end local v9    # "name":Ljava/lang/String;
    :cond_2
    new-instance v2, Lcom/neovisionaries/ws/client/OpeningHandshakeException;

    sget-object v5, Lcom/neovisionaries/ws/client/WebSocketError;->EXTENSION_PARSE_ERROR:Lcom/neovisionaries/ws/client/WebSocketError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The value in \'Sec-WebSocket-Extensions\' failed to be parsed: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6, p1, p2}, Lcom/neovisionaries/ws/client/OpeningHandshakeException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;Lcom/neovisionaries/ws/client/StatusLine;Ljava/util/Map;)V

    throw v2

    .line 519
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "elements":[Ljava/lang/String;
    .end local v7    # "element":Ljava/lang/String;
    .end local v8    # "extension":Lcom/neovisionaries/ws/client/WebSocketExtension;
    :cond_3
    goto :goto_0

    .line 522
    :cond_4
    invoke-direct {p0, p1, p2, v1}, Lcom/neovisionaries/ws/client/HandshakeReader;->validateExtensionCombination(Lcom/neovisionaries/ws/client/StatusLine;Ljava/util/Map;Ljava/util/List;)V

    .line 525
    iget-object v2, p0, Lcom/neovisionaries/ws/client/HandshakeReader;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v2, v1}, Lcom/neovisionaries/ws/client/WebSocket;->setAgreedExtensions(Ljava/util/List;)V

    .line 526
    return-void

    .line 476
    .end local v1    # "extensions":Ljava/util/List;, "Ljava/util/List<Lcom/neovisionaries/ws/client/WebSocketExtension;>;"
    :cond_5
    :goto_2
    return-void
.end method

.method private validateProtocol(Lcom/neovisionaries/ws/client/StatusLine;Ljava/util/Map;)V
    .locals 6
    .param p1, "statusLine"    # Lcom/neovisionaries/ws/client/StatusLine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/neovisionaries/ws/client/StatusLine;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 582
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v0, "Sec-WebSocket-Protocol"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 584
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 587
    return-void

    .line 591
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 593
    .local v1, "protocol":Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 601
    :cond_1
    iget-object v2, p0, Lcom/neovisionaries/ws/client/HandshakeReader;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v2}, Lcom/neovisionaries/ws/client/WebSocket;->getHandshakeBuilder()Lcom/neovisionaries/ws/client/HandshakeBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/neovisionaries/ws/client/HandshakeBuilder;->containsProtocol(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 611
    iget-object v2, p0, Lcom/neovisionaries/ws/client/HandshakeReader;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v2, v1}, Lcom/neovisionaries/ws/client/WebSocket;->setAgreedProtocol(Ljava/lang/String;)V

    .line 612
    return-void

    .line 604
    :cond_2
    new-instance v2, Lcom/neovisionaries/ws/client/OpeningHandshakeException;

    sget-object v3, Lcom/neovisionaries/ws/client/WebSocketError;->UNSUPPORTED_PROTOCOL:Lcom/neovisionaries/ws/client/WebSocketError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The protocol contained in the Sec-WebSocket-Protocol header is not supported: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, p1, p2}, Lcom/neovisionaries/ws/client/OpeningHandshakeException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;Lcom/neovisionaries/ws/client/StatusLine;Ljava/util/Map;)V

    throw v2

    .line 596
    :cond_3
    :goto_0
    return-void
.end method

.method private validateStatusLine(Lcom/neovisionaries/ws/client/StatusLine;Ljava/util/Map;Lcom/neovisionaries/ws/client/WebSocketInputStream;)V
    .locals 8
    .param p1, "statusLine"    # Lcom/neovisionaries/ws/client/StatusLine;
    .param p3, "input"    # Lcom/neovisionaries/ws/client/WebSocketInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/neovisionaries/ws/client/StatusLine;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/neovisionaries/ws/client/WebSocketInputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 222
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    .line 225
    return-void

    .line 229
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/neovisionaries/ws/client/HandshakeReader;->readBody(Ljava/util/Map;Lcom/neovisionaries/ws/client/WebSocketInputStream;)[B

    move-result-object v0

    .line 232
    .local v0, "body":[B
    new-instance v1, Lcom/neovisionaries/ws/client/OpeningHandshakeException;

    sget-object v3, Lcom/neovisionaries/ws/client/WebSocketError;->NOT_SWITCHING_PROTOCOLS:Lcom/neovisionaries/ws/client/WebSocketError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The status code of the opening handshake response is not \'101 Switching Protocols\'. The status line is: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v1

    move-object v5, p1

    move-object v6, p2

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/neovisionaries/ws/client/OpeningHandshakeException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;Lcom/neovisionaries/ws/client/StatusLine;Ljava/util/Map;[B)V

    throw v1
.end method

.method private validateUpgrade(Lcom/neovisionaries/ws/client/StatusLine;Ljava/util/Map;)V
    .locals 8
    .param p1, "statusLine"    # Lcom/neovisionaries/ws/client/StatusLine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/neovisionaries/ws/client/StatusLine;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 303
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v0, "Upgrade"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 305
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_3

    .line 314
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 317
    .local v2, "value":Ljava/lang/String;
    const-string v3, "\\s*,\\s*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 319
    .local v3, "elements":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 321
    .local v6, "element":Ljava/lang/String;
    const-string/jumbo v7, "websocket"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 324
    return-void

    .line 319
    .end local v6    # "element":Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 327
    .end local v2    # "value":Ljava/lang/String;
    .end local v3    # "elements":[Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 330
    :cond_2
    new-instance v1, Lcom/neovisionaries/ws/client/OpeningHandshakeException;

    sget-object v2, Lcom/neovisionaries/ws/client/WebSocketError;->NO_WEBSOCKET_IN_UPGRADE_HEADER:Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v3, "\'websocket\' was not found in \'Upgrade\' header."

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/neovisionaries/ws/client/OpeningHandshakeException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;Lcom/neovisionaries/ws/client/StatusLine;Ljava/util/Map;)V

    throw v1

    .line 308
    :cond_3
    new-instance v1, Lcom/neovisionaries/ws/client/OpeningHandshakeException;

    sget-object v2, Lcom/neovisionaries/ws/client/WebSocketError;->NO_UPGRADE_HEADER:Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v3, "The opening handshake response does not contain \'Upgrade\' header."

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/neovisionaries/ws/client/OpeningHandshakeException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;Lcom/neovisionaries/ws/client/StatusLine;Ljava/util/Map;)V

    throw v1
.end method


# virtual methods
.method public readHandshake(Lcom/neovisionaries/ws/client/WebSocketInputStream;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .param p1, "input"    # Lcom/neovisionaries/ws/client/WebSocketInputStream;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/neovisionaries/ws/client/WebSocketInputStream;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/HandshakeReader;->readStatusLine(Lcom/neovisionaries/ws/client/WebSocketInputStream;)Lcom/neovisionaries/ws/client/StatusLine;

    move-result-object v0

    .line 51
    .local v0, "statusLine":Lcom/neovisionaries/ws/client/StatusLine;
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/HandshakeReader;->readHttpHeaders(Lcom/neovisionaries/ws/client/WebSocketInputStream;)Ljava/util/Map;

    move-result-object v1

    .line 54
    .local v1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0, v0, v1, p1}, Lcom/neovisionaries/ws/client/HandshakeReader;->validateStatusLine(Lcom/neovisionaries/ws/client/StatusLine;Ljava/util/Map;Lcom/neovisionaries/ws/client/WebSocketInputStream;)V

    .line 57
    invoke-direct {p0, v0, v1}, Lcom/neovisionaries/ws/client/HandshakeReader;->validateUpgrade(Lcom/neovisionaries/ws/client/StatusLine;Ljava/util/Map;)V

    .line 60
    invoke-direct {p0, v0, v1}, Lcom/neovisionaries/ws/client/HandshakeReader;->validateConnection(Lcom/neovisionaries/ws/client/StatusLine;Ljava/util/Map;)V

    .line 63
    invoke-direct {p0, v0, v1, p2}, Lcom/neovisionaries/ws/client/HandshakeReader;->validateAccept(Lcom/neovisionaries/ws/client/StatusLine;Ljava/util/Map;Ljava/lang/String;)V

    .line 66
    invoke-direct {p0, v0, v1}, Lcom/neovisionaries/ws/client/HandshakeReader;->validateExtensions(Lcom/neovisionaries/ws/client/StatusLine;Ljava/util/Map;)V

    .line 69
    invoke-direct {p0, v0, v1}, Lcom/neovisionaries/ws/client/HandshakeReader;->validateProtocol(Lcom/neovisionaries/ws/client/StatusLine;Ljava/util/Map;)V

    .line 72
    return-object v1
.end method
