.class public final Lexpo/modules/fetch/ResponseSink;
.super Ljava/lang/Object;
.source "ResponseSink.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nResponseSink.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResponseSink.kt\nexpo/modules/fetch/ResponseSink\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,30:1\n1#2:31\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0015\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0005H\u0000\u00a2\u0006\u0002\u0008\u000fJ\u0006\u0010\u0010\u001a\u00020\u0005R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0007@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lexpo/modules/fetch/ResponseSink;",
        "",
        "()V",
        "bodyQueue",
        "",
        "",
        "<set-?>",
        "",
        "bodyUsed",
        "getBodyUsed",
        "()Z",
        "isFinalized",
        "appendBufferBody",
        "",
        "data",
        "appendBufferBody$expo_debug",
        "finalize",
        "expo_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final bodyQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private bodyUsed:Z

.field private isFinalized:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lexpo/modules/fetch/ResponseSink;->bodyQueue:Ljava/util/List;

    .line 7
    return-void
.end method


# virtual methods
.method public final appendBufferBody$expo_debug([B)V
    .locals 1
    .param p1, "data"    # [B

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lexpo/modules/fetch/ResponseSink;->bodyUsed:Z

    .line 15
    iget-object v0, p0, Lexpo/modules/fetch/ResponseSink;->bodyQueue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    return-void
.end method

.method public final finalize()[B
    .locals 4

    .line 19
    iget-object v0, p0, Lexpo/modules/fetch/ResponseSink;->bodyQueue:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 31
    nop

    .local v2, "it":[B
    const/4 v3, 0x0

    .line 19
    .local v3, "$i$a$-sumOfInt-ResponseSink$finalize$size$1":I
    array-length v2, v2

    .end local v2    # "it":[B
    .end local v3    # "$i$a$-sumOfInt-ResponseSink$finalize$size$1":I
    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 20
    .local v0, "size":I
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 21
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lexpo/modules/fetch/ResponseSink;->bodyQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 22
    .local v3, "byteArray":[B
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 24
    .end local v3    # "byteArray":[B
    :cond_1
    iget-object v2, p0, Lexpo/modules/fetch/ResponseSink;->bodyQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 25
    const/4 v2, 0x1

    iput-boolean v2, p0, Lexpo/modules/fetch/ResponseSink;->bodyUsed:Z

    .line 26
    iput-boolean v2, p0, Lexpo/modules/fetch/ResponseSink;->isFinalized:Z

    .line 27
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const-string v3, "array(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method

.method public final getBodyUsed()Z
    .locals 1

    .line 10
    iget-boolean v0, p0, Lexpo/modules/fetch/ResponseSink;->bodyUsed:Z

    return v0
.end method
