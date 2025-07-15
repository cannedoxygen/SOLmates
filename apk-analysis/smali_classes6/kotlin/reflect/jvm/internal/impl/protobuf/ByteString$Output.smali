.class public final Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;
.super Ljava/io/OutputStream;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Output"
.end annotation


# static fields
.field private static final EMPTY_BYTE_ARRAY:[B


# instance fields
.field private buffer:[B

.field private bufferPos:I

.field private final flushedBuffers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private flushedBuffersTotalBytes:I

.field private final initialCapacity:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 765
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->EMPTY_BYTE_ARRAY:[B

    return-void
.end method

.method constructor <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I

    .line 783
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 784
    if-ltz p1, :cond_0

    .line 787
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->initialCapacity:I

    .line 788
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    .line 789
    new-array v0, p1, [B

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->buffer:[B

    .line 790
    return-void

    .line 785
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer size < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private copyArray([BI)[B
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "length"    # I

    .line 835
    new-array v0, p2, [B

    .line 836
    .local v0, "result":[B
    array-length v1, p1

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 837
    return-object v0
.end method

.method private flushFullBuffer(I)V
    .locals 3
    .param p1, "minSize"    # I

    .line 898
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->buffer:[B

    invoke-direct {v1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 899
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->buffer:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    .line 903
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->initialCapacity:I

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    ushr-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 905
    .local v0, "newSize":I
    new-array v1, v0, [B

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->buffer:[B

    .line 906
    const/4 v1, 0x0

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->bufferPos:I

    .line 907
    return-void
.end method

.method private flushLastBuffer()V
    .locals 3

    .line 914
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->bufferPos:I

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->buffer:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 915
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->bufferPos:I

    if-lez v0, :cond_1

    .line 916
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->buffer:[B

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->bufferPos:I

    invoke-direct {p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->copyArray([BI)[B

    move-result-object v0

    .line 917
    .local v0, "bufferCopy":[B
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;

    invoke-direct {v2, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 918
    .end local v0    # "bufferCopy":[B
    goto :goto_0

    .line 922
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->buffer:[B

    invoke-direct {v1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 928
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->buffer:[B

    .line 930
    :cond_1
    :goto_0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->bufferPos:I

    add-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    .line 931
    const/4 v0, 0x0

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->bufferPos:I

    .line 932
    return-void
.end method


# virtual methods
.method public declared-synchronized size()I
    .locals 2

    monitor-enter p0

    .line 872
    :try_start_0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->bufferPos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    .line 872
    .end local p0    # "this":Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized toByteString()Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;
    .locals 1

    monitor-enter p0

    .line 827
    :try_start_0
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->flushLastBuffer()V

    .line 828
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->copyFrom(Ljava/lang/Iterable;)Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 826
    .end local p0    # "this":Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 888
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<ByteString.Output@%s size=%d>"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized write(I)V
    .locals 3
    .param p1, "b"    # I

    monitor-enter p0

    .line 794
    :try_start_0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->bufferPos:I

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->buffer:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 795
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->flushFullBuffer(I)V

    .line 797
    .end local p0    # "this":Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->buffer:[B

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->bufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->bufferPos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 798
    monitor-exit p0

    return-void

    .line 793
    .end local p1    # "b":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized write([BII)V
    .locals 3
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    monitor-enter p0

    .line 802
    :try_start_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->buffer:[B

    array-length v0, v0

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->bufferPos:I

    sub-int/2addr v0, v1

    if-gt p3, v0, :cond_0

    .line 804
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->buffer:[B

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->bufferPos:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 805
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->bufferPos:I

    add-int/2addr v0, p3

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->bufferPos:I

    goto :goto_0

    .line 808
    .end local p0    # "this":Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->buffer:[B

    array-length v0, v0

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->bufferPos:I

    sub-int/2addr v0, v1

    .line 809
    .local v0, "copySize":I
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->buffer:[B

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->bufferPos:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 810
    add-int/2addr p2, v0

    .line 811
    sub-int/2addr p3, v0

    .line 814
    invoke-direct {p0, p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->flushFullBuffer(I)V

    .line 815
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->buffer:[B

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 816
    iput p3, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->bufferPos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 818
    .end local v0    # "copySize":I
    :goto_0
    monitor-exit p0

    return-void

    .line 801
    .end local p1    # "b":[B
    .end local p2    # "offset":I
    .end local p3    # "length":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
