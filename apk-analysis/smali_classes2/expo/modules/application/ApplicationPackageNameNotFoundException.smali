.class public final Lexpo/modules/application/ApplicationPackageNameNotFoundException;
.super Lexpo/modules/kotlin/exception/CodedException;
.source "ApplicationModule.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lexpo/modules/application/ApplicationPackageNameNotFoundException;",
        "Lexpo/modules/kotlin/exception/CodedException;",
        "cause",
        "Landroid/content/pm/PackageManager$NameNotFoundException;",
        "(Landroid/content/pm/PackageManager$NameNotFoundException;)V",
        "expo-application_debug"
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
.method public constructor <init>(Landroid/content/pm/PackageManager$NameNotFoundException;)V
    .locals 2
    .param p1, "cause"    # Landroid/content/pm/PackageManager$NameNotFoundException;

    const-string v0, "cause"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    const-string v0, "Unable to get install time of this application. Could not get package info or package name."

    move-object v1, p1

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {p0, v0, v1}, Lexpo/modules/kotlin/exception/CodedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    return-void
.end method
