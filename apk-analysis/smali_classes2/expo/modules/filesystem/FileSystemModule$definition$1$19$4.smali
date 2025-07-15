.class public final Lexpo/modules/filesystem/FileSystemModule$definition$1$19$4;
.super Ljava/lang/Object;
.source "FileSystemModule.kt"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/filesystem/FileSystemModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "expo/modules/filesystem/FileSystemModule$definition$1$19$4",
        "Lokhttp3/Callback;",
        "onFailure",
        "",
        "call",
        "Lokhttp3/Call;",
        "e",
        "Ljava/io/IOException;",
        "onResponse",
        "response",
        "Lokhttp3/Response;",
        "expo-file-system_debug"
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
.field final synthetic $options:Lexpo/modules/filesystem/DownloadOptions;

.field final synthetic $promise:Lexpo/modules/kotlin/Promise;

.field final synthetic $uri:Landroid/net/Uri;

.field final synthetic this$0:Lexpo/modules/filesystem/FileSystemModule;


# direct methods
.method constructor <init>(Lexpo/modules/kotlin/Promise;Lexpo/modules/filesystem/FileSystemModule;Landroid/net/Uri;Lexpo/modules/filesystem/DownloadOptions;)V
    .locals 0
    .param p1, "$promise"    # Lexpo/modules/kotlin/Promise;
    .param p2, "$receiver"    # Lexpo/modules/filesystem/FileSystemModule;
    .param p3, "$uri"    # Landroid/net/Uri;
    .param p4, "$options"    # Lexpo/modules/filesystem/DownloadOptions;

    iput-object p1, p0, Lexpo/modules/filesystem/FileSystemModule$definition$1$19$4;->$promise:Lexpo/modules/kotlin/Promise;

    iput-object p2, p0, Lexpo/modules/filesystem/FileSystemModule$definition$1$19$4;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    iput-object p3, p0, Lexpo/modules/filesystem/FileSystemModule$definition$1$19$4;->$uri:Landroid/net/Uri;

    iput-object p4, p0, Lexpo/modules/filesystem/FileSystemModule$definition$1$19$4;->$options:Lexpo/modules/filesystem/DownloadOptions;

    .line 590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 4
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "e"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 592
    invoke-static {}, Lexpo/modules/filesystem/FileSystemModuleKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-object v0, p0, Lexpo/modules/filesystem/FileSystemModule$definition$1$19$4;->$promise:Lexpo/modules/kotlin/Promise;

    invoke-static {}, Lexpo/modules/filesystem/FileSystemModuleKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "access$getTAG$p(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    move-object v3, p2

    check-cast v3, Ljava/lang/Throwable;

    invoke-interface {v0, v1, v2, v3}, Lexpo/modules/kotlin/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 594
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 9
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 598
    iget-object v0, p0, Lexpo/modules/filesystem/FileSystemModule$definition$1$19$4;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    iget-object v1, p0, Lexpo/modules/filesystem/FileSystemModule$definition$1$19$4;->$uri:Landroid/net/Uri;

    const-string v2, "$uri"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lexpo/modules/filesystem/FileSystemModule;->access$toFile(Lexpo/modules/filesystem/FileSystemModule;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 599
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 600
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lokio/Okio;->sink$default(Ljava/io/File;ZILjava/lang/Object;)Lokio/Sink;

    move-result-object v1

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v1

    .line 601
    .local v1, "sink":Lokio/BufferedSink;
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v2

    check-cast v2, Lokio/Source;

    invoke-interface {v1, v2}, Lokio/BufferedSink;->writeAll(Lokio/Source;)J

    .line 602
    invoke-interface {v1}, Lokio/BufferedSink;->close()V

    .line 603
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v3, p0, Lexpo/modules/filesystem/FileSystemModule$definition$1$19$4;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    iget-object v4, p0, Lexpo/modules/filesystem/FileSystemModule$definition$1$19$4;->$options:Lexpo/modules/filesystem/DownloadOptions;

    move-object v5, v2

    .local v5, "$this$onResponse_u24lambda_u240":Landroid/os/Bundle;
    const/4 v6, 0x0

    .line 604
    .local v6, "$i$a$-apply-FileSystemModule$definition$1$19$4$onResponse$result$1":I
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "uri"

    invoke-virtual {v5, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    const-string v7, "status"

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v8

    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 606
    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v7

    invoke-static {v3, v7}, Lexpo/modules/filesystem/FileSystemModule;->access$translateHeaders(Lexpo/modules/filesystem/FileSystemModule;Lokhttp3/Headers;)Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "headers"

    invoke-virtual {v5, v8, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 607
    invoke-virtual {v4}, Lexpo/modules/filesystem/DownloadOptions;->getMd5()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 608
    const-string v4, "md5"

    invoke-static {v3, v0}, Lexpo/modules/filesystem/FileSystemModule;->access$md5(Lexpo/modules/filesystem/FileSystemModule;Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    :cond_0
    nop

    .line 603
    .end local v5    # "$this$onResponse_u24lambda_u240":Landroid/os/Bundle;
    .end local v6    # "$i$a$-apply-FileSystemModule$definition$1$19$4$onResponse$result$1":I
    nop

    .line 611
    .local v2, "result":Landroid/os/Bundle;
    invoke-virtual {p2}, Lokhttp3/Response;->close()V

    .line 612
    iget-object v3, p0, Lexpo/modules/filesystem/FileSystemModule$definition$1$19$4;->$promise:Lexpo/modules/kotlin/Promise;

    invoke-interface {v3, v2}, Lexpo/modules/kotlin/Promise;->resolve(Ljava/lang/Object;)V

    .line 613
    return-void
.end method
