.class final Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;
.super Ljava/lang/Object;
.source "ExpoReactHostFactory.kt"

# interfaces
.implements Lcom/facebook/react/runtime/ReactHostDelegate;


# annotations
.annotation runtime Lcom/facebook/react/common/annotations/UnstableReactNativeAPI;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/ExpoReactHostFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExpoReactHostDelegate"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExpoReactHostFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExpoReactHostFactory.kt\nexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,127:1\n1855#2,2:128\n*S KotlinDebug\n*F\n+ 1 ExpoReactHostFactory.kt\nexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate\n*L\n76#1:128,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0003\u0018\u00002\u00020\u0001B;\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\rJ\u0008\u0010$\u001a\u00020\nH\u0016J\u0014\u0010%\u001a\u00020&2\n\u0010\'\u001a\u00060(j\u0002`)H\u0016R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u000f8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u00020\u00168VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0019\u001a\u00020\u001a8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001cR\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001e8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!R\u0014\u0010\u000b\u001a\u00020\u000cX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006*"
    }
    d2 = {
        "Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;",
        "Lcom/facebook/react/runtime/ReactHostDelegate;",
        "weakContext",
        "Ljava/lang/ref/WeakReference;",
        "Landroid/content/Context;",
        "reactNativeHostWrapper",
        "Lexpo/modules/ReactNativeHostWrapper;",
        "bindingsInstaller",
        "Lcom/facebook/react/runtime/BindingsInstaller;",
        "reactNativeConfig",
        "Lcom/facebook/react/fabric/ReactNativeConfig;",
        "turboModuleManagerDelegateBuilder",
        "Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;",
        "(Ljava/lang/ref/WeakReference;Lexpo/modules/ReactNativeHostWrapper;Lcom/facebook/react/runtime/BindingsInstaller;Lcom/facebook/react/fabric/ReactNativeConfig;Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;)V",
        "_jsBundleLoader",
        "Lcom/facebook/react/bridge/JSBundleLoader;",
        "getBindingsInstaller",
        "()Lcom/facebook/react/runtime/BindingsInstaller;",
        "jsBundleLoader",
        "getJsBundleLoader",
        "()Lcom/facebook/react/bridge/JSBundleLoader;",
        "jsMainModulePath",
        "",
        "getJsMainModulePath",
        "()Ljava/lang/String;",
        "jsRuntimeFactory",
        "Lcom/facebook/react/runtime/JSRuntimeFactory;",
        "getJsRuntimeFactory",
        "()Lcom/facebook/react/runtime/JSRuntimeFactory;",
        "reactPackages",
        "",
        "Lcom/facebook/react/ReactPackage;",
        "getReactPackages",
        "()Ljava/util/List;",
        "getTurboModuleManagerDelegateBuilder",
        "()Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;",
        "getReactNativeConfig",
        "handleInstanceException",
        "",
        "error",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "expo_debug"
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
.field private _jsBundleLoader:Lcom/facebook/react/bridge/JSBundleLoader;

.field private final bindingsInstaller:Lcom/facebook/react/runtime/BindingsInstaller;

.field private final reactNativeConfig:Lcom/facebook/react/fabric/ReactNativeConfig;

.field private final reactNativeHostWrapper:Lexpo/modules/ReactNativeHostWrapper;

.field private final turboModuleManagerDelegateBuilder:Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;

.field private final weakContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Lexpo/modules/ReactNativeHostWrapper;Lcom/facebook/react/runtime/BindingsInstaller;Lcom/facebook/react/fabric/ReactNativeConfig;Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;)V
    .locals 1
    .param p1, "weakContext"    # Ljava/lang/ref/WeakReference;
    .param p2, "reactNativeHostWrapper"    # Lexpo/modules/ReactNativeHostWrapper;
    .param p3, "bindingsInstaller"    # Lcom/facebook/react/runtime/BindingsInstaller;
    .param p4, "reactNativeConfig"    # Lcom/facebook/react/fabric/ReactNativeConfig;
    .param p5, "turboModuleManagerDelegateBuilder"    # Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;",
            "Lexpo/modules/ReactNativeHostWrapper;",
            "Lcom/facebook/react/runtime/BindingsInstaller;",
            "Lcom/facebook/react/fabric/ReactNativeConfig;",
            "Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;",
            ")V"
        }
    .end annotation

    const-string v0, "weakContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reactNativeHostWrapper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reactNativeConfig"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "turboModuleManagerDelegateBuilder"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->weakContext:Ljava/lang/ref/WeakReference;

    .line 33
    iput-object p2, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->reactNativeHostWrapper:Lexpo/modules/ReactNativeHostWrapper;

    .line 34
    iput-object p3, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->bindingsInstaller:Lcom/facebook/react/runtime/BindingsInstaller;

    .line 35
    iput-object p4, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->reactNativeConfig:Lcom/facebook/react/fabric/ReactNativeConfig;

    .line 36
    iput-object p5, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->turboModuleManagerDelegateBuilder:Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;

    .line 31
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/ref/WeakReference;Lexpo/modules/ReactNativeHostWrapper;Lcom/facebook/react/runtime/BindingsInstaller;Lcom/facebook/react/fabric/ReactNativeConfig;Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    .line 31
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 34
    const/4 p3, 0x0

    move-object v3, p3

    goto :goto_0

    .line 31
    :cond_0
    move-object v3, p3

    :goto_0
    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    .line 35
    sget-object p4, Lcom/facebook/react/fabric/ReactNativeConfig;->DEFAULT_CONFIG:Lcom/facebook/react/fabric/ReactNativeConfig;

    move-object v4, p4

    goto :goto_1

    .line 31
    :cond_1
    move-object v4, p4

    :goto_1
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    .line 37
    new-instance p3, Lcom/facebook/react/defaults/DefaultTurboModuleManagerDelegate$Builder;

    invoke-direct {p3}, Lcom/facebook/react/defaults/DefaultTurboModuleManagerDelegate$Builder;-><init>()V

    move-object p5, p3

    check-cast p5, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;

    move-object v5, p5

    goto :goto_2

    .line 31
    :cond_2
    move-object v5, p5

    :goto_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;-><init>(Ljava/lang/ref/WeakReference;Lexpo/modules/ReactNativeHostWrapper;Lcom/facebook/react/runtime/BindingsInstaller;Lcom/facebook/react/fabric/ReactNativeConfig;Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;)V

    .line 80
    return-void
.end method


# virtual methods
.method public getBindingsInstaller()Lcom/facebook/react/runtime/BindingsInstaller;
    .locals 1

    .line 34
    iget-object v0, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->bindingsInstaller:Lcom/facebook/react/runtime/BindingsInstaller;

    return-object v0
.end method

.method public getJsBundleLoader()Lcom/facebook/react/bridge/JSBundleLoader;
    .locals 10

    .line 44
    iget-object v0, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->_jsBundleLoader:Lcom/facebook/react/bridge/JSBundleLoader;

    .line 45
    .local v0, "backingJSBundleLoader":Lcom/facebook/react/bridge/JSBundleLoader;
    if-eqz v0, :cond_0

    .line 46
    return-object v0

    .line 48
    :cond_0
    iget-object v1, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->weakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v1, :cond_3

    .line 49
    .local v1, "context":Landroid/content/Context;
    iget-object v2, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->reactNativeHostWrapper:Lexpo/modules/ReactNativeHostWrapper;

    invoke-virtual {v2}, Lexpo/modules/ReactNativeHostWrapper;->getJSBundleFile()Ljava/lang/String;

    move-result-object v2

    const-string v3, "createAssetLoader(...)"

    const/4 v4, 0x1

    const-string v5, "assets://"

    if-eqz v2, :cond_2

    .local v2, "jsBundleFile":Ljava/lang/String;
    const/4 v6, 0x0

    .line 50
    .local v6, "$i$a$-let-ExpoReactHostFactory$ExpoReactHostDelegate$jsBundleLoader$1":I
    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v2, v5, v9, v7, v8}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 51
    invoke-static {v1, v2, v4}, Lcom/facebook/react/bridge/JSBundleLoader;->createAssetLoader(Landroid/content/Context;Ljava/lang/String;Z)Lcom/facebook/react/bridge/JSBundleLoader;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v4

    .line 53
    :cond_1
    invoke-static {v2}, Lcom/facebook/react/bridge/JSBundleLoader;->createFileLoader(Ljava/lang/String;)Lcom/facebook/react/bridge/JSBundleLoader;

    move-result-object v3

    const-string v4, "createFileLoader(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3

    .line 55
    .end local v2    # "jsBundleFile":Ljava/lang/String;
    .end local v6    # "$i$a$-let-ExpoReactHostFactory$ExpoReactHostDelegate$jsBundleLoader$1":I
    :cond_2
    iget-object v2, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->reactNativeHostWrapper:Lexpo/modules/ReactNativeHostWrapper;

    invoke-virtual {v2}, Lexpo/modules/ReactNativeHostWrapper;->getBundleAssetName()Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "jsBundleAssetPath":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v4}, Lcom/facebook/react/bridge/JSBundleLoader;->createAssetLoader(Landroid/content/Context;Ljava/lang/String;Z)Lcom/facebook/react/bridge/JSBundleLoader;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v4

    .line 48
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "jsBundleAssetPath":Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to get concrete Context"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getJsMainModulePath()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->reactNativeHostWrapper:Lexpo/modules/ReactNativeHostWrapper;

    invoke-virtual {v0}, Lexpo/modules/ReactNativeHostWrapper;->getJSMainModuleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJsRuntimeFactory()Lcom/facebook/react/runtime/JSRuntimeFactory;
    .locals 2

    .line 63
    iget-object v0, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->reactNativeHostWrapper:Lexpo/modules/ReactNativeHostWrapper;

    invoke-virtual {v0}, Lexpo/modules/ReactNativeHostWrapper;->getJSEngineResolutionAlgorithm()Lcom/facebook/react/JSEngineResolutionAlgorithm;

    move-result-object v0

    sget-object v1, Lcom/facebook/react/JSEngineResolutionAlgorithm;->HERMES:Lcom/facebook/react/JSEngineResolutionAlgorithm;

    if-ne v0, v1, :cond_0

    .line 64
    new-instance v0, Lcom/facebook/react/runtime/hermes/HermesInstance;

    invoke-direct {v0}, Lcom/facebook/react/runtime/hermes/HermesInstance;-><init>()V

    check-cast v0, Lcom/facebook/react/runtime/JSRuntimeFactory;

    goto :goto_0

    .line 66
    :cond_0
    new-instance v0, Lcom/facebook/react/runtime/JSCInstance;

    invoke-direct {v0}, Lcom/facebook/react/runtime/JSCInstance;-><init>()V

    check-cast v0, Lcom/facebook/react/runtime/JSRuntimeFactory;

    .line 67
    :goto_0
    return-object v0
.end method

.method public getReactNativeConfig()Lcom/facebook/react/fabric/ReactNativeConfig;
    .locals 1

    .line 72
    iget-object v0, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->reactNativeConfig:Lcom/facebook/react/fabric/ReactNativeConfig;

    return-object v0
.end method

.method public getReactPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/react/ReactPackage;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->reactNativeHostWrapper:Lexpo/modules/ReactNativeHostWrapper;

    invoke-virtual {v0}, Lexpo/modules/ReactNativeHostWrapper;->getPackages()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTurboModuleManagerDelegateBuilder()Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;
    .locals 1

    .line 36
    iget-object v0, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->turboModuleManagerDelegateBuilder:Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;

    return-object v0
.end method

.method public handleInstanceException(Ljava/lang/Exception;)V
    .locals 7
    .param p1, "error"    # Ljava/lang/Exception;

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->reactNativeHostWrapper:Lexpo/modules/ReactNativeHostWrapper;

    invoke-virtual {v0}, Lexpo/modules/ReactNativeHostWrapper;->getUseDeveloperSupport()Z

    move-result v0

    .line 76
    .local v0, "useDeveloperSupport":Z
    iget-object v1, p0, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;->reactNativeHostWrapper:Lexpo/modules/ReactNativeHostWrapper;

    invoke-virtual {v1}, Lexpo/modules/ReactNativeHostWrapper;->getReactNativeHostHandlers()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 128
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lexpo/modules/core/interfaces/ReactNativeHostHandler;

    .local v5, "handler":Lexpo/modules/core/interfaces/ReactNativeHostHandler;
    const/4 v6, 0x0

    .line 77
    .local v6, "$i$a$-forEach-ExpoReactHostFactory$ExpoReactHostDelegate$handleInstanceException$1":I
    invoke-interface {v5, v0, p1}, Lexpo/modules/core/interfaces/ReactNativeHostHandler;->onReactInstanceException(ZLjava/lang/Exception;)V

    .line 78
    nop

    .line 128
    .end local v5    # "handler":Lexpo/modules/core/interfaces/ReactNativeHostHandler;
    .end local v6    # "$i$a$-forEach-ExpoReactHostFactory$ExpoReactHostDelegate$handleInstanceException$1":I
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 129
    :cond_0
    nop

    .line 79
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    return-void
.end method
