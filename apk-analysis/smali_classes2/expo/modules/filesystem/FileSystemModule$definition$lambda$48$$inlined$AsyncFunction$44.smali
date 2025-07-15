.class public final Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$44;
.super Lkotlin/jvm/internal/Lambda;
.source "ObjectDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


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
        "Lkotlin/jvm/functions/Function2<",
        "[",
        "Ljava/lang/Object;",
        "Lexpo/modules/kotlin/Promise;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$5\n+ 2 FileSystemModule.kt\nexpo/modules/filesystem/FileSystemModule\n*L\n1#1,611:1\n692#2,14:612\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001\"\u0006\u0008\u0001\u0010\u0003\u0018\u00012\u0010\u0010\u0004\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00060\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\n\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "<anonymous>",
        "",
        "R",
        "P0",
        "<anonymous parameter 0>",
        "",
        "",
        "promise",
        "Lexpo/modules/kotlin/Promise;",
        "invoke",
        "([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V",
        "expo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$5"
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

    iput-object p1, p0, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$44;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 250
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v1, p2

    check-cast v1, Lexpo/modules/kotlin/Promise;

    invoke-virtual {p0, v0, v1}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$44;->invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V
    .locals 8
    .param p2, "promise"    # Lexpo/modules/kotlin/Promise;

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "promise"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    move-object p1, p2

    check-cast p1, Ljava/lang/String;

    .local p1, "uuid":Ljava/lang/String;
    const/4 v0, 0x0

    .line 612
    .local v0, "$i$a$-AsyncFunction-FileSystemModule$definition$1$22":I
    iget-object v1, p0, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$44;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    invoke-static {v1}, Lexpo/modules/filesystem/FileSystemModule;->access$getTaskHandlers$p(Lexpo/modules/filesystem/FileSystemModule;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexpo/modules/filesystem/FileSystemModule$TaskHandler;

    if-eqz v1, :cond_1

    .line 615
    .local v1, "taskHandler":Lexpo/modules/filesystem/FileSystemModule$TaskHandler;
    instance-of v2, v1, Lexpo/modules/filesystem/FileSystemModule$DownloadTaskHandler;

    if-eqz v2, :cond_0

    .line 619
    invoke-virtual {v1}, Lexpo/modules/filesystem/FileSystemModule$TaskHandler;->getCall()Lokhttp3/Call;

    move-result-object v2

    invoke-interface {v2}, Lokhttp3/Call;->cancel()V

    .line 620
    iget-object v2, p0, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$44;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    invoke-static {v2}, Lexpo/modules/filesystem/FileSystemModule;->access$getTaskHandlers$p(Lexpo/modules/filesystem/FileSystemModule;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    iget-object v2, p0, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$44;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    move-object v3, v1

    check-cast v3, Lexpo/modules/filesystem/FileSystemModule$DownloadTaskHandler;

    invoke-virtual {v3}, Lexpo/modules/filesystem/FileSystemModule$DownloadTaskHandler;->getFileUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lexpo/modules/filesystem/FileSystemModule;->access$toFile(Lexpo/modules/filesystem/FileSystemModule;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v2

    .line 622
    .local v2, "file":Ljava/io/File;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v4, v3

    .local v4, "$this$definition_u24lambda_u2448_u24lambda_u2444_u24lambda_u2443":Landroid/os/Bundle;
    const/4 v5, 0x0

    .line 623
    .local v5, "$i$a$-apply-FileSystemModule$definition$1$22$result$1":I
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const-string v7, "resumeData"

    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    nop

    .line 622
    .end local v4    # "$this$definition_u24lambda_u2448_u24lambda_u2444_u24lambda_u2443":Landroid/os/Bundle;
    .end local v5    # "$i$a$-apply-FileSystemModule$definition$1$22$result$1":I
    nop

    .line 625
    .local v3, "result":Landroid/os/Bundle;
    nop

    .line 244
    .end local v0    # "$i$a$-AsyncFunction-FileSystemModule$definition$1$22":I
    .end local v1    # "taskHandler":Lexpo/modules/filesystem/FileSystemModule$TaskHandler;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "result":Landroid/os/Bundle;
    .end local p1    # "uuid":Ljava/lang/String;
    return-void

    .line 616
    .restart local v0    # "$i$a$-AsyncFunction-FileSystemModule$definition$1$22":I
    .restart local v1    # "taskHandler":Lexpo/modules/filesystem/FileSystemModule$TaskHandler;
    .restart local p1    # "uuid":Ljava/lang/String;
    :cond_0
    new-instance v2, Lexpo/modules/filesystem/FileSystemCannotFindTaskException;

    invoke-direct {v2}, Lexpo/modules/filesystem/FileSystemCannotFindTaskException;-><init>()V

    throw v2

    .line 613
    .end local v1    # "taskHandler":Lexpo/modules/filesystem/FileSystemModule$TaskHandler;
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "No download object available"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
