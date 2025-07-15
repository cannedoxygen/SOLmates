.class public abstract Lcom/facebook/react/devsupport/DevMenuSettingsBase;
.super Ljava/lang/Object;
.source "DevMenuSettingsBase.kt"

# interfaces
.implements Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/devsupport/DevMenuSettingsBase$Listener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008&\u0018\u00002\u00020\u00012\u00020\u0002:\u0001+B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'H\u0016J\u001a\u0010(\u001a\u00020%2\u0006\u0010)\u001a\u00020!2\u0008\u0010*\u001a\u0004\u0018\u00010\'H\u0016R\u001a\u0010\u0008\u001a\u00020\tX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\r\u001a\u00020\tX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\n\"\u0004\u0008\u000e\u0010\u000cR$\u0010\u0010\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\t8V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0010\u0010\n\"\u0004\u0008\u0011\u0010\u000cR$\u0010\u0012\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\t8V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0012\u0010\n\"\u0004\u0008\u0013\u0010\u000cR$\u0010\u0014\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\t8V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0014\u0010\n\"\u0004\u0008\u0015\u0010\u000cR$\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\t8V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0017\u0010\n\"\u0004\u0008\u0018\u0010\u000cR\u001a\u0010\u0019\u001a\u00020\tX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\n\"\u0004\u0008\u001a\u0010\u000cR$\u0010\u001c\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\t8V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001c\u0010\n\"\u0004\u0008\u001d\u0010\u000cR\u001a\u0010\u001e\u001a\u00020\tX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\n\"\u0004\u0008\u001f\u0010\u000cR\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010 \u001a\u00020!X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#\u00a8\u0006,"
    }
    d2 = {
        "Lcom/facebook/react/devsupport/DevMenuSettingsBase;",
        "Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;",
        "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
        "context",
        "Landroid/content/Context;",
        "listener",
        "Lcom/facebook/react/devsupport/DevMenuSettingsBase$Listener;",
        "(Landroid/content/Context;Lcom/facebook/react/devsupport/DevMenuSettingsBase$Listener;)V",
        "isAnimationFpsDebugEnabled",
        "",
        "()Z",
        "setAnimationFpsDebugEnabled",
        "(Z)V",
        "isDeviceDebugEnabled",
        "setDeviceDebugEnabled",
        "enabled",
        "isElementInspectorEnabled",
        "setElementInspectorEnabled",
        "isFpsDebugEnabled",
        "setFpsDebugEnabled",
        "isHotModuleReplacementEnabled",
        "setHotModuleReplacementEnabled",
        "value",
        "isJSDevModeEnabled",
        "setJSDevModeEnabled",
        "isJSMinifyEnabled",
        "setJSMinifyEnabled",
        "remoteJSDebugEnabled",
        "isRemoteJSDebugEnabled",
        "setRemoteJSDebugEnabled",
        "isStartSamplingProfilerOnInit",
        "setStartSamplingProfilerOnInit",
        "mPreferences",
        "Landroid/content/SharedPreferences;",
        "getMPreferences",
        "()Landroid/content/SharedPreferences;",
        "addMenuItem",
        "",
        "title",
        "",
        "onSharedPreferenceChanged",
        "sharedPreferences",
        "key",
        "Listener",
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
.field private isAnimationFpsDebugEnabled:Z

.field private isDeviceDebugEnabled:Z

.field private isJSMinifyEnabled:Z

.field private isStartSamplingProfilerOnInit:Z

.field private final listener:Lcom/facebook/react/devsupport/DevMenuSettingsBase$Listener;

.field private final mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public static synthetic $r8$lambda$QMZ_NuSv0C-ekWhk4qO6-yrwF2M()V
    .locals 0

    invoke-static {}, Lcom/facebook/react/devsupport/DevMenuSettingsBase;->_init_$lambda$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/react/devsupport/DevMenuSettingsBase$Listener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/facebook/react/devsupport/DevMenuSettingsBase$Listener;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p2, p0, Lcom/facebook/react/devsupport/DevMenuSettingsBase;->listener:Lcom/facebook/react/devsupport/DevMenuSettingsBase$Listener;

    .line 18
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "getDefaultSharedPreferences(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/react/devsupport/DevMenuSettingsBase;->mPreferences:Landroid/content/SharedPreferences;

    .line 26
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevMenuSettingsBase;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "animations_debug"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/react/devsupport/DevMenuSettingsBase;->isAnimationFpsDebugEnabled:Z

    .line 34
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevMenuSettingsBase;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "js_minify_debug"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/react/devsupport/DevMenuSettingsBase;->isJSMinifyEnabled:Z

    .line 48
    sget-boolean v0, Lcom/facebook/react/common/build/ReactBuildConfig;->DEBUG:Z

    iput-boolean v0, p0, Lcom/facebook/react/devsupport/DevMenuSettingsBase;->isDeviceDebugEnabled:Z

    .line 57
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevMenuSettingsBase;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "start_sampling_profiler_on_init"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/react/devsupport/DevMenuSettingsBase;->isStartSamplingProfilerOnInit:Z

    .line 14
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/facebook/react/devsupport/DevMenuSettingsBase$Listener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 14
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 16
    new-instance p2, Lcom/facebook/react/devsupport/DevMenuSettingsBase$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/facebook/react/devsupport/DevMenuSettingsBase$$ExternalSyntheticLambda0;-><init>()V

    .line 14
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/devsupport/DevMenuSettingsBase;-><init>(Landroid/content/Context;Lcom/facebook/react/devsupport/DevMenuSettingsBase$Listener;)V

    .line 71
    return-void
.end method

.method private static final _init_$lambda$0()V
    .locals 0

    .line 16
    return-void
.end method


# virtual methods
.method public addMenuItem(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method protected final getMPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevMenuSettingsBase;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public isAnimationFpsDebugEnabled()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/DevMenuSettingsBase;->isAnimationFpsDebugEnabled:Z

    return v0
.end method

.method public isDeviceDebugEnabled()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/DevMenuSettingsBase;->isDeviceDebugEnabled:Z

    return v0
.end method

.method public isElementInspectorEnabled()Z
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevMenuSettingsBase;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "inspector_debug"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isFpsDebugEnabled()Z
    .locals 3

    .line 21
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevMenuSettingsBase;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "fps_debug"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isHotModuleReplacementEnabled()Z
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevMenuSettingsBase;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "hot_module_replacement"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isJSDevModeEnabled()Z
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevMenuSettingsBase;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "js_dev_mode_debug"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isJSMinifyEnabled()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/DevMenuSettingsBase;->isJSMinifyEnabled:Z

    return v0
.end method

.method public isRemoteJSDebugEnabled()Z
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevMenuSettingsBase;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "remote_js_debug"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isStartSamplingProfilerOnInit()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/DevMenuSettingsBase;->isStartSamplingProfilerOnInit:Z

    return v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    const-string v0, "sharedPreferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevMenuSettingsBase;->listener:Lcom/facebook/react/devsupport/DevMenuSettingsBase$Listener;

    if-eqz v0, :cond_1

    const-string v0, "fps_debug"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "js_dev_mode_debug"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "start_sampling_profiler_on_init"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "js_minify_debug"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevMenuSettingsBase;->listener:Lcom/facebook/react/devsupport/DevMenuSettingsBase$Listener;

    invoke-interface {v0}, Lcom/facebook/react/devsupport/DevMenuSettingsBase$Listener;->onInternalSettingsChanged()V

    .line 40
    :cond_1
    return-void
.end method

.method public setAnimationFpsDebugEnabled(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 26
    iput-boolean p1, p0, Lcom/facebook/react/devsupport/DevMenuSettingsBase;->isAnimationFpsDebugEnabled:Z

    return-void
.end method

.method public setDeviceDebugEnabled(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 48
    iput-boolean p1, p0, Lcom/facebook/react/devsupport/DevMenuSettingsBase;->isDeviceDebugEnabled:Z

    return-void
.end method

.method public setElementInspectorEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 45
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevMenuSettingsBase;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "inspector_debug"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 46
    return-void
.end method

.method public setFpsDebugEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 23
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevMenuSettingsBase;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "fps_debug"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 24
    return-void
.end method

.method public setHotModuleReplacementEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 65
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevMenuSettingsBase;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hot_module_replacement"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 66
    return-void
.end method

.method public setJSDevModeEnabled(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 31
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevMenuSettingsBase;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "js_dev_mode_debug"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 32
    return-void
.end method

.method public setJSMinifyEnabled(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 34
    iput-boolean p1, p0, Lcom/facebook/react/devsupport/DevMenuSettingsBase;->isJSMinifyEnabled:Z

    return-void
.end method

.method public setRemoteJSDebugEnabled(Z)V
    .locals 2
    .param p1, "remoteJSDebugEnabled"    # Z

    .line 53
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevMenuSettingsBase;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "remote_js_debug"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 54
    return-void
.end method

.method public setStartSamplingProfilerOnInit(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 56
    iput-boolean p1, p0, Lcom/facebook/react/devsupport/DevMenuSettingsBase;->isStartSamplingProfilerOnInit:Z

    .line 57
    return-void
.end method
