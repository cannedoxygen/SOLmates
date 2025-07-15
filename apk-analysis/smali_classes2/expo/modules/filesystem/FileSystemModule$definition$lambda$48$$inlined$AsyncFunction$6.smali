.class public final Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$6;
.super Lkotlin/jvm/internal/Lambda;
.source "ObjectDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/filesystem/FileSystemModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "[",
        "Ljava/lang/Object;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$8\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 FileSystemModule.kt\nexpo/modules/filesystem/FileSystemModule\n*L\n1#1,611:1\n15#2,4:612\n173#3,28:616\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$8\n*L\n260#1:612,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0010\u0000\u001a\u0002H\u0001\"\u0006\u0008\u0000\u0010\u0001\u0018\u0001\"\u0006\u0008\u0001\u0010\u0002\u0018\u0001\"\u0006\u0008\u0002\u0010\u0003\u0018\u00012\u0010\u0010\u0004\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00060\u0005H\n\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "<anonymous>",
        "R",
        "P0",
        "P1",
        "<name for destructuring parameter 0>",
        "",
        "",
        "invoke",
        "([Ljava/lang/Object;)Ljava/lang/Object;",
        "expo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$8"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lexpo/modules/filesystem/FileSystemModule;


# direct methods
.method public constructor <init>(Lexpo/modules/filesystem/FileSystemModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$6;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 259
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$6;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "<name for destructuring parameter 0>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    const/4 v2, 0x0

    aget-object v3, v0, v2

    .local v3, "p0":Ljava/lang/Object;
    const/4 v4, 0x1

    aget-object v4, v0, v4

    .line 260
    .local v4, "p1":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 612
    .local v0, "$i$f$enforceType":I
    nop

    .line 615
    nop

    .line 261
    .end local v0    # "$i$f$enforceType":I
    move-object v5, v4

    check-cast v5, Lexpo/modules/filesystem/ReadingOptions;

    .local v5, "options":Lexpo/modules/filesystem/ReadingOptions;
    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    .local v6, "uriStr":Ljava/lang/String;
    const/4 v7, 0x0

    .line 616
    .local v7, "$i$a$-AsyncFunction-FileSystemModule$definition$1$3":I
    invoke-static {v6}, Lexpo/modules/filesystem/FileSystemModuleKt;->access$slashifyFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 617
    .local v8, "uri":Landroid/net/Uri;
    iget-object v0, v1, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$6;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v9, Lexpo/modules/interfaces/filesystem/Permission;->READ:Lexpo/modules/interfaces/filesystem/Permission;

    invoke-static {v0, v8, v9}, Lexpo/modules/filesystem/FileSystemModule;->access$ensurePermission(Lexpo/modules/filesystem/FileSystemModule;Landroid/net/Uri;Lexpo/modules/interfaces/filesystem/Permission;)V

    .line 620
    invoke-virtual {v5}, Lexpo/modules/filesystem/ReadingOptions;->getEncoding()Lexpo/modules/filesystem/EncodingType;

    move-result-object v9

    .line 621
    .local v9, "encoding":Lexpo/modules/filesystem/EncodingType;
    const/4 v10, 0x0

    .line 622
    .local v10, "contents":Ljava/lang/Object;
    sget-object v0, Lexpo/modules/filesystem/EncodingType;->BASE64:Lexpo/modules/filesystem/EncodingType;

    if-ne v9, v0, :cond_1

    .line 623
    iget-object v0, v1, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$6;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    invoke-static {v0, v8}, Lexpo/modules/filesystem/FileSystemModule;->access$getInputStream(Lexpo/modules/filesystem/FileSystemModule;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/io/Closeable;

    :try_start_0
    move-object v0, v11

    check-cast v0, Ljava/io/InputStream;

    .local v0, "inputStream":Ljava/io/InputStream;
    const/4 v12, 0x0

    .line 624
    .local v12, "$i$a$-use-FileSystemModule$definition$1$3$1":I
    invoke-virtual {v5}, Lexpo/modules/filesystem/ReadingOptions;->getLength()Ljava/lang/Integer;

    move-result-object v13

    if-eqz v13, :cond_0

    invoke-virtual {v5}, Lexpo/modules/filesystem/ReadingOptions;->getPosition()Ljava/lang/Integer;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 625
    invoke-virtual {v5}, Lexpo/modules/filesystem/ReadingOptions;->getLength()Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    new-array v13, v13, [B

    .line 626
    .local v13, "buffer":[B
    invoke-virtual {v5}, Lexpo/modules/filesystem/ReadingOptions;->getPosition()Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    int-to-long v14, v15

    invoke-virtual {v0, v14, v15}, Ljava/io/InputStream;->skip(J)J

    .line 627
    invoke-virtual {v5}, Lexpo/modules/filesystem/ReadingOptions;->getLength()Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v0, v13, v2, v14}, Ljava/io/InputStream;->read([BII)I

    move-result v14

    .line 628
    .local v14, "bytesRead":I
    const/4 v15, 0x2

    invoke-static {v13, v2, v14, v15}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    move-result-object v2

    .end local v13    # "buffer":[B
    .end local v14    # "bytesRead":I
    goto :goto_0

    .line 630
    :cond_0
    iget-object v2, v1, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$6;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    invoke-static {v2, v0}, Lexpo/modules/filesystem/FileSystemModule;->access$getInputStreamBytes(Lexpo/modules/filesystem/FileSystemModule;Ljava/io/InputStream;)[B

    move-result-object v2

    .line 631
    .local v2, "inputData":[B
    const/4 v13, 0x2

    invoke-static {v2, v13}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v13

    move-object v2, v13

    .line 624
    .end local v2    # "inputData":[B
    :goto_0
    move-object v10, v2

    .line 633
    nop

    .end local v0    # "inputStream":Ljava/io/InputStream;
    .end local v12    # "$i$a$-use-FileSystemModule$definition$1$3$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 623
    const/4 v0, 0x0

    invoke-static {v11, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v0

    .end local v3    # "p0":Ljava/lang/Object;
    .end local v4    # "p1":Ljava/lang/Object;
    .end local v5    # "options":Lexpo/modules/filesystem/ReadingOptions;
    .end local v6    # "uriStr":Ljava/lang/String;
    .end local v7    # "$i$a$-AsyncFunction-FileSystemModule$definition$1$3":I
    .end local v8    # "uri":Landroid/net/Uri;
    .end local v9    # "encoding":Lexpo/modules/filesystem/EncodingType;
    .end local v10    # "contents":Ljava/lang/Object;
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local v3    # "p0":Ljava/lang/Object;
    .restart local v4    # "p1":Ljava/lang/Object;
    .restart local v5    # "options":Lexpo/modules/filesystem/ReadingOptions;
    .restart local v6    # "uriStr":Ljava/lang/String;
    .restart local v7    # "$i$a$-AsyncFunction-FileSystemModule$definition$1$3":I
    .restart local v8    # "uri":Landroid/net/Uri;
    .restart local v9    # "encoding":Lexpo/modules/filesystem/EncodingType;
    .restart local v10    # "contents":Ljava/lang/Object;
    :catchall_1
    move-exception v0

    move-object v12, v0

    invoke-static {v11, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v12

    .line 635
    :cond_1
    nop

    .line 636
    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "file"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, v1, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$6;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    invoke-static {v2, v8}, Lexpo/modules/filesystem/FileSystemModule;->access$toFile(Lexpo/modules/filesystem/FileSystemModule;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v0, Ljava/io/InputStream;

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 637
    :cond_2
    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "asset"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$6;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    invoke-static {v0, v8}, Lexpo/modules/filesystem/FileSystemModule;->access$openAssetInputStream(Lexpo/modules/filesystem/FileSystemModule;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 638
    :cond_3
    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$6;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    invoke-static {v0, v6}, Lexpo/modules/filesystem/FileSystemModule;->access$openResourceInputStream(Lexpo/modules/filesystem/FileSystemModule;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 639
    :cond_4
    iget-object v0, v1, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$6;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    invoke-static {v0, v8}, Lexpo/modules/filesystem/FileSystemModule;->access$isSAFUri(Lexpo/modules/filesystem/FileSystemModule;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$6;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    invoke-static {v0}, Lexpo/modules/filesystem/FileSystemModule;->access$getContext(Lexpo/modules/filesystem/FileSystemModule;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 635
    :goto_1
    move-object v10, v0

    .line 643
    :goto_2
    nop

    .line 261
    .end local v5    # "options":Lexpo/modules/filesystem/ReadingOptions;
    .end local v6    # "uriStr":Ljava/lang/String;
    .end local v7    # "$i$a$-AsyncFunction-FileSystemModule$definition$1$3":I
    .end local v8    # "uri":Landroid/net/Uri;
    .end local v9    # "encoding":Lexpo/modules/filesystem/EncodingType;
    .end local v10    # "contents":Ljava/lang/Object;
    return-object v10

    .line 640
    .restart local v5    # "options":Lexpo/modules/filesystem/ReadingOptions;
    .restart local v6    # "uriStr":Ljava/lang/String;
    .restart local v7    # "$i$a$-AsyncFunction-FileSystemModule$definition$1$3":I
    .restart local v8    # "uri":Landroid/net/Uri;
    .restart local v9    # "encoding":Lexpo/modules/filesystem/EncodingType;
    .restart local v10    # "contents":Ljava/lang/Object;
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unsupported scheme for location \'"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, "\'."

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
