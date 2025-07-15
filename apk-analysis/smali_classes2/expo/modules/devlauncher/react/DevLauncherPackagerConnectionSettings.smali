.class public final Lexpo/modules/devlauncher/react/DevLauncherPackagerConnectionSettings;
.super Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;
.source "DevLauncherPackagerConnectionSettings.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R$\u0010\u0008\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00058V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lexpo/modules/devlauncher/react/DevLauncherPackagerConnectionSettings;",
        "Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;",
        "context",
        "Landroid/content/Context;",
        "serverIp",
        "",
        "(Landroid/content/Context;Ljava/lang/String;)V",
        "value",
        "debugServerHost",
        "getDebugServerHost",
        "()Ljava/lang/String;",
        "setDebugServerHost",
        "(Ljava/lang/String;)V",
        "expo-dev-launcher_debug"
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
.field private serverIp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serverIp"    # Ljava/lang/String;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serverIp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, p1}, Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;-><init>(Landroid/content/Context;)V

    .line 8
    iput-object p2, p0, Lexpo/modules/devlauncher/react/DevLauncherPackagerConnectionSettings;->serverIp:Ljava/lang/String;

    .line 6
    return-void
.end method


# virtual methods
.method public getDebugServerHost()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lexpo/modules/devlauncher/react/DevLauncherPackagerConnectionSettings;->serverIp:Ljava/lang/String;

    return-object v0
.end method

.method public setDebugServerHost(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    return-void
.end method
