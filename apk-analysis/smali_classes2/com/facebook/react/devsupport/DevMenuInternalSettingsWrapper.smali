.class public final Lcom/facebook/react/devsupport/DevMenuInternalSettingsWrapper;
.super Ljava/lang/Object;
.source "DevMenuReactSettings.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0007R$\u0010\t\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00068F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\t\u0010\u0007\"\u0004\u0008\n\u0010\u000bR$\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00068F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000c\u0010\u0007\"\u0004\u0008\r\u0010\u000bR$\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00068F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000e\u0010\u0007\"\u0004\u0008\u000f\u0010\u000bR\u0011\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/facebook/react/devsupport/DevMenuInternalSettingsWrapper;",
        "",
        "devSettings",
        "Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;",
        "(Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;)V",
        "isFpsDebugEnabled",
        "",
        "()Z",
        "value",
        "isHotModuleReplacementEnabled",
        "setHotModuleReplacementEnabled",
        "(Z)V",
        "isJSDevModeEnabled",
        "setJSDevModeEnabled",
        "isRemoteJSDebugEnabled",
        "setRemoteJSDebugEnabled",
        "packagerConnectionSettings",
        "Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;",
        "getPackagerConnectionSettings",
        "()Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;",
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
.field private final devSettings:Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;

.field private final isFpsDebugEnabled:Z

.field private final packagerConnectionSettings:Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;


# direct methods
.method public constructor <init>(Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;)V
    .locals 1
    .param p1, "devSettings"    # Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;

    const-string v0, "devSettings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/react/devsupport/DevMenuInternalSettingsWrapper;->devSettings:Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;

    .line 32
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevMenuInternalSettingsWrapper;->devSettings:Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;

    invoke-interface {v0}, Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;->isFpsDebugEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/react/devsupport/DevMenuInternalSettingsWrapper;->isFpsDebugEnabled:Z

    .line 51
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevMenuInternalSettingsWrapper;->devSettings:Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;

    invoke-interface {v0}, Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;->getPackagerConnectionSettings()Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/devsupport/DevMenuInternalSettingsWrapper;->packagerConnectionSettings:Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;

    .line 31
    return-void
.end method


# virtual methods
.method public final getPackagerConnectionSettings()Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevMenuInternalSettingsWrapper;->packagerConnectionSettings:Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;

    return-object v0
.end method

.method public final isFpsDebugEnabled()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/DevMenuInternalSettingsWrapper;->isFpsDebugEnabled:Z

    return v0
.end method

.method public final isHotModuleReplacementEnabled()Z
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevMenuInternalSettingsWrapper;->devSettings:Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;

    invoke-interface {v0}, Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;->isHotModuleReplacementEnabled()Z

    move-result v0

    return v0
.end method

.method public final isJSDevModeEnabled()Z
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevMenuInternalSettingsWrapper;->devSettings:Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;

    invoke-interface {v0}, Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;->isJSDevModeEnabled()Z

    move-result v0

    return v0
.end method

.method public final isRemoteJSDebugEnabled()Z
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevMenuInternalSettingsWrapper;->devSettings:Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;

    invoke-interface {v0}, Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;->isRemoteJSDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public final setHotModuleReplacementEnabled(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 36
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevMenuInternalSettingsWrapper;->devSettings:Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;

    invoke-interface {v0, p1}, Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;->setHotModuleReplacementEnabled(Z)V

    .line 37
    return-void
.end method

.method public final setJSDevModeEnabled(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 48
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevMenuInternalSettingsWrapper;->devSettings:Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;

    invoke-interface {v0, p1}, Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;->setJSDevModeEnabled(Z)V

    .line 49
    return-void
.end method

.method public final setRemoteJSDebugEnabled(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 42
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevMenuInternalSettingsWrapper;->devSettings:Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;

    invoke-interface {v0, p1}, Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;->setRemoteJSDebugEnabled(Z)V

    .line 43
    return-void
.end method
