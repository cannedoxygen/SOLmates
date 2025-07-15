.class public final Lexpo/modules/notifications/service/delegates/Base64SerializationKt;
.super Ljava/lang/Object;
.source "Base64Serialization.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u001a\u0010\u0000\u001a\u0002H\u0001\"\u0006\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\u0086\u0008\u00a2\u0006\u0002\u0010\u0003\u001a\n\u0010\u0004\u001a\u00020\u0002*\u00020\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "asBase64EncodedObject",
        "T",
        "",
        "(Ljava/lang/String;)Ljava/lang/Object;",
        "encodedInBase64",
        "Ljava/io/Serializable;",
        "expo-notifications_debug"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic asBase64EncodedObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 13
    .param p0, "$this$asBase64EncodedObject"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/InvalidClassException;
        }
    .end annotation

    const-string v0, "T"

    const-string v1, "<this>"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 23
    .local v1, "$i$f$asBase64EncodedObject":I
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 24
    const/4 v3, 0x2

    invoke-static {p0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 23
    invoke-direct {v2, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    check-cast v2, Ljava/io/Closeable;

    .line 25
    const/4 v4, 0x1

    :try_start_0
    move-object v5, v2

    check-cast v5, Ljava/io/ByteArrayInputStream;

    .local v5, "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    const/4 v6, 0x0

    .line 26
    .local v6, "$i$a$-use-Base64SerializationKt$asBase64EncodedObject$1":I
    new-instance v7, Ljava/io/ObjectInputStream;

    move-object v8, v5

    check-cast v8, Ljava/io/InputStream;

    invoke-direct {v7, v8}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    check-cast v7, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v8, v7

    check-cast v8, Ljava/io/ObjectInputStream;

    .local v8, "ois":Ljava/io/ObjectInputStream;
    const/4 v9, 0x0

    .line 27
    .local v9, "$i$a$-use-Base64SerializationKt$asBase64EncodedObject$1$1":I
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v10

    .line 28
    .local v10, "o":Ljava/lang/Object;
    const/4 v11, 0x3

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v11, v10, Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v11, :cond_0

    .line 29
    nop

    .end local v8    # "ois":Ljava/io/ObjectInputStream;
    .end local v9    # "$i$a$-use-Base64SerializationKt$asBase64EncodedObject$1$1":I
    .end local v10    # "o":Ljava/lang/Object;
    :try_start_2
    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    const/4 v0, 0x0

    invoke-static {v7, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v5    # "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    .end local v6    # "$i$a$-use-Base64SerializationKt$asBase64EncodedObject$1":I
    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    return-object v10

    .line 31
    .restart local v5    # "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    .restart local v6    # "$i$a$-use-Base64SerializationKt$asBase64EncodedObject$1":I
    .restart local v8    # "ois":Ljava/io/ObjectInputStream;
    .restart local v9    # "$i$a$-use-Base64SerializationKt$asBase64EncodedObject$1$1":I
    .restart local v10    # "o":Ljava/lang/Object;
    :cond_0
    :try_start_3
    new-instance v3, Ljava/io/InvalidClassException;

    const/4 v11, 0x4

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Ljava/lang/Object;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Expected serialized object to be an instance of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ". Found: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    .end local v1    # "$i$f$asBase64EncodedObject":I
    .end local v5    # "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    .end local v6    # "$i$a$-use-Base64SerializationKt$asBase64EncodedObject$1":I
    .end local p0    # "$this$asBase64EncodedObject":Ljava/lang/String;
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v8    # "ois":Ljava/io/ObjectInputStream;
    .end local v9    # "$i$a$-use-Base64SerializationKt$asBase64EncodedObject$1$1":I
    .end local v10    # "o":Ljava/lang/Object;
    .restart local v1    # "$i$f$asBase64EncodedObject":I
    .restart local v5    # "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    .restart local v6    # "$i$a$-use-Base64SerializationKt$asBase64EncodedObject$1":I
    .restart local p0    # "$this$asBase64EncodedObject":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .end local v1    # "$i$f$asBase64EncodedObject":I
    .end local v5    # "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    .end local v6    # "$i$a$-use-Base64SerializationKt$asBase64EncodedObject$1":I
    .end local p0    # "$this$asBase64EncodedObject":Ljava/lang/String;
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .restart local v1    # "$i$f$asBase64EncodedObject":I
    .restart local v5    # "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    .restart local v6    # "$i$a$-use-Base64SerializationKt$asBase64EncodedObject$1":I
    .restart local p0    # "$this$asBase64EncodedObject":Ljava/lang/String;
    :catchall_1
    move-exception v3

    :try_start_5
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-static {v7, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .end local v1    # "$i$f$asBase64EncodedObject":I
    .end local p0    # "$this$asBase64EncodedObject":Ljava/lang/String;
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .end local v5    # "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    .end local v6    # "$i$a$-use-Base64SerializationKt$asBase64EncodedObject$1":I
    .restart local v1    # "$i$f$asBase64EncodedObject":I
    .restart local p0    # "$this$asBase64EncodedObject":Ljava/lang/String;
    :catchall_2
    move-exception v0

    .end local v1    # "$i$f$asBase64EncodedObject":I
    .end local p0    # "$this$asBase64EncodedObject":Ljava/lang/String;
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .restart local v1    # "$i$f$asBase64EncodedObject":I
    .restart local p0    # "$this$asBase64EncodedObject":Ljava/lang/String;
    :catchall_3
    move-exception v3

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v3
.end method

.method public static final encodedInBase64(Ljava/io/Serializable;)Ljava/lang/String;
    .locals 8
    .param p0, "$this$encodedInBase64"    # Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    check-cast v0, Ljava/io/Closeable;

    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/io/ByteArrayOutputStream;

    .local v1, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 15
    .local v2, "$i$a$-use-Base64SerializationKt$encodedInBase64$1":I
    new-instance v3, Ljava/io/ObjectOutputStream;

    move-object v4, v1

    check-cast v4, Ljava/io/OutputStream;

    invoke-direct {v3, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    check-cast v3, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v4, v3

    check-cast v4, Ljava/io/ObjectOutputStream;

    .local v4, "objectOutputStream":Ljava/io/ObjectOutputStream;
    const/4 v5, 0x0

    .line 16
    .local v5, "$i$a$-use-Base64SerializationKt$encodedInBase64$1$1":I
    invoke-virtual {v4, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 17
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    .end local v4    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .end local v5    # "$i$a$-use-Base64SerializationKt$encodedInBase64$1$1":I
    const/4 v4, 0x0

    :try_start_2
    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 14
    .end local v1    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "$i$a$-use-Base64SerializationKt$encodedInBase64$1":I
    invoke-static {v0, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const-string v0, "use(...)"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    return-object v6

    .line 15
    .restart local v1    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "$i$a$-use-Base64SerializationKt$encodedInBase64$1":I
    :catchall_0
    move-exception v4

    .end local v1    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "$i$a$-use-Base64SerializationKt$encodedInBase64$1":I
    .end local p0    # "$this$encodedInBase64":Ljava/io/Serializable;
    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .restart local v1    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "$i$a$-use-Base64SerializationKt$encodedInBase64$1":I
    .restart local p0    # "$this$encodedInBase64":Ljava/io/Serializable;
    :catchall_1
    move-exception v5

    :try_start_4
    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local p0    # "$this$encodedInBase64":Ljava/io/Serializable;
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 14
    .end local v1    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "$i$a$-use-Base64SerializationKt$encodedInBase64$1":I
    .restart local p0    # "$this$encodedInBase64":Ljava/io/Serializable;
    :catchall_2
    move-exception v1

    .end local p0    # "$this$encodedInBase64":Ljava/io/Serializable;
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .restart local p0    # "$this$encodedInBase64":Ljava/io/Serializable;
    :catchall_3
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method
