.class public final Lexpo/modules/devlauncher/launcher/DevLauncherNetworkInterceptor;
.super Ljava/lang/Object;
.source "DevLauncherNetworkInterceptor.kt"

# interfaces
.implements Ljava/io/Closeable;
.implements Lexpo/modules/kotlin/devtools/ExpoRequestCdpInterceptor$Delegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/devlauncher/launcher/DevLauncherNetworkInterceptor$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \r2\u00020\u00012\u00020\u0002:\u0001\rB\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lexpo/modules/devlauncher/launcher/DevLauncherNetworkInterceptor;",
        "Ljava/io/Closeable;",
        "Lexpo/modules/kotlin/devtools/ExpoRequestCdpInterceptor$Delegate;",
        "appUrl",
        "Landroid/net/Uri;",
        "(Landroid/net/Uri;)V",
        "metroConnection",
        "Lcom/facebook/react/packagerconnection/ReconnectingWebSocket;",
        "close",
        "",
        "dispatch",
        "event",
        "",
        "Companion",
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


# static fields
.field public static final Companion:Lexpo/modules/devlauncher/launcher/DevLauncherNetworkInterceptor$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final metroConnection:Lcom/facebook/react/packagerconnection/ReconnectingWebSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/devlauncher/launcher/DevLauncherNetworkInterceptor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/devlauncher/launcher/DevLauncherNetworkInterceptor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/devlauncher/launcher/DevLauncherNetworkInterceptor;->Companion:Lexpo/modules/devlauncher/launcher/DevLauncherNetworkInterceptor$Companion;

    .line 44
    const-class v0, Lexpo/modules/devlauncher/launcher/DevLauncherNetworkInterceptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lexpo/modules/devlauncher/launcher/DevLauncherNetworkInterceptor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 3
    .param p1, "appUrl"    # Landroid/net/Uri;

    const-string v0, "appUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    nop

    .line 13
    new-instance v0, Lcom/facebook/react/packagerconnection/ReconnectingWebSocket;

    .line 14
    invoke-static {p1}, Lexpo/modules/devlauncher/launcher/DevLauncherNetworkInterceptorKt;->access$createNetworkInspectorUrl(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 15
    nop

    .line 16
    nop

    .line 13
    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/facebook/react/packagerconnection/ReconnectingWebSocket;-><init>(Ljava/lang/String;Lcom/facebook/react/packagerconnection/ReconnectingWebSocket$MessageCallback;Lcom/facebook/react/packagerconnection/ReconnectingWebSocket$ConnectionCallback;)V

    .line 18
    move-object v1, v0

    .local v1, "$this$metroConnection_u24lambda_u240":Lcom/facebook/react/packagerconnection/ReconnectingWebSocket;
    const/4 v2, 0x0

    .line 19
    .local v2, "$i$a$-apply-DevLauncherNetworkInterceptor$metroConnection$1":I
    invoke-virtual {v1}, Lcom/facebook/react/packagerconnection/ReconnectingWebSocket;->connect()V

    .line 20
    nop

    .line 18
    .end local v1    # "$this$metroConnection_u24lambda_u240":Lcom/facebook/react/packagerconnection/ReconnectingWebSocket;
    .end local v2    # "$i$a$-apply-DevLauncherNetworkInterceptor$metroConnection$1":I
    iput-object v0, p0, Lexpo/modules/devlauncher/launcher/DevLauncherNetworkInterceptor;->metroConnection:Lcom/facebook/react/packagerconnection/ReconnectingWebSocket;

    .line 22
    nop

    .line 23
    sget-object v0, Lexpo/modules/kotlin/devtools/ExpoRequestCdpInterceptor;->INSTANCE:Lexpo/modules/kotlin/devtools/ExpoRequestCdpInterceptor;

    move-object v1, p0

    check-cast v1, Lexpo/modules/kotlin/devtools/ExpoRequestCdpInterceptor$Delegate;

    invoke-virtual {v0, v1}, Lexpo/modules/kotlin/devtools/ExpoRequestCdpInterceptor;->setDelegate(Lexpo/modules/kotlin/devtools/ExpoRequestCdpInterceptor$Delegate;)V

    .line 24
    nop

    .line 12
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 28
    sget-object v0, Lexpo/modules/kotlin/devtools/ExpoRequestCdpInterceptor;->INSTANCE:Lexpo/modules/kotlin/devtools/ExpoRequestCdpInterceptor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lexpo/modules/kotlin/devtools/ExpoRequestCdpInterceptor;->setDelegate(Lexpo/modules/kotlin/devtools/ExpoRequestCdpInterceptor$Delegate;)V

    .line 29
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/DevLauncherNetworkInterceptor;->metroConnection:Lcom/facebook/react/packagerconnection/ReconnectingWebSocket;

    invoke-virtual {v0}, Lcom/facebook/react/packagerconnection/ReconnectingWebSocket;->closeQuietly()V

    .line 30
    return-void
.end method

.method public dispatch(Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    nop

    .line 36
    :try_start_0
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/DevLauncherNetworkInterceptor;->metroConnection:Lcom/facebook/react/packagerconnection/ReconnectingWebSocket;

    invoke-virtual {v0, p1}, Lcom/facebook/react/packagerconnection/ReconnectingWebSocket;->sendMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "_":Ljava/io/IOException;
    sget-object v1, Lexpo/modules/devlauncher/launcher/DevLauncherNetworkInterceptor;->TAG:Ljava/lang/String;

    const-string v2, "Failed to send CDP network event"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .end local v0    # "_":Ljava/io/IOException;
    :goto_0
    return-void
.end method
