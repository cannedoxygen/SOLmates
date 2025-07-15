.class Lcom/neovisionaries/ws/client/PerMessageDeflateExtension;
.super Lcom/neovisionaries/ws/client/PerMessageCompressionExtension;
.source "PerMessageDeflateExtension.java"


# static fields
.field private static final CLIENT_MAX_WINDOW_BITS:Ljava/lang/String; = "client_max_window_bits"

.field private static final CLIENT_NO_CONTEXT_TAKEOVER:Ljava/lang/String; = "client_no_context_takeover"

.field private static final COMPRESSION_TERMINATOR:[B

.field private static final INCOMING_SLIDING_WINDOW_MARGIN:I = 0x400

.field private static final MAX_BITS:I = 0xf

.field private static final MAX_WINDOW_SIZE:I = 0x8000

.field private static final MIN_BITS:I = 0x8

.field private static final MIN_WINDOW_SIZE:I = 0x100

.field private static final SERVER_MAX_WINDOW_BITS:Ljava/lang/String; = "server_max_window_bits"

.field private static final SERVER_NO_CONTEXT_TAKEOVER:Ljava/lang/String; = "server_no_context_takeover"


# instance fields
.field private mClientNoContextTakeover:Z

.field private mClientWindowSize:I

.field private mIncomingSlidingWindow:Lcom/neovisionaries/ws/client/ByteArray;

.field private mIncomingSlidingWindowBufferSize:I

.field private mServerNoContextTakeover:Z

.field private mServerWindowSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/neovisionaries/ws/client/PerMessageDeflateExtension;->COMPRESSION_TERMINATOR:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    const-string v0, "permessage-deflate"

    invoke-direct {p0, v0}, Lcom/neovisionaries/ws/client/PerMessageCompressionExtension;-><init>(Ljava/lang/String;)V

    .line 46
    const v0, 0x8000

    iput v0, p0, Lcom/neovisionaries/ws/client/PerMessageDeflateExtension;->mServerWindowSize:I

    .line 47
    iput v0, p0, Lcom/neovisionaries/ws/client/PerMessageDeflateExtension;->mClientWindowSize:I

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 60
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/PerMessageCompressionExtension;-><init>(Ljava/lang/String;)V

    .line 46
    const v0, 0x8000

    iput v0, p0, Lcom/neovisionaries/ws/client/PerMessageDeflateExtension;->mServerWindowSize:I

    .line 47
    iput v0, p0, Lcom/neovisionaries/ws/client/PerMessageDeflateExtension;->mClientWindowSize:I

    .line 61
    return-void
.end method

.method private static adjustCompressedData([B)[B
    .locals 6
    .param p0, "compressed"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/FormatException;
        }
    .end annotation

    .line 353
    new-instance v0, Lcom/neovisionaries/ws/client/ByteArray;

    array-length v1, p0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Lcom/neovisionaries/ws/client/ByteArray;-><init>(I)V

    .line 354
    .local v0, "data":Lcom/neovisionaries/ws/client/ByteArray;
    invoke-virtual {v0, p0}, Lcom/neovisionaries/ws/client/ByteArray;->put([B)V

    .line 357
    new-array v1, v2, [I

    .line 361
    .local v1, "bitIndex":[I
    new-array v3, v2, [Z

    .line 365
    .local v3, "hasEmptyBlock":[Z
    :goto_0
    invoke-static {v0, v1, v3}, Lcom/neovisionaries/ws/client/PerMessageDeflateExtension;->skipBlock(Lcom/neovisionaries/ws/client/ByteArray;[I[Z)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 368
    :cond_0
    const/4 v4, 0x0

    aget-boolean v5, v3, v4

    if-eqz v5, :cond_1

    .line 372
    aget v5, v1, v4

    sub-int/2addr v5, v2

    div-int/lit8 v5, v5, 0x8

    add-int/2addr v5, v2

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v0, v4, v5}, Lcom/neovisionaries/ws/client/ByteArray;->toBytes(II)[B

    move-result-object v2

    return-object v2

    .line 384
    :cond_1
    invoke-static {v0, v1}, Lcom/neovisionaries/ws/client/PerMessageDeflateExtension;->appendEmptyBlock(Lcom/neovisionaries/ws/client/ByteArray;[I)V

    .line 387
    aget v5, v1, v4

    sub-int/2addr v5, v2

    div-int/lit8 v5, v5, 0x8

    add-int/2addr v5, v2

    invoke-virtual {v0, v4, v5}, Lcom/neovisionaries/ws/client/ByteArray;->toBytes(II)[B

    move-result-object v2

    return-object v2
.end method

.method private static appendEmptyBlock(Lcom/neovisionaries/ws/client/ByteArray;[I)V
    .locals 3
    .param p0, "data"    # Lcom/neovisionaries/ws/client/ByteArray;
    .param p1, "bitIndex"    # [I

    .line 393
    const/4 v0, 0x0

    aget v1, p1, v0

    rem-int/lit8 v1, v1, 0x8

    .line 408
    .local v1, "shift":I
    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 413
    :sswitch_0
    invoke-virtual {p0, v0}, Lcom/neovisionaries/ws/client/ByteArray;->put(I)V

    .line 417
    :goto_0
    aget v2, p1, v0

    add-int/lit8 v2, v2, 0x3

    aput v2, p1, v0

    .line 418
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method private canCompress([B)Z
    .locals 3
    .param p1, "plain"    # [B

    .line 324
    iget v0, p0, Lcom/neovisionaries/ws/client/PerMessageDeflateExtension;->mClientWindowSize:I

    const v1, 0x8000

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 327
    return v2

    .line 336
    :cond_0
    array-length v0, p1

    iget v1, p0, Lcom/neovisionaries/ws/client/PerMessageDeflateExtension;->mClientWindowSize:I

    if-ge v0, v1, :cond_1

    .line 339
    return v2

    .line 345
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private computeWindowSize(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/neovisionaries/ws/client/PerMessageDeflateExtension;->extractMaxWindowBits(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 132
    .local v0, "bits":I
    const/16 v1, 0x100

    .line 134
    .local v1, "size":I
    const/16 v2, 0x8

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 136
    mul-int/lit8 v1, v1, 0x2

    .line 134
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 139
    .end local v2    # "i":I
    :cond_0
    return v1
.end method

.method private extractMaxWindowBits(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 145
    invoke-direct {p0, p2}, Lcom/neovisionaries/ws/client/PerMessageDeflateExtension;->parseMaxWindowBits(Ljava/lang/String;)I

    move-result v0

    .line 147
    .local v0, "bits":I
    if-ltz v0, :cond_0

    .line 157
    return v0

    .line 149
    :cond_0
    const-string v1, "The value of %s parameter of permessage-deflate extension is invalid: %s"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v3, Lcom/neovisionaries/ws/client/WebSocketError;->PERMESSAGE_DEFLATE_INVALID_MAX_WINDOW_BITS:Lcom/neovisionaries/ws/client/WebSocketError;

    invoke-direct {v2, v3, v1}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;)V

    throw v2
.end method

.method private parseMaxWindowBits(Ljava/lang/String;)I
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .line 163
    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 165
    return v0

    .line 172
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .local v1, "bits":I
    nop

    .line 179
    const/16 v2, 0x8

    if-lt v1, v2, :cond_2

    const/16 v2, 0xf

    if-ge v2, v1, :cond_1

    goto :goto_0

    .line 184
    :cond_1
    return v1

    .line 181
    :cond_2
    :goto_0
    return v0

    .line 174
    .end local v1    # "bits":I
    :catch_0
    move-exception v1

    .line 176
    .local v1, "e":Ljava/lang/NumberFormatException;
    return v0
.end method

.method private static skipBlock(Lcom/neovisionaries/ws/client/ByteArray;[I[Z)Z
    .locals 7
    .param p0, "input"    # Lcom/neovisionaries/ws/client/ByteArray;
    .param p1, "bitIndex"    # [I
    .param p2, "hasEmptyBlock"    # [Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/FormatException;
        }
    .end annotation

    .line 428
    invoke-virtual {p0, p1}, Lcom/neovisionaries/ws/client/ByteArray;->readBit([I)Z

    move-result v0

    .line 430
    .local v0, "last":Z
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 434
    aget v3, p1, v2

    sub-int/2addr v3, v1

    invoke-virtual {p0, v3}, Lcom/neovisionaries/ws/client/ByteArray;->clearBit(I)V

    .line 445
    :cond_0
    const/4 v3, 0x2

    invoke-virtual {p0, p1, v3}, Lcom/neovisionaries/ws/client/ByteArray;->readBits([II)I

    move-result v3

    .line 448
    .local v3, "type":I
    const/4 v4, 0x0

    .line 450
    .local v4, "plain0":Z
    packed-switch v3, :pswitch_data_0

    .line 471
    nop

    .line 473
    const-class v1, Lcom/neovisionaries/ws/client/PerMessageDeflateExtension;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    aget v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 471
    const-string v2, "[%s] Bad compression type \'11\' at the bit index \'%d\'."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 475
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Lcom/neovisionaries/ws/client/FormatException;

    invoke-direct {v2, v1}, Lcom/neovisionaries/ws/client/FormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 465
    .end local v1    # "message":Ljava/lang/String;
    :pswitch_0
    invoke-static {p0, p1}, Lcom/neovisionaries/ws/client/PerMessageDeflateExtension;->skipDynamicBlock(Lcom/neovisionaries/ws/client/ByteArray;[I)V

    .line 466
    goto :goto_1

    .line 460
    :pswitch_1
    invoke-static {p0, p1}, Lcom/neovisionaries/ws/client/PerMessageDeflateExtension;->skipFixedBlock(Lcom/neovisionaries/ws/client/ByteArray;[I)V

    .line 461
    goto :goto_1

    .line 455
    :pswitch_2
    invoke-static {p0, p1}, Lcom/neovisionaries/ws/client/PerMessageDeflateExtension;->skipPlainBlock(Lcom/neovisionaries/ws/client/ByteArray;[I)I

    move-result v5

    if-nez v5, :cond_1

    move v5, v1

    goto :goto_0

    :cond_1
    move v5, v2

    :goto_0
    move v4, v5

    .line 456
    nop

    .line 479
    :goto_1
    invoke-virtual {p0}, Lcom/neovisionaries/ws/client/ByteArray;->length()I

    move-result v5

    aget v6, p1, v2

    div-int/lit8 v6, v6, 0x8

    if-gt v5, v6, :cond_2

    .line 482
    const/4 v0, 0x1

    .line 485
    :cond_2
    if-eqz v0, :cond_3

    if-eqz v4, :cond_3

    .line 488
    aput-boolean v1, p2, v2

    .line 492
    :cond_3
    xor-int/lit8 v1, v0, 0x1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static skipData(Lcom/neovisionaries/ws/client/ByteArray;[ILcom/neovisionaries/ws/client/Huffman;Lcom/neovisionaries/ws/client/Huffman;)V
    .locals 2
    .param p0, "input"    # Lcom/neovisionaries/ws/client/ByteArray;
    .param p1, "bitIndex"    # [I
    .param p2, "literalLengthHuffman"    # Lcom/neovisionaries/ws/client/Huffman;
    .param p3, "distanceHuffman"    # Lcom/neovisionaries/ws/client/Huffman;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/FormatException;
        }
    .end annotation

    .line 566
    nop

    :goto_0
    invoke-virtual {p2, p0, p1}, Lcom/neovisionaries/ws/client/Huffman;->readSym(Lcom/neovisionaries/ws/client/ByteArray;[I)I

    move-result v0

    .line 569
    .local v0, "literalLength":I
    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    .line 572
    nop

    .line 590
    .end local v0    # "literalLength":I
    return-void

    .line 576
    .restart local v0    # "literalLength":I
    :cond_0
    if-ltz v0, :cond_1

    const/16 v1, 0xff

    if-gt v0, v1, :cond_1

    .line 579
    goto :goto_0

    .line 585
    :cond_1
    invoke-static {p0, p1, v0}, Lcom/neovisionaries/ws/client/DeflateUtil;->readLength(Lcom/neovisionaries/ws/client/ByteArray;[II)I

    .line 588
    invoke-static {p0, p1, p3}, Lcom/neovisionaries/ws/client/DeflateUtil;->readDistance(Lcom/neovisionaries/ws/client/ByteArray;[ILcom/neovisionaries/ws/client/Huffman;)I

    .line 589
    .end local v0    # "literalLength":I
    goto :goto_0
.end method

.method private static skipDynamicBlock(Lcom/neovisionaries/ws/client/ByteArray;[I)V
    .locals 3
    .param p0, "input"    # Lcom/neovisionaries/ws/client/ByteArray;
    .param p1, "bitIndex"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/FormatException;
        }
    .end annotation

    .line 550
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/neovisionaries/ws/client/Huffman;

    .line 551
    .local v0, "tables":[Lcom/neovisionaries/ws/client/Huffman;
    invoke-static {p0, p1, v0}, Lcom/neovisionaries/ws/client/DeflateUtil;->readDynamicTables(Lcom/neovisionaries/ws/client/ByteArray;[I[Lcom/neovisionaries/ws/client/Huffman;)V

    .line 553
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {p0, p1, v1, v2}, Lcom/neovisionaries/ws/client/PerMessageDeflateExtension;->skipData(Lcom/neovisionaries/ws/client/ByteArray;[ILcom/neovisionaries/ws/client/Huffman;Lcom/neovisionaries/ws/client/Huffman;)V

    .line 554
    return-void
.end method

.method private static skipFixedBlock(Lcom/neovisionaries/ws/client/ByteArray;[I)V
    .locals 2
    .param p0, "input"    # Lcom/neovisionaries/ws/client/ByteArray;
    .param p1, "bitIndex"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/FormatException;
        }
    .end annotation

    .line 537
    nop

    .line 538
    invoke-static {}, Lcom/neovisionaries/ws/client/FixedLiteralLengthHuffman;->getInstance()Lcom/neovisionaries/ws/client/FixedLiteralLengthHuffman;

    move-result-object v0

    .line 539
    invoke-static {}, Lcom/neovisionaries/ws/client/FixedDistanceHuffman;->getInstance()Lcom/neovisionaries/ws/client/FixedDistanceHuffman;

    move-result-object v1

    .line 537
    invoke-static {p0, p1, v0, v1}, Lcom/neovisionaries/ws/client/PerMessageDeflateExtension;->skipData(Lcom/neovisionaries/ws/client/ByteArray;[ILcom/neovisionaries/ws/client/Huffman;Lcom/neovisionaries/ws/client/Huffman;)V

    .line 540
    return-void
.end method

.method private static skipPlainBlock(Lcom/neovisionaries/ws/client/ByteArray;[I)I
    .locals 5
    .param p0, "input"    # Lcom/neovisionaries/ws/client/ByteArray;
    .param p1, "bitIndex"    # [I

    .line 501
    const/4 v0, 0x0

    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x7

    and-int/lit8 v1, v1, -0x8

    .line 505
    .local v1, "bi":I
    div-int/lit8 v2, v1, 0x8

    .line 508
    .local v2, "index":I
    invoke-virtual {p0, v2}, Lcom/neovisionaries/ws/client/ByteArray;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Lcom/neovisionaries/ws/client/ByteArray;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    mul-int/lit16 v4, v4, 0x100

    add-int/2addr v3, v4

    .line 513
    .local v3, "len":I
    add-int/lit8 v2, v2, 0x4

    .line 517
    add-int v4, v2, v3

    mul-int/lit8 v4, v4, 0x8

    aput v4, p1, v0

    .line 519
    return v3
.end method

.method private validateParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 103
    const-string v0, "server_no_context_takeover"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 105
    iput-boolean v1, p0, Lcom/neovisionaries/ws/client/PerMessageDeflateExtension;->mServerNoContextTakeover:Z

    goto :goto_0

    .line 107
    :cond_0
    const-string v0, "client_no_context_takeover"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    iput-boolean v1, p0, Lcom/neovisionaries/ws/client/PerMessageDeflateExtension;->mClientNoContextTakeover:Z

    goto :goto_0

    .line 111
    :cond_1
    const-string v0, "server_max_window_bits"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/neovisionaries/ws/client/PerMessageDeflateExtension;->computeWindowSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/neovisionaries/ws/client/PerMessageDeflateExtension;->mServerWindowSize:I

    goto :goto_0

    .line 115
    :cond_2
    const-string v0, "client_max_window_bits"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/neovisionaries/ws/client/PerMessageDeflateExtension;->computeWindowSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/neovisionaries/ws/client/PerMessageDeflateExtension;->mClientWindowSize:I

    .line 126
    :goto_0
    return-void

    .line 122
    :cond_3
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->PERMESSAGE_DEFLATE_UNSUPPORTED_PARAMETER:Lcom/neovisionaries/ws/client/WebSocketError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "permessage-deflate extension contains an unsupported parameter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected compress([B)[B
    .locals 5
    .param p1, "plain"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 262
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/PerMessageDeflateExtension;->canCompress([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    return-object p1

    .line 287
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/neovisionaries/ws/client/DeflateCompressor;->compress([B)[B

    move-result-object v0

    .line 290
    .local v0, "compressed":[B
    invoke-static {v0}, Lcom/neovisionaries/ws/client/PerMessageDeflateExtension;->adjustCompressedData([B)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 292
    .end local v0    # "compressed":[B
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v2, Lcom/neovisionaries/ws/client/WebSocketError;->COMPRESSION_ERROR:Lcom/neovisionaries/ws/client/WebSocketError;

    .line 297
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Failed to compress the message: %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected decompress([B)[B
    .locals 8
    .param p1, "compressed"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 216
    array-length v0, p1

    sget-object v1, Lcom/neovisionaries/ws/client/PerMessageDeflateExtension;->COMPRESSION_TERMINATOR:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 219
    .local v0, "inputLen":I
    new-instance v1, Lcom/neovisionaries/ws/client/ByteArray;

    invoke-direct {v1, v0}, Lcom/neovisionaries/ws/client/ByteArray;-><init>(I)V

    .line 220
    .local v1, "input":Lcom/neovisionaries/ws/client/ByteArray;
    invoke-virtual {v1, p1}, Lcom/neovisionaries/ws/client/ByteArray;->put([B)V

    .line 221
    sget-object v2, Lcom/neovisionaries/ws/client/PerMessageDeflateExtension;->COMPRESSION_TERMINATOR:[B

    invoke-virtual {v1, v2}, Lcom/neovisionaries/ws/client/ByteArray;->put([B)V

    .line 223
    iget-object v2, p0, Lcom/neovisionaries/ws/client/PerMessageDeflateExtension;->mIncomingSlidingWindow:Lcom/neovisionaries/ws/client/ByteArray;

    if-nez v2, :cond_0

    .line 225
    new-instance v2, Lcom/neovisionaries/ws/client/ByteArray;

    iget v3, p0, Lcom/neovisionaries/ws/client/PerMessageDeflateExtension;->mIncomingSlidingWindowBufferSize:I

    invoke-direct {v2, v3}, Lcom/neovisionaries/ws/client/ByteArray;-><init>(I)V

    iput-object v2, p0, Lcom/neovisionaries/ws/client/PerMessageDeflateExtension;->mIncomingSlidingWindow:Lcom/neovisionaries/ws/client/ByteArray;

    .line 229
    :cond_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/PerMessageDeflateExtension;->mIncomingSlidingWindow:Lcom/neovisionaries/ws/client/ByteArray;

    invoke-virtual {v2}, Lcom/neovisionaries/ws/client/ByteArray;->length()I

    move-result v2

    .line 234
    .local v2, "outPos":I
    :try_start_0
    iget-object v3, p0, Lcom/neovisionaries/ws/client/PerMessageDeflateExtension;->mIncomingSlidingWindow:Lcom/neovisionaries/ws/client/ByteArray;

    invoke-static {v1, v3}, Lcom/neovisionaries/ws/client/DeflateDecompressor;->decompress(Lcom/neovisionaries/ws/client/ByteArray;Lcom/neovisionaries/ws/client/ByteArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    nop

    .line 244
    iget-object v3, p0, Lcom/neovisionaries/ws/client/PerMessageDeflateExtension;->mIncomingSlidingWindow:Lcom/neovisionaries/ws/client/ByteArray;

    invoke-virtual {v3, v2}, Lcom/neovisionaries/ws/client/ByteArray;->toBytes(I)[B

    move-result-object v3

    .line 247
    .local v3, "output":[B
    iget-object v4, p0, Lcom/neovisionaries/ws/client/PerMessageDeflateExtension;->mIncomingSlidingWindow:Lcom/neovisionaries/ws/client/ByteArray;

    iget v5, p0, Lcom/neovisionaries/ws/client/PerMessageDeflateExtension;->mIncomingSlidingWindowBufferSize:I

    invoke-virtual {v4, v5}, Lcom/neovisionaries/ws/client/ByteArray;->shrink(I)V

    .line 249
    iget-boolean v4, p0, Lcom/neovisionaries/ws/client/PerMessageDeflateExtension;->mServerNoContextTakeover:Z

    if-eqz v4, :cond_1

    .line 252
    iget-object v4, p0, Lcom/neovisionaries/ws/client/PerMessageDeflateExtension;->mIncomingSlidingWindow:Lcom/neovisionaries/ws/client/ByteArray;

    invoke-virtual {v4}, Lcom/neovisionaries/ws/client/ByteArray;->clear()V

    .line 255
    :cond_1
    return-object v3

    .line 236
    .end local v3    # "output":[B
    :catch_0
    move-exception v3

    .line 239
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v5, Lcom/neovisionaries/ws/client/WebSocketError;->DECOMPRESSION_ERROR:Lcom/neovisionaries/ws/client/WebSocketError;

    .line 241
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "Failed to decompress the message: %s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v3}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public getClientWindowSize()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/neovisionaries/ws/client/PerMessageDeflateExtension;->mClientWindowSize:I

    return v0
.end method

.method public getServerWindowSize()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/neovisionaries/ws/client/PerMessageDeflateExtension;->mServerWindowSize:I

    return v0
.end method

.method public isClientNoContextTakeover()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/neovisionaries/ws/client/PerMessageDeflateExtension;->mClientNoContextTakeover:Z

    return v0
.end method

.method public isServerNoContextTakeover()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/neovisionaries/ws/client/PerMessageDeflateExtension;->mServerNoContextTakeover:Z

    return v0
.end method

.method validate()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Lcom/neovisionaries/ws/client/PerMessageDeflateExtension;->getParameters()Ljava/util/Map;

    move-result-object v0

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

    .line 70
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/neovisionaries/ws/client/PerMessageDeflateExtension;->validateParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 73
    :cond_0
    iget v0, p0, Lcom/neovisionaries/ws/client/PerMessageDeflateExtension;->mServerWindowSize:I

    add-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/neovisionaries/ws/client/PerMessageDeflateExtension;->mIncomingSlidingWindowBufferSize:I

    .line 74
    return-void
.end method
