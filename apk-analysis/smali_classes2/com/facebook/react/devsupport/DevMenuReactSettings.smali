.class public final Lcom/facebook/react/devsupport/DevMenuReactSettings;
.super Lcom/facebook/react/devsupport/DevMenuSettingsBase;
.source "DevMenuReactSettings.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/facebook/react/devsupport/DevMenuReactSettings;",
        "Lcom/facebook/react/devsupport/DevMenuSettingsBase;",
        "context",
        "Landroid/content/Context;",
        "serverIp",
        "",
        "(Landroid/content/Context;Ljava/lang/String;)V",
        "packagerConnectionSettings",
        "Lexpo/modules/devmenu/react/DevMenuPackagerConnectionSettings;",
        "getPackagerConnectionSettings",
        "()Lexpo/modules/devmenu/react/DevMenuPackagerConnectionSettings;",
        "expo-dev-menu_debug"
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
.field private final packagerConnectionSettings:Lexpo/modules/devmenu/react/DevMenuPackagerConnectionSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serverIp"    # Ljava/lang/String;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serverIp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/facebook/react/devsupport/DevMenuSettingsBase;-><init>(Landroid/content/Context;Lcom/facebook/react/devsupport/DevMenuSettingsBase$Listener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 20
    new-instance v0, Lexpo/modules/devmenu/react/DevMenuPackagerConnectionSettings;

    invoke-direct {v0, p2, p1}, Lexpo/modules/devmenu/react/DevMenuPackagerConnectionSettings;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/react/devsupport/DevMenuReactSettings;->packagerConnectionSettings:Lexpo/modules/devmenu/react/DevMenuPackagerConnectionSettings;

    .line 23
    nop

    .line 24
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/DevMenuReactSettings;->getMPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 25
    nop

    .line 16
    return-void
.end method


# virtual methods
.method public bridge synthetic getPackagerConnectionSettings()Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/DevMenuReactSettings;->getPackagerConnectionSettings()Lexpo/modules/devmenu/react/DevMenuPackagerConnectionSettings;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;

    return-object v0
.end method

.method public getPackagerConnectionSettings()Lexpo/modules/devmenu/react/DevMenuPackagerConnectionSettings;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevMenuReactSettings;->packagerConnectionSettings:Lexpo/modules/devmenu/react/DevMenuPackagerConnectionSettings;

    return-object v0
.end method
