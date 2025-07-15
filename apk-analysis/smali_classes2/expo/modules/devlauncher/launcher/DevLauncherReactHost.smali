.class public final Lexpo/modules/devlauncher/launcher/DevLauncherReactHost;
.super Ljava/lang/Object;
.source "DevLauncherReactHost.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDevLauncherReactHost.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DevLauncherReactHost.kt\nexpo/modules/devlauncher/launcher/DevLauncherReactHost\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,98:1\n1#2:99\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u000e\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cH\u0002\u00a8\u0006\u000e"
    }
    d2 = {
        "Lexpo/modules/devlauncher/launcher/DevLauncherReactHost;",
        "",
        "()V",
        "create",
        "Lcom/facebook/react/ReactHost;",
        "application",
        "Landroid/app/Application;",
        "launcherIp",
        "",
        "createJSEngineResolutionAlgorithm",
        "Lcom/facebook/react/JSEngineResolutionAlgorithm;",
        "getPackages",
        "",
        "Lcom/facebook/react/ReactPackage;",
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


# static fields
.field public static final INSTANCE:Lexpo/modules/devlauncher/launcher/DevLauncherReactHost;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/devlauncher/launcher/DevLauncherReactHost;

    invoke-direct {v0}, Lexpo/modules/devlauncher/launcher/DevLauncherReactHost;-><init>()V

    sput-object v0, Lexpo/modules/devlauncher/launcher/DevLauncherReactHost;->INSTANCE:Lexpo/modules/devlauncher/launcher/DevLauncherReactHost;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final createJSEngineResolutionAlgorithm(Landroid/app/Application;)Lcom/facebook/react/JSEngineResolutionAlgorithm;
    .locals 2
    .param p1, "application"    # Landroid/app/Application;

    .line 91
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/soloader/SoLoader;->init(Landroid/content/Context;Z)V

    .line 92
    const-string v0, "libjsc.so"

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->getLibraryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    sget-object v0, Lcom/facebook/react/JSEngineResolutionAlgorithm;->JSC:Lcom/facebook/react/JSEngineResolutionAlgorithm;

    return-object v0

    .line 95
    :cond_0
    sget-object v0, Lcom/facebook/react/JSEngineResolutionAlgorithm;->HERMES:Lcom/facebook/react/JSEngineResolutionAlgorithm;

    return-object v0
.end method

.method private final getPackages()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/react/ReactPackage;",
            ">;"
        }
    .end annotation

    .line 69
    invoke-static {}, Lexpo/modules/devlauncher/helpers/DevLauncherReactUtilsKt;->findDevMenuPackage()Lcom/facebook/react/ReactPackage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    .local v0, "it":Lcom/facebook/react/ReactPackage;
    const/4 v1, 0x0

    .line 69
    .local v1, "$i$a$-let-DevLauncherReactHost$getPackages$devMenuRelatedPackages$1":I
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .end local v0    # "it":Lcom/facebook/react/ReactPackage;
    .end local v1    # "$i$a$-let-DevLauncherReactHost$getPackages$devMenuRelatedPackages$1":I
    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 68
    :cond_1
    nop

    .line 70
    .local v0, "devMenuRelatedPackages":Ljava/util/List;
    sget-object v1, Lexpo/modules/devlauncher/DevLauncherController;->Companion:Lexpo/modules/devlauncher/DevLauncherController$Companion;

    invoke-virtual {v1}, Lexpo/modules/devlauncher/DevLauncherController$Companion;->getSAdditionalPackages$expo_dev_launcher_debug()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 73
    .local v1, "additionalPackages":Ljava/util/List;
    :cond_2
    const/4 v2, 0x3

    new-array v2, v2, [Lcom/facebook/react/ReactPackage;

    new-instance v3, Lcom/facebook/react/shell/MainReactPackage;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/facebook/react/shell/MainReactPackage;-><init>(Lcom/facebook/react/shell/MainPackageConfig;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 74
    new-instance v3, Lexpo/modules/adapters/react/ModuleRegistryAdapter;

    .line 75
    new-instance v4, Lexpo/modules/adapters/react/ReactModuleRegistryProvider;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Lexpo/modules/adapters/react/ReactModuleRegistryProvider;-><init>(Ljava/util/List;)V

    .line 76
    new-instance v5, Lexpo/modules/devlauncher/launcher/DevLauncherReactHost$getPackages$1;

    invoke-direct {v5}, Lexpo/modules/devlauncher/launcher/DevLauncherReactHost$getPackages$1;-><init>()V

    check-cast v5, Lexpo/modules/kotlin/ModulesProvider;

    .line 74
    invoke-direct {v3, v4, v5}, Lexpo/modules/adapters/react/ModuleRegistryAdapter;-><init>(Lexpo/modules/adapters/react/ReactModuleRegistryProvider;Lexpo/modules/kotlin/ModulesProvider;)V

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 73
    nop

    .line 84
    new-instance v3, Lexpo/modules/devlauncher/DevLauncherPackage;

    invoke-direct {v3}, Lexpo/modules/devlauncher/DevLauncherPackage;-><init>()V

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 73
    nop

    .line 72
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 86
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    .line 72
    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 87
    move-object v3, v1

    check-cast v3, Ljava/lang/Iterable;

    .line 72
    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public final create(Landroid/app/Application;Ljava/lang/String;)Lcom/facebook/react/ReactHost;
    .locals 18
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "launcherIp"    # Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "application"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    const-string v2, "expo_dev_launcher_android.bundle"

    .line 34
    .local v2, "jsBundleAssetPath":Ljava/lang/String;
    move-object v3, v0

    check-cast v3, Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "assets://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/facebook/react/bridge/JSBundleLoader;->createAssetLoader(Landroid/content/Context;Ljava/lang/String;Z)Lcom/facebook/react/bridge/JSBundleLoader;

    move-result-object v8

    .line 33
    nop

    .line 35
    .local v8, "jsBundleLoader":Lcom/facebook/react/bridge/JSBundleLoader;
    invoke-direct/range {p0 .. p1}, Lexpo/modules/devlauncher/launcher/DevLauncherReactHost;->createJSEngineResolutionAlgorithm(Landroid/app/Application;)Lcom/facebook/react/JSEngineResolutionAlgorithm;

    move-result-object v3

    .line 36
    .local v3, "jsResolutionAlgorithm":Lcom/facebook/react/JSEngineResolutionAlgorithm;
    sget-object v4, Lcom/facebook/react/JSEngineResolutionAlgorithm;->JSC:Lcom/facebook/react/JSEngineResolutionAlgorithm;

    if-ne v3, v4, :cond_0

    .line 37
    new-instance v4, Lcom/facebook/react/runtime/JSCInstance;

    invoke-direct {v4}, Lcom/facebook/react/runtime/JSCInstance;-><init>()V

    check-cast v4, Lcom/facebook/react/runtime/JSRuntimeFactory;

    move-object v10, v4

    goto :goto_0

    .line 39
    :cond_0
    new-instance v4, Lcom/facebook/react/runtime/hermes/HermesInstance;

    invoke-direct {v4}, Lcom/facebook/react/runtime/hermes/HermesInstance;-><init>()V

    check-cast v4, Lcom/facebook/react/runtime/JSRuntimeFactory;

    move-object v10, v4

    .line 36
    :goto_0
    nop

    .line 41
    .local v10, "jsRuntimeFactory":Lcom/facebook/react/runtime/JSRuntimeFactory;
    const-string v4, "index"

    .line 43
    .local v4, "jsMainModuleName":Ljava/lang/String;
    new-instance v17, Lcom/facebook/react/defaults/DefaultReactHostDelegate;

    .line 44
    nop

    .line 45
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 46
    invoke-direct/range {p0 .. p0}, Lexpo/modules/devlauncher/launcher/DevLauncherReactHost;->getPackages()Ljava/util/List;

    move-result-object v9

    .line 47
    nop

    .line 43
    nop

    .line 48
    new-instance v6, Lcom/facebook/react/defaults/DefaultTurboModuleManagerDelegate$Builder;

    invoke-direct {v6}, Lcom/facebook/react/defaults/DefaultTurboModuleManagerDelegate$Builder;-><init>()V

    move-object v14, v6

    check-cast v14, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;

    .line 43
    const/16 v15, 0x70

    const/16 v16, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v6, v17

    move-object v7, v4

    invoke-direct/range {v6 .. v16}, Lcom/facebook/react/defaults/DefaultReactHostDelegate;-><init>(Ljava/lang/String;Lcom/facebook/react/bridge/JSBundleLoader;Ljava/util/List;Lcom/facebook/react/runtime/JSRuntimeFactory;Lcom/facebook/react/runtime/BindingsInstaller;Lcom/facebook/react/fabric/ReactNativeConfig;Lkotlin/jvm/functions/Function1;Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 42
    nop

    .line 50
    .local v6, "defaultReactHostDelegate":Lcom/facebook/react/defaults/DefaultReactHostDelegate;
    new-instance v14, Lcom/facebook/react/fabric/ComponentFactory;

    invoke-direct {v14}, Lcom/facebook/react/fabric/ComponentFactory;-><init>()V

    .line 51
    .local v14, "componentFactory":Lcom/facebook/react/fabric/ComponentFactory;
    invoke-static {v14}, Lcom/facebook/react/defaults/DefaultComponentsRegistry;->register(Lcom/facebook/react/fabric/ComponentFactory;)V

    .line 52
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 53
    .local v5, "useDeveloperSupport":Z
    :goto_1
    new-instance v7, Lcom/facebook/react/runtime/ReactHostImpl;

    .line 54
    move-object v12, v0

    check-cast v12, Landroid/content/Context;

    .line 55
    move-object v13, v6

    check-cast v13, Lcom/facebook/react/runtime/ReactHostDelegate;

    .line 56
    nop

    .line 57
    nop

    .line 58
    nop

    .line 53
    move-object v11, v7

    move v15, v5

    move/from16 v16, v5

    invoke-direct/range {v11 .. v16}, Lcom/facebook/react/runtime/ReactHostImpl;-><init>(Landroid/content/Context;Lcom/facebook/react/runtime/ReactHostDelegate;Lcom/facebook/react/fabric/ComponentFactory;ZZ)V

    .line 61
    .local v7, "reactHost":Lcom/facebook/react/runtime/ReactHostImpl;
    if-eqz v5, :cond_2

    .line 62
    invoke-virtual/range {p1 .. p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string v11, "getApplicationContext(...)"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v7

    check-cast v11, Lcom/facebook/react/ReactHost;

    invoke-static/range {p2 .. p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v9, v11, v1, v4}, Lexpo/modules/devlauncher/helpers/DevLauncherReactUtilsKt;->injectDebugServerHost(Landroid/content/Context;Lcom/facebook/react/ReactHost;Ljava/lang/String;Ljava/lang/String;)Z

    .line 64
    :cond_2
    move-object v9, v7

    check-cast v9, Lcom/facebook/react/ReactHost;

    return-object v9
.end method
