.class public final Lexpo/modules/devlauncher/launcher/DevLauncherReactNativeHost;
.super Lcom/facebook/react/defaults/DefaultReactNativeHost;
.source "DevLauncherReactNativeHost.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDevLauncherReactNativeHost.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DevLauncherReactNativeHost.kt\nexpo/modules/devlauncher/launcher/DevLauncherReactNativeHost\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,64:1\n1#2:65\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0005H\u0014J\u0008\u0010\u0008\u001a\u00020\u0005H\u0014J\u0008\u0010\t\u001a\u00020\nH\u0014J\u000e\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cH\u0014J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lexpo/modules/devlauncher/launcher/DevLauncherReactNativeHost;",
        "Lcom/facebook/react/defaults/DefaultReactNativeHost;",
        "application",
        "Landroid/app/Application;",
        "launcherIp",
        "",
        "(Landroid/app/Application;Ljava/lang/String;)V",
        "getBundleAssetName",
        "getJSMainModuleName",
        "getJavaScriptExecutorFactory",
        "Lcom/facebook/react/bridge/JavaScriptExecutorFactory;",
        "getPackages",
        "",
        "Lcom/facebook/react/ReactPackage;",
        "getUseDeveloperSupport",
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


# instance fields
.field private final launcherIp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Application;Ljava/lang/String;)V
    .locals 4
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "launcherIp"    # Ljava/lang/String;

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1}, Lcom/facebook/react/defaults/DefaultReactNativeHost;-><init>(Landroid/app/Application;)V

    .line 21
    iput-object p2, p0, Lexpo/modules/devlauncher/launcher/DevLauncherReactNativeHost;->launcherIp:Ljava/lang/String;

    .line 24
    nop

    .line 25
    invoke-virtual {p0}, Lexpo/modules/devlauncher/launcher/DevLauncherReactNativeHost;->getUseDeveloperSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getApplicationContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    check-cast v1, Lcom/facebook/react/ReactNativeHost;

    iget-object v2, p0, Lexpo/modules/devlauncher/launcher/DevLauncherReactNativeHost;->launcherIp:Ljava/lang/String;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lexpo/modules/devlauncher/launcher/DevLauncherReactNativeHost;->getJSMainModuleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lexpo/modules/devlauncher/helpers/DevLauncherReactUtilsKt;->injectDebugServerHost(Landroid/content/Context;Lcom/facebook/react/ReactNativeHost;Ljava/lang/String;Ljava/lang/String;)Z

    .line 28
    :cond_0
    nop

    .line 19
    return-void
.end method


# virtual methods
.method protected getBundleAssetName()Ljava/lang/String;
    .locals 1

    .line 62
    const-string v0, "expo_dev_launcher_android.bundle"

    return-object v0
.end method

.method protected getJSMainModuleName()Ljava/lang/String;
    .locals 1

    .line 60
    const-string v0, "index"

    return-object v0
.end method

.method protected getJavaScriptExecutorFactory()Lcom/facebook/react/bridge/JavaScriptExecutorFactory;
    .locals 2

    .line 57
    invoke-virtual {p0}, Lexpo/modules/devlauncher/launcher/DevLauncherReactNativeHost;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "getApplication(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lexpo/modules/devmenu/react/DevMenuHostHelperKt;->createNonDebuggableJavaScriptExecutorFactory(Landroid/app/Application;)Lcom/facebook/react/bridge/JavaScriptExecutorFactory;

    move-result-object v0

    return-object v0
.end method

.method protected getPackages()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/react/ReactPackage;",
            ">;"
        }
    .end annotation

    .line 34
    invoke-static {}, Lexpo/modules/devlauncher/helpers/DevLauncherReactUtilsKt;->findDevMenuPackage()Lcom/facebook/react/ReactPackage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    .local v0, "it":Lcom/facebook/react/ReactPackage;
    const/4 v1, 0x0

    .line 34
    .local v1, "$i$a$-let-DevLauncherReactNativeHost$getPackages$devMenuRelatedPackages$1":I
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .end local v0    # "it":Lcom/facebook/react/ReactPackage;
    .end local v1    # "$i$a$-let-DevLauncherReactNativeHost$getPackages$devMenuRelatedPackages$1":I
    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 33
    :cond_1
    nop

    .line 36
    .local v0, "devMenuRelatedPackages":Ljava/util/List;
    sget-object v1, Lexpo/modules/devlauncher/DevLauncherController;->Companion:Lexpo/modules/devlauncher/DevLauncherController$Companion;

    invoke-virtual {v1}, Lexpo/modules/devlauncher/DevLauncherController$Companion;->getSAdditionalPackages$expo_dev_launcher_debug()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 39
    .local v1, "additionalPackages":Ljava/util/List;
    :cond_2
    const/4 v2, 0x3

    new-array v2, v2, [Lcom/facebook/react/ReactPackage;

    new-instance v3, Lcom/facebook/react/shell/MainReactPackage;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/facebook/react/shell/MainReactPackage;-><init>(Lcom/facebook/react/shell/MainPackageConfig;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 40
    new-instance v3, Lexpo/modules/adapters/react/ModuleRegistryAdapter;

    .line 41
    new-instance v4, Lexpo/modules/adapters/react/ReactModuleRegistryProvider;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Lexpo/modules/adapters/react/ReactModuleRegistryProvider;-><init>(Ljava/util/List;)V

    .line 42
    new-instance v5, Lexpo/modules/devlauncher/launcher/DevLauncherReactNativeHost$getPackages$1;

    invoke-direct {v5}, Lexpo/modules/devlauncher/launcher/DevLauncherReactNativeHost$getPackages$1;-><init>()V

    check-cast v5, Lexpo/modules/kotlin/ModulesProvider;

    .line 40
    invoke-direct {v3, v4, v5}, Lexpo/modules/adapters/react/ModuleRegistryAdapter;-><init>(Lexpo/modules/adapters/react/ReactModuleRegistryProvider;Lexpo/modules/kotlin/ModulesProvider;)V

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 39
    nop

    .line 50
    new-instance v3, Lexpo/modules/devlauncher/DevLauncherPackage;

    invoke-direct {v3}, Lexpo/modules/devlauncher/DevLauncherPackage;-><init>()V

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 39
    nop

    .line 38
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 52
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    .line 38
    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 53
    move-object v3, v1

    check-cast v3, Ljava/lang/Iterable;

    .line 38
    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public getUseDeveloperSupport()Z
    .locals 1

    .line 30
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/DevLauncherReactNativeHost;->launcherIp:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
