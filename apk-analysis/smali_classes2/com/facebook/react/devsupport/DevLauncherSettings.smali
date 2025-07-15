.class public final Lcom/facebook/react/devsupport/DevLauncherSettings;
.super Lcom/facebook/react/devsupport/DevMenuSettingsBase;
.source "DevLauncherSettings.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\r\u001a\u00020\nR\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u00020\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/facebook/react/devsupport/DevLauncherSettings;",
        "Lcom/facebook/react/devsupport/DevMenuSettingsBase;",
        "context",
        "Landroid/content/Context;",
        "debugServerHost",
        "",
        "(Landroid/content/Context;Ljava/lang/String;)V",
        "connectionSettings",
        "Lexpo/modules/devlauncher/react/DevLauncherPackagerConnectionSettings;",
        "packagerConnectionSettings",
        "Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;",
        "getPackagerConnectionSettings",
        "()Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;",
        "public_getPackagerConnectionSettings",
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
.field private connectionSettings:Lexpo/modules/devlauncher/react/DevLauncherPackagerConnectionSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "debugServerHost"    # Ljava/lang/String;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debugServerHost"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/facebook/react/devsupport/DevMenuSettingsBase;-><init>(Landroid/content/Context;Lcom/facebook/react/devsupport/DevMenuSettingsBase$Listener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 11
    new-instance v0, Lexpo/modules/devlauncher/react/DevLauncherPackagerConnectionSettings;

    invoke-direct {v0, p1, p2}, Lexpo/modules/devlauncher/react/DevLauncherPackagerConnectionSettings;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/react/devsupport/DevLauncherSettings;->connectionSettings:Lexpo/modules/devlauncher/react/DevLauncherPackagerConnectionSettings;

    .line 16
    nop

    .line 17
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/DevLauncherSettings;->getMPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 18
    nop

    .line 7
    return-void
.end method


# virtual methods
.method public getPackagerConnectionSettings()Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevLauncherSettings;->connectionSettings:Lexpo/modules/devlauncher/react/DevLauncherPackagerConnectionSettings;

    check-cast v0, Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;

    return-object v0
.end method

.method public final public_getPackagerConnectionSettings()Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/DevLauncherSettings;->getPackagerConnectionSettings()Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;

    move-result-object v0

    return-object v0
.end method
