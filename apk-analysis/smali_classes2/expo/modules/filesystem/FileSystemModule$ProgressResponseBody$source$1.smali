.class public final Lexpo/modules/filesystem/FileSystemModule$ProgressResponseBody$source$1;
.super Lokio/ForwardingSource;
.source "FileSystemModule.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/filesystem/FileSystemModule$ProgressResponseBody;->source(Lokio/Source;)Lokio/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0003H\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "expo/modules/filesystem/FileSystemModule$ProgressResponseBody$source$1",
        "Lokio/ForwardingSource;",
        "totalBytesRead",
        "",
        "getTotalBytesRead",
        "()J",
        "setTotalBytesRead",
        "(J)V",
        "read",
        "sink",
        "Lokio/Buffer;",
        "byteCount",
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
.field final synthetic this$0:Lexpo/modules/filesystem/FileSystemModule$ProgressResponseBody;

.field private totalBytesRead:J


# direct methods
.method constructor <init>(Lokio/Source;Lexpo/modules/filesystem/FileSystemModule$ProgressResponseBody;)V
    .locals 0
    .param p1, "$source"    # Lokio/Source;
    .param p2, "$receiver"    # Lexpo/modules/filesystem/FileSystemModule$ProgressResponseBody;

    iput-object p2, p0, Lexpo/modules/filesystem/FileSystemModule$ProgressResponseBody$source$1;->this$0:Lexpo/modules/filesystem/FileSystemModule$ProgressResponseBody;

    .line 969
    invoke-direct {p0, p1}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    return-void
.end method


# virtual methods
.method public final getTotalBytesRead()J
    .locals 2

    .line 970
    iget-wide v0, p0, Lexpo/modules/filesystem/FileSystemModule$ProgressResponseBody$source$1;->totalBytesRead:J

    return-wide v0
.end method

.method public read(Lokio/Buffer;J)J
    .locals 12
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 974
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J

    move-result-wide v0

    .line 976
    .local v0, "bytesRead":J
    iget-wide v2, p0, Lexpo/modules/filesystem/FileSystemModule$ProgressResponseBody$source$1;->totalBytesRead:J

    const-wide/16 v4, -0x1

    cmp-long v6, v0, v4

    if-eqz v6, :cond_0

    move-wide v6, v0

    goto :goto_0

    :cond_0
    const-wide/16 v6, 0x0

    :goto_0
    add-long/2addr v2, v6

    iput-wide v2, p0, Lexpo/modules/filesystem/FileSystemModule$ProgressResponseBody$source$1;->totalBytesRead:J

    .line 977
    iget-object v2, p0, Lexpo/modules/filesystem/FileSystemModule$ProgressResponseBody$source$1;->this$0:Lexpo/modules/filesystem/FileSystemModule$ProgressResponseBody;

    invoke-static {v2}, Lexpo/modules/filesystem/FileSystemModule$ProgressResponseBody;->access$getProgressListener$p(Lexpo/modules/filesystem/FileSystemModule$ProgressResponseBody;)Lexpo/modules/filesystem/FileSystemModule$ProgressListener;

    move-result-object v6

    .line 978
    iget-wide v7, p0, Lexpo/modules/filesystem/FileSystemModule$ProgressResponseBody$source$1;->totalBytesRead:J

    .line 979
    iget-object v2, p0, Lexpo/modules/filesystem/FileSystemModule$ProgressResponseBody$source$1;->this$0:Lexpo/modules/filesystem/FileSystemModule$ProgressResponseBody;

    invoke-static {v2}, Lexpo/modules/filesystem/FileSystemModule$ProgressResponseBody;->access$getResponseBody$p(Lexpo/modules/filesystem/FileSystemModule$ProgressResponseBody;)Lokhttp3/ResponseBody;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v2

    move-wide v9, v2

    goto :goto_1

    .line 980
    :cond_1
    move-wide v9, v4

    .line 981
    :goto_1
    cmp-long v2, v0, v4

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    move v11, v2

    .line 977
    invoke-interface/range {v6 .. v11}, Lexpo/modules/filesystem/FileSystemModule$ProgressListener;->update(JJZ)V

    .line 983
    return-wide v0
.end method

.method public final setTotalBytesRead(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 970
    iput-wide p1, p0, Lexpo/modules/filesystem/FileSystemModule$ProgressResponseBody$source$1;->totalBytesRead:J

    return-void
.end method
