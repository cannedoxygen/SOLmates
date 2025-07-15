.class public final Landroidx/credentials/webauthn/Cbor;
.super Ljava/lang/Object;
.source "Cbor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/webauthn/Cbor$Arg;,
        Landroidx/credentials/webauthn/Cbor$Item;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0011\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001:\u0002#$B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u000e\u0010\u001a\u001a\u00020\u00012\u0006\u0010\u001b\u001a\u00020\u0016J\u000e\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u0001J\u0018\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00020\u0004H\u0002J\u0018\u0010 \u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00020\u0004H\u0002J\u0018\u0010!\u001a\u00020\"2\u0006\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00020\u0004H\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R\u0014\u0010\t\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0006R\u0014\u0010\r\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0006R\u0014\u0010\u000f\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006R\u0014\u0010\u0011\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0006R\u0014\u0010\u0013\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0006\u00a8\u0006%"
    }
    d2 = {
        "Landroidx/credentials/webauthn/Cbor;",
        "",
        "()V",
        "TYPE_ARRAY",
        "",
        "getTYPE_ARRAY",
        "()I",
        "TYPE_BYTE_STRING",
        "getTYPE_BYTE_STRING",
        "TYPE_FLOAT",
        "getTYPE_FLOAT",
        "TYPE_MAP",
        "getTYPE_MAP",
        "TYPE_NEGATIVE_INT",
        "getTYPE_NEGATIVE_INT",
        "TYPE_TAG",
        "getTYPE_TAG",
        "TYPE_TEXT_STRING",
        "getTYPE_TEXT_STRING",
        "TYPE_UNSIGNED_INT",
        "getTYPE_UNSIGNED_INT",
        "createArg",
        "",
        "type",
        "arg",
        "",
        "decode",
        "data",
        "encode",
        "getArg",
        "Landroidx/credentials/webauthn/Cbor$Arg;",
        "offset",
        "getType",
        "parseItem",
        "Landroidx/credentials/webauthn/Cbor$Item;",
        "Arg",
        "Item",
        "credentials_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final TYPE_ARRAY:I

.field private final TYPE_BYTE_STRING:I

.field private final TYPE_FLOAT:I

.field private final TYPE_MAP:I

.field private final TYPE_NEGATIVE_INT:I

.field private final TYPE_TAG:I

.field private final TYPE_TEXT_STRING:I

.field private final TYPE_UNSIGNED_INT:I


# direct methods
.method public static synthetic $r8$lambda$U-5sWomJCMWgLesGf2T6PiR8-A4(Lkotlin/jvm/internal/Ref$ObjectRef;[B[B)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/credentials/webauthn/Cbor;->encode$lambda$0(Lkotlin/jvm/internal/Ref$ObjectRef;[B[B)I

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput v0, p0, Landroidx/credentials/webauthn/Cbor;->TYPE_NEGATIVE_INT:I

    .line 30
    const/4 v0, 0x2

    iput v0, p0, Landroidx/credentials/webauthn/Cbor;->TYPE_BYTE_STRING:I

    .line 31
    const/4 v0, 0x3

    iput v0, p0, Landroidx/credentials/webauthn/Cbor;->TYPE_TEXT_STRING:I

    .line 32
    const/4 v0, 0x4

    iput v0, p0, Landroidx/credentials/webauthn/Cbor;->TYPE_ARRAY:I

    .line 33
    const/4 v0, 0x5

    iput v0, p0, Landroidx/credentials/webauthn/Cbor;->TYPE_MAP:I

    .line 34
    const/4 v0, 0x6

    iput v0, p0, Landroidx/credentials/webauthn/Cbor;->TYPE_TAG:I

    .line 35
    const/4 v0, 0x7

    iput v0, p0, Landroidx/credentials/webauthn/Cbor;->TYPE_FLOAT:I

    .line 23
    return-void
.end method

.method private final createArg(IJ)[B
    .locals 12
    .param p1, "type"    # I
    .param p2, "arg"    # J

    .line 184
    shl-int/lit8 v0, p1, 0x5

    .line 185
    .local v0, "t":I
    long-to-int v1, p2

    .line 186
    .local v1, "a":I
    const-wide/16 v2, 0x18

    cmp-long v2, p2, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v2, :cond_0

    .line 187
    or-int v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    new-array v4, v4, [B

    aput-byte v2, v4, v3

    return-object v4

    .line 189
    :cond_0
    const-wide/16 v5, 0xff

    cmp-long v2, p2, v5

    const/4 v5, 0x2

    if-gtz v2, :cond_1

    .line 190
    or-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    and-int/lit16 v6, v1, 0xff

    int-to-byte v6, v6

    new-array v5, v5, [B

    aput-byte v2, v5, v3

    aput-byte v6, v5, v4

    return-object v5

    .line 192
    :cond_1
    const-wide/32 v6, 0xffff

    cmp-long v2, p2, v6

    const/4 v6, 0x3

    if-gtz v2, :cond_2

    .line 194
    or-int/lit8 v2, v0, 0x19

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 195
    shr-int/lit8 v7, v1, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    .line 194
    nop

    .line 196
    and-int/lit16 v8, v1, 0xff

    int-to-byte v8, v8

    new-array v6, v6, [B

    aput-byte v2, v6, v3

    aput-byte v7, v6, v4

    aput-byte v8, v6, v5

    .line 194
    nop

    .line 193
    return-object v6

    .line 199
    :cond_2
    const-wide v7, 0xffffffffL

    cmp-long v2, p2, v7

    if-gtz v2, :cond_3

    .line 201
    or-int/lit8 v2, v0, 0x1a

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 202
    shr-int/lit8 v7, v1, 0x18

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    .line 201
    nop

    .line 203
    shr-int/lit8 v8, v1, 0x10

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    .line 201
    nop

    .line 204
    shr-int/lit8 v9, v1, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    .line 201
    nop

    .line 205
    and-int/lit16 v10, v1, 0xff

    int-to-byte v10, v10

    const/4 v11, 0x5

    new-array v11, v11, [B

    aput-byte v2, v11, v3

    aput-byte v7, v11, v4

    aput-byte v8, v11, v5

    aput-byte v9, v11, v6

    const/4 v2, 0x4

    aput-byte v10, v11, v2

    .line 201
    nop

    .line 200
    return-object v11

    .line 208
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "bad Arg"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static final encode$lambda$0(Lkotlin/jvm/internal/Ref$ObjectRef;[B[B)I
    .locals 6
    .param p0, "$byteMap"    # Lkotlin/jvm/internal/Ref$ObjectRef;
    .param p1, "a"    # [B
    .param p2, "b"    # [B

    const-string v0, "$byteMap"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, [B

    .line 85
    .local v0, "aBytes":[B
    iget-object v1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, [B

    .line 86
    .local v1, "bBytes":[B
    nop

    .line 87
    array-length v2, p1

    array-length v3, p2

    const/4 v4, 0x1

    if-le v2, v3, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    array-length v2, p1

    array-length v3, p2

    const/4 v5, -0x1

    if-ge v2, v3, :cond_1

    move v4, v5

    goto :goto_0

    .line 89
    :cond_1
    array-length v2, v0

    array-length v3, v1

    if-le v2, v3, :cond_2

    goto :goto_0

    .line 90
    :cond_2
    array-length v2, v0

    array-length v3, v1

    if-ge v2, v3, :cond_3

    move v4, v5

    goto :goto_0

    .line 91
    :cond_3
    const/4 v4, 0x0

    .line 86
    :goto_0
    return v4
.end method

.method private final getArg([BI)Landroidx/credentials/webauthn/Cbor$Arg;
    .locals 10
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    .line 111
    aget-byte v0, p1, p2

    int-to-long v0, v0

    const-wide/16 v2, 0x1f

    and-long/2addr v0, v2

    .line 112
    .local v0, "arg":J
    const-wide/16 v2, 0x18

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 113
    new-instance v2, Landroidx/credentials/webauthn/Cbor$Arg;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Landroidx/credentials/webauthn/Cbor$Arg;-><init>(JI)V

    return-object v2

    .line 115
    :cond_0
    cmp-long v2, v0, v2

    const-wide/16 v3, 0xff

    if-nez v2, :cond_1

    .line 116
    new-instance v2, Landroidx/credentials/webauthn/Cbor$Arg;

    add-int/lit8 v5, p2, 0x1

    aget-byte v5, p1, v5

    int-to-long v5, v5

    and-long/2addr v3, v5

    const/4 v5, 0x2

    invoke-direct {v2, v3, v4, v5}, Landroidx/credentials/webauthn/Cbor$Arg;-><init>(JI)V

    return-object v2

    .line 118
    :cond_1
    const-wide/16 v5, 0x19

    cmp-long v2, v0, v5

    const/16 v5, 0x8

    if-nez v2, :cond_2

    .line 119
    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    int-to-long v6, v2

    and-long/2addr v6, v3

    shl-long v5, v6, v5

    .line 120
    .local v5, "ret":J
    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    int-to-long v7, v2

    and-long v2, v7, v3

    or-long/2addr v2, v5

    .line 121
    .end local v5    # "ret":J
    .local v2, "ret":J
    new-instance v4, Landroidx/credentials/webauthn/Cbor$Arg;

    const/4 v5, 0x3

    invoke-direct {v4, v2, v3, v5}, Landroidx/credentials/webauthn/Cbor$Arg;-><init>(JI)V

    return-object v4

    .line 123
    .end local v2    # "ret":J
    :cond_2
    const-wide/16 v6, 0x1a

    cmp-long v2, v0, v6

    if-nez v2, :cond_3

    .line 124
    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    int-to-long v6, v2

    and-long/2addr v6, v3

    const/16 v2, 0x18

    shl-long/2addr v6, v2

    .line 125
    .local v6, "ret":J
    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    int-to-long v8, v2

    and-long/2addr v8, v3

    const/16 v2, 0x10

    shl-long/2addr v8, v2

    or-long/2addr v6, v8

    .line 126
    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    int-to-long v8, v2

    and-long/2addr v8, v3

    shl-long/2addr v8, v5

    or-long v5, v6, v8

    .line 127
    .end local v6    # "ret":J
    .restart local v5    # "ret":J
    add-int/lit8 v2, p2, 0x4

    aget-byte v2, p1, v2

    int-to-long v7, v2

    and-long v2, v7, v3

    or-long/2addr v2, v5

    .line 128
    .end local v5    # "ret":J
    .restart local v2    # "ret":J
    new-instance v4, Landroidx/credentials/webauthn/Cbor$Arg;

    const/4 v5, 0x5

    invoke-direct {v4, v2, v3, v5}, Landroidx/credentials/webauthn/Cbor$Arg;-><init>(JI)V

    return-object v4

    .line 130
    .end local v2    # "ret":J
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Bad arg"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private final getType([BI)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    .line 106
    aget-byte v0, p1, p2

    .line 107
    .local v0, "d":I
    and-int/lit16 v1, v0, 0xff

    shr-int/lit8 v1, v1, 0x5

    return v1
.end method

.method private final parseItem([BI)Landroidx/credentials/webauthn/Cbor$Item;
    .locals 10
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    .line 134
    invoke-direct {p0, p1, p2}, Landroidx/credentials/webauthn/Cbor;->getType([BI)I

    move-result v0

    .line 135
    .local v0, "itemType":I
    invoke-direct {p0, p1, p2}, Landroidx/credentials/webauthn/Cbor;->getArg([BI)Landroidx/credentials/webauthn/Cbor$Arg;

    move-result-object v1

    .line 136
    .local v1, "arg":Landroidx/credentials/webauthn/Cbor$Arg;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/credentials/webauthn/Cbor$Arg;->getArg()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/credentials/webauthn/Cbor$Arg;->getLen()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 138
    nop

    .line 139
    iget v2, p0, Landroidx/credentials/webauthn/Cbor;->TYPE_UNSIGNED_INT:I

    if-ne v0, v2, :cond_0

    .line 140
    new-instance v2, Landroidx/credentials/webauthn/Cbor$Item;

    invoke-virtual {v1}, Landroidx/credentials/webauthn/Cbor$Arg;->getArg()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1}, Landroidx/credentials/webauthn/Cbor$Arg;->getLen()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroidx/credentials/webauthn/Cbor$Item;-><init>(Ljava/lang/Object;I)V

    return-object v2

    .line 142
    :cond_0
    iget v2, p0, Landroidx/credentials/webauthn/Cbor;->TYPE_NEGATIVE_INT:I

    if-ne v0, v2, :cond_1

    .line 143
    new-instance v2, Landroidx/credentials/webauthn/Cbor$Item;

    const/4 v3, -0x1

    int-to-long v3, v3

    invoke-virtual {v1}, Landroidx/credentials/webauthn/Cbor$Arg;->getArg()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1}, Landroidx/credentials/webauthn/Cbor$Arg;->getLen()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroidx/credentials/webauthn/Cbor$Item;-><init>(Ljava/lang/Object;I)V

    return-object v2

    .line 145
    :cond_1
    iget v2, p0, Landroidx/credentials/webauthn/Cbor;->TYPE_BYTE_STRING:I

    if-ne v0, v2, :cond_2

    .line 147
    invoke-virtual {v1}, Landroidx/credentials/webauthn/Cbor$Arg;->getLen()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v1}, Landroidx/credentials/webauthn/Cbor$Arg;->getLen()I

    move-result v3

    add-int/2addr v3, p2

    invoke-virtual {v1}, Landroidx/credentials/webauthn/Cbor$Arg;->getArg()J

    move-result-wide v4

    long-to-int v4, v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/collections/ArraysKt;->sliceArray([BLkotlin/ranges/IntRange;)[B

    move-result-object v2

    .line 146
    nop

    .line 148
    .local v2, "ret":[B
    new-instance v3, Landroidx/credentials/webauthn/Cbor$Item;

    invoke-virtual {v1}, Landroidx/credentials/webauthn/Cbor$Arg;->getLen()I

    move-result v4

    invoke-virtual {v1}, Landroidx/credentials/webauthn/Cbor$Arg;->getArg()J

    move-result-wide v5

    long-to-int v5, v5

    add-int/2addr v4, v5

    invoke-direct {v3, v2, v4}, Landroidx/credentials/webauthn/Cbor$Item;-><init>(Ljava/lang/Object;I)V

    return-object v3

    .line 150
    .end local v2    # "ret":[B
    :cond_2
    iget v2, p0, Landroidx/credentials/webauthn/Cbor;->TYPE_TEXT_STRING:I

    if-ne v0, v2, :cond_3

    .line 152
    invoke-virtual {v1}, Landroidx/credentials/webauthn/Cbor$Arg;->getLen()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v1}, Landroidx/credentials/webauthn/Cbor$Arg;->getLen()I

    move-result v3

    add-int/2addr v3, p2

    invoke-virtual {v1}, Landroidx/credentials/webauthn/Cbor$Arg;->getArg()J

    move-result-wide v4

    long-to-int v4, v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/collections/ArraysKt;->sliceArray([BLkotlin/ranges/IntRange;)[B

    move-result-object v2

    .line 151
    nop

    .line 153
    .restart local v2    # "ret":[B
    new-instance v3, Landroidx/credentials/webauthn/Cbor$Item;

    new-instance v4, Ljava/lang/String;

    sget-object v5, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v2, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1}, Landroidx/credentials/webauthn/Cbor$Arg;->getLen()I

    move-result v5

    invoke-virtual {v1}, Landroidx/credentials/webauthn/Cbor$Arg;->getArg()J

    move-result-wide v6

    long-to-int v6, v6

    add-int/2addr v5, v6

    invoke-direct {v3, v4, v5}, Landroidx/credentials/webauthn/Cbor$Item;-><init>(Ljava/lang/Object;I)V

    return-object v3

    .line 155
    .end local v2    # "ret":[B
    :cond_3
    iget v2, p0, Landroidx/credentials/webauthn/Cbor;->TYPE_ARRAY:I

    if-ne v0, v2, :cond_5

    .line 156
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 157
    .local v2, "ret":Ljava/util/List;
    invoke-virtual {v1}, Landroidx/credentials/webauthn/Cbor$Arg;->getLen()I

    move-result v3

    .line 158
    .local v3, "consumed":I
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual {v1}, Landroidx/credentials/webauthn/Cbor$Arg;->getArg()J

    move-result-wide v5

    long-to-int v5, v5

    :goto_0
    if-ge v4, v5, :cond_4

    .line 159
    add-int v6, p2, v3

    invoke-direct {p0, p1, v6}, Landroidx/credentials/webauthn/Cbor;->parseItem([BI)Landroidx/credentials/webauthn/Cbor$Item;

    move-result-object v6

    .line 160
    .local v6, "item":Landroidx/credentials/webauthn/Cbor$Item;
    invoke-virtual {v6}, Landroidx/credentials/webauthn/Cbor$Item;->getItem()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-virtual {v6}, Landroidx/credentials/webauthn/Cbor$Item;->getLen()I

    move-result v7

    add-int/2addr v3, v7

    .line 158
    .end local v6    # "item":Landroidx/credentials/webauthn/Cbor$Item;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 163
    .end local v4    # "i":I
    :cond_4
    new-instance v4, Landroidx/credentials/webauthn/Cbor$Item;

    move-object v5, v2

    check-cast v5, Ljava/lang/Iterable;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroidx/credentials/webauthn/Cbor$Item;-><init>(Ljava/lang/Object;I)V

    return-object v4

    .line 165
    .end local v2    # "ret":Ljava/util/List;
    .end local v3    # "consumed":I
    :cond_5
    iget v2, p0, Landroidx/credentials/webauthn/Cbor;->TYPE_MAP:I

    if-ne v0, v2, :cond_7

    .line 166
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v2, Ljava/util/Map;

    .line 167
    .local v2, "ret":Ljava/util/Map;
    invoke-virtual {v1}, Landroidx/credentials/webauthn/Cbor$Arg;->getLen()I

    move-result v3

    .line 168
    .restart local v3    # "consumed":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    invoke-virtual {v1}, Landroidx/credentials/webauthn/Cbor$Arg;->getArg()J

    move-result-wide v5

    long-to-int v5, v5

    :goto_1
    if-ge v4, v5, :cond_6

    .line 169
    add-int v6, p2, v3

    invoke-direct {p0, p1, v6}, Landroidx/credentials/webauthn/Cbor;->parseItem([BI)Landroidx/credentials/webauthn/Cbor$Item;

    move-result-object v6

    .line 170
    .local v6, "key":Landroidx/credentials/webauthn/Cbor$Item;
    invoke-virtual {v6}, Landroidx/credentials/webauthn/Cbor$Item;->getLen()I

    move-result v7

    add-int/2addr v3, v7

    .line 171
    add-int v7, p2, v3

    invoke-direct {p0, p1, v7}, Landroidx/credentials/webauthn/Cbor;->parseItem([BI)Landroidx/credentials/webauthn/Cbor$Item;

    move-result-object v7

    .line 172
    .local v7, "value":Landroidx/credentials/webauthn/Cbor$Item;
    invoke-virtual {v7}, Landroidx/credentials/webauthn/Cbor$Item;->getLen()I

    move-result v8

    add-int/2addr v3, v8

    .line 173
    invoke-virtual {v6}, Landroidx/credentials/webauthn/Cbor$Item;->getItem()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7}, Landroidx/credentials/webauthn/Cbor$Item;->getItem()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .end local v6    # "key":Landroidx/credentials/webauthn/Cbor$Item;
    .end local v7    # "value":Landroidx/credentials/webauthn/Cbor$Item;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 175
    .end local v4    # "i":I
    :cond_6
    new-instance v4, Landroidx/credentials/webauthn/Cbor$Item;

    invoke-static {v2}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroidx/credentials/webauthn/Cbor$Item;-><init>(Ljava/lang/Object;I)V

    return-object v4

    .line 178
    .end local v2    # "ret":Ljava/util/Map;
    .end local v3    # "consumed":I
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Bad type"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public final decode([B)Ljava/lang/Object;
    .locals 2
    .param p1, "data"    # [B

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/credentials/webauthn/Cbor;->parseItem([BI)Landroidx/credentials/webauthn/Cbor$Item;

    move-result-object v0

    .line 39
    .local v0, "ret":Landroidx/credentials/webauthn/Cbor$Item;
    invoke-virtual {v0}, Landroidx/credentials/webauthn/Cbor$Item;->getItem()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final encode(Ljava/lang/Object;)[B
    .locals 7
    .param p1, "data"    # Ljava/lang/Object;

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_2

    .line 44
    instance-of v0, p1, Ljava/lang/Double;

    if-nez v0, :cond_1

    .line 47
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 48
    .local v0, "value":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 49
    iget v2, p0, Landroidx/credentials/webauthn/Cbor;->TYPE_UNSIGNED_INT:I

    invoke-direct {p0, v2, v0, v1}, Landroidx/credentials/webauthn/Cbor;->createArg(IJ)[B

    move-result-object v2

    return-object v2

    .line 51
    :cond_0
    iget v2, p0, Landroidx/credentials/webauthn/Cbor;->TYPE_NEGATIVE_INT:I

    const/4 v3, -0x1

    int-to-long v3, v3

    sub-long/2addr v3, v0

    invoke-direct {p0, v2, v3, v4}, Landroidx/credentials/webauthn/Cbor;->createArg(IJ)[B

    move-result-object v2

    return-object v2

    .line 45
    .end local v0    # "value":J
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Don\'t support doubles yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_2
    instance-of v0, p1, [B

    if-eqz v0, :cond_3

    .line 56
    iget v0, p0, Landroidx/credentials/webauthn/Cbor;->TYPE_BYTE_STRING:I

    move-object v1, p1

    check-cast v1, [B

    array-length v1, v1

    int-to-long v1, v1

    invoke-direct {p0, v0, v1, v2}, Landroidx/credentials/webauthn/Cbor;->createArg(IJ)[B

    move-result-object v0

    move-object v1, p1

    check-cast v1, [B

    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object v0

    return-object v0

    .line 58
    :cond_3
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 59
    iget v0, p0, Landroidx/credentials/webauthn/Cbor;->TYPE_TEXT_STRING:I

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {p0, v0, v1, v2}, Landroidx/credentials/webauthn/Cbor;->createArg(IJ)[B

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lkotlin/text/StringsKt;->encodeToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object v0

    return-object v0

    .line 61
    :cond_4
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_6

    .line 62
    iget v0, p0, Landroidx/credentials/webauthn/Cbor;->TYPE_ARRAY:I

    move-object v1, p1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {p0, v0, v1, v2}, Landroidx/credentials/webauthn/Cbor;->createArg(IJ)[B

    move-result-object v0

    .line 63
    .local v0, "ret":[B
    move-object v1, p1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 64
    .local v2, "i":Ljava/lang/Object;
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Landroidx/credentials/webauthn/Cbor;->encode(Ljava/lang/Object;)[B

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object v0

    .end local v2    # "i":Ljava/lang/Object;
    goto :goto_0

    .line 66
    :cond_5
    return-object v0

    .line 68
    .end local v0    # "ret":[B
    :cond_6
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_9

    .line 71
    iget v0, p0, Landroidx/credentials/webauthn/Cbor;->TYPE_MAP:I

    move-object v1, p1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {p0, v0, v1, v2}, Landroidx/credentials/webauthn/Cbor;->createArg(IJ)[B

    move-result-object v0

    .line 72
    .restart local v0    # "ret":[B
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .local v1, "byteMap":Lkotlin/jvm/internal/Ref$ObjectRef;
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v2, Ljava/util/Map;

    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 73
    move-object v2, p1

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 75
    .local v3, "i":Ljava/util/Map$Entry;
    iget-object v4, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v5}, Landroidx/credentials/webauthn/Cbor;->encode(Ljava/lang/Object;)[B

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v6}, Landroidx/credentials/webauthn/Cbor;->encode(Ljava/lang/Object;)[B

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 78
    .end local v3    # "i":Ljava/util/Map$Entry;
    :cond_7
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 79
    .local v2, "keysList":Ljava/util/ArrayList;
    move-object v3, v2

    check-cast v3, Ljava/lang/Iterable;

    new-instance v4, Landroidx/credentials/webauthn/Cbor$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1}, Landroidx/credentials/webauthn/Cbor$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 96
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 97
    .local v4, "key":[B
    const-string v5, "key"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v4}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object v0

    .line 98
    iget-object v5, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v5, [B

    invoke-static {v0, v5}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object v0

    .end local v4    # "key":[B
    goto :goto_2

    .line 100
    :cond_8
    return-object v0

    .line 102
    .end local v0    # "ret":[B
    .end local v1    # "byteMap":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v2    # "keysList":Ljava/util/ArrayList;
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getTYPE_ARRAY()I
    .locals 1

    .line 32
    iget v0, p0, Landroidx/credentials/webauthn/Cbor;->TYPE_ARRAY:I

    return v0
.end method

.method public final getTYPE_BYTE_STRING()I
    .locals 1

    .line 30
    iget v0, p0, Landroidx/credentials/webauthn/Cbor;->TYPE_BYTE_STRING:I

    return v0
.end method

.method public final getTYPE_FLOAT()I
    .locals 1

    .line 35
    iget v0, p0, Landroidx/credentials/webauthn/Cbor;->TYPE_FLOAT:I

    return v0
.end method

.method public final getTYPE_MAP()I
    .locals 1

    .line 33
    iget v0, p0, Landroidx/credentials/webauthn/Cbor;->TYPE_MAP:I

    return v0
.end method

.method public final getTYPE_NEGATIVE_INT()I
    .locals 1

    .line 29
    iget v0, p0, Landroidx/credentials/webauthn/Cbor;->TYPE_NEGATIVE_INT:I

    return v0
.end method

.method public final getTYPE_TAG()I
    .locals 1

    .line 34
    iget v0, p0, Landroidx/credentials/webauthn/Cbor;->TYPE_TAG:I

    return v0
.end method

.method public final getTYPE_TEXT_STRING()I
    .locals 1

    .line 31
    iget v0, p0, Landroidx/credentials/webauthn/Cbor;->TYPE_TEXT_STRING:I

    return v0
.end method

.method public final getTYPE_UNSIGNED_INT()I
    .locals 1

    .line 28
    iget v0, p0, Landroidx/credentials/webauthn/Cbor;->TYPE_UNSIGNED_INT:I

    return v0
.end method
