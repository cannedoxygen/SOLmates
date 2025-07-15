.class public final Lexpo/modules/clipboard/NoPermissionException;
.super Lexpo/modules/kotlin/exception/CodedException;
.source "ClipboardExceptions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lexpo/modules/clipboard/NoPermissionException;",
        "Lexpo/modules/kotlin/exception/CodedException;",
        "cause",
        "Ljava/lang/SecurityException;",
        "(Ljava/lang/SecurityException;)V",
        "expo-clipboard_debug"
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
.method public constructor <init>(Ljava/lang/SecurityException;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/SecurityException;

    .line 9
    const-string v0, "App has no permission to read this clipboard item"

    move-object v1, p1

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {p0, v0, v1}, Lexpo/modules/kotlin/exception/CodedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    return-void
.end method
