.class public final Lexpo/modules/devlauncher/modules/DevLauncherInternalModuleKt;
.super Ljava/lang/Object;
.source "DevLauncherInternalModule.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\"\u0016\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "CLIENT_HOME_QR_SCANNER_DEEP_LINK",
        "Landroid/net/Uri;",
        "kotlin.jvm.PlatformType",
        "CLIENT_PACKAGE_NAME",
        "",
        "LAUNCHER_NAVIGATION_STATE_KEY",
        "ON_NEW_DEEP_LINK_EVENT",
        "expo-dev-launcher_debug"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final CLIENT_HOME_QR_SCANNER_DEEP_LINK:Landroid/net/Uri;

.field private static final CLIENT_PACKAGE_NAME:Ljava/lang/String; = "host.exp.exponent"

.field private static final LAUNCHER_NAVIGATION_STATE_KEY:Ljava/lang/String; = "expo.modules.devlauncher.navigation-state"

.field private static final ON_NEW_DEEP_LINK_EVENT:Ljava/lang/String; = "expo.modules.devlauncher.onnewdeeplink"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-string v0, "expo-home://qr-scanner"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lexpo/modules/devlauncher/modules/DevLauncherInternalModuleKt;->CLIENT_HOME_QR_SCANNER_DEEP_LINK:Landroid/net/Uri;

    return-void
.end method

.method public static final synthetic access$getCLIENT_HOME_QR_SCANNER_DEEP_LINK$p()Landroid/net/Uri;
    .locals 1

    .line 1
    sget-object v0, Lexpo/modules/devlauncher/modules/DevLauncherInternalModuleKt;->CLIENT_HOME_QR_SCANNER_DEEP_LINK:Landroid/net/Uri;

    return-object v0
.end method
