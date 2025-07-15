.class public final Lexpo/modules/devlauncher/launcher/manifest/DevLauncherStatusBarStyle;
.super Ljava/lang/Object;
.source "DevLauncherManifestTypes.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "Lexpo/modules/devlauncher/launcher/manifest/DevLauncherStatusBarStyle;",
        "",
        "()V",
        "DARK",
        "",
        "LIGHT",
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
.field public static final DARK:Ljava/lang/String; = "dark-content"

.field public static final INSTANCE:Lexpo/modules/devlauncher/launcher/manifest/DevLauncherStatusBarStyle;

.field public static final LIGHT:Ljava/lang/String; = "light-content"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherStatusBarStyle;

    invoke-direct {v0}, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherStatusBarStyle;-><init>()V

    sput-object v0, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherStatusBarStyle;->INSTANCE:Lexpo/modules/devlauncher/launcher/manifest/DevLauncherStatusBarStyle;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
