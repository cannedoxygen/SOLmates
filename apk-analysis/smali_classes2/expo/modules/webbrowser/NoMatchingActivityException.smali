.class public final Lexpo/modules/webbrowser/NoMatchingActivityException;
.super Lexpo/modules/kotlin/exception/CodedException;
.source "WebBrowserExceptions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lexpo/modules/webbrowser/NoMatchingActivityException;",
        "Lexpo/modules/kotlin/exception/CodedException;",
        "()V",
        "expo-web-browser_debug"
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
.method public constructor <init>()V
    .locals 3

    .line 13
    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "No matching browser activity found"

    invoke-direct {p0, v2, v0, v1, v0}, Lexpo/modules/kotlin/exception/CodedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
