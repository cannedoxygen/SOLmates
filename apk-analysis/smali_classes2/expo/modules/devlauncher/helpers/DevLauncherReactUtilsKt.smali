.class public final Lexpo/modules/devlauncher/helpers/DevLauncherReactUtilsKt;
.super Ljava/lang/Object;
.source "DevLauncherReactUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u001a&\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u0001\u001a&\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u0001\u001a(\u0010\u0004\u001a\u00020\u000e2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u0001H\u0002\u001a&\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00112\u0006\u0010\n\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u0001\u001a \u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u001a\u0010\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0008\u001a\u00020\u0011H\u0002\u001a\u0018\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u0001H\u0002\u001a\u0018\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u0001H\u0002\u001a\u0016\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0001\u001a\u001e\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u001a\u001a\u001c\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00010\u001c2\u0006\u0010\u0019\u001a\u00020\u001aH\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "EXPO_REACT_HOST_DELEGATE_CLASS",
        "",
        "findDevMenuPackage",
        "Lcom/facebook/react/ReactPackage;",
        "injectDebugServerHost",
        "",
        "context",
        "Landroid/content/Context;",
        "reactHost",
        "Lcom/facebook/react/ReactHost;",
        "debugServerHost",
        "appBundleName",
        "reactNativeHost",
        "Lcom/facebook/react/ReactNativeHost;",
        "",
        "devSupportManager",
        "Lcom/facebook/react/devsupport/interfaces/DevSupportManager;",
        "Lexpo/interfaces/devmenu/ReactHostWrapper;",
        "injectDevServerHelper",
        "controller",
        "Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;",
        "injectDevSupportManager",
        "injectLocalBundleLoader",
        "bundlePath",
        "injectReactInterceptor",
        "url",
        "Landroid/net/Uri;",
        "parseUrl",
        "Lkotlin/Pair;",
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
.field private static final EXPO_REACT_HOST_DELEGATE_CLASS:Ljava/lang/String; = "expo.modules.ExpoReactHostFactory.ExpoReactHostDelegate"


# direct methods
.method public static final findDevMenuPackage()Lcom/facebook/react/ReactPackage;
    .locals 4

    .line 244
    nop

    .line 245
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "expo.modules.devmenu.DevMenuPackage"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 246
    .local v1, "clazz":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/facebook/react/ReactPackage;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/facebook/react/ReactPackage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    .line 247
    .end local v1    # "clazz":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 248
    .local v1, "e":Ljava/lang/Exception;
    nop

    .line 244
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-object v0
.end method

.method private static final injectDebugServerHost(Landroid/content/Context;Lcom/facebook/react/devsupport/interfaces/DevSupportManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "devSupportManager"    # Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
    .param p2, "debugServerHost"    # Ljava/lang/String;
    .param p3, "appBundleName"    # Ljava/lang/String;

    .line 120
    new-instance v0, Lcom/facebook/react/devsupport/DevLauncherSettings;

    invoke-direct {v0, p0, p2}, Lcom/facebook/react/devsupport/DevLauncherSettings;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .local v0, "settings":Lcom/facebook/react/devsupport/DevLauncherSettings;
    const-class v1, Lcom/facebook/react/devsupport/DevSupportManagerBase;

    .line 121
    nop

    .line 122
    .local v1, "devSupportManagerBaseClass":Ljava/lang/Class;
    nop

    .line 123
    nop

    .line 124
    nop

    .line 125
    nop

    .line 122
    const/16 v7, 0x8

    const/4 v8, 0x0

    const-string v4, "mJSAppBundleName"

    const/4 v6, 0x0

    move-object v2, v1

    move-object v3, p1

    move-object v5, p3

    invoke-static/range {v2 .. v8}, Lexpo/modules/devlauncher/helpers/DevLauncherReflectionExtensionsKt;->setProtectedDeclaredField$default(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 127
    const-string v2, "mDevSettings"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 128
    .local v2, "mDevSettingsField":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 129
    invoke-virtual {v2, p1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 130
    const-string v4, "mDevServerHelper"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 131
    .local v4, "mDevServerHelperField":Ljava/lang/reflect/Field;
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 132
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 133
    .local v5, "devServerHelper":Ljava/lang/Object;
    instance-of v6, v5, Lcom/facebook/react/devsupport/DevLauncherDevServerHelper;

    if-eqz v6, :cond_0

    const-class v6, Lcom/facebook/react/devsupport/DevServerHelper;

    .line 134
    const-string v7, "mSettings"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 135
    .local v6, "mSettingsField":Ljava/lang/reflect/Field;
    invoke-virtual {v6, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 136
    invoke-virtual {v6, v5, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v7, Lcom/facebook/react/devsupport/DevServerHelper;

    .line 138
    const-string v8, "mPackagerConnectionSettings"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 139
    .local v7, "packagerConnectionSettingsField":Ljava/lang/reflect/Field;
    invoke-virtual {v7, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 140
    invoke-virtual {v0}, Lcom/facebook/react/devsupport/DevLauncherSettings;->public_getPackagerConnectionSettings()Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;

    move-result-object v3

    invoke-virtual {v7, v5, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 141
    return-void

    .line 133
    .end local v6    # "mSettingsField":Ljava/lang/reflect/Field;
    .end local v7    # "packagerConnectionSettingsField":Ljava/lang/reflect/Field;
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v6, "Check failed."

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static final injectDebugServerHost(Landroid/content/Context;Lcom/facebook/react/ReactHost;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reactHost"    # Lcom/facebook/react/ReactHost;
    .param p2, "debugServerHost"    # Ljava/lang/String;
    .param p3, "appBundleName"    # Ljava/lang/String;

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reactHost"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debugServerHost"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appBundleName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    nop

    .line 105
    :try_start_0
    invoke-interface {p1}, Lcom/facebook/react/ReactHost;->getDevSupportManager()Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    .local v0, "devSupportManager":Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
    invoke-static {p0, v0, p2, p3}, Lexpo/modules/devlauncher/helpers/DevLauncherReactUtilsKt;->injectDebugServerHost(Landroid/content/Context;Lcom/facebook/react/devsupport/interfaces/DevSupportManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    nop

    .end local v0    # "devSupportManager":Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
    const/4 v0, 0x1

    goto :goto_0

    .line 105
    :cond_0
    const-string v0, "Required value was null."

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "reactHost":Lcom/facebook/react/ReactHost;
    .end local p2    # "debugServerHost":Ljava/lang/String;
    .end local p3    # "appBundleName":Ljava/lang/String;
    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "reactHost":Lcom/facebook/react/ReactHost;
    .restart local p2    # "debugServerHost":Ljava/lang/String;
    .restart local p3    # "appBundleName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Unable to inject debug server host settings."

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    const-string v3, "DevLauncher"

    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    const/4 v1, 0x0

    move v0, v1

    .line 104
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public static final injectDebugServerHost(Landroid/content/Context;Lcom/facebook/react/ReactNativeHost;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reactNativeHost"    # Lcom/facebook/react/ReactNativeHost;
    .param p2, "debugServerHost"    # Ljava/lang/String;
    .param p3, "appBundleName"    # Ljava/lang/String;

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reactNativeHost"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debugServerHost"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appBundleName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    nop

    .line 83
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/react/ReactNativeHost;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v0

    .line 84
    .local v0, "instanceManager":Lcom/facebook/react/ReactInstanceManager;
    invoke-virtual {v0}, Lcom/facebook/react/ReactInstanceManager;->getDevSupportManager()Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    move-result-object v1

    .line 85
    .local v1, "devSupportManager":Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0, v1, p2, p3}, Lexpo/modules/devlauncher/helpers/DevLauncherReactUtilsKt;->injectDebugServerHost(Landroid/content/Context;Lcom/facebook/react/devsupport/interfaces/DevSupportManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mUseDeveloperSupport"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 89
    .local v2, "mUseDeveloperSupportField":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 90
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    nop

    .end local v0    # "instanceManager":Lcom/facebook/react/ReactInstanceManager;
    .end local v1    # "devSupportManager":Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
    .end local v2    # "mUseDeveloperSupportField":Ljava/lang/reflect/Field;
    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Unable to inject debug server host settings."

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    const-string v3, "DevLauncher"

    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    const/4 v3, 0x0

    .line 82
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return v3
.end method

.method public static final injectDebugServerHost(Landroid/content/Context;Lexpo/interfaces/devmenu/ReactHostWrapper;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reactHost"    # Lexpo/interfaces/devmenu/ReactHostWrapper;
    .param p2, "debugServerHost"    # Ljava/lang/String;
    .param p3, "appBundleName"    # Ljava/lang/String;

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reactHost"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debugServerHost"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appBundleName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Lexpo/interfaces/devmenu/ReactHostWrapper;->isBridgelessMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p1}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getReactHost()Lcom/facebook/react/ReactHost;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lexpo/modules/devlauncher/helpers/DevLauncherReactUtilsKt;->injectDebugServerHost(Landroid/content/Context;Lcom/facebook/react/ReactHost;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p1}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lexpo/modules/devlauncher/helpers/DevLauncherReactUtilsKt;->injectDebugServerHost(Landroid/content/Context;Lcom/facebook/react/ReactNativeHost;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 69
    :goto_0
    return v0
.end method

.method public static final injectDevServerHelper(Landroid/content/Context;Lcom/facebook/react/devsupport/interfaces/DevSupportManager;Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "devSupportManager"    # Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
    .param p2, "controller"    # Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "devSupportManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    invoke-static {p0}, Lcom/facebook/react/modules/systeminfo/AndroidInfoHelpers;->getServerHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "defaultServerHost":Ljava/lang/String;
    new-instance v1, Lcom/facebook/react/devsupport/DevLauncherSettings;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, p0, v0}, Lcom/facebook/react/devsupport/DevLauncherSettings;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 224
    .local v1, "devSettings":Lcom/facebook/react/devsupport/DevLauncherSettings;
    new-instance v5, Lcom/facebook/react/devsupport/DevLauncherDevServerHelper;

    .line 225
    nop

    .line 226
    nop

    .line 227
    move-object v2, v1

    check-cast v2, Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;

    .line 228
    invoke-virtual {v1}, Lcom/facebook/react/devsupport/DevLauncherSettings;->public_getPackagerConnectionSettings()Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;

    move-result-object v3

    .line 224
    invoke-direct {v5, p0, p2, v2, v3}, Lcom/facebook/react/devsupport/DevLauncherDevServerHelper;-><init>(Landroid/content/Context;Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;)V

    .local v5, "devLauncherDevServerHelper":Lcom/facebook/react/devsupport/DevLauncherDevServerHelper;
    const-class v2, Lcom/facebook/react/devsupport/DevSupportManagerBase;

    .line 231
    nop

    .line 232
    nop

    .line 230
    const-string v3, "mDevServerHelper"

    invoke-static {v2, p1, v3}, Lexpo/modules/devlauncher/helpers/DevLauncherReflectionExtensionsKt;->getProtectedFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/facebook/react/devsupport/DevServerHelper;

    .local v9, "oldDevServerHelper":Lcom/facebook/react/devsupport/DevServerHelper;
    const-class v2, Lcom/facebook/react/devsupport/DevSupportManagerBase;

    .line 235
    nop

    .line 236
    nop

    .line 237
    nop

    .line 234
    const/16 v7, 0x8

    const/4 v8, 0x0

    const-string v4, "mDevServerHelper"

    const/4 v6, 0x0

    move-object v3, p1

    invoke-static/range {v2 .. v8}, Lexpo/modules/devlauncher/helpers/DevLauncherReflectionExtensionsKt;->setProtectedDeclaredField$default(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 239
    invoke-virtual {v9}, Lcom/facebook/react/devsupport/DevServerHelper;->closePackagerConnection()V

    .line 240
    invoke-virtual {v9}, Lcom/facebook/react/devsupport/DevServerHelper;->closeInspectorConnection()V

    .line 241
    return-void
.end method

.method private static final injectDevSupportManager(Lexpo/interfaces/devmenu/ReactHostWrapper;)V
    .locals 1
    .param p0, "reactHost"    # Lexpo/interfaces/devmenu/ReactHostWrapper;

    .line 56
    new-instance v0, Lexpo/modules/devlauncher/react/DevLauncherDevSupportManagerSwapper;

    invoke-direct {v0}, Lexpo/modules/devlauncher/react/DevLauncherDevSupportManagerSwapper;-><init>()V

    invoke-virtual {v0, p0}, Lexpo/modules/devlauncher/react/DevLauncherDevSupportManagerSwapper;->swapDevSupportManagerImpl(Lexpo/interfaces/devmenu/ReactHostWrapper;)V

    .line 60
    sget-object v0, Lexpo/modules/devmenu/DevMenuManager;->INSTANCE:Lexpo/modules/devmenu/DevMenuManager;

    invoke-virtual {v0, p0}, Lexpo/modules/devmenu/DevMenuManager;->initializeWithReactHost(Lexpo/interfaces/devmenu/ReactHostWrapper;)V

    .line 61
    return-void
.end method

.method private static final injectLocalBundleLoader(Lcom/facebook/react/ReactHost;Ljava/lang/String;)Z
    .locals 10
    .param p0, "reactHost"    # Lcom/facebook/react/ReactHost;
    .param p1, "bundlePath"    # Ljava/lang/String;

    .line 182
    nop

    .line 183
    const/4 v0, 0x0

    :try_start_0
    instance-of v1, p0, Lcom/facebook/react/runtime/ReactHostImpl;

    if-eqz v1, :cond_2

    const-class v1, Lcom/facebook/react/runtime/ReactHostImpl;

    .line 187
    nop

    .line 188
    .local v1, "reactHostClass":Ljava/lang/Class;
    const-string v2, "mAllowPackagerServerAccess"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 189
    .local v2, "mAllowPackagerServerAccessField":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 190
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 192
    invoke-static {p1}, Lcom/facebook/react/bridge/JSBundleLoader;->createFileLoader(Ljava/lang/String;)Lcom/facebook/react/bridge/JSBundleLoader;

    move-result-object v4

    .line 195
    .local v4, "newJsBundleLoader":Lcom/facebook/react/bridge/JSBundleLoader;
    const-string v5, "mReactHostDelegate"

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 196
    .local v5, "mReactHostDelegateField":Ljava/lang/reflect/Field;
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 197
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "null cannot be cast to non-null type com.facebook.react.runtime.ReactHostDelegate"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lcom/facebook/react/runtime/ReactHostDelegate;

    .line 198
    .local v6, "reactHostDelegate":Lcom/facebook/react/runtime/ReactHostDelegate;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "expo.modules.ExpoReactHostFactory.ExpoReactHostDelegate"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 199
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 200
    const-string v8, "_jsBundleLoader"

    .line 201
    nop

    .line 202
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 199
    invoke-static {v7, v8, v6, v4}, Lexpo/modules/devmenu/helpers/DevMenuReflectionExtensionsKt;->setPrivateDeclaredFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 204
    :cond_0
    instance-of v7, v6, Lcom/facebook/react/defaults/DefaultReactHostDelegate;

    if-eqz v7, :cond_1

    const-class v7, Lcom/facebook/react/defaults/DefaultReactHostDelegate;

    .line 206
    const-string v8, "jsBundleLoader"

    .line 207
    nop

    .line 208
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 205
    invoke-static {v7, v8, v6, v4}, Lexpo/modules/devmenu/helpers/DevMenuReflectionExtensionsKt;->setPrivateDeclaredFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 214
    :goto_0
    move v0, v3

    .end local v1    # "reactHostClass":Ljava/lang/Class;
    .end local v2    # "mAllowPackagerServerAccessField":Ljava/lang/reflect/Field;
    .end local v4    # "newJsBundleLoader":Lcom/facebook/react/bridge/JSBundleLoader;
    .end local v5    # "mReactHostDelegateField":Ljava/lang/reflect/Field;
    .end local v6    # "reactHostDelegate":Lcom/facebook/react/runtime/ReactHostDelegate;
    goto :goto_1

    .line 211
    .restart local v1    # "reactHostClass":Ljava/lang/Class;
    .restart local v2    # "mAllowPackagerServerAccessField":Ljava/lang/reflect/Field;
    .restart local v4    # "newJsBundleLoader":Lcom/facebook/react/bridge/JSBundleLoader;
    .restart local v5    # "mReactHostDelegateField":Ljava/lang/reflect/Field;
    .restart local v6    # "reactHostDelegate":Lcom/facebook/react/runtime/ReactHostDelegate;
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[injectLocalBundleLoader] Unsupported reactHostDelegate: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "reactHost":Lcom/facebook/react/ReactHost;
    .end local p1    # "bundlePath":Ljava/lang/String;
    throw v3

    .line 183
    .end local v1    # "reactHostClass":Ljava/lang/Class;
    .end local v2    # "mAllowPackagerServerAccessField":Ljava/lang/reflect/Field;
    .end local v4    # "newJsBundleLoader":Lcom/facebook/react/bridge/JSBundleLoader;
    .end local v5    # "mReactHostDelegateField":Ljava/lang/reflect/Field;
    .end local v6    # "reactHostDelegate":Lcom/facebook/react/runtime/ReactHostDelegate;
    .restart local p0    # "reactHost":Lcom/facebook/react/ReactHost;
    .restart local p1    # "bundlePath":Ljava/lang/String;
    :cond_2
    const-string v1, "Check failed."

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "reactHost":Lcom/facebook/react/ReactHost;
    .end local p1    # "bundlePath":Ljava/lang/String;
    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .restart local p0    # "reactHost":Lcom/facebook/react/ReactHost;
    .restart local p1    # "bundlePath":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 216
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Unable to load local bundle file"

    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    const-string v4, "DevLauncher"

    invoke-static {v4, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    nop

    .line 182
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return v0
.end method

.method private static final injectLocalBundleLoader(Lcom/facebook/react/ReactNativeHost;Ljava/lang/String;)Z
    .locals 8
    .param p0, "reactNativeHost"    # Lcom/facebook/react/ReactNativeHost;
    .param p1, "bundlePath"    # Ljava/lang/String;

    .line 158
    nop

    .line 159
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/react/ReactNativeHost;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v1

    .line 160
    .local v1, "instanceManager":Lcom/facebook/react/ReactInstanceManager;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 162
    .local v2, "instanceManagerClass":Ljava/lang/Class;
    invoke-static {p1}, Lcom/facebook/react/bridge/JSBundleLoader;->createFileLoader(Ljava/lang/String;)Lcom/facebook/react/bridge/JSBundleLoader;

    move-result-object v3

    .line 163
    .local v3, "jsBundleLoader":Lcom/facebook/react/bridge/JSBundleLoader;
    const-string v4, "mBundleLoader"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 164
    .local v4, "mBundleLoaderField":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 165
    invoke-virtual {v4, v1, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 167
    const-string v6, "mUseDeveloperSupport"

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 168
    .local v6, "mUseDeveloperSupportField":Ljava/lang/reflect/Field;
    invoke-virtual {v6, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 169
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    move v0, v5

    .end local v1    # "instanceManager":Lcom/facebook/react/ReactInstanceManager;
    .end local v2    # "instanceManagerClass":Ljava/lang/Class;
    .end local v3    # "jsBundleLoader":Lcom/facebook/react/bridge/JSBundleLoader;
    .end local v4    # "mBundleLoaderField":Ljava/lang/reflect/Field;
    .end local v6    # "mUseDeveloperSupportField":Ljava/lang/reflect/Field;
    goto :goto_0

    .line 171
    :catch_0
    move-exception v1

    .line 172
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Unable to load local bundle file"

    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    const-string v4, "DevLauncher"

    invoke-static {v4, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    nop

    .line 158
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public static final injectLocalBundleLoader(Lexpo/interfaces/devmenu/ReactHostWrapper;Ljava/lang/String;)Z
    .locals 1
    .param p0, "reactHost"    # Lexpo/interfaces/devmenu/ReactHostWrapper;
    .param p1, "bundlePath"    # Ljava/lang/String;

    const-string v0, "reactHost"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bundlePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lexpo/interfaces/devmenu/ReactHostWrapper;->isBridgelessMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getReactHost()Lcom/facebook/react/ReactHost;

    move-result-object v0

    invoke-static {v0, p1}, Lexpo/modules/devlauncher/helpers/DevLauncherReactUtilsKt;->injectLocalBundleLoader(Lcom/facebook/react/ReactHost;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {p0}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v0

    invoke-static {v0, p1}, Lexpo/modules/devlauncher/helpers/DevLauncherReactUtilsKt;->injectLocalBundleLoader(Lcom/facebook/react/ReactNativeHost;Ljava/lang/String;)Z

    move-result v0

    .line 147
    :goto_0
    return v0
.end method

.method public static final injectReactInterceptor(Landroid/content/Context;Lexpo/interfaces/devmenu/ReactHostWrapper;Landroid/net/Uri;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reactHost"    # Lexpo/interfaces/devmenu/ReactHostWrapper;
    .param p2, "url"    # Landroid/net/Uri;

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reactHost"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-static {p2}, Lexpo/modules/devlauncher/helpers/DevLauncherReactUtilsKt;->parseUrl(Landroid/net/Uri;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "debugServerHost":Ljava/lang/String;
    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 39
    .local v0, "appBundleName":Ljava/lang/String;
    invoke-static {p1}, Lexpo/modules/devlauncher/helpers/DevLauncherReactUtilsKt;->injectDevSupportManager(Lexpo/interfaces/devmenu/ReactHostWrapper;)V

    .line 42
    nop

    .line 43
    nop

    .line 44
    nop

    .line 45
    nop

    .line 41
    invoke-static {p0, p1, v1, v0}, Lexpo/modules/devlauncher/helpers/DevLauncherReactUtilsKt;->injectDebugServerHost(Landroid/content/Context;Lexpo/interfaces/devmenu/ReactHostWrapper;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 47
    .local v2, "result":Z
    invoke-virtual {p1}, Lexpo/interfaces/devmenu/ReactHostWrapper;->isBridgelessMode()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 48
    invoke-virtual {p1}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getDevSupportManager()Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    move-result-object v3

    instance-of v5, v3, Lexpo/modules/devlauncher/react/DevLauncherBridgelessDevSupportManager;

    if-eqz v5, :cond_0

    move-object v4, v3

    check-cast v4, Lexpo/modules/devlauncher/react/DevLauncherBridgelessDevSupportManager;

    :cond_0
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lexpo/modules/devlauncher/react/DevLauncherBridgelessDevSupportManager;->startInspectorWhenDevLauncherReady()V

    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p1}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getDevSupportManager()Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    move-result-object v3

    instance-of v5, v3, Lexpo/modules/devlauncher/react/DevLauncherBridgeDevSupportManager;

    if-eqz v5, :cond_2

    move-object v4, v3

    check-cast v4, Lexpo/modules/devlauncher/react/DevLauncherBridgeDevSupportManager;

    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lexpo/modules/devlauncher/react/DevLauncherBridgeDevSupportManager;->startInspectorWhenDevLauncherReady()V

    .line 52
    :cond_3
    :goto_0
    return v2
.end method

.method private static final parseUrl(Landroid/net/Uri;)Lkotlin/Pair;
    .locals 11
    .param p0, "url"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 253
    invoke-virtual {p0}, Landroid/net/Uri;->getPort()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getPort()I

    move-result v0

    goto :goto_0

    :cond_0
    sget-object v0, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "http"

    :cond_1
    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Companion;->defaultPort(Ljava/lang/String;)I

    move-result v0

    .line 254
    .local v0, "port":I
    :goto_0
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, "debugServerHost":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    move v2, v3

    :goto_2
    const-string v4, "index"

    if-eqz v2, :cond_4

    .line 258
    goto :goto_3

    .line 260
    :cond_4
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 261
    if-eqz v2, :cond_5

    .line 260
    nop

    .line 261
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v2, "substring(...)"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    if-eqz v5, :cond_5

    .line 261
    nop

    .line 262
    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v6, ".bundle"

    const-string v7, ""

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 260
    if-eqz v2, :cond_5

    move-object v4, v2

    goto :goto_3

    .line 263
    :cond_5
    nop

    .line 257
    :goto_3
    move-object v2, v4

    .line 265
    .local v2, "appBundleName":Ljava/lang/String;
    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method
