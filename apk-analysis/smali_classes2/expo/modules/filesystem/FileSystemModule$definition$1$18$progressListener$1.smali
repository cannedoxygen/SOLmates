.class public final Lexpo/modules/filesystem/FileSystemModule$definition$1$18$progressListener$1;
.super Ljava/lang/Object;
.source "FileSystemModule.kt"

# interfaces
.implements Lexpo/modules/filesystem/CountingRequestListener;


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
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "expo/modules/filesystem/FileSystemModule$definition$1$18$progressListener$1",
        "Lexpo/modules/filesystem/CountingRequestListener;",
        "mLastUpdate",
        "",
        "onProgress",
        "",
        "bytesWritten",
        "contentLength",
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
.field final synthetic $uuid:Ljava/lang/String;

.field private mLastUpdate:J

.field final synthetic this$0:Lexpo/modules/filesystem/FileSystemModule;


# direct methods
.method constructor <init>(Ljava/lang/String;Lexpo/modules/filesystem/FileSystemModule;)V
    .locals 2
    .param p1, "$uuid"    # Ljava/lang/String;
    .param p2, "$receiver"    # Lexpo/modules/filesystem/FileSystemModule;

    iput-object p1, p0, Lexpo/modules/filesystem/FileSystemModule$definition$1$18$progressListener$1;->$uuid:Ljava/lang/String;

    iput-object p2, p0, Lexpo/modules/filesystem/FileSystemModule$definition$1$18$progressListener$1;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lexpo/modules/filesystem/FileSystemModule$definition$1$18$progressListener$1;->mLastUpdate:J

    .line 508
    return-void
.end method


# virtual methods
.method public onProgress(JJ)V
    .locals 8
    .param p1, "bytesWritten"    # J
    .param p3, "contentLength"    # J

    .line 511
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 512
    .local v0, "uploadProgress":Landroid/os/Bundle;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 513
    .local v1, "uploadProgressData":Landroid/os/Bundle;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 517
    .local v2, "currentTime":J
    iget-wide v4, p0, Lexpo/modules/filesystem/FileSystemModule$definition$1$18$progressListener$1;->mLastUpdate:J

    const-wide/16 v6, 0x64

    add-long/2addr v4, v6

    cmp-long v4, v2, v4

    if-gtz v4, :cond_0

    cmp-long v4, p1, p3

    if-nez v4, :cond_1

    .line 518
    :cond_0
    iput-wide v2, p0, Lexpo/modules/filesystem/FileSystemModule$definition$1$18$progressListener$1;->mLastUpdate:J

    .line 519
    const-string v4, "totalBytesSent"

    long-to-double v5, p1

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 520
    const-string v4, "totalBytesExpectedToSend"

    long-to-double v5, p3

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 521
    const-string v4, "uuid"

    iget-object v5, p0, Lexpo/modules/filesystem/FileSystemModule$definition$1$18$progressListener$1;->$uuid:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string v4, "data"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 523
    iget-object v4, p0, Lexpo/modules/filesystem/FileSystemModule$definition$1$18$progressListener$1;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    const-string v5, "expo-file-system.uploadProgress"

    invoke-virtual {v4, v5, v0}, Lexpo/modules/filesystem/FileSystemModule;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 525
    :cond_1
    return-void
.end method
