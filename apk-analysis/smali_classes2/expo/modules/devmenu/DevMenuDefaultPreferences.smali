.class public Lexpo/modules/devmenu/DevMenuDefaultPreferences;
.super Ljava/lang/Object;
.source "DevMenuDefaultPreferences.kt"

# interfaces
.implements Lexpo/interfaces/devmenu/DevMenuPreferencesInterface;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0011\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0015\u001a\u00020\u0016H\u0002J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016J\u0010\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\u001bH\u0016R$\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00048V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R$\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00048V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R$\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00048V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R$\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00048V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R$\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00048V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008\u00a8\u0006\u001c"
    }
    d2 = {
        "Lexpo/modules/devmenu/DevMenuDefaultPreferences;",
        "Lexpo/interfaces/devmenu/DevMenuPreferencesInterface;",
        "()V",
        "<anonymous parameter 0>",
        "",
        "isOnboardingFinished",
        "()Z",
        "setOnboardingFinished",
        "(Z)V",
        "keyCommandsEnabled",
        "getKeyCommandsEnabled",
        "setKeyCommandsEnabled",
        "motionGestureEnabled",
        "getMotionGestureEnabled",
        "setMotionGestureEnabled",
        "showsAtLaunch",
        "getShowsAtLaunch",
        "setShowsAtLaunch",
        "touchGestureEnabled",
        "getTouchGestureEnabled",
        "setTouchGestureEnabled",
        "methodUnavailable",
        "",
        "serialize",
        "Lcom/facebook/react/bridge/WritableMap;",
        "setPreferences",
        "settings",
        "Lcom/facebook/react/bridge/ReadableMap;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final methodUnavailable()V
    .locals 2

    .line 10
    new-instance v0, Ljava/lang/NoSuchMethodError;

    const-string v1, "You cannot change the default settings. Export `DevMenuSettings` module if you want to change the settings."

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getKeyCommandsEnabled()Z
    .locals 1

    .line 22
    const/4 v0, 0x1

    return v0
.end method

.method public getMotionGestureEnabled()Z
    .locals 1

    .line 14
    const/4 v0, 0x1

    return v0
.end method

.method public getShowsAtLaunch()Z
    .locals 1

    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public getTouchGestureEnabled()Z
    .locals 1

    .line 18
    const/4 v0, 0x1

    return v0
.end method

.method public isOnboardingFinished()Z
    .locals 1

    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public serialize()Lcom/facebook/react/bridge/WritableMap;
    .locals 5

    .line 35
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 36
    move-object v1, v0

    .local v1, "$this$serialize_u24lambda_u240":Lcom/facebook/react/bridge/WritableMap;
    const/4 v2, 0x0

    .line 37
    .local v2, "$i$a$-apply-DevMenuDefaultPreferences$serialize$1":I
    const-string v3, "motionGestureEnabled"

    invoke-virtual {p0}, Lexpo/modules/devmenu/DevMenuDefaultPreferences;->getMotionGestureEnabled()Z

    move-result v4

    invoke-interface {v1, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 38
    const-string v3, "touchGestureEnabled"

    invoke-virtual {p0}, Lexpo/modules/devmenu/DevMenuDefaultPreferences;->getTouchGestureEnabled()Z

    move-result v4

    invoke-interface {v1, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 39
    const-string v3, "keyCommandsEnabled"

    invoke-virtual {p0}, Lexpo/modules/devmenu/DevMenuDefaultPreferences;->getKeyCommandsEnabled()Z

    move-result v4

    invoke-interface {v1, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 40
    const-string v3, "showsAtLaunch"

    invoke-virtual {p0}, Lexpo/modules/devmenu/DevMenuDefaultPreferences;->getShowsAtLaunch()Z

    move-result v4

    invoke-interface {v1, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 41
    const-string v3, "isOnboardingFinished"

    invoke-virtual {p0}, Lexpo/modules/devmenu/DevMenuDefaultPreferences;->isOnboardingFinished()Z

    move-result v4

    invoke-interface {v1, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 42
    nop

    .line 36
    .end local v1    # "$this$serialize_u24lambda_u240":Lcom/facebook/react/bridge/WritableMap;
    .end local v2    # "$i$a$-apply-DevMenuDefaultPreferences$serialize$1":I
    const-string v1, "apply(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    return-object v0
.end method

.method public setKeyCommandsEnabled(Z)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lexpo/modules/devmenu/DevMenuDefaultPreferences;->methodUnavailable()V

    return-void
.end method

.method public setMotionGestureEnabled(Z)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lexpo/modules/devmenu/DevMenuDefaultPreferences;->methodUnavailable()V

    return-void
.end method

.method public setOnboardingFinished(Z)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lexpo/modules/devmenu/DevMenuDefaultPreferences;->methodUnavailable()V

    return-void
.end method

.method public setPreferences(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1
    .param p1, "settings"    # Lcom/facebook/react/bridge/ReadableMap;

    const-string v0, "settings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Lexpo/modules/devmenu/DevMenuDefaultPreferences;->methodUnavailable()V

    .line 46
    return-void
.end method

.method public setShowsAtLaunch(Z)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lexpo/modules/devmenu/DevMenuDefaultPreferences;->methodUnavailable()V

    return-void
.end method

.method public setTouchGestureEnabled(Z)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lexpo/modules/devmenu/DevMenuDefaultPreferences;->methodUnavailable()V

    return-void
.end method
