.class public Lcom/facebook/react/modules/blob/BlobModule;
.super Lcom/facebook/fbreact/specs/NativeBlobModuleSpec;
.source "BlobModule.java"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "BlobModule"
.end annotation


# instance fields
.field private final mBlobs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private final mNetworkingRequestBodyHandler:Lcom/facebook/react/modules/network/NetworkingModule$RequestBodyHandler;

.field private final mNetworkingResponseHandler:Lcom/facebook/react/modules/network/NetworkingModule$ResponseHandler;

.field private final mNetworkingUriHandler:Lcom/facebook/react/modules/network/NetworkingModule$UriHandler;

.field private final mWebSocketContentHandler:Lcom/facebook/react/modules/websocket/WebSocketModule$ContentHandler;


# direct methods
.method static bridge synthetic -$$Nest$mgetBytesFromUri(Lcom/facebook/react/modules/blob/BlobModule;Landroid/net/Uri;)[B
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/react/modules/blob/BlobModule;->getBytesFromUri(Landroid/net/Uri;)[B

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetLastModifiedFromUri(Lcom/facebook/react/modules/blob/BlobModule;Landroid/net/Uri;)J
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/react/modules/blob/BlobModule;->getLastModifiedFromUri(Landroid/net/Uri;)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic -$$Nest$mgetMimeTypeFromUri(Lcom/facebook/react/modules/blob/BlobModule;Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/react/modules/blob/BlobModule;->getMimeTypeFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetNameFromUri(Lcom/facebook/react/modules/blob/BlobModule;Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/react/modules/blob/BlobModule;->getNameFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 142
    invoke-direct {p0, p1}, Lcom/facebook/fbreact/specs/NativeBlobModuleSpec;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/modules/blob/BlobModule;->mBlobs:Ljava/util/Map;

    .line 49
    new-instance v0, Lcom/facebook/react/modules/blob/BlobModule$1;

    invoke-direct {v0, p0}, Lcom/facebook/react/modules/blob/BlobModule$1;-><init>(Lcom/facebook/react/modules/blob/BlobModule;)V

    iput-object v0, p0, Lcom/facebook/react/modules/blob/BlobModule;->mWebSocketContentHandler:Lcom/facebook/react/modules/websocket/WebSocketModule$ContentHandler;

    .line 71
    new-instance v0, Lcom/facebook/react/modules/blob/BlobModule$2;

    invoke-direct {v0, p0}, Lcom/facebook/react/modules/blob/BlobModule$2;-><init>(Lcom/facebook/react/modules/blob/BlobModule;)V

    iput-object v0, p0, Lcom/facebook/react/modules/blob/BlobModule;->mNetworkingUriHandler:Lcom/facebook/react/modules/network/NetworkingModule$UriHandler;

    .line 99
    new-instance v0, Lcom/facebook/react/modules/blob/BlobModule$3;

    invoke-direct {v0, p0}, Lcom/facebook/react/modules/blob/BlobModule$3;-><init>(Lcom/facebook/react/modules/blob/BlobModule;)V

    iput-object v0, p0, Lcom/facebook/react/modules/blob/BlobModule;->mNetworkingRequestBodyHandler:Lcom/facebook/react/modules/network/NetworkingModule$RequestBodyHandler;

    .line 123
    new-instance v0, Lcom/facebook/react/modules/blob/BlobModule$4;

    invoke-direct {v0, p0}, Lcom/facebook/react/modules/blob/BlobModule$4;-><init>(Lcom/facebook/react/modules/blob/BlobModule;)V

    iput-object v0, p0, Lcom/facebook/react/modules/blob/BlobModule;->mNetworkingResponseHandler:Lcom/facebook/react/modules/network/NetworkingModule$ResponseHandler;

    .line 143
    return-void
.end method

.method private getBytesFromUri(Landroid/net/Uri;)[B
    .locals 7
    .param p1, "contentUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    invoke-virtual {p0}, Lcom/facebook/react/modules/blob/BlobModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 230
    .local v0, "is":Ljava/io/InputStream;
    if-eqz v0, :cond_1

    .line 234
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 235
    .local v1, "byteBuffer":Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0x400

    .line 236
    .local v2, "bufferSize":I
    new-array v3, v2, [B

    .line 238
    .local v3, "buffer":[B
    :goto_0
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v5, v4

    .local v5, "len":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    .line 239
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 241
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    .line 231
    .end local v1    # "byteBuffer":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "bufferSize":I
    .end local v3    # "buffer":[B
    .end local v5    # "len":I
    :cond_1
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File not found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getLastModifiedFromUri(Landroid/net/Uri;)J
    .locals 2
    .param p1, "contentUri"    # Landroid/net/Uri;

    .line 266
    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0

    .line 269
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private getMimeTypeFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "contentUri"    # Landroid/net/Uri;

    .line 273
    invoke-virtual {p0}, Lcom/facebook/react/modules/blob/BlobModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "type":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 276
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, "ext":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 278
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 282
    .end local v1    # "ext":Ljava/lang/String;
    :cond_0
    if-nez v0, :cond_1

    .line 283
    const-string v0, ""

    .line 286
    :cond_1
    return-object v0
.end method

.method private getNameFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .param p1, "contentUri"    # Landroid/net/Uri;

    .line 245
    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 248
    :cond_0
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "_display_name"

    const/4 v7, 0x0

    aput-object v0, v3, v7

    .line 249
    .local v3, "projection":[Ljava/lang/String;
    nop

    .line 250
    invoke-virtual {p0}, Lcom/facebook/react/modules/blob/BlobModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 252
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 253
    .local v0, "metaCursor":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 255
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 256
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 256
    return-object v1

    .line 259
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 260
    goto :goto_0

    .line 259
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 260
    throw v1

    .line 262
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getWebSocketModule(Ljava/lang/String;)Lcom/facebook/react/modules/websocket/WebSocketModule;
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 290
    invoke-virtual {p0}, Lcom/facebook/react/modules/blob/BlobModule;->getReactApplicationContextIfActiveOrWarn()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    .line 292
    .local v0, "reactApplicationContext":Lcom/facebook/react/bridge/ReactApplicationContext;
    if-eqz v0, :cond_0

    .line 293
    const-class v1, Lcom/facebook/react/modules/websocket/WebSocketModule;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/modules/websocket/WebSocketModule;

    return-object v1

    .line 296
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public addNetworkingHandler()V
    .locals 3

    .line 301
    invoke-virtual {p0}, Lcom/facebook/react/modules/blob/BlobModule;->getReactApplicationContextIfActiveOrWarn()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    .line 303
    .local v0, "reactApplicationContext":Lcom/facebook/react/bridge/ReactApplicationContext;
    if-eqz v0, :cond_0

    .line 304
    const-class v1, Lcom/facebook/react/modules/network/NetworkingModule;

    .line 305
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/modules/network/NetworkingModule;

    .line 306
    .local v1, "networkingModule":Lcom/facebook/react/modules/network/NetworkingModule;
    iget-object v2, p0, Lcom/facebook/react/modules/blob/BlobModule;->mNetworkingUriHandler:Lcom/facebook/react/modules/network/NetworkingModule$UriHandler;

    invoke-virtual {v1, v2}, Lcom/facebook/react/modules/network/NetworkingModule;->addUriHandler(Lcom/facebook/react/modules/network/NetworkingModule$UriHandler;)V

    .line 307
    iget-object v2, p0, Lcom/facebook/react/modules/blob/BlobModule;->mNetworkingRequestBodyHandler:Lcom/facebook/react/modules/network/NetworkingModule$RequestBodyHandler;

    invoke-virtual {v1, v2}, Lcom/facebook/react/modules/network/NetworkingModule;->addRequestBodyHandler(Lcom/facebook/react/modules/network/NetworkingModule$RequestBodyHandler;)V

    .line 308
    iget-object v2, p0, Lcom/facebook/react/modules/blob/BlobModule;->mNetworkingResponseHandler:Lcom/facebook/react/modules/network/NetworkingModule$ResponseHandler;

    invoke-virtual {v1, v2}, Lcom/facebook/react/modules/network/NetworkingModule;->addResponseHandler(Lcom/facebook/react/modules/network/NetworkingModule$ResponseHandler;)V

    .line 310
    .end local v1    # "networkingModule":Lcom/facebook/react/modules/network/NetworkingModule;
    :cond_0
    return-void
.end method

.method public addWebSocketHandler(D)V
    .locals 3
    .param p1, "idDouble"    # D

    .line 314
    double-to-int v0, p1

    .line 316
    .local v0, "id":I
    const-string v1, "addWebSocketHandler"

    invoke-direct {p0, v1}, Lcom/facebook/react/modules/blob/BlobModule;->getWebSocketModule(Ljava/lang/String;)Lcom/facebook/react/modules/websocket/WebSocketModule;

    move-result-object v1

    .line 318
    .local v1, "webSocketModule":Lcom/facebook/react/modules/websocket/WebSocketModule;
    if-eqz v1, :cond_0

    .line 319
    iget-object v2, p0, Lcom/facebook/react/modules/blob/BlobModule;->mWebSocketContentHandler:Lcom/facebook/react/modules/websocket/WebSocketModule$ContentHandler;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/react/modules/websocket/WebSocketModule;->setContentHandler(ILcom/facebook/react/modules/websocket/WebSocketModule$ContentHandler;)V

    .line 321
    :cond_0
    return-void
.end method

.method public createFromParts(Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;)V
    .locals 8
    .param p1, "parts"    # Lcom/facebook/react/bridge/ReadableArray;
    .param p2, "blobId"    # Ljava/lang/String;

    .line 353
    const/4 v0, 0x0

    .line 354
    .local v0, "totalBlobSize":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 355
    .local v1, "partList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 356
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v3

    .line 357
    .local v3, "part":Lcom/facebook/react/bridge/ReadableMap;
    const-string/jumbo v4, "type"

    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v6, "blob"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    goto :goto_2

    :sswitch_1
    const-string/jumbo v6, "string"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_2

    :goto_1
    const/4 v5, -0x1

    :goto_2
    const-string v6, "data"

    packed-switch v5, :pswitch_data_0

    .line 369
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid type for blob: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 364
    :pswitch_0
    invoke-interface {v3, v6}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 365
    .local v4, "bytes":[B
    array-length v5, v4

    add-int/2addr v0, v5

    .line 366
    invoke-virtual {v1, v2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 367
    goto :goto_3

    .line 359
    .end local v4    # "bytes":[B
    :pswitch_1
    invoke-interface {v3, v6}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v4

    .line 360
    .local v4, "blob":Lcom/facebook/react/bridge/ReadableMap;
    const-string/jumbo v5, "size"

    invoke-interface {v4, v5}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v0, v5

    .line 361
    invoke-virtual {p0, v4}, Lcom/facebook/react/modules/blob/BlobModule;->resolve(Lcom/facebook/react/bridge/ReadableMap;)[B

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 362
    nop

    .line 355
    .end local v3    # "part":Lcom/facebook/react/bridge/ReadableMap;
    .end local v4    # "blob":Lcom/facebook/react/bridge/ReadableMap;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 372
    .end local v2    # "i":I
    :cond_1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 373
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 374
    .local v4, "bytes":[B
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 375
    .end local v4    # "bytes":[B
    goto :goto_4

    .line 376
    :cond_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/facebook/react/modules/blob/BlobModule;->store([BLjava/lang/String;)V

    .line 377
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x352a9fef -> :sswitch_1
        0x2e2f9d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getLengthOfBlob(Ljava/lang/String;)J
    .locals 4
    .param p1, "blobId"    # Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lcom/facebook/react/modules/blob/BlobModule;->mBlobs:Ljava/util/Map;

    monitor-enter v0

    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/modules/blob/BlobModule;->mBlobs:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 181
    .local v1, "data":[B
    if-eqz v1, :cond_0

    array-length v2, v1

    int-to-long v2, v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    monitor-exit v0

    return-wide v2

    .line 182
    .end local v1    # "data":[B
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTypedExportedConstants()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 154
    invoke-virtual {p0}, Lcom/facebook/react/modules/blob/BlobModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 155
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/facebook/react/modules/blob/BlobModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "packageName":Ljava/lang/String;
    const-string v2, "blob_provider_authority"

    const-string/jumbo v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 157
    .local v2, "resourceId":I
    if-nez v2, :cond_0

    .line 158
    invoke-static {}, Lcom/facebook/react/common/MapBuilder;->of()Ljava/util/Map;

    move-result-object v3

    return-object v3

    .line 161
    :cond_0
    nop

    .line 162
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 161
    const-string v4, "BLOB_URI_SCHEME"

    const-string v5, "content"

    const-string v6, "BLOB_URI_HOST"

    invoke-static {v4, v5, v6, v3}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    return-object v3
.end method

.method public initialize()V
    .locals 1

    .line 147
    invoke-virtual {p0}, Lcom/facebook/react/modules/blob/BlobModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/facebook/react/modules/blob/BlobCollector;->install(Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/modules/blob/BlobModule;)V

    .line 148
    return-void
.end method

.method public release(Ljava/lang/String;)V
    .locals 0
    .param p1, "blobId"    # Ljava/lang/String;

    .line 381
    invoke-virtual {p0, p1}, Lcom/facebook/react/modules/blob/BlobModule;->remove(Ljava/lang/String;)V

    .line 382
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2
    .param p1, "blobId"    # Ljava/lang/String;

    .line 187
    iget-object v0, p0, Lcom/facebook/react/modules/blob/BlobModule;->mBlobs:Ljava/util/Map;

    monitor-enter v0

    .line 188
    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/modules/blob/BlobModule;->mBlobs:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    monitor-exit v0

    .line 190
    return-void

    .line 189
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeWebSocketHandler(D)V
    .locals 3
    .param p1, "idDouble"    # D

    .line 325
    double-to-int v0, p1

    .line 327
    .local v0, "id":I
    const-string/jumbo v1, "removeWebSocketHandler"

    invoke-direct {p0, v1}, Lcom/facebook/react/modules/blob/BlobModule;->getWebSocketModule(Ljava/lang/String;)Lcom/facebook/react/modules/websocket/WebSocketModule;

    move-result-object v1

    .line 329
    .local v1, "webSocketModule":Lcom/facebook/react/modules/websocket/WebSocketModule;
    if-eqz v1, :cond_0

    .line 330
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/facebook/react/modules/websocket/WebSocketModule;->setContentHandler(ILcom/facebook/react/modules/websocket/WebSocketModule$ContentHandler;)V

    .line 332
    :cond_0
    return-void
.end method

.method public resolve(Landroid/net/Uri;)[B
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .line 193
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "blobId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 195
    .local v1, "offset":I
    const/4 v2, -0x1

    .line 196
    .local v2, "size":I
    const-string/jumbo v3, "offset"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 197
    .local v3, "offsetParam":Ljava/lang/String;
    const/16 v4, 0xa

    if-eqz v3, :cond_0

    .line 198
    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 200
    :cond_0
    const-string/jumbo v5, "size"

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 201
    .local v5, "sizeParam":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 202
    invoke-static {v5, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 204
    :cond_1
    invoke-virtual {p0, v0, v1, v2}, Lcom/facebook/react/modules/blob/BlobModule;->resolve(Ljava/lang/String;II)[B

    move-result-object v4

    return-object v4
.end method

.method public resolve(Lcom/facebook/react/bridge/ReadableMap;)[B
    .locals 3
    .param p1, "blob"    # Lcom/facebook/react/bridge/ReadableMap;

    .line 224
    const-string v0, "blobId"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "offset"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "size"

    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/facebook/react/modules/blob/BlobModule;->resolve(Ljava/lang/String;II)[B

    move-result-object v0

    return-object v0
.end method

.method public resolve(Ljava/lang/String;II)[B
    .locals 3
    .param p1, "blobId"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "size"    # I

    .line 208
    iget-object v0, p0, Lcom/facebook/react/modules/blob/BlobModule;->mBlobs:Ljava/util/Map;

    monitor-enter v0

    .line 209
    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/modules/blob/BlobModule;->mBlobs:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 210
    .local v1, "data":[B
    if-nez v1, :cond_0

    .line 211
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 213
    :cond_0
    const/4 v2, -0x1

    if-ne p3, v2, :cond_1

    .line 214
    array-length v2, v1

    sub-int p3, v2, p2

    .line 216
    :cond_1
    if-gtz p2, :cond_2

    array-length v2, v1

    if-eq p3, v2, :cond_3

    .line 217
    :cond_2
    add-int v2, p2, p3

    invoke-static {v1, p2, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    move-object v1, v2

    .line 219
    :cond_3
    monitor-exit v0

    return-object v1

    .line 220
    .end local v1    # "data":[B
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendOverSocket(Lcom/facebook/react/bridge/ReadableMap;D)V
    .locals 5
    .param p1, "blob"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p2, "idDouble"    # D

    .line 336
    double-to-int v0, p2

    .line 338
    .local v0, "id":I
    const-string/jumbo v1, "sendOverSocket"

    invoke-direct {p0, v1}, Lcom/facebook/react/modules/blob/BlobModule;->getWebSocketModule(Ljava/lang/String;)Lcom/facebook/react/modules/websocket/WebSocketModule;

    move-result-object v1

    .line 340
    .local v1, "webSocketModule":Lcom/facebook/react/modules/websocket/WebSocketModule;
    if-eqz v1, :cond_1

    .line 341
    const-string v2, "blobId"

    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "offset"

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "size"

    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/facebook/react/modules/blob/BlobModule;->resolve(Ljava/lang/String;II)[B

    move-result-object v2

    .line 343
    .local v2, "data":[B
    if-eqz v2, :cond_0

    .line 344
    invoke-static {v2}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/facebook/react/modules/websocket/WebSocketModule;->sendBinary(Lokio/ByteString;I)V

    goto :goto_0

    .line 346
    :cond_0
    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, Lokio/ByteString;

    invoke-virtual {v1, v3, v0}, Lcom/facebook/react/modules/websocket/WebSocketModule;->sendBinary(Lokio/ByteString;I)V

    .line 349
    .end local v2    # "data":[B
    :cond_1
    :goto_0
    return-void
.end method

.method public store([B)Ljava/lang/String;
    .locals 1
    .param p1, "data"    # [B

    .line 166
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "blobId":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/facebook/react/modules/blob/BlobModule;->store([BLjava/lang/String;)V

    .line 168
    return-object v0
.end method

.method public store([BLjava/lang/String;)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "blobId"    # Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lcom/facebook/react/modules/blob/BlobModule;->mBlobs:Ljava/util/Map;

    monitor-enter v0

    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/modules/blob/BlobModule;->mBlobs:Ljava/util/Map;

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    monitor-exit v0

    .line 175
    return-void

    .line 174
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
