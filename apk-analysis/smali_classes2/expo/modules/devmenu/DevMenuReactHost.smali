.class public final Lexpo/modules/devmenu/DevMenuReactHost;
.super Ljava/lang/Object;
.source "DevMenuReactHost.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDevMenuReactHost.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DevMenuReactHost.kt\nexpo/modules/devmenu/DevMenuReactHost\n+ 2 DevMenuUtils.kt\nexpo/modules/devmenu/DevMenuUtilsKt\n*L\n1#1,143:1\n34#2,4:144\n*S KotlinDebug\n*F\n+ 1 DevMenuReactHost.kt\nexpo/modules/devmenu/DevMenuReactHost\n*L\n127#1:144,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u000e\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cH\u0002J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0002\u00a8\u0006\u0014"
    }
    d2 = {
        "Lexpo/modules/devmenu/DevMenuReactHost;",
        "",
        "()V",
        "create",
        "Lcom/facebook/react/ReactHost;",
        "application",
        "Landroid/app/Application;",
        "useDeveloperSupport",
        "",
        "createJSEngineResolutionAlgorithm",
        "Lcom/facebook/react/JSEngineResolutionAlgorithm;",
        "getPackages",
        "",
        "Lcom/facebook/react/ReactPackage;",
        "injectDevServerSettings",
        "",
        "applicationContext",
        "Landroid/content/Context;",
        "reactHost",
        "Lcom/facebook/react/runtime/ReactHostImpl;",
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


# static fields
.field public static final INSTANCE:Lexpo/modules/devmenu/DevMenuReactHost;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/devmenu/DevMenuReactHost;

    invoke-direct {v0}, Lexpo/modules/devmenu/DevMenuReactHost;-><init>()V

    sput-object v0, Lexpo/modules/devmenu/DevMenuReactHost;->INSTANCE:Lexpo/modules/devmenu/DevMenuReactHost;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final createJSEngineResolutionAlgorithm(Landroid/app/Application;)Lcom/facebook/react/JSEngineResolutionAlgorithm;
    .locals 2
    .param p1, "application"    # Landroid/app/Application;

    .line 98
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/soloader/SoLoader;->init(Landroid/content/Context;Z)V

    .line 99
    const-string v0, "libjsc.so"

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->getLibraryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    sget-object v0, Lcom/facebook/react/JSEngineResolutionAlgorithm;->JSC:Lcom/facebook/react/JSEngineResolutionAlgorithm;

    return-object v0

    .line 102
    :cond_0
    sget-object v0, Lcom/facebook/react/JSEngineResolutionAlgorithm;->HERMES:Lcom/facebook/react/JSEngineResolutionAlgorithm;

    return-object v0
.end method

.method private final getPackages()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/react/ReactPackage;",
            ">;"
        }
    .end annotation

    .line 71
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/react/ReactPackage;

    new-instance v1, Lcom/facebook/react/shell/MainReactPackage;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/facebook/react/shell/MainReactPackage;-><init>(Lcom/facebook/react/shell/MainPackageConfig;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 72
    new-instance v1, Lexpo/modules/adapters/react/ModuleRegistryAdapter;

    .line 73
    new-instance v3, Lexpo/modules/adapters/react/ReactModuleRegistryProvider;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Lexpo/modules/adapters/react/ReactModuleRegistryProvider;-><init>(Ljava/util/List;)V

    .line 74
    new-instance v4, Lexpo/modules/devmenu/DevMenuReactHost$getPackages$packages$1;

    invoke-direct {v4}, Lexpo/modules/devmenu/DevMenuReactHost$getPackages$packages$1;-><init>()V

    check-cast v4, Lexpo/modules/kotlin/ModulesProvider;

    .line 72
    invoke-direct {v1, v3, v4}, Lexpo/modules/adapters/react/ModuleRegistryAdapter;-><init>(Lexpo/modules/adapters/react/ReactModuleRegistryProvider;Lexpo/modules/kotlin/ModulesProvider;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 71
    nop

    .line 83
    new-instance v1, Lexpo/modules/devmenu/DevMenuPackage;

    invoke-direct {v1}, Lexpo/modules/devmenu/DevMenuPackage;-><init>()V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 71
    nop

    .line 70
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 86
    .local v0, "packages":Ljava/util/List;
    nop

    .line 87
    :try_start_0
    const-string v1, "expo.modules.devlauncher.DevLauncherPackage"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 88
    .local v1, "devLauncherPackage":Ljava/lang/Class;
    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type com.facebook.react.ReactPackage"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/facebook/react/ReactPackage;

    .line 89
    .local v2, "pkg":Lcom/facebook/react/ReactPackage;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    .end local v1    # "devLauncherPackage":Ljava/lang/Class;
    .end local v2    # "pkg":Lcom/facebook/react/ReactPackage;
    :catch_0
    move-exception v1

    .line 94
    :goto_0
    return-object v0
.end method

.method private final injectDevServerSettings(Landroid/content/Context;Lcom/facebook/react/runtime/ReactHostImpl;)V
    .locals 11
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "reactHost"    # Lcom/facebook/react/runtime/ReactHostImpl;

    .line 109
    const-string v0, "ExpoDevMenu"

    .line 110
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    .line 111
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "dev-menu-packager-host"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    check-cast v2, Ljava/io/Reader;

    .line 110
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    check-cast v1, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :try_start_1
    move-object v2, v1

    check-cast v2, Ljava/io/BufferedReader;

    .local v2, "it":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 113
    .local v3, "$i$a$-use-DevMenuReactHost$injectDevServerSettings$serverIp$1":I
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    .end local v2    # "it":Ljava/io/BufferedReader;
    .end local v3    # "$i$a$-use-DevMenuReactHost$injectDevServerSettings$serverIp$1":I
    const/4 v2, 0x0

    :try_start_2
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 110
    move-object v1, v4

    .line 116
    .local v1, "serverIp":Ljava/lang/String;
    new-instance v2, Lcom/facebook/react/devsupport/DevMenuReactSettings;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v2, p1, v1}, Lcom/facebook/react/devsupport/DevMenuReactSettings;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 118
    .local v2, "devMenuInternalReactSettings":Lcom/facebook/react/devsupport/DevMenuReactSettings;
    invoke-virtual {p2}, Lcom/facebook/react/runtime/ReactHostImpl;->getDevSupportManager()Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    move-result-object v3

    const-string v4, "<get-devSupportManager>(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    .local v3, "devSupportManager":Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 121
    .local v4, "devSupportManagerBaseClass":Ljava/lang/Class;
    nop

    .line 122
    nop

    .line 123
    const-string v5, "mDevSettings"

    .line 124
    nop

    .line 120
    invoke-static {v3, v4, v5, v2}, Lexpo/modules/devmenu/DevMenuUtilsKt;->setPrivateField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    const-string v5, "mDevServerHelper"

    .local v5, "field$iv":Ljava/lang/String;
    const/4 v6, 0x0

    .line 144
    .local v6, "$i$f$getPrivateFiled":I
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .local v7, "$this$getPrivateFiled_u24lambda_u241$iv":Ljava/lang/reflect/Field;
    const/4 v8, 0x0

    .line 145
    .local v8, "$i$a$-run-DevMenuUtilsKt$getPrivateFiled$1$iv":I
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 146
    invoke-virtual {v7, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_0

    check-cast v9, Lcom/facebook/react/devsupport/DevServerHelper;

    .line 144
    .end local v7    # "$this$getPrivateFiled_u24lambda_u241$iv":Ljava/lang/reflect/Field;
    .end local v8    # "$i$a$-run-DevMenuUtilsKt$getPrivateFiled$1$iv":I
    nop

    .line 147
    nop

    .line 127
    .end local v5    # "field$iv":Ljava/lang/String;
    .end local v6    # "$i$f$getPrivateFiled":I
    move-object v5, v9

    .line 129
    .local v5, "devServerHelper":Lcom/facebook/react/devsupport/DevServerHelper;
    nop

    .line 130
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 131
    const-string v7, "mSettings"

    .line 132
    nop

    .line 128
    invoke-static {v5, v6, v7, v2}, Lexpo/modules/devmenu/DevMenuUtilsKt;->setPrivateField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    const-string v6, "DevSettings was correctly injected."

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 146
    .local v5, "field$iv":Ljava/lang/String;
    .restart local v6    # "$i$f$getPrivateFiled":I
    .restart local v7    # "$this$getPrivateFiled_u24lambda_u241$iv":Ljava/lang/reflect/Field;
    .restart local v8    # "$i$a$-run-DevMenuUtilsKt$getPrivateFiled$1$iv":I
    :cond_0
    new-instance v9, Ljava/lang/NullPointerException;

    const-string v10, "null cannot be cast to non-null type com.facebook.react.devsupport.DevServerHelper"

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local p1    # "applicationContext":Landroid/content/Context;
    .end local p2    # "reactHost":Lcom/facebook/react/runtime/ReactHostImpl;
    throw v9
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 112
    .end local v1    # "serverIp":Ljava/lang/String;
    .end local v2    # "devMenuInternalReactSettings":Lcom/facebook/react/devsupport/DevMenuReactSettings;
    .end local v3    # "devSupportManager":Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
    .end local v4    # "devSupportManagerBaseClass":Ljava/lang/Class;
    .end local v5    # "field$iv":Ljava/lang/String;
    .end local v6    # "$i$f$getPrivateFiled":I
    .end local v7    # "$this$getPrivateFiled_u24lambda_u241$iv":Ljava/lang/reflect/Field;
    .end local v8    # "$i$a$-run-DevMenuUtilsKt$getPrivateFiled$1$iv":I
    .restart local p1    # "applicationContext":Landroid/content/Context;
    .restart local p2    # "reactHost":Lcom/facebook/react/runtime/ReactHostImpl;
    :catchall_0
    move-exception v2

    .end local p1    # "applicationContext":Landroid/content/Context;
    .end local p2    # "reactHost":Lcom/facebook/react/runtime/ReactHostImpl;
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .restart local p1    # "applicationContext":Landroid/content/Context;
    .restart local p2    # "reactHost":Lcom/facebook/react/runtime/ReactHostImpl;
    :catchall_1
    move-exception v3

    :try_start_4
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local p1    # "applicationContext":Landroid/content/Context;
    .end local p2    # "reactHost":Lcom/facebook/react/runtime/ReactHostImpl;
    throw v3
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 138
    .restart local p1    # "applicationContext":Landroid/content/Context;
    .restart local p2    # "reactHost":Lcom/facebook/react/runtime/ReactHostImpl;
    :catch_0
    move-exception v1

    .line 139
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Couldn\'t inject DevSettings object."

    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v0, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 136
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 137
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v2, "Couldn\'t find `dev-menu-packager-host` file."

    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v0, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_0
    return-void
.end method


# virtual methods
.method public final create(Landroid/app/Application;Z)Lcom/facebook/react/ReactHost;
    .locals 16
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "useDeveloperSupport"    # Z

    move-object/from16 v0, p1

    const-string v1, "application"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    const-string v1, "EXDevMenuApp.android.js"

    .line 38
    .local v1, "jsBundleAssetPath":Ljava/lang/String;
    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "assets://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/facebook/react/bridge/JSBundleLoader;->createAssetLoader(Landroid/content/Context;Ljava/lang/String;Z)Lcom/facebook/react/bridge/JSBundleLoader;

    move-result-object v7

    .line 37
    nop

    .line 39
    .local v7, "jsBundleLoader":Lcom/facebook/react/bridge/JSBundleLoader;
    invoke-direct/range {p0 .. p1}, Lexpo/modules/devmenu/DevMenuReactHost;->createJSEngineResolutionAlgorithm(Landroid/app/Application;)Lcom/facebook/react/JSEngineResolutionAlgorithm;

    move-result-object v2

    .line 40
    .local v2, "jsResolutionAlgorithm":Lcom/facebook/react/JSEngineResolutionAlgorithm;
    sget-object v3, Lcom/facebook/react/JSEngineResolutionAlgorithm;->JSC:Lcom/facebook/react/JSEngineResolutionAlgorithm;

    if-ne v2, v3, :cond_0

    .line 41
    new-instance v3, Lcom/facebook/react/runtime/JSCInstance;

    invoke-direct {v3}, Lcom/facebook/react/runtime/JSCInstance;-><init>()V

    check-cast v3, Lcom/facebook/react/runtime/JSRuntimeFactory;

    move-object v9, v3

    goto :goto_0

    .line 43
    :cond_0
    new-instance v3, Lcom/facebook/react/runtime/hermes/HermesInstance;

    invoke-direct {v3}, Lcom/facebook/react/runtime/hermes/HermesInstance;-><init>()V

    check-cast v3, Lcom/facebook/react/runtime/JSRuntimeFactory;

    move-object v9, v3

    .line 40
    :goto_0
    nop

    .line 45
    .local v9, "jsRuntimeFactory":Lcom/facebook/react/runtime/JSRuntimeFactory;
    const-string v3, "index"

    .line 47
    .local v3, "jsMainModuleName":Ljava/lang/String;
    new-instance v4, Lcom/facebook/react/defaults/DefaultReactHostDelegate;

    .line 48
    nop

    .line 49
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 50
    invoke-direct/range {p0 .. p0}, Lexpo/modules/devmenu/DevMenuReactHost;->getPackages()Ljava/util/List;

    move-result-object v8

    .line 51
    nop

    .line 47
    nop

    .line 52
    new-instance v5, Lcom/facebook/react/defaults/DefaultTurboModuleManagerDelegate$Builder;

    invoke-direct {v5}, Lcom/facebook/react/defaults/DefaultTurboModuleManagerDelegate$Builder;-><init>()V

    move-object v13, v5

    check-cast v13, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;

    .line 47
    const/16 v14, 0x70

    const/4 v15, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, v4

    move-object v6, v3

    invoke-direct/range {v5 .. v15}, Lcom/facebook/react/defaults/DefaultReactHostDelegate;-><init>(Ljava/lang/String;Lcom/facebook/react/bridge/JSBundleLoader;Ljava/util/List;Lcom/facebook/react/runtime/JSRuntimeFactory;Lcom/facebook/react/runtime/BindingsInstaller;Lcom/facebook/react/fabric/ReactNativeConfig;Lkotlin/jvm/functions/Function1;Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 46
    nop

    .line 54
    .local v4, "defaultReactHostDelegate":Lcom/facebook/react/defaults/DefaultReactHostDelegate;
    new-instance v13, Lcom/facebook/react/fabric/ComponentFactory;

    invoke-direct {v13}, Lcom/facebook/react/fabric/ComponentFactory;-><init>()V

    .line 55
    .local v13, "componentFactory":Lcom/facebook/react/fabric/ComponentFactory;
    invoke-static {v13}, Lcom/facebook/react/defaults/DefaultComponentsRegistry;->register(Lcom/facebook/react/fabric/ComponentFactory;)V

    .line 56
    new-instance v5, Lcom/facebook/react/runtime/ReactHostImpl;

    .line 57
    move-object v11, v0

    check-cast v11, Landroid/content/Context;

    .line 58
    move-object v12, v4

    check-cast v12, Lcom/facebook/react/runtime/ReactHostDelegate;

    .line 59
    nop

    .line 60
    nop

    .line 61
    nop

    .line 56
    move-object v10, v5

    move/from16 v14, p2

    move/from16 v15, p2

    invoke-direct/range {v10 .. v15}, Lcom/facebook/react/runtime/ReactHostImpl;-><init>(Landroid/content/Context;Lcom/facebook/react/runtime/ReactHostDelegate;Lcom/facebook/react/fabric/ComponentFactory;ZZ)V

    .line 63
    .local v5, "reactHost":Lcom/facebook/react/runtime/ReactHostImpl;
    if-eqz p2, :cond_1

    .line 64
    invoke-virtual/range {p1 .. p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v8, "getApplicationContext(...)"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v8, p0

    invoke-direct {v8, v6, v5}, Lexpo/modules/devmenu/DevMenuReactHost;->injectDevServerSettings(Landroid/content/Context;Lcom/facebook/react/runtime/ReactHostImpl;)V

    goto :goto_1

    .line 63
    :cond_1
    move-object/from16 v8, p0

    .line 66
    :goto_1
    move-object v6, v5

    check-cast v6, Lcom/facebook/react/ReactHost;

    return-object v6
.end method
