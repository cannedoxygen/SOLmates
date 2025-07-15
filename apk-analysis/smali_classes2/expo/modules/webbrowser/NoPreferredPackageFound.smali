.class public final Lexpo/modules/webbrowser/NoPreferredPackageFound;
.super Lexpo/modules/kotlin/exception/CodedException;
.source "WebBrowserExceptions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lexpo/modules/webbrowser/NoPreferredPackageFound;",
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

    .line 5
    nop

    .line 6
    nop

    .line 7
    nop

    .line 8
    nop

    .line 5
    const-string v0, "PREFERRED_PACKAGE_NOT_FOUND"

    const-string v1, "Cannot determine preferred package without satisfying it"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lexpo/modules/kotlin/exception/CodedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
