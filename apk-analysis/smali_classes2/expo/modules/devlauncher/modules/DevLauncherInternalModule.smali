.class public final Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "DevLauncherInternalModule.kt"

# interfaces
.implements Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDevLauncherInternalModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DevLauncherInternalModule.kt\nexpo/modules/devlauncher/modules/DevLauncherInternalModule\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,293:1\n56#2,6:294\n56#2,6:300\n56#2,6:306\n*S KotlinDebug\n*F\n+ 1 DevLauncherInternalModule.kt\nexpo/modules/devlauncher/modules/DevLauncherInternalModule\n*L\n31#1:294,6\n32#1:300,6\n33#1:306,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0007J\u0010\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0007J\u0018\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0018\u001a\u00020\u0019H\u0007J\u0008\u0010\u001e\u001a\u00020\u001dH\u0002J\u0010\u0010\u001f\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0007J\u0014\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\"0!H\u0016J\u0010\u0010#\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0007J\u0008\u0010$\u001a\u00020\u001dH\u0016J\u0010\u0010%\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0007J\u0010\u0010&\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0007J\u0010\u0010\'\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0007J\u0008\u0010(\u001a\u00020)H\u0002J\u0008\u0010*\u001a\u00020\u0017H\u0016J\u0008\u0010+\u001a\u00020\u0017H\u0016J\u0018\u0010,\u001a\u00020\u00172\u0006\u0010-\u001a\u00020\u001d2\u0006\u0010\u0018\u001a\u00020\u0019H\u0007J\u0010\u0010.\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0007J\"\u0010/\u001a\u00020\u00172\u0006\u0010-\u001a\u00020\u001d2\u0008\u00100\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u0018\u001a\u00020\u0019H\u0007J\u0010\u00101\u001a\u00020\u00172\u0006\u00102\u001a\u000203H\u0002J\u0010\u00104\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0007J\u0010\u00105\u001a\u0002062\u0006\u00107\u001a\u000208H\u0002J\u0010\u00109\u001a\u0002082\u0006\u0010-\u001a\u00020\u001dH\u0002J\u0018\u0010:\u001a\u00020\u00172\u0006\u0010;\u001a\u00020\u001d2\u0006\u0010\u0018\u001a\u00020\u0019H\u0007J\u0010\u0010<\u001a\u00020\u00172\u0006\u0010=\u001a\u000203H\u0002R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\tR\u001b\u0010\u000c\u001a\u00020\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u000b\u001a\u0004\u0008\u000e\u0010\u000fR\u001b\u0010\u0011\u001a\u00020\u00128BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u000b\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006>"
    }
    d2 = {
        "Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;",
        "Lcom/facebook/react/bridge/ReactContextBaseJavaModule;",
        "Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent;",
        "reactContext",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "(Lcom/facebook/react/bridge/ReactApplicationContext;)V",
        "controller",
        "Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;",
        "getController",
        "()Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;",
        "controller$delegate",
        "Lkotlin/Lazy;",
        "installationIDHelper",
        "Lexpo/modules/devlauncher/helpers/DevLauncherInstallationIDHelper;",
        "getInstallationIDHelper",
        "()Lexpo/modules/devlauncher/helpers/DevLauncherInstallationIDHelper;",
        "installationIDHelper$delegate",
        "intentRegistry",
        "Lexpo/modules/devlauncher/launcher/DevLauncherIntentRegistryInterface;",
        "getIntentRegistry",
        "()Lexpo/modules/devlauncher/launcher/DevLauncherIntentRegistryInterface;",
        "intentRegistry$delegate",
        "clearNavigationState",
        "",
        "promise",
        "Lcom/facebook/react/bridge/Promise;",
        "clearRecentlyOpenedApps",
        "copyToClipboard",
        "content",
        "",
        "getApplicationIconUri",
        "getBuildInfo",
        "getConstants",
        "",
        "",
        "getCrashReport",
        "getName",
        "getNavigationState",
        "getPendingDeepLink",
        "getRecentlyOpenedApps",
        "getUpdatesConfig",
        "Lcom/facebook/react/bridge/WritableMap;",
        "initialize",
        "invalidate",
        "loadApp",
        "url",
        "loadFontsAsync",
        "loadUpdate",
        "projectUrlString",
        "onNewPendingIntent",
        "intent",
        "Landroid/content/Intent;",
        "openCamera",
        "openLink",
        "",
        "uri",
        "Landroid/net/Uri;",
        "sanitizeUrlString",
        "saveNavigationState",
        "serializedNavigationState",
        "tryToDeepLinkIntoQRScannerDirectly",
        "fallback",
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
.field private final controller$delegate:Lkotlin/Lazy;

.field private final installationIDHelper$delegate:Lkotlin/Lazy;

.field private final intentRegistry$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 6
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 30
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 31
    move-object v0, p0

    check-cast v0, Lorg/koin/core/component/KoinComponent;

    .line 294
    .local v0, "$this$inject_u24default$iv":Lorg/koin/core/component/KoinComponent;
    nop

    .line 295
    const/4 v1, 0x0

    .line 294
    .local v1, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 296
    sget-object v2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 294
    .local v2, "mode$iv":Lkotlin/LazyThreadSafetyMode;
    nop

    .line 297
    const/4 v3, 0x0

    .line 294
    .local v3, "parameters$iv":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 299
    .local v4, "$i$f$inject":I
    new-instance v5, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule$special$$inlined$inject$default$1;

    invoke-direct {v5, v0, v1, v3}, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v5}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 31
    .end local v0    # "$this$inject_u24default$iv":Lorg/koin/core/component/KoinComponent;
    .end local v1    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v2    # "mode$iv":Lkotlin/LazyThreadSafetyMode;
    .end local v3    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v4    # "$i$f$inject":I
    iput-object v0, p0, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;->controller$delegate:Lkotlin/Lazy;

    .line 32
    move-object v0, p0

    check-cast v0, Lorg/koin/core/component/KoinComponent;

    .line 300
    .restart local v0    # "$this$inject_u24default$iv":Lorg/koin/core/component/KoinComponent;
    nop

    .line 301
    const/4 v1, 0x0

    .line 300
    .restart local v1    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 302
    sget-object v2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 300
    .restart local v2    # "mode$iv":Lkotlin/LazyThreadSafetyMode;
    nop

    .line 303
    const/4 v3, 0x0

    .line 300
    .restart local v3    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 305
    .restart local v4    # "$i$f$inject":I
    new-instance v5, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule$special$$inlined$inject$default$2;

    invoke-direct {v5, v0, v1, v3}, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule$special$$inlined$inject$default$2;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v5}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 32
    .end local v0    # "$this$inject_u24default$iv":Lorg/koin/core/component/KoinComponent;
    .end local v1    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v2    # "mode$iv":Lkotlin/LazyThreadSafetyMode;
    .end local v3    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v4    # "$i$f$inject":I
    iput-object v0, p0, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;->intentRegistry$delegate:Lkotlin/Lazy;

    .line 33
    move-object v0, p0

    check-cast v0, Lorg/koin/core/component/KoinComponent;

    .line 306
    .restart local v0    # "$this$inject_u24default$iv":Lorg/koin/core/component/KoinComponent;
    nop

    .line 307
    const/4 v1, 0x0

    .line 306
    .restart local v1    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 308
    sget-object v2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 306
    .restart local v2    # "mode$iv":Lkotlin/LazyThreadSafetyMode;
    nop

    .line 309
    const/4 v3, 0x0

    .line 306
    .restart local v3    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 311
    .restart local v4    # "$i$f$inject":I
    new-instance v5, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule$special$$inlined$inject$default$3;

    invoke-direct {v5, v0, v1, v3}, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule$special$$inlined$inject$default$3;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v5}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 33
    .end local v0    # "$this$inject_u24default$iv":Lorg/koin/core/component/KoinComponent;
    .end local v1    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v2    # "mode$iv":Lkotlin/LazyThreadSafetyMode;
    .end local v3    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v4    # "$i$f$inject":I
    iput-object v0, p0, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;->installationIDHelper$delegate:Lkotlin/Lazy;

    .line 29
    return-void
.end method

.method public static final synthetic access$getController(Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;)Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;

    .line 29
    invoke-direct {p0}, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;->getController()Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$onNewPendingIntent(Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;Landroid/content/Intent;)V
    .locals 0
    .param p0, "$this"    # Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 29
    invoke-direct {p0, p1}, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;->onNewPendingIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public static final synthetic access$sanitizeUrlString(Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;
    .param p1, "url"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0, p1}, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;->sanitizeUrlString(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private final getApplicationIconUri()Ljava/lang/String;
    .locals 5

    .line 259
    invoke-virtual {p0}, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 260
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    const-string v3, "getApplicationInfo(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    .local v2, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private final getController()Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;
    .locals 1

    .line 31
    iget-object v0, p0, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;->controller$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    return-object v0
.end method

.method private final getInstallationIDHelper()Lexpo/modules/devlauncher/helpers/DevLauncherInstallationIDHelper;
    .locals 1

    .line 33
    iget-object v0, p0, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;->installationIDHelper$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/devlauncher/helpers/DevLauncherInstallationIDHelper;

    return-object v0
.end method

.method private final getIntentRegistry()Lexpo/modules/devlauncher/launcher/DevLauncherIntentRegistryInterface;
    .locals 1

    .line 32
    iget-object v0, p0, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;->intentRegistry$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/devlauncher/launcher/DevLauncherIntentRegistryInterface;

    return-object v0
.end method

.method private final getUpdatesConfig()Lcom/facebook/react/bridge/WritableMap;
    .locals 11

    .line 61
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 63
    .local v0, "map":Lcom/facebook/react/bridge/WritableMap;
    invoke-direct {p0}, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;->getController()Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    move-result-object v1

    invoke-interface {v1}, Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;->getUpdatesInterface()Lexpo/modules/updatesinterface/UpdatesInterface;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lexpo/modules/updatesinterface/UpdatesInterface;->getRuntimeVersion()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 64
    .local v1, "runtimeVersion":Ljava/lang/String;
    :goto_0
    sget-object v3, Lexpo/modules/devlauncher/DevLauncherController;->Companion:Lexpo/modules/devlauncher/DevLauncherController$Companion;

    invoke-virtual {p0}, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v4

    const-string v5, "getReactApplicationContext(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/content/Context;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v5, "expo.modules.updates.EXPO_UPDATE_URL"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lexpo/modules/devlauncher/DevLauncherController$Companion;->getMetadataValue$default(Lexpo/modules/devlauncher/DevLauncherController$Companion;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, "projectUrl":Ljava/lang/String;
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 67
    .local v4, "projectUri":Landroid/net/Uri;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    :cond_1
    const-string v5, ""

    .line 69
    .local v5, "appId":Ljava/lang/String;
    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_3
    move-object v6, v2

    :goto_1
    const-string v7, "u.expo.dev"

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-static {v6, v7, v8, v9, v2}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_6

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_4
    move-object v6, v2

    :goto_2
    const-string v10, "staging-u.expo.dev"

    invoke-static {v6, v10, v8, v9, v2}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    move v2, v8

    goto :goto_4

    :cond_6
    :goto_3
    move v2, v7

    .line 70
    .local v2, "isModernManifestProtocol":Z
    :goto_4
    if-eqz v2, :cond_8

    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_7

    move v6, v7

    goto :goto_5

    :cond_7
    move v6, v8

    :goto_5
    if-eqz v6, :cond_8

    move v8, v7

    :cond_8
    move v6, v8

    .line 72
    .local v6, "usesEASUpdates":Z
    move-object v7, v0

    .local v7, "$this$getUpdatesConfig_u24lambda_u240":Lcom/facebook/react/bridge/WritableMap;
    const/4 v8, 0x0

    .line 73
    .local v8, "$i$a$-apply-DevLauncherInternalModule$getUpdatesConfig$1":I
    const-string v9, "appId"

    invoke-interface {v7, v9, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v9, "runtimeVersion"

    invoke-interface {v7, v9, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v9, "usesEASUpdates"

    invoke-interface {v7, v9, v6}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 76
    const-string v9, "projectUrl"

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    nop

    .line 72
    .end local v7    # "$this$getUpdatesConfig_u24lambda_u240":Lcom/facebook/react/bridge/WritableMap;
    .end local v8    # "$i$a$-apply-DevLauncherInternalModule$getUpdatesConfig$1":I
    const-string v7, "apply(...)"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final onNewPendingIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 192
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .local v0, "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 193
    .local v1, "$i$a$-let-DevLauncherInternalModule$onNewPendingIntent$1":I
    invoke-virtual {p0}, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v2

    const-class v3, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 194
    invoke-virtual {v2, v3}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 195
    const-string v3, "expo.modules.devlauncher.onnewdeeplink"

    invoke-interface {v2, v3, v0}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 196
    nop

    .line 192
    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-DevLauncherInternalModule$onNewPendingIntent$1":I
    :cond_0
    nop

    .line 197
    return-void
.end method

.method private final openLink(Landroid/net/Uri;)Z
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .line 208
    nop

    .line 209
    :try_start_0
    invoke-virtual {p0}, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    .line 210
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v2, v1

    .local v2, "$this$openLink_u24lambda_u244":Landroid/content/Intent;
    const/4 v3, 0x0

    .line 211
    .local v3, "$i$a$-apply-DevLauncherInternalModule$openLink$1":I
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 212
    nop

    .line 210
    .end local v2    # "$this$openLink_u24lambda_u244":Landroid/content/Intent;
    .end local v3    # "$i$a$-apply-DevLauncherInternalModule$openLink$1":I
    nop

    .line 209
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    const/4 v0, 0x1

    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "_":Landroid/content/ActivityNotFoundException;
    const/4 v1, 0x0

    move v0, v1

    .line 208
    .end local v0    # "_":Landroid/content/ActivityNotFoundException;
    :goto_0
    return v0
.end method

.method private final sanitizeUrlString(Ljava/lang/String;)Landroid/net/Uri;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .line 81
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "sanitizedUrl":Ljava/lang/String;
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "://"

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v5, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "parse(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private final tryToDeepLinkIntoQRScannerDirectly(Landroid/content/Intent;)V
    .locals 2
    .param p1, "fallback"    # Landroid/content/Intent;

    .line 200
    invoke-static {}, Lexpo/modules/devlauncher/modules/DevLauncherInternalModuleKt;->access$getCLIENT_HOME_QR_SCANNER_DEEP_LINK$p()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "access$getCLIENT_HOME_QR_SCANNER_DEEP_LINK$p(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;->openLink(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    return-void

    .line 204
    :cond_0
    invoke-virtual {p0}, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->startActivity(Landroid/content/Intent;)V

    .line 205
    return-void
.end method


# virtual methods
.method public final clearNavigationState(Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .param p1, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "promise"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0}, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-string v1, "expo.modules.devlauncher.navigation-state"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/bridge/ReactApplicationContext;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 289
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 290
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 291
    return-void
.end method

.method public final clearRecentlyOpenedApps(Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .param p1, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "promise"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-direct {p0}, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;->getController()Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    move-result-object v0

    invoke-interface {v0}, Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;->clearRecentlyOpenedApps()V

    .line 148
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public final copyToClipboard(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.content.ClipboardManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/ClipboardManager;

    .line 253
    .local v0, "clipboard":Landroid/content/ClipboardManager;
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-static {v2, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 254
    .local v1, "clip":Landroid/content/ClipData;
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 255
    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 256
    return-void
.end method

.method public final getBuildInfo(Lcom/facebook/react/bridge/Promise;)V
    .locals 14
    .param p1, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "promise"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 223
    .local v0, "map":Lcom/facebook/react/bridge/WritableMap;
    invoke-virtual {p0}, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 224
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/react/bridge/ReactApplicationContext;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 226
    .local v2, "packageName":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 227
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    const/16 v4, 0x80

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    const-string v5, "getApplicationInfo(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    .local v4, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 229
    .local v5, "appName":Ljava/lang/String;
    invoke-direct {p0}, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;->getController()Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    move-result-object v6

    invoke-interface {v6}, Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;->getUpdatesInterface()Lexpo/modules/updatesinterface/UpdatesInterface;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Lexpo/modules/updatesinterface/UpdatesInterface;->getRuntimeVersion()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v7

    .line 230
    .local v6, "runtimeVersion":Ljava/lang/String;
    :goto_0
    invoke-direct {p0}, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;->getApplicationIconUri()Ljava/lang/String;

    move-result-object v8

    .line 232
    .local v8, "appIcon":Ljava/lang/String;
    invoke-direct {p0}, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;->getController()Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    move-result-object v9

    invoke-interface {v9}, Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;->getUpdatesInterface()Lexpo/modules/updatesinterface/UpdatesInterface;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-interface {v9}, Lexpo/modules/updatesinterface/UpdatesInterface;->getUpdateUrl()Landroid/net/Uri;

    move-result-object v7

    .line 233
    .local v7, "updatesUrl":Landroid/net/Uri;
    :cond_1
    const-string v9, ""

    if-eqz v7, :cond_3

    .line 234
    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_2

    goto :goto_1

    :cond_2
    move-object v9, v10

    goto :goto_1

    .line 236
    :cond_3
    nop

    .line 233
    :goto_1
    nop

    .line 239
    .local v9, "appId":Ljava/lang/String;
    move-object v10, v0

    .local v10, "$this$getBuildInfo_u24lambda_u245":Lcom/facebook/react/bridge/WritableMap;
    const/4 v11, 0x0

    .line 240
    .local v11, "$i$a$-apply-DevLauncherInternalModule$getBuildInfo$1":I
    const-string v12, "appVersion"

    iget-object v13, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-interface {v10, v12, v13}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v12, "appId"

    invoke-interface {v10, v12, v9}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v12, "appName"

    invoke-interface {v10, v12, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v12, "appIcon"

    invoke-interface {v10, v12, v8}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v12, "runtimeVersion"

    invoke-interface {v10, v12, v6}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    nop

    .line 239
    .end local v10    # "$this$getBuildInfo_u24lambda_u245":Lcom/facebook/react/bridge/WritableMap;
    .end local v11    # "$i$a$-apply-DevLauncherInternalModule$getBuildInfo$1":I
    nop

    .line 247
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 248
    return-void
.end method

.method public getConstants()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 52
    sget-object v0, Lexpo/modules/core/utilities/EmulatorUtilities;->INSTANCE:Lexpo/modules/core/utilities/EmulatorUtilities;

    invoke-virtual {v0}, Lexpo/modules/core/utilities/EmulatorUtilities;->isRunningOnEmulator()Z

    move-result v0

    .line 54
    .local v0, "isRunningOnEmulator":Z
    const/4 v1, 0x3

    new-array v1, v1, [Lkotlin/Pair;

    invoke-direct {p0}, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;->getInstallationIDHelper()Lexpo/modules/devlauncher/helpers/DevLauncherInstallationIDHelper;

    move-result-object v2

    invoke-virtual {p0}, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v3

    const-string v4, "getReactApplicationContext(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v2, v3}, Lexpo/modules/devlauncher/helpers/DevLauncherInstallationIDHelper;->getOrCreateInstallationID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "installationID"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 55
    xor-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "isDevice"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 54
    nop

    .line 56
    const-string v2, "updatesConfig"

    invoke-direct {p0}, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;->getUpdatesConfig()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 54
    nop

    .line 53
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public final getCrashReport(Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .param p1, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "promise"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    new-instance v0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorRegistry;

    invoke-virtual {p0}, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    const-string v2, "getReactApplicationContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorRegistry;-><init>(Landroid/content/Context;)V

    .line 188
    .local v0, "registry":Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorRegistry;
    invoke-virtual {v0}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorRegistry;->consumeException()Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorInstance;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorInstance;->toWritableMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 189
    return-void
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 29
    invoke-static {p0}, Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent$DefaultImpls;->getKoin(Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 49
    const-string v0, "EXDevLauncherInternal"

    return-object v0
.end method

.method public final getNavigationState(Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .param p1, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "promise"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-string v1, "expo.modules.devlauncher.navigation-state"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/bridge/ReactApplicationContext;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 275
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "navigationState"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    .line 276
    .local v1, "serializedNavigationState":Ljava/lang/String;
    :cond_0
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 277
    return-void
.end method

.method public final getPendingDeepLink(Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .param p1, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 177
    const-string v0, "promise"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;->getIntentRegistry()Lexpo/modules/devlauncher/launcher/DevLauncherIntentRegistryInterface;

    move-result-object v0

    invoke-interface {v0}, Lexpo/modules/devlauncher/launcher/DevLauncherIntentRegistryInterface;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .local v0, "it":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 178
    .local v1, "$i$a$-let-DevLauncherInternalModule$getPendingDeepLink$1":I
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 179
    return-void

    .line 182
    .end local v0    # "it":Landroid/net/Uri;
    .end local v1    # "$i$a$-let-DevLauncherInternalModule$getPendingDeepLink$1":I
    :cond_0
    invoke-direct {p0}, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;->getIntentRegistry()Lexpo/modules/devlauncher/launcher/DevLauncherIntentRegistryInterface;

    move-result-object v0

    invoke-interface {v0}, Lexpo/modules/devlauncher/launcher/DevLauncherIntentRegistryInterface;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 183
    return-void
.end method

.method public final getRecentlyOpenedApps(Lcom/facebook/react/bridge/Promise;)V
    .locals 7
    .param p1, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "promise"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 126
    .local v0, "apps":Lcom/facebook/react/bridge/WritableArray;
    invoke-direct {p0}, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;->getController()Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    move-result-object v1

    invoke-interface {v1}, Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;->getRecentlyOpenedApps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/devlauncher/launcher/DevLauncherAppEntry;

    .line 127
    .local v2, "recentlyOpenedApp":Lexpo/modules/devlauncher/launcher/DevLauncherAppEntry;
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    .line 129
    .local v3, "app":Lcom/facebook/react/bridge/WritableMap;
    invoke-virtual {v2}, Lexpo/modules/devlauncher/launcher/DevLauncherAppEntry;->getTimestamp()J

    move-result-wide v4

    long-to-double v4, v4

    const-string v6, "timestamp"

    invoke-interface {v3, v6, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 130
    const-string v4, "name"

    invoke-virtual {v2}, Lexpo/modules/devlauncher/launcher/DevLauncherAppEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v4, "url"

    invoke-virtual {v2}, Lexpo/modules/devlauncher/launcher/DevLauncherAppEntry;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v2}, Lexpo/modules/devlauncher/launcher/DevLauncherAppEntry;->isEASUpdate()Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "isEASUpdate"

    invoke-interface {v3, v6, v4}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 134
    invoke-virtual {v2}, Lexpo/modules/devlauncher/launcher/DevLauncherAppEntry;->isEASUpdate()Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 135
    const-string v4, "updateMessage"

    invoke-virtual {v2}, Lexpo/modules/devlauncher/launcher/DevLauncherAppEntry;->getUpdateMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v4, "branchName"

    invoke-virtual {v2}, Lexpo/modules/devlauncher/launcher/DevLauncherAppEntry;->getBranchName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_0
    move-object v4, v3

    check-cast v4, Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, v4}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    .end local v2    # "recentlyOpenedApp":Lexpo/modules/devlauncher/launcher/DevLauncherAppEntry;
    .end local v3    # "app":Lcom/facebook/react/bridge/WritableMap;
    goto :goto_0

    .line 142
    :cond_1
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public initialize()V
    .locals 2

    .line 36
    invoke-super {p0}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->initialize()V

    .line 37
    sget-object v0, Lexpo/modules/devlauncher/DevLauncherController;->Companion:Lexpo/modules/devlauncher/DevLauncherController$Companion;

    invoke-virtual {v0}, Lexpo/modules/devlauncher/DevLauncherController$Companion;->wasInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-direct {p0}, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;->getIntentRegistry()Lexpo/modules/devlauncher/launcher/DevLauncherIntentRegistryInterface;

    move-result-object v0

    new-instance v1, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule$initialize$1;

    invoke-direct {v1, p0}, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule$initialize$1;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v1}, Lexpo/modules/devlauncher/launcher/DevLauncherIntentRegistryInterface;->subscribe(Lkotlin/jvm/functions/Function1;)V

    .line 40
    :cond_0
    return-void
.end method

.method public invalidate()V
    .locals 2

    .line 43
    invoke-super {p0}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->invalidate()V

    .line 44
    sget-object v0, Lexpo/modules/devlauncher/DevLauncherController;->Companion:Lexpo/modules/devlauncher/DevLauncherController$Companion;

    invoke-virtual {v0}, Lexpo/modules/devlauncher/DevLauncherController$Companion;->wasInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-direct {p0}, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;->getIntentRegistry()Lexpo/modules/devlauncher/launcher/DevLauncherIntentRegistryInterface;

    move-result-object v0

    new-instance v1, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule$invalidate$1;

    invoke-direct {v1, p0}, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule$invalidate$1;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v1}, Lexpo/modules/devlauncher/launcher/DevLauncherIntentRegistryInterface;->unsubscribe(Lkotlin/jvm/functions/Function1;)V

    .line 47
    :cond_0
    return-void
.end method

.method public final loadApp(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0}, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;->getController()Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    move-result-object v0

    invoke-interface {v0}, Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule$loadApp$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, p2, v2}, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule$loadApp$1;-><init>(Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 120
    return-void
.end method

.method public final loadFontsAsync(Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .param p1, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "promise"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    sget-object v0, Lexpo/modules/devmenu/DevMenuManager;->INSTANCE:Lexpo/modules/devmenu/DevMenuManager;

    invoke-virtual {p0}, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    const-string v2, "getReactApplicationContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lexpo/modules/devmenu/DevMenuManager;->loadFonts(Landroid/content/Context;)V

    .line 269
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 270
    return-void
.end method

.method public final loadUpdate(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "projectUrlString"    # Ljava/lang/String;
    .param p3, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-direct {p0}, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;->getController()Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    move-result-object v0

    invoke-interface {v0}, Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule$loadUpdate$1;

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule$loadUpdate$1;-><init>(Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 106
    return-void
.end method

.method public final openCamera(Lcom/facebook/react/bridge/Promise;)V
    .locals 4
    .param p1, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "promise"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 156
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    nop

    .line 155
    const-string v1, "host.exp.exponent"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 156
    if-eqz v1, :cond_0

    .line 155
    nop

    .line 156
    nop

    .local v1, "it":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 157
    .local v2, "$i$a$-let-DevLauncherInternalModule$openCamera$1":I
    invoke-direct {p0, v1}, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;->tryToDeepLinkIntoQRScannerDirectly(Landroid/content/Intent;)V

    .line 158
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 159
    return-void

    .line 163
    .end local v1    # "it":Landroid/content/Intent;
    .end local v2    # "$i$a$-let-DevLauncherInternalModule$openCamera$1":I
    :cond_0
    const-string v1, "market://details?id=host.exp.exponent"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "parse(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;->openLink(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    return-void

    .line 168
    :cond_1
    const-string v1, "https://play.google.com/store/apps/details?id=host.exp.exponent"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;->openLink(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 169
    return-void

    .line 172
    :cond_2
    const-string v1, "ERR_DEVELOPMENT_CLIENT_CANNOT_OPEN_CAMERA"

    const-string v2, "Couldn\'t find the Expo Go app."

    invoke-interface {p1, v1, v2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public final saveNavigationState(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .param p1, "serializedNavigationState"    # Ljava/lang/String;
    .param p2, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "serializedNavigationState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    invoke-virtual {p0}, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-string v1, "expo.modules.devlauncher.navigation-state"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/bridge/ReactApplicationContext;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 282
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "navigationState"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 283
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 284
    return-void
.end method
