.class public final Lexpo/modules/imagepicker/FailedToReadFileException;
.super Lexpo/modules/kotlin/exception/CodedException;
.source "ImagePickerExceptions.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImagePickerExceptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImagePickerExceptions.kt\nexpo/modules/imagepicker/FailedToReadFileException\n+ 2 Uri.kt\nandroidx/core/net/UriKt\n*L\n1#1,36:1\n36#2:37\n*S KotlinDebug\n*F\n+ 1 ImagePickerExceptions.kt\nexpo/modules/imagepicker/FailedToReadFileException\n*L\n26#1:37\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lexpo/modules/imagepicker/FailedToReadFileException;",
        "Lexpo/modules/kotlin/exception/CodedException;",
        "file",
        "Ljava/io/File;",
        "cause",
        "",
        "(Ljava/io/File;Ljava/lang/Throwable;)V",
        "expo-image-picker_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .param p2, "cause"    # Ljava/lang/Throwable;

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    move-object v0, p1

    .local v0, "$this$toUri$iv":Ljava/io/File;
    const/4 v1, 0x0

    .line 37
    .local v1, "$i$f$toUri":I
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .end local v0    # "$this$toUri$iv":Ljava/io/File;
    .end local v1    # "$i$f$toUri":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read a file \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-direct {p0, v0, p2}, Lexpo/modules/kotlin/exception/CodedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 25
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lexpo/modules/imagepicker/FailedToReadFileException;-><init>(Ljava/io/File;Ljava/lang/Throwable;)V

    .line 26
    return-void
.end method
