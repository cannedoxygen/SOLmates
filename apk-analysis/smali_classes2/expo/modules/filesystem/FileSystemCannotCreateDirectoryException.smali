.class public final Lexpo/modules/filesystem/FileSystemCannotCreateDirectoryException;
.super Lexpo/modules/kotlin/exception/CodedException;
.source "FileSystemExceptions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lexpo/modules/filesystem/FileSystemCannotCreateDirectoryException;",
        "Lexpo/modules/kotlin/exception/CodedException;",
        "uri",
        "Landroid/net/Uri;",
        "(Landroid/net/Uri;)V",
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


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .line 13
    nop

    .line 14
    if-eqz p1, :cond_0

    move-object v0, p1

    .local v0, "it":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 15
    .local v1, "$i$a$-let-FileSystemCannotCreateDirectoryException$1":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Directory \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' could not be created or already exists"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    .end local v0    # "it":Landroid/net/Uri;
    .end local v1    # "$i$a$-let-FileSystemCannotCreateDirectoryException$1":I
    if-nez v0, :cond_1

    .line 16
    :cond_0
    const-string v0, "Unknown error"

    .line 13
    :cond_1
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1, v2}, Lexpo/modules/kotlin/exception/CodedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 12
    return-void
.end method
