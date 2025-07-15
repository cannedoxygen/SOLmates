.class public final Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$46;
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
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$6\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 FileSystemModule.kt\nexpo/modules/filesystem/FileSystemModule\n*L\n1#1,611:1\n8#2,4:612\n692#3,14:616\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$6\n*L\n247#1:612,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0010\u0000\u001a\u0002H\u0001\"\u0006\u0008\u0000\u0010\u0001\u0018\u0001\"\u0006\u0008\u0001\u0010\u0002\u0018\u00012\u0010\u0010\u0003\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00050\u0004H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "<anonymous>",
        "R",
        "P0",
        "<name for destructuring parameter 0>",
        "",
        "",
        "invoke",
        "([Ljava/lang/Object;)Ljava/lang/Object;",
        "expo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$6"
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

    iput-object p1, p0, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$46;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 246
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$46;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Landroid/os/Bundle;"
        }
    .end annotation

    const-string v0, "<name for destructuring parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    const/4 v0, 0x0

    aget-object p1, p1, v0

    .line 247
    .local p1, "p0":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 612
    .local v0, "$i$f$enforceType":I
    nop

    .line 615
    nop

    .line 248
    .end local v0    # "$i$f$enforceType":I
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .local v0, "uuid":Ljava/lang/String;
    const/4 v1, 0x0

    .line 616
    .local v1, "$i$a$-AsyncFunction-FileSystemModule$definition$1$22":I
    iget-object v2, p0, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$46;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    invoke-static {v2}, Lexpo/modules/filesystem/FileSystemModule;->access$getTaskHandlers$p(Lexpo/modules/filesystem/FileSystemModule;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/filesystem/FileSystemModule$TaskHandler;

    if-eqz v2, :cond_1

    .line 619
    .local v2, "taskHandler":Lexpo/modules/filesystem/FileSystemModule$TaskHandler;
    instance-of v3, v2, Lexpo/modules/filesystem/FileSystemModule$DownloadTaskHandler;

    if-eqz v3, :cond_0

    .line 623
    invoke-virtual {v2}, Lexpo/modules/filesystem/FileSystemModule$TaskHandler;->getCall()Lokhttp3/Call;

    move-result-object v3

    invoke-interface {v3}, Lokhttp3/Call;->cancel()V

    .line 624
    iget-object v3, p0, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$46;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    invoke-static {v3}, Lexpo/modules/filesystem/FileSystemModule;->access$getTaskHandlers$p(Lexpo/modules/filesystem/FileSystemModule;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    iget-object v3, p0, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$46;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    move-object v4, v2

    check-cast v4, Lexpo/modules/filesystem/FileSystemModule$DownloadTaskHandler;

    invoke-virtual {v4}, Lexpo/modules/filesystem/FileSystemModule$DownloadTaskHandler;->getFileUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4}, Lexpo/modules/filesystem/FileSystemModule;->access$toFile(Lexpo/modules/filesystem/FileSystemModule;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v3

    .line 626
    .local v3, "file":Ljava/io/File;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v5, v4

    .local v5, "$this$definition_u24lambda_u2448_u24lambda_u2444_u24lambda_u2443":Landroid/os/Bundle;
    const/4 v6, 0x0

    .line 627
    .local v6, "$i$a$-apply-FileSystemModule$definition$1$22$result$1":I
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    const-string v8, "resumeData"

    invoke-virtual {v5, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    nop

    .line 626
    .end local v5    # "$this$definition_u24lambda_u2448_u24lambda_u2444_u24lambda_u2443":Landroid/os/Bundle;
    .end local v6    # "$i$a$-apply-FileSystemModule$definition$1$22$result$1":I
    nop

    .line 629
    .local v4, "result":Landroid/os/Bundle;
    nop

    .line 248
    .end local v0    # "uuid":Ljava/lang/String;
    .end local v1    # "$i$a$-AsyncFunction-FileSystemModule$definition$1$22":I
    .end local v2    # "taskHandler":Lexpo/modules/filesystem/FileSystemModule$TaskHandler;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "result":Landroid/os/Bundle;
    return-object v4

    .line 620
    .restart local v0    # "uuid":Ljava/lang/String;
    .restart local v1    # "$i$a$-AsyncFunction-FileSystemModule$definition$1$22":I
    .restart local v2    # "taskHandler":Lexpo/modules/filesystem/FileSystemModule$TaskHandler;
    :cond_0
    new-instance v3, Lexpo/modules/filesystem/FileSystemCannotFindTaskException;

    invoke-direct {v3}, Lexpo/modules/filesystem/FileSystemCannotFindTaskException;-><init>()V

    throw v3

    .line 617
    .end local v2    # "taskHandler":Lexpo/modules/filesystem/FileSystemModule$TaskHandler;
    :cond_1
    new-instance v2, Ljava/io/IOException;

    const-string v3, "No download object available"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
