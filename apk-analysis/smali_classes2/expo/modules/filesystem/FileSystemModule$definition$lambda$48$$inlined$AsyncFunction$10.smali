.class public final Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$10;
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
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$12\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 FileSystemModule.kt\nexpo/modules/filesystem/FileSystemModule\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,611:1\n22#2,4:612\n204#3,9:616\n214#3,2:626\n1#4:625\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$12\n*L\n285#1:612,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0008\u0006\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0010\u0000\u001a\u0002H\u0001\"\u0006\u0008\u0000\u0010\u0001\u0018\u0001\"\u0006\u0008\u0001\u0010\u0002\u0018\u0001\"\u0006\u0008\u0002\u0010\u0003\u0018\u0001\"\u0006\u0008\u0003\u0010\u0004\u0018\u00012\u0010\u0010\u0005\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00070\u0006H\n\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "<anonymous>",
        "R",
        "P0",
        "P1",
        "P2",
        "<name for destructuring parameter 0>",
        "",
        "",
        "invoke",
        "([Ljava/lang/Object;)Ljava/lang/Object;",
        "expo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$12"
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

    iput-object p1, p0, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$10;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 284
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$10;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Lkotlin/Unit;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "<name for destructuring parameter 0>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    const/4 v2, 0x0

    aget-object v3, v0, v2

    .local v3, "p0":Ljava/lang/Object;
    const/4 v4, 0x1

    aget-object v4, v0, v4

    .local v4, "p1":Ljava/lang/Object;
    const/4 v5, 0x2

    aget-object v5, v0, v5

    .line 285
    .local v5, "p2":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 612
    .local v0, "$i$f$enforceType":I
    nop

    .line 615
    nop

    .line 286
    .end local v0    # "$i$f$enforceType":I
    move-object v6, v5

    check-cast v6, Lexpo/modules/filesystem/WritingOptions;

    .local v6, "options":Lexpo/modules/filesystem/WritingOptions;
    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    .local v7, "contents":Ljava/lang/String;
    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    .local v0, "uriStr":Ljava/lang/String;
    move-object v8, v0

    .end local v0    # "uriStr":Ljava/lang/String;
    .local v8, "uriStr":Ljava/lang/String;
    const/4 v9, 0x0

    .line 616
    .local v9, "$i$a$-AsyncFunction-FileSystemModule$definition$1$4":I
    invoke-static {v8}, Lexpo/modules/filesystem/FileSystemModuleKt;->access$slashifyFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 617
    .local v10, "uri":Landroid/net/Uri;
    iget-object v0, v1, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$10;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v11, Lexpo/modules/interfaces/filesystem/Permission;->WRITE:Lexpo/modules/interfaces/filesystem/Permission;

    invoke-static {v0, v10, v11}, Lexpo/modules/filesystem/FileSystemModule;->access$ensurePermission(Lexpo/modules/filesystem/FileSystemModule;Landroid/net/Uri;Lexpo/modules/interfaces/filesystem/Permission;)V

    .line 618
    invoke-virtual {v6}, Lexpo/modules/filesystem/WritingOptions;->getEncoding()Lexpo/modules/filesystem/EncodingType;

    move-result-object v11

    .line 619
    .local v11, "encoding":Lexpo/modules/filesystem/EncodingType;
    iget-object v0, v1, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$10;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    invoke-static {v0, v10}, Lexpo/modules/filesystem/FileSystemModule;->access$getOutputStream(Lexpo/modules/filesystem/FileSystemModule;Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/io/Closeable;

    :try_start_0
    move-object v0, v12

    check-cast v0, Ljava/io/OutputStream;

    move-object v13, v0

    .local v13, "out":Ljava/io/OutputStream;
    const/4 v14, 0x0

    .line 620
    .local v14, "$i$a$-use-FileSystemModule$definition$1$4$1":I
    sget-object v0, Lexpo/modules/filesystem/EncodingType;->BASE64:Lexpo/modules/filesystem/EncodingType;

    const/4 v15, 0x0

    if-ne v11, v0, :cond_0

    .line 621
    invoke-static {v7, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 622
    .local v0, "bytes":[B
    invoke-virtual {v13, v0}, Ljava/io/OutputStream;->write([B)V

    .end local v0    # "bytes":[B
    goto :goto_0

    .line 624
    :cond_0
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, v13}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v0

    check-cast v2, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v0, v2

    check-cast v0, Ljava/io/OutputStreamWriter;

    .line 625
    .local v0, "writer":Ljava/io/OutputStreamWriter;
    const/16 v16, 0x0

    .line 624
    .local v16, "$i$a$-use-FileSystemModule$definition$1$4$1$1":I
    invoke-virtual {v0, v7}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .end local v0    # "writer":Ljava/io/OutputStreamWriter;
    .end local v16    # "$i$a$-use-FileSystemModule$definition$1$4$1$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v2, v15}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 626
    :goto_0
    nop

    .end local v13    # "out":Ljava/io/OutputStream;
    .end local v14    # "$i$a$-use-FileSystemModule$definition$1$4$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 619
    invoke-static {v12, v15}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 627
    nop

    .end local v6    # "options":Lexpo/modules/filesystem/WritingOptions;
    .end local v7    # "contents":Ljava/lang/String;
    .end local v8    # "uriStr":Ljava/lang/String;
    .end local v9    # "$i$a$-AsyncFunction-FileSystemModule$definition$1$4":I
    .end local v10    # "uri":Landroid/net/Uri;
    .end local v11    # "encoding":Lexpo/modules/filesystem/EncodingType;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 286
    return-object v0

    .line 624
    .restart local v6    # "options":Lexpo/modules/filesystem/WritingOptions;
    .restart local v7    # "contents":Ljava/lang/String;
    .restart local v8    # "uriStr":Ljava/lang/String;
    .restart local v9    # "$i$a$-AsyncFunction-FileSystemModule$definition$1$4":I
    .restart local v10    # "uri":Landroid/net/Uri;
    .restart local v11    # "encoding":Lexpo/modules/filesystem/EncodingType;
    .restart local v13    # "out":Ljava/io/OutputStream;
    .restart local v14    # "$i$a$-use-FileSystemModule$definition$1$4$1":I
    :catchall_0
    move-exception v0

    move-object v15, v0

    .end local v3    # "p0":Ljava/lang/Object;
    .end local v4    # "p1":Ljava/lang/Object;
    .end local v5    # "p2":Ljava/lang/Object;
    .end local v6    # "options":Lexpo/modules/filesystem/WritingOptions;
    .end local v7    # "contents":Ljava/lang/String;
    .end local v8    # "uriStr":Ljava/lang/String;
    .end local v9    # "$i$a$-AsyncFunction-FileSystemModule$definition$1$4":I
    .end local v10    # "uri":Landroid/net/Uri;
    .end local v11    # "encoding":Lexpo/modules/filesystem/EncodingType;
    .end local v13    # "out":Ljava/io/OutputStream;
    .end local v14    # "$i$a$-use-FileSystemModule$definition$1$4$1":I
    :try_start_3
    throw v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .restart local v3    # "p0":Ljava/lang/Object;
    .restart local v4    # "p1":Ljava/lang/Object;
    .restart local v5    # "p2":Ljava/lang/Object;
    .restart local v6    # "options":Lexpo/modules/filesystem/WritingOptions;
    .restart local v7    # "contents":Ljava/lang/String;
    .restart local v8    # "uriStr":Ljava/lang/String;
    .restart local v9    # "$i$a$-AsyncFunction-FileSystemModule$definition$1$4":I
    .restart local v10    # "uri":Landroid/net/Uri;
    .restart local v11    # "encoding":Lexpo/modules/filesystem/EncodingType;
    .restart local v13    # "out":Ljava/io/OutputStream;
    .restart local v14    # "$i$a$-use-FileSystemModule$definition$1$4$1":I
    :catchall_1
    move-exception v0

    move-object/from16 v16, v0

    :try_start_4
    invoke-static {v2, v15}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v3    # "p0":Ljava/lang/Object;
    .end local v4    # "p1":Ljava/lang/Object;
    .end local v5    # "p2":Ljava/lang/Object;
    .end local v6    # "options":Lexpo/modules/filesystem/WritingOptions;
    .end local v7    # "contents":Ljava/lang/String;
    .end local v8    # "uriStr":Ljava/lang/String;
    .end local v9    # "$i$a$-AsyncFunction-FileSystemModule$definition$1$4":I
    .end local v10    # "uri":Landroid/net/Uri;
    .end local v11    # "encoding":Lexpo/modules/filesystem/EncodingType;
    throw v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 619
    .end local v13    # "out":Ljava/io/OutputStream;
    .end local v14    # "$i$a$-use-FileSystemModule$definition$1$4$1":I
    .restart local v3    # "p0":Ljava/lang/Object;
    .restart local v4    # "p1":Ljava/lang/Object;
    .restart local v5    # "p2":Ljava/lang/Object;
    .restart local v6    # "options":Lexpo/modules/filesystem/WritingOptions;
    .restart local v7    # "contents":Ljava/lang/String;
    .restart local v8    # "uriStr":Ljava/lang/String;
    .restart local v9    # "$i$a$-AsyncFunction-FileSystemModule$definition$1$4":I
    .restart local v10    # "uri":Landroid/net/Uri;
    .restart local v11    # "encoding":Lexpo/modules/filesystem/EncodingType;
    :catchall_2
    move-exception v0

    move-object v2, v0

    .end local v3    # "p0":Ljava/lang/Object;
    .end local v4    # "p1":Ljava/lang/Object;
    .end local v5    # "p2":Ljava/lang/Object;
    .end local v6    # "options":Lexpo/modules/filesystem/WritingOptions;
    .end local v7    # "contents":Ljava/lang/String;
    .end local v8    # "uriStr":Ljava/lang/String;
    .end local v9    # "$i$a$-AsyncFunction-FileSystemModule$definition$1$4":I
    .end local v10    # "uri":Landroid/net/Uri;
    .end local v11    # "encoding":Lexpo/modules/filesystem/EncodingType;
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .restart local v3    # "p0":Ljava/lang/Object;
    .restart local v4    # "p1":Ljava/lang/Object;
    .restart local v5    # "p2":Ljava/lang/Object;
    .restart local v6    # "options":Lexpo/modules/filesystem/WritingOptions;
    .restart local v7    # "contents":Ljava/lang/String;
    .restart local v8    # "uriStr":Ljava/lang/String;
    .restart local v9    # "$i$a$-AsyncFunction-FileSystemModule$definition$1$4":I
    .restart local v10    # "uri":Landroid/net/Uri;
    .restart local v11    # "encoding":Lexpo/modules/filesystem/EncodingType;
    :catchall_3
    move-exception v0

    move-object v13, v0

    invoke-static {v12, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v13
.end method
