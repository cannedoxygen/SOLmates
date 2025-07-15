.class public final Lexpo/modules/filesystem/FileSystemModule$definition$1$21$progressListener$1;
.super Ljava/lang/Object;
.source "FileSystemModule.kt"

# interfaces
.implements Lexpo/modules/filesystem/FileSystemModule$ProgressListener;


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
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\rH\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "expo/modules/filesystem/FileSystemModule$definition$1$21$progressListener$1",
        "Lexpo/modules/filesystem/FileSystemModule$ProgressListener;",
        "mLastUpdate",
        "",
        "getMLastUpdate",
        "()J",
        "setMLastUpdate",
        "(J)V",
        "update",
        "",
        "bytesRead",
        "contentLength",
        "done",
        "",
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
.field final synthetic $resumeData:Ljava/lang/String;

.field final synthetic $uuid:Ljava/lang/String;

.field private mLastUpdate:J

.field final synthetic this$0:Lexpo/modules/filesystem/FileSystemModule;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lexpo/modules/filesystem/FileSystemModule;)V
    .locals 2
    .param p1, "$resumeData"    # Ljava/lang/String;
    .param p2, "$uuid"    # Ljava/lang/String;
    .param p3, "$receiver"    # Lexpo/modules/filesystem/FileSystemModule;

    iput-object p1, p0, Lexpo/modules/filesystem/FileSystemModule$definition$1$21$progressListener$1;->$resumeData:Ljava/lang/String;

    iput-object p2, p0, Lexpo/modules/filesystem/FileSystemModule$definition$1$21$progressListener$1;->$uuid:Ljava/lang/String;

    iput-object p3, p0, Lexpo/modules/filesystem/FileSystemModule$definition$1$21$progressListener$1;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    .line 632
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 633
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lexpo/modules/filesystem/FileSystemModule$definition$1$21$progressListener$1;->mLastUpdate:J

    .line 632
    return-void
.end method


# virtual methods
.method public final getMLastUpdate()J
    .locals 2

    .line 633
    iget-wide v0, p0, Lexpo/modules/filesystem/FileSystemModule$definition$1$21$progressListener$1;->mLastUpdate:J

    return-wide v0
.end method

.method public final setMLastUpdate(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 633
    iput-wide p1, p0, Lexpo/modules/filesystem/FileSystemModule$definition$1$21$progressListener$1;->mLastUpdate:J

    return-void
.end method

.method public update(JJZ)V
    .locals 14
    .param p1, "bytesRead"    # J
    .param p3, "contentLength"    # J
    .param p5, "done"    # Z

    .line 635
    move-object v0, p0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 636
    .local v1, "downloadProgress":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 637
    .local v2, "downloadProgressData":Landroid/os/Bundle;
    iget-object v3, v0, Lexpo/modules/filesystem/FileSystemModule$definition$1$21$progressListener$1;->$resumeData:Ljava/lang/String;

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_0

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_0

    :cond_0
    move-wide v6, v4

    :goto_0
    add-long/2addr v6, p1

    .line 638
    .local v6, "totalBytesWritten":J
    iget-object v3, v0, Lexpo/modules/filesystem/FileSystemModule$definition$1$21$progressListener$1;->$resumeData:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    :cond_1
    add-long v3, p3, v4

    .line 639
    .local v3, "totalBytesExpectedToWrite":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 643
    .local v8, "currentTime":J
    iget-wide v10, v0, Lexpo/modules/filesystem/FileSystemModule$definition$1$21$progressListener$1;->mLastUpdate:J

    const-wide/16 v12, 0x64

    add-long/2addr v10, v12

    cmp-long v5, v8, v10

    if-gtz v5, :cond_2

    cmp-long v5, v6, v3

    if-nez v5, :cond_3

    .line 644
    :cond_2
    iput-wide v8, v0, Lexpo/modules/filesystem/FileSystemModule$definition$1$21$progressListener$1;->mLastUpdate:J

    .line 645
    const-string v5, "totalBytesWritten"

    long-to-double v10, v6

    invoke-virtual {v2, v5, v10, v11}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 646
    const-string v5, "totalBytesExpectedToWrite"

    long-to-double v10, v3

    invoke-virtual {v2, v5, v10, v11}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 647
    const-string v5, "uuid"

    iget-object v10, v0, Lexpo/modules/filesystem/FileSystemModule$definition$1$21$progressListener$1;->$uuid:Ljava/lang/String;

    invoke-virtual {v1, v5, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    const-string v5, "data"

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 649
    iget-object v5, v0, Lexpo/modules/filesystem/FileSystemModule$definition$1$21$progressListener$1;->this$0:Lexpo/modules/filesystem/FileSystemModule;

    const-string v10, "expo-file-system.downloadProgress"

    invoke-virtual {v5, v10, v1}, Lexpo/modules/filesystem/FileSystemModule;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 651
    :cond_3
    return-void
.end method
