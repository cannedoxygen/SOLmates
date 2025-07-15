.class public final Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;
.super Ljava/lang/Object;
.source "DevMenuDevToolsDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDevMenuDevToolsDelegate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DevMenuDevToolsDelegate.kt\nexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate\n*L\n1#1,118:1\n95#1,6:119\n95#1,6:125\n95#1,6:131\n95#1,6:137\n*S KotlinDebug\n*F\n+ 1 DevMenuDevToolsDelegate.kt\nexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate\n*L\n51#1:119,6\n55#1:125,6\n70#1:131,6\n75#1:137,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\u001a\u001a\u00020\u001bJ\u0006\u0010\u001c\u001a\u00020\u001bJ\u0010\u0010\u001d\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\u0017\u0010 \u001a\u00020\u001b2\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\"H\u0082\u0008J\u0006\u0010#\u001a\u00020\u001bJ\u000e\u0010$\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001fJ\u0006\u0010%\u001a\u00020\u001bR\u0016\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\u0004\u0018\u00010\r8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0014\u001a\u0004\u0018\u00010\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0013\u0010\u0017\u001a\u0004\u0018\u00010\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006&"
    }
    d2 = {
        "Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;",
        "",
        "manager",
        "Lexpo/interfaces/devmenu/DevMenuManagerInterface;",
        "reactHost",
        "Lexpo/interfaces/devmenu/ReactHostWrapper;",
        "(Lexpo/interfaces/devmenu/DevMenuManagerInterface;Lexpo/interfaces/devmenu/ReactHostWrapper;)V",
        "_reactContext",
        "Ljava/lang/ref/WeakReference;",
        "Lcom/facebook/react/bridge/ReactContext;",
        "_reactDevManager",
        "Lcom/facebook/react/devsupport/interfaces/DevSupportManager;",
        "devInternalSettings",
        "Lcom/facebook/react/devsupport/DevMenuInternalSettingsWrapper;",
        "getDevInternalSettings$expo_dev_menu_debug",
        "()Lcom/facebook/react/devsupport/DevMenuInternalSettingsWrapper;",
        "devSettings",
        "Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;",
        "getDevSettings",
        "()Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;",
        "reactContext",
        "getReactContext",
        "()Lcom/facebook/react/bridge/ReactContext;",
        "reactDevManager",
        "getReactDevManager",
        "()Lcom/facebook/react/devsupport/interfaces/DevSupportManager;",
        "openJSInspector",
        "",
        "reload",
        "requestOverlaysPermission",
        "context",
        "Landroid/content/Context;",
        "runWithDevSupportEnabled",
        "action",
        "Lkotlin/Function0;",
        "toggleElementInspector",
        "togglePerformanceMonitor",
        "toggleRemoteDebugging",
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
.field private final _reactContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/react/bridge/ReactContext;",
            ">;"
        }
    .end annotation
.end field

.field private final _reactDevManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/react/devsupport/interfaces/DevSupportManager;",
            ">;"
        }
    .end annotation
.end field

.field private final manager:Lexpo/interfaces/devmenu/DevMenuManagerInterface;


# direct methods
.method public static synthetic $r8$lambda$4C3nLa-xR7vACQv0f1O2zwK7sTU(Lcom/facebook/react/devsupport/interfaces/DevSupportManager;)V
    .locals 0

    invoke-static {p0}, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;->reload$lambda$0(Lcom/facebook/react/devsupport/interfaces/DevSupportManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lDV3UABePeRt-BUC7Uu25K38Uac(Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;Lcom/facebook/react/devsupport/interfaces/DevSupportManager;)V
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;->toggleRemoteDebugging$lambda$3$lambda$2(Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;Lcom/facebook/react/devsupport/interfaces/DevSupportManager;)V

    return-void
.end method

.method public constructor <init>(Lexpo/interfaces/devmenu/DevMenuManagerInterface;Lexpo/interfaces/devmenu/ReactHostWrapper;)V
    .locals 2
    .param p1, "manager"    # Lexpo/interfaces/devmenu/DevMenuManagerInterface;
    .param p2, "reactHost"    # Lexpo/interfaces/devmenu/ReactHostWrapper;

    const-string v0, "manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reactHost"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;->manager:Lexpo/interfaces/devmenu/DevMenuManagerInterface;

    .line 21
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 22
    invoke-virtual {p2}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getDevSupportManager()Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    move-result-object v1

    .line 21
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;->_reactDevManager:Ljava/lang/ref/WeakReference;

    .line 24
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 25
    invoke-virtual {p2}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;->_reactContext:Ljava/lang/ref/WeakReference;

    .line 17
    return-void
.end method

.method private static final reload$lambda$0(Lcom/facebook/react/devsupport/interfaces/DevSupportManager;)V
    .locals 1
    .param p0, "$reactDevManager"    # Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    const-string v0, "$reactDevManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-interface {p0}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->handleReloadJS()V

    .line 48
    return-void
.end method

.method private final requestOverlaysPermission(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 107
    invoke-static {p1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 109
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v2, v1

    .local v2, "$this$requestOverlaysPermission_u24lambda_u246":Landroid/content/Intent;
    const/4 v3, 0x0

    .line 110
    .local v3, "$i$a$-apply-DevMenuDevToolsDelegate$requestOverlaysPermission$intent$1":I
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 111
    nop

    .line 109
    .end local v2    # "$this$requestOverlaysPermission_u24lambda_u246":Landroid/content/Intent;
    .end local v3    # "$i$a$-apply-DevMenuDevToolsDelegate$requestOverlaysPermission$intent$1":I
    nop

    .line 112
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 113
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 116
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private final runWithDevSupportEnabled(Lkotlin/jvm/functions/Function0;)V
    .locals 4
    .param p1, "action"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 95
    .local v0, "$i$f$runWithDevSupportEnabled":I
    invoke-virtual {p0}, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;->getReactDevManager()Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 96
    .local v1, "reactDevManager":Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
    :cond_0
    invoke-interface {v1}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->getDevSupportEnabled()Z

    move-result v2

    .line 97
    .local v2, "currentSetting":Z
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->setDevSupportEnabled(Z)V

    .line 98
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 99
    invoke-interface {v1, v2}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->setDevSupportEnabled(Z)V

    .line 100
    return-void
.end method

.method private static final toggleRemoteDebugging$lambda$3$lambda$2(Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;Lcom/facebook/react/devsupport/interfaces/DevSupportManager;)V
    .locals 1
    .param p0, "$devSettings"    # Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;
    .param p1, "$reactDevManager"    # Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    const-string v0, "$devSettings"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$reactDevManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-interface {p0}, Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;->isRemoteJSDebugEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p0, v0}, Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;->setRemoteJSDebugEnabled(Z)V

    .line 61
    invoke-interface {p1}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->handleReloadJS()V

    .line 62
    return-void
.end method


# virtual methods
.method public final getDevInternalSettings$expo_dev_menu_debug()Lcom/facebook/react/devsupport/DevMenuInternalSettingsWrapper;
    .locals 4

    .line 36
    invoke-virtual {p0}, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;->getDevSettings()Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 37
    .local v0, "devSettings":Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.facebook.react.devsupport.DevLauncherInternalSettings"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Lcom/facebook/react/devsupport/DevMenuInternalSettingsWrapper;

    invoke-direct {v1, v0}, Lcom/facebook/react/devsupport/DevMenuInternalSettingsWrapper;-><init>(Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;)V

    :cond_1
    return-object v1
.end method

.method public final getDevSettings()Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;->getReactDevManager()Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->getDevSettings()Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getReactContext()Lcom/facebook/react/bridge/ReactContext;
    .locals 1

    .line 41
    iget-object v0, p0, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;->_reactContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    return-object v0
.end method

.method public final getReactDevManager()Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
    .locals 1

    .line 29
    iget-object v0, p0, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;->_reactDevManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    return-object v0
.end method

.method public final openJSInspector()V
    .locals 15

    .line 75
    move-object v0, p0

    .local v0, "this_$iv":Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;
    const/4 v1, 0x0

    .line 137
    .local v1, "$i$f$runWithDevSupportEnabled":I
    invoke-virtual {v0}, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;->getReactDevManager()Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 138
    .local v2, "reactDevManager$iv":Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
    :cond_0
    invoke-interface {v2}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->getDevSupportEnabled()Z

    move-result v3

    .line 139
    .local v3, "currentSetting$iv":Z
    const/4 v4, 0x1

    invoke-interface {v2, v4}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->setDevSupportEnabled(Z)V

    .line 140
    const/4 v4, 0x0

    .line 76
    .local v4, "$i$a$-runWithDevSupportEnabled-DevMenuDevToolsDelegate$openJSInspector$1":I
    invoke-virtual {p0}, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;->getDevInternalSettings$expo_dev_menu_debug()Lcom/facebook/react/devsupport/DevMenuInternalSettingsWrapper;

    move-result-object v5

    if-nez v5, :cond_1

    return-void

    .line 77
    .local v5, "devSettings":Lcom/facebook/react/devsupport/DevMenuInternalSettingsWrapper;
    :cond_1
    invoke-virtual {p0}, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;->getReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v6

    if-nez v6, :cond_2

    return-void

    .line 78
    .local v6, "reactContext":Lcom/facebook/react/bridge/ReactContext;
    :cond_2
    invoke-virtual {v5}, Lcom/facebook/react/devsupport/DevMenuInternalSettingsWrapper;->getPackagerConnectionSettings()Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;->getDebugServerHost()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "http://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 80
    .local v7, "metroHost":Ljava/lang/String;
    iget-object v8, p0, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;->manager:Lexpo/interfaces/devmenu/DevMenuManagerInterface;

    invoke-interface {v8}, Lexpo/interfaces/devmenu/DevMenuManagerInterface;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v9

    new-instance v8, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate$openJSInspector$1$1;

    const/4 v10, 0x0

    invoke-direct {v8, v7, v6, v10}, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate$openJSInspector$1$1;-><init>(Ljava/lang/String;Lcom/facebook/react/bridge/ReactContext;Lkotlin/coroutines/Continuation;)V

    move-object v12, v8

    check-cast v12, Lkotlin/jvm/functions/Function2;

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v11, 0x0

    invoke-static/range {v9 .. v14}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 87
    nop

    .line 140
    .end local v4    # "$i$a$-runWithDevSupportEnabled-DevMenuDevToolsDelegate$openJSInspector$1":I
    .end local v5    # "devSettings":Lcom/facebook/react/devsupport/DevMenuInternalSettingsWrapper;
    .end local v6    # "reactContext":Lcom/facebook/react/bridge/ReactContext;
    .end local v7    # "metroHost":Ljava/lang/String;
    nop

    .line 141
    invoke-interface {v2, v3}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->setDevSupportEnabled(Z)V

    .line 142
    nop

    .line 87
    .end local v0    # "this_$iv":Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;
    .end local v1    # "$i$f$runWithDevSupportEnabled":I
    .end local v2    # "reactDevManager$iv":Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
    .end local v3    # "currentSetting$iv":Z
    :goto_0
    return-void
.end method

.method public final reload()V
    .locals 2

    .line 44
    invoke-virtual {p0}, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;->getReactDevManager()Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 45
    .local v0, "reactDevManager":Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
    :cond_0
    iget-object v1, p0, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;->manager:Lexpo/interfaces/devmenu/DevMenuManagerInterface;

    invoke-interface {v1}, Lexpo/interfaces/devmenu/DevMenuManagerInterface;->closeMenu()V

    .line 46
    new-instance v1, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate$$ExternalSyntheticLambda1;-><init>(Lcom/facebook/react/devsupport/interfaces/DevSupportManager;)V

    invoke-static {v1}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    .line 49
    return-void
.end method

.method public final toggleElementInspector()V
    .locals 6

    .line 51
    move-object v0, p0

    .local v0, "this_$iv":Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;
    const/4 v1, 0x0

    .line 119
    .local v1, "$i$f$runWithDevSupportEnabled":I
    invoke-virtual {v0}, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;->getReactDevManager()Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 120
    .local v2, "reactDevManager$iv":Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
    :cond_0
    invoke-interface {v2}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->getDevSupportEnabled()Z

    move-result v3

    .line 121
    .local v3, "currentSetting$iv":Z
    const/4 v4, 0x1

    invoke-interface {v2, v4}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->setDevSupportEnabled(Z)V

    .line 122
    const/4 v4, 0x0

    .line 52
    .local v4, "$i$a$-runWithDevSupportEnabled-DevMenuDevToolsDelegate$toggleElementInspector$1":I
    invoke-virtual {p0}, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;->getReactDevManager()Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v5}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->toggleElementInspector()V

    .line 53
    :cond_1
    nop

    .line 122
    .end local v4    # "$i$a$-runWithDevSupportEnabled-DevMenuDevToolsDelegate$toggleElementInspector$1":I
    nop

    .line 123
    invoke-interface {v2, v3}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->setDevSupportEnabled(Z)V

    .line 124
    nop

    .line 53
    .end local v0    # "this_$iv":Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;
    .end local v1    # "$i$f$runWithDevSupportEnabled":I
    .end local v2    # "reactDevManager$iv":Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
    .end local v3    # "currentSetting$iv":Z
    :goto_0
    return-void
.end method

.method public final togglePerformanceMonitor(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;->getReactDevManager()Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 67
    .local v0, "reactDevManager":Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
    :cond_0
    invoke-virtual {p0}, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;->getDevSettings()Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 69
    .local v1, "devSettings":Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;
    :cond_1
    invoke-direct {p0, p1}, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;->requestOverlaysPermission(Landroid/content/Context;)V

    .line 70
    move-object v2, p0

    .local v2, "this_$iv":Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;
    const/4 v3, 0x0

    .line 131
    .local v3, "$i$f$runWithDevSupportEnabled":I
    invoke-virtual {v2}, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;->getReactDevManager()Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 132
    .local v4, "reactDevManager$iv":Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
    :cond_2
    invoke-interface {v4}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->getDevSupportEnabled()Z

    move-result v5

    .line 133
    .local v5, "currentSetting$iv":Z
    const/4 v6, 0x1

    invoke-interface {v4, v6}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->setDevSupportEnabled(Z)V

    .line 134
    const/4 v7, 0x0

    .line 71
    .local v7, "$i$a$-runWithDevSupportEnabled-DevMenuDevToolsDelegate$togglePerformanceMonitor$1":I
    invoke-interface {v1}, Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;->isFpsDebugEnabled()Z

    move-result v8

    xor-int/2addr v6, v8

    invoke-interface {v0, v6}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->setFpsDebugEnabled(Z)V

    .line 72
    nop

    .line 134
    .end local v7    # "$i$a$-runWithDevSupportEnabled-DevMenuDevToolsDelegate$togglePerformanceMonitor$1":I
    nop

    .line 135
    invoke-interface {v4, v5}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->setDevSupportEnabled(Z)V

    .line 136
    nop

    .line 73
    .end local v2    # "this_$iv":Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;
    .end local v3    # "$i$f$runWithDevSupportEnabled":I
    .end local v4    # "reactDevManager$iv":Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
    .end local v5    # "currentSetting$iv":Z
    :goto_0
    return-void
.end method

.method public final toggleRemoteDebugging()V
    .locals 8

    .line 55
    move-object v0, p0

    .local v0, "this_$iv":Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;
    const/4 v1, 0x0

    .line 125
    .local v1, "$i$f$runWithDevSupportEnabled":I
    invoke-virtual {v0}, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;->getReactDevManager()Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 126
    .local v2, "reactDevManager$iv":Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
    :cond_0
    invoke-interface {v2}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->getDevSupportEnabled()Z

    move-result v3

    .line 127
    .local v3, "currentSetting$iv":Z
    const/4 v4, 0x1

    invoke-interface {v2, v4}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->setDevSupportEnabled(Z)V

    .line 128
    const/4 v4, 0x0

    .line 56
    .local v4, "$i$a$-runWithDevSupportEnabled-DevMenuDevToolsDelegate$toggleRemoteDebugging$1":I
    invoke-virtual {p0}, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;->getReactDevManager()Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    move-result-object v5

    if-nez v5, :cond_1

    return-void

    .line 57
    .local v5, "reactDevManager":Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
    :cond_1
    invoke-virtual {p0}, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;->getDevSettings()Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;

    move-result-object v6

    if-nez v6, :cond_2

    return-void

    .line 58
    .local v6, "devSettings":Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;
    :cond_2
    iget-object v7, p0, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;->manager:Lexpo/interfaces/devmenu/DevMenuManagerInterface;

    invoke-interface {v7}, Lexpo/interfaces/devmenu/DevMenuManagerInterface;->closeMenu()V

    .line 59
    new-instance v7, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v7, v6, v5}, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate$$ExternalSyntheticLambda0;-><init>(Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;Lcom/facebook/react/devsupport/interfaces/DevSupportManager;)V

    invoke-static {v7}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    .line 63
    nop

    .line 128
    .end local v4    # "$i$a$-runWithDevSupportEnabled-DevMenuDevToolsDelegate$toggleRemoteDebugging$1":I
    .end local v5    # "reactDevManager":Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
    .end local v6    # "devSettings":Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;
    nop

    .line 129
    invoke-interface {v2, v3}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->setDevSupportEnabled(Z)V

    .line 130
    nop

    .line 63
    .end local v0    # "this_$iv":Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;
    .end local v1    # "$i$f$runWithDevSupportEnabled":I
    .end local v2    # "reactDevManager$iv":Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
    .end local v3    # "currentSetting$iv":Z
    :goto_0
    return-void
.end method
