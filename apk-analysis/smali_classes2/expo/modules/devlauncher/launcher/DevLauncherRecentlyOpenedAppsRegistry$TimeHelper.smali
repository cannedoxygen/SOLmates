.class public final Lexpo/modules/devlauncher/launcher/DevLauncherRecentlyOpenedAppsRegistry$TimeHelper;
.super Ljava/lang/Object;
.source "DevLauncherRecentlyOpenedAppsRegistry.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/devlauncher/launcher/DevLauncherRecentlyOpenedAppsRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimeHelper"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lexpo/modules/devlauncher/launcher/DevLauncherRecentlyOpenedAppsRegistry$TimeHelper;",
        "",
        "()V",
        "getCurrentTime",
        "",
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
.field public static final INSTANCE:Lexpo/modules/devlauncher/launcher/DevLauncherRecentlyOpenedAppsRegistry$TimeHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/devlauncher/launcher/DevLauncherRecentlyOpenedAppsRegistry$TimeHelper;

    invoke-direct {v0}, Lexpo/modules/devlauncher/launcher/DevLauncherRecentlyOpenedAppsRegistry$TimeHelper;-><init>()V

    sput-object v0, Lexpo/modules/devlauncher/launcher/DevLauncherRecentlyOpenedAppsRegistry$TimeHelper;->INSTANCE:Lexpo/modules/devlauncher/launcher/DevLauncherRecentlyOpenedAppsRegistry$TimeHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCurrentTime()J
    .locals 2

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
