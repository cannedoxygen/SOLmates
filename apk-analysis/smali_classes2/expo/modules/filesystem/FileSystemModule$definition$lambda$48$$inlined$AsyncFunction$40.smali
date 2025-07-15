.class public final Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$40;
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
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$12\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 FileSystemModule.kt\nexpo/modules/filesystem/FileSystemModule\n*L\n1#1,611:1\n22#2,4:612\n447#3,13:616\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$12\n*L\n285#1:612,4\n*E\n"
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

    iput-object p1, p0, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$40;->this$0:Lexpo/modules/filesystem/FileSystemModule;

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

    invoke-virtual {p0, v0}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$40;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "<name for destructuring parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .local v0, "p0":Ljava/lang/Object;
    const/4 v1, 0x1

    aget-object v1, p1, v1

    .local v1, "p1":Ljava/lang/Object;
    const/4 v2, 0x2

    aget-object p1, p1, v2

    .line 285
    .local p1, "p2":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 612
    .local v2, "$i$f$enforceType":I
    nop

    .line 615
    nop

    .line 286
    .end local v2    # "$i$f$enforceType":I
    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    .local v2, "mimeType":Ljava/lang/String;
    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .local v3, "fileName":Ljava/lang/String;
    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .local v4, "uriStr":Ljava/lang/String;
    const/4 v5, 0x0

    .line 616
    .local v5, "$i$a$-AsyncFunction-FileSystemModule$definition$1$15":I
    invoke-static {v4}, Lexpo/modules/filesystem/FileSystemModuleKt;->access$slashifyFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 617
    .local v6, "uri":Landroid/net/Uri;
    iget-object v7, p0, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$40;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v8, Lexpo/modules/interfaces/filesystem/Permission;->WRITE:Lexpo/modules/interfaces/filesystem/Permission;

    invoke-static {v7, v6, v8}, Lexpo/modules/filesystem/FileSystemModule;->access$ensurePermission(Lexpo/modules/filesystem/FileSystemModule;Landroid/net/Uri;Lexpo/modules/interfaces/filesystem/Permission;)V

    .line 618
    iget-object v7, p0, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$40;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    invoke-static {v7, v6}, Lexpo/modules/filesystem/FileSystemModule;->access$isSAFUri(Lexpo/modules/filesystem/FileSystemModule;Landroid/net/Uri;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 619
    iget-object v7, p0, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$40;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    invoke-static {v7, v6}, Lexpo/modules/filesystem/FileSystemModule;->access$getNearestSAFFile(Lexpo/modules/filesystem/FileSystemModule;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v7

    .line 620
    .local v7, "dir":Landroidx/documentfile/provider/DocumentFile;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroidx/documentfile/provider/DocumentFile;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 623
    invoke-virtual {v7, v2, v3}, Landroidx/documentfile/provider/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 626
    .local v8, "newFile":Landroidx/documentfile/provider/DocumentFile;
    invoke-virtual {v8}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    .line 286
    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "uriStr":Ljava/lang/String;
    .end local v5    # "$i$a$-AsyncFunction-FileSystemModule$definition$1$15":I
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v7    # "dir":Landroidx/documentfile/provider/DocumentFile;
    .end local v8    # "newFile":Landroidx/documentfile/provider/DocumentFile;
    return-object v9

    .line 624
    .restart local v2    # "mimeType":Ljava/lang/String;
    .restart local v3    # "fileName":Ljava/lang/String;
    .restart local v4    # "uriStr":Ljava/lang/String;
    .restart local v5    # "$i$a$-AsyncFunction-FileSystemModule$definition$1$15":I
    .restart local v6    # "uri":Landroid/net/Uri;
    .restart local v7    # "dir":Landroidx/documentfile/provider/DocumentFile;
    :cond_0
    new-instance v8, Lexpo/modules/filesystem/FileSystemCannotCreateFileException;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lexpo/modules/filesystem/FileSystemCannotCreateFileException;-><init>(Landroid/net/Uri;)V

    throw v8

    .line 621
    :cond_1
    new-instance v8, Lexpo/modules/filesystem/FileSystemCannotCreateFileException;

    invoke-direct {v8, v6}, Lexpo/modules/filesystem/FileSystemCannotCreateFileException;-><init>(Landroid/net/Uri;)V

    throw v8

    .line 628
    .end local v7    # "dir":Landroidx/documentfile/provider/DocumentFile;
    :cond_2
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The URI \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' is not a Storage Access Framework URI."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
.end method
