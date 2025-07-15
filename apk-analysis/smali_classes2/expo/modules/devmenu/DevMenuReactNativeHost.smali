.class public final Lexpo/modules/devmenu/DevMenuReactNativeHost;
.super Lcom/facebook/react/defaults/DefaultReactNativeHost;
.source "DevMenuReactNativeHost.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDevMenuReactNativeHost.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DevMenuReactNativeHost.kt\nexpo/modules/devmenu/DevMenuReactNativeHost\n+ 2 DevMenuUtils.kt\nexpo/modules/devmenu/DevMenuUtilsKt\n*L\n1#1,109:1\n34#2,4:110\n*S KotlinDebug\n*F\n+ 1 DevMenuReactNativeHost.kt\nexpo/modules/devmenu/DevMenuReactNativeHost\n*L\n90#1:110,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0008H\u0014J\u0008\u0010\t\u001a\u00020\nH\u0014J\u0008\u0010\u000b\u001a\u00020\nH\u0014J\u0008\u0010\u000c\u001a\u00020\rH\u0014J\u000e\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fH\u0014J\u0008\u0010\u0011\u001a\u00020\u0005H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lexpo/modules/devmenu/DevMenuReactNativeHost;",
        "Lcom/facebook/react/defaults/DefaultReactNativeHost;",
        "application",
        "Landroid/app/Application;",
        "useDeveloperSupport",
        "",
        "(Landroid/app/Application;Z)V",
        "createReactInstanceManager",
        "Lcom/facebook/react/ReactInstanceManager;",
        "getBundleAssetName",
        "",
        "getJSMainModuleName",
        "getJavaScriptExecutorFactory",
        "Lcom/facebook/react/bridge/JavaScriptExecutorFactory;",
        "getPackages",
        "",
        "Lcom/facebook/react/ReactPackage;",
        "getUseDeveloperSupport",
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
.field private final useDeveloperSupport:Z


# direct methods
.method public constructor <init>(Landroid/app/Application;Z)V
    .locals 1
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "useDeveloperSupport"    # Z

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p1}, Lcom/facebook/react/defaults/DefaultReactNativeHost;-><init>(Landroid/app/Application;)V

    .line 26
    iput-boolean p2, p0, Lexpo/modules/devmenu/DevMenuReactNativeHost;->useDeveloperSupport:Z

    return-void
.end method


# virtual methods
.method protected createReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;
    .locals 13

    .line 68
    const-string v0, "ExpoDevMenu"

    invoke-super {p0}, Lcom/facebook/react/defaults/DefaultReactNativeHost;->createReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v1

    .line 70
    .local v1, "reactInstanceManager":Lcom/facebook/react/ReactInstanceManager;
    iget-boolean v2, p0, Lexpo/modules/devmenu/DevMenuReactNativeHost;->useDeveloperSupport:Z

    if-eqz v2, :cond_1

    .line 71
    nop

    .line 73
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    .line 74
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-super {p0}, Lcom/facebook/react/defaults/DefaultReactNativeHost;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "dev-menu-packager-host"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    check-cast v3, Ljava/io/Reader;

    .line 73
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    check-cast v2, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :try_start_1
    move-object v3, v2

    check-cast v3, Ljava/io/BufferedReader;

    .local v3, "it":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 76
    .local v4, "$i$a$-use-DevMenuReactNativeHost$createReactInstanceManager$serverIp$1":I
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    .end local v3    # "it":Ljava/io/BufferedReader;
    .end local v4    # "$i$a$-use-DevMenuReactNativeHost$createReactInstanceManager$serverIp$1":I
    const/4 v3, 0x0

    :try_start_2
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 73
    move-object v2, v5

    .line 79
    .local v2, "serverIp":Ljava/lang/String;
    new-instance v3, Lcom/facebook/react/devsupport/DevMenuReactSettings;

    invoke-super {p0}, Lcom/facebook/react/defaults/DefaultReactNativeHost;->getApplication()Landroid/app/Application;

    move-result-object v4

    const-string v5, "getApplication(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/content/Context;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v3, v4, v2}, Lcom/facebook/react/devsupport/DevMenuReactSettings;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 81
    .local v3, "devMenuInternalReactSettings":Lcom/facebook/react/devsupport/DevMenuReactSettings;
    invoke-virtual {v1}, Lcom/facebook/react/ReactInstanceManager;->getDevSupportManager()Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    move-result-object v4

    .line 82
    .local v4, "devSupportManager":Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 84
    .local v5, "devSupportManagerBaseClass":Ljava/lang/Class;
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 85
    nop

    .line 86
    const-string v6, "mDevSettings"

    .line 87
    nop

    .line 83
    invoke-static {v4, v5, v6, v3}, Lexpo/modules/devmenu/DevMenuUtilsKt;->setPrivateField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    const-string v6, "mDevServerHelper"

    .local v6, "field$iv":Ljava/lang/String;
    move-object v7, v4

    .local v7, "obj$iv":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 110
    .local v8, "$i$f$getPrivateFiled":I
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .local v9, "$this$getPrivateFiled_u24lambda_u241$iv":Ljava/lang/reflect/Field;
    const/4 v10, 0x0

    .line 111
    .local v10, "$i$a$-run-DevMenuUtilsKt$getPrivateFiled$1$iv":I
    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 112
    invoke-virtual {v9, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_0

    check-cast v11, Lcom/facebook/react/devsupport/DevServerHelper;

    .line 110
    .end local v9    # "$this$getPrivateFiled_u24lambda_u241$iv":Ljava/lang/reflect/Field;
    .end local v10    # "$i$a$-run-DevMenuUtilsKt$getPrivateFiled$1$iv":I
    nop

    .line 113
    nop

    .line 90
    .end local v6    # "field$iv":Ljava/lang/String;
    .end local v7    # "obj$iv":Ljava/lang/Object;
    .end local v8    # "$i$f$getPrivateFiled":I
    move-object v6, v11

    .line 92
    .local v6, "devServerHelper":Lcom/facebook/react/devsupport/DevServerHelper;
    nop

    .line 93
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 94
    const-string v8, "mSettings"

    .line 95
    nop

    .line 91
    invoke-static {v6, v7, v8, v3}, Lexpo/modules/devmenu/DevMenuUtilsKt;->setPrivateField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 98
    const-string v7, "DevSettings was correctly injected."

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    .local v6, "field$iv":Ljava/lang/String;
    .restart local v7    # "obj$iv":Ljava/lang/Object;
    .restart local v8    # "$i$f$getPrivateFiled":I
    .restart local v9    # "$this$getPrivateFiled_u24lambda_u241$iv":Ljava/lang/reflect/Field;
    .restart local v10    # "$i$a$-run-DevMenuUtilsKt$getPrivateFiled$1$iv":I
    :cond_0
    new-instance v11, Ljava/lang/NullPointerException;

    const-string v12, "null cannot be cast to non-null type com.facebook.react.devsupport.DevServerHelper"

    invoke-direct {v11, v12}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v1    # "reactInstanceManager":Lcom/facebook/react/ReactInstanceManager;
    throw v11
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 75
    .end local v2    # "serverIp":Ljava/lang/String;
    .end local v3    # "devMenuInternalReactSettings":Lcom/facebook/react/devsupport/DevMenuReactSettings;
    .end local v4    # "devSupportManager":Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
    .end local v5    # "devSupportManagerBaseClass":Ljava/lang/Class;
    .end local v6    # "field$iv":Ljava/lang/String;
    .end local v7    # "obj$iv":Ljava/lang/Object;
    .end local v8    # "$i$f$getPrivateFiled":I
    .end local v9    # "$this$getPrivateFiled_u24lambda_u241$iv":Ljava/lang/reflect/Field;
    .end local v10    # "$i$a$-run-DevMenuUtilsKt$getPrivateFiled$1$iv":I
    .restart local v1    # "reactInstanceManager":Lcom/facebook/react/ReactInstanceManager;
    :catchall_0
    move-exception v3

    .end local v1    # "reactInstanceManager":Lcom/facebook/react/ReactInstanceManager;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .restart local v1    # "reactInstanceManager":Lcom/facebook/react/ReactInstanceManager;
    :catchall_1
    move-exception v4

    :try_start_4
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v1    # "reactInstanceManager":Lcom/facebook/react/ReactInstanceManager;
    throw v4
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 101
    .restart local v1    # "reactInstanceManager":Lcom/facebook/react/ReactInstanceManager;
    :catch_0
    move-exception v2

    .line 102
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Couldn\'t inject DevSettings object."

    move-object v4, v2

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v0, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 99
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 100
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v3, "Couldn\'t find `dev-menu-packager-host` file."

    move-object v4, v2

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v0, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    :goto_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v1
.end method

.method protected getBundleAssetName()Ljava/lang/String;
    .locals 1

    .line 59
    const-string v0, "EXDevMenuApp.android.js"

    return-object v0
.end method

.method protected getJSMainModuleName()Ljava/lang/String;
    .locals 1

    .line 61
    const-string v0, "index"

    return-object v0
.end method

.method protected getJavaScriptExecutorFactory()Lcom/facebook/react/bridge/JavaScriptExecutorFactory;
    .locals 2

    .line 64
    invoke-virtual {p0}, Lexpo/modules/devmenu/DevMenuReactNativeHost;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "getApplication(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lexpo/modules/devmenu/react/DevMenuHostHelperKt;->createNonDebuggableJavaScriptExecutorFactory(Landroid/app/Application;)Lcom/facebook/react/bridge/JavaScriptExecutorFactory;

    move-result-object v0

    return-object v0
.end method

.method protected getPackages()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/react/ReactPackage;",
            ">;"
        }
    .end annotation

    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/react/ReactPackage;

    new-instance v1, Lcom/facebook/react/shell/MainReactPackage;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/facebook/react/shell/MainReactPackage;-><init>(Lcom/facebook/react/shell/MainPackageConfig;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 32
    new-instance v1, Lexpo/modules/adapters/react/ModuleRegistryAdapter;

    .line 33
    new-instance v3, Lexpo/modules/adapters/react/ReactModuleRegistryProvider;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Lexpo/modules/adapters/react/ReactModuleRegistryProvider;-><init>(Ljava/util/List;)V

    .line 34
    new-instance v4, Lexpo/modules/devmenu/DevMenuReactNativeHost$getPackages$packages$1;

    invoke-direct {v4}, Lexpo/modules/devmenu/DevMenuReactNativeHost$getPackages$packages$1;-><init>()V

    check-cast v4, Lexpo/modules/kotlin/ModulesProvider;

    .line 32
    invoke-direct {v1, v3, v4}, Lexpo/modules/adapters/react/ModuleRegistryAdapter;-><init>(Lexpo/modules/adapters/react/ReactModuleRegistryProvider;Lexpo/modules/kotlin/ModulesProvider;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 31
    nop

    .line 43
    new-instance v1, Lexpo/modules/devmenu/DevMenuPackage;

    invoke-direct {v1}, Lexpo/modules/devmenu/DevMenuPackage;-><init>()V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 31
    nop

    .line 30
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 46
    .local v0, "packages":Ljava/util/List;
    nop

    .line 47
    :try_start_0
    const-string v1, "expo.modules.devlauncher.DevLauncherPackage"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 48
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

    .line 49
    .local v2, "pkg":Lcom/facebook/react/ReactPackage;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    .end local v1    # "devLauncherPackage":Ljava/lang/Class;
    .end local v2    # "pkg":Lcom/facebook/react/ReactPackage;
    :catch_0
    move-exception v1

    .line 54
    :goto_0
    return-object v0
.end method

.method public getUseDeveloperSupport()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lexpo/modules/devmenu/DevMenuReactNativeHost;->useDeveloperSupport:Z

    return v0
.end method
