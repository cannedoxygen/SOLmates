.class public final Lexpo/modules/devmenu/modules/DevMenuPreferencesHandle;
.super Ljava/lang/Object;
.source "DevMenuPreferences.kt"

# interfaces
.implements Lexpo/interfaces/devmenu/DevMenuPreferencesInterface;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0008\u0010\"\u001a\u00020#H\u0016J\u0010\u0010$\u001a\u00020\u001f2\u0006\u0010%\u001a\u00020&H\u0016R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR$\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000c\u0010\u0008\"\u0004\u0008\r\u0010\nR$\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000f\u0010\u0008\"\u0004\u0008\u0010\u0010\nR#\u0010\u0011\u001a\n \u0013*\u0004\u0018\u00010\u00120\u00128BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0014\u0010\u0015R$\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0019\u0010\u0008\"\u0004\u0008\u001a\u0010\nR$\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001c\u0010\u0008\"\u0004\u0008\u001d\u0010\n\u00a8\u0006\'"
    }
    d2 = {
        "Lexpo/modules/devmenu/modules/DevMenuPreferencesHandle;",
        "Lexpo/interfaces/devmenu/DevMenuPreferencesInterface;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "value",
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
        "sharedPreferences",
        "Landroid/content/SharedPreferences;",
        "kotlin.jvm.PlatformType",
        "getSharedPreferences",
        "()Landroid/content/SharedPreferences;",
        "sharedPreferences$delegate",
        "Lkotlin/Lazy;",
        "showsAtLaunch",
        "getShowsAtLaunch",
        "setShowsAtLaunch",
        "touchGestureEnabled",
        "getTouchGestureEnabled",
        "setTouchGestureEnabled",
        "saveBoolean",
        "",
        "key",
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


# instance fields
.field private final sharedPreferences$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lexpo/modules/devmenu/modules/DevMenuPreferencesHandle$sharedPreferences$2;

    invoke-direct {v0, p1}, Lexpo/modules/devmenu/modules/DevMenuPreferencesHandle$sharedPreferences$2;-><init>(Landroid/content/Context;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/devmenu/modules/DevMenuPreferencesHandle;->sharedPreferences$delegate:Lkotlin/Lazy;

    .line 13
    return-void
.end method

.method private final getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .line 14
    iget-object v0, p0, Lexpo/modules/devmenu/modules/DevMenuPreferencesHandle;->sharedPreferences$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private final saveBoolean(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 68
    invoke-direct {p0}, Lexpo/modules/devmenu/modules/DevMenuPreferencesHandle;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 69
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 70
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 71
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 72
    return-void
.end method


# virtual methods
.method public getKeyCommandsEnabled()Z
    .locals 3

    .line 36
    invoke-direct {p0}, Lexpo/modules/devmenu/modules/DevMenuPreferencesHandle;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "keyCommandsEnabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getMotionGestureEnabled()Z
    .locals 3

    .line 22
    invoke-direct {p0}, Lexpo/modules/devmenu/modules/DevMenuPreferencesHandle;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "motionGestureEnabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getShowsAtLaunch()Z
    .locals 3

    .line 43
    invoke-direct {p0}, Lexpo/modules/devmenu/modules/DevMenuPreferencesHandle;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "showsAtLaunch"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getTouchGestureEnabled()Z
    .locals 3

    .line 29
    invoke-direct {p0}, Lexpo/modules/devmenu/modules/DevMenuPreferencesHandle;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "touchGestureEnabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isOnboardingFinished()Z
    .locals 3

    .line 50
    invoke-direct {p0}, Lexpo/modules/devmenu/modules/DevMenuPreferencesHandle;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "isOnboardingFinished"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public serialize()Lcom/facebook/react/bridge/WritableMap;
    .locals 5

    .line 58
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 59
    move-object v1, v0

    .local v1, "$this$serialize_u24lambda_u240":Lcom/facebook/react/bridge/WritableMap;
    const/4 v2, 0x0

    .line 60
    .local v2, "$i$a$-apply-DevMenuPreferencesHandle$serialize$1":I
    const-string v3, "motionGestureEnabled"

    invoke-virtual {p0}, Lexpo/modules/devmenu/modules/DevMenuPreferencesHandle;->getMotionGestureEnabled()Z

    move-result v4

    invoke-interface {v1, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 61
    const-string v3, "touchGestureEnabled"

    invoke-virtual {p0}, Lexpo/modules/devmenu/modules/DevMenuPreferencesHandle;->getTouchGestureEnabled()Z

    move-result v4

    invoke-interface {v1, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 62
    const-string v3, "keyCommandsEnabled"

    invoke-virtual {p0}, Lexpo/modules/devmenu/modules/DevMenuPreferencesHandle;->getKeyCommandsEnabled()Z

    move-result v4

    invoke-interface {v1, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 63
    const-string v3, "showsAtLaunch"

    invoke-virtual {p0}, Lexpo/modules/devmenu/modules/DevMenuPreferencesHandle;->getShowsAtLaunch()Z

    move-result v4

    invoke-interface {v1, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 64
    const-string v3, "isOnboardingFinished"

    invoke-virtual {p0}, Lexpo/modules/devmenu/modules/DevMenuPreferencesHandle;->isOnboardingFinished()Z

    move-result v4

    invoke-interface {v1, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 65
    nop

    .line 59
    .end local v1    # "$this$serialize_u24lambda_u240":Lcom/facebook/react/bridge/WritableMap;
    .end local v2    # "$i$a$-apply-DevMenuPreferencesHandle$serialize$1":I
    const-string v1, "apply(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    return-object v0
.end method

.method public setKeyCommandsEnabled(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 37
    const-string v0, "keyCommandsEnabled"

    invoke-direct {p0, v0, p1}, Lexpo/modules/devmenu/modules/DevMenuPreferencesHandle;->saveBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setMotionGestureEnabled(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 23
    const-string v0, "motionGestureEnabled"

    invoke-direct {p0, v0, p1}, Lexpo/modules/devmenu/modules/DevMenuPreferencesHandle;->saveBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setOnboardingFinished(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 51
    const-string v0, "isOnboardingFinished"

    invoke-direct {p0, v0, p1}, Lexpo/modules/devmenu/modules/DevMenuPreferencesHandle;->saveBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setPreferences(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 2
    .param p1, "settings"    # Lcom/facebook/react/bridge/ReadableMap;

    const-string v0, "settings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    const-string v0, "motionGestureEnabled"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lexpo/modules/devmenu/modules/DevMenuPreferencesHandle;->setMotionGestureEnabled(Z)V

    .line 79
    :cond_0
    const-string v0, "keyCommandsEnabled"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lexpo/modules/devmenu/modules/DevMenuPreferencesHandle;->setKeyCommandsEnabled(Z)V

    .line 83
    :cond_1
    const-string v0, "showsAtLaunch"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lexpo/modules/devmenu/modules/DevMenuPreferencesHandle;->setShowsAtLaunch(Z)V

    .line 87
    :cond_2
    const-string v0, "touchGestureEnabled"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 88
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lexpo/modules/devmenu/modules/DevMenuPreferencesHandle;->setTouchGestureEnabled(Z)V

    .line 90
    :cond_3
    return-void
.end method

.method public setShowsAtLaunch(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 44
    const-string v0, "showsAtLaunch"

    invoke-direct {p0, v0, p1}, Lexpo/modules/devmenu/modules/DevMenuPreferencesHandle;->saveBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setTouchGestureEnabled(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 30
    const-string v0, "touchGestureEnabled"

    invoke-direct {p0, v0, p1}, Lexpo/modules/devmenu/modules/DevMenuPreferencesHandle;->saveBoolean(Ljava/lang/String;Z)V

    return-void
.end method
