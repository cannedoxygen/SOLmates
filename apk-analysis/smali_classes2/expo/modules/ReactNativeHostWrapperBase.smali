.class public Lexpo/modules/ReactNativeHostWrapperBase;
.super Lcom/facebook/react/defaults/DefaultReactNativeHost;
.source "ReactNativeHostWrapperBase.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReactNativeHostWrapperBase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReactNativeHostWrapperBase.kt\nexpo/modules/ReactNativeHostWrapperBase\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,108:1\n1360#2:109\n1446#2,5:110\n1855#2,2:115\n1855#2,2:117\n*S KotlinDebug\n*F\n+ 1 ReactNativeHostWrapperBase.kt\nexpo/modules/ReactNativeHostWrapperBase\n*L\n20#1:109\n20#1:110,5\n25#1:115,2\n31#1:117,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0008\u0016\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0013\u001a\u00020\u0014H\u0014J\n\u0010\u0015\u001a\u0004\u0018\u00010\u000bH\u0016J\n\u0010\u0016\u001a\u0004\u0018\u00010\u000bH\u0016J\u0008\u0010\u0017\u001a\u00020\u000bH\u0016J\n\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0014J\u000e\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001bH\u0016J\u0008\u0010\u001d\u001a\u00020\u001eH\u0016J\u0010\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0014H\u0002J\u001d\u0010\"\u001a\u0002H#\"\u0004\u0008\u0000\u0010#2\u0006\u0010$\u001a\u00020\u000bH\u0000\u00a2\u0006\u0004\u0008%\u0010&R\u0014\u0010\u0004\u001a\u00020\u0005X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001f\u0010\r\u001a\u0010\u0012\u000c\u0012\n \u0010*\u0004\u0018\u00010\u000f0\u000f0\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\'"
    }
    d2 = {
        "Lexpo/modules/ReactNativeHostWrapperBase;",
        "Lcom/facebook/react/defaults/DefaultReactNativeHost;",
        "application",
        "Landroid/app/Application;",
        "host",
        "Lcom/facebook/react/ReactNativeHost;",
        "(Landroid/app/Application;Lcom/facebook/react/ReactNativeHost;)V",
        "getHost",
        "()Lcom/facebook/react/ReactNativeHost;",
        "methodMap",
        "Landroidx/collection/ArrayMap;",
        "",
        "Ljava/lang/reflect/Method;",
        "reactNativeHostHandlers",
        "",
        "Lexpo/modules/core/interfaces/ReactNativeHostHandler;",
        "kotlin.jvm.PlatformType",
        "getReactNativeHostHandlers",
        "()Ljava/util/List;",
        "createReactInstanceManager",
        "Lcom/facebook/react/ReactInstanceManager;",
        "getBundleAssetName",
        "getJSBundleFile",
        "getJSMainModuleName",
        "getJavaScriptExecutorFactory",
        "Lcom/facebook/react/bridge/JavaScriptExecutorFactory;",
        "getPackages",
        "",
        "Lcom/facebook/react/ReactPackage;",
        "getUseDeveloperSupport",
        "",
        "injectHostReactInstanceManager",
        "",
        "reactInstanceManager",
        "invokeDelegateMethod",
        "T",
        "name",
        "invokeDelegateMethod$expo_debug",
        "(Ljava/lang/String;)Ljava/lang/Object;",
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
.field private final host:Lcom/facebook/react/ReactNativeHost;

.field private final methodMap:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private final reactNativeHostHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lexpo/modules/core/interfaces/ReactNativeHostHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;Lcom/facebook/react/ReactNativeHost;)V
    .locals 11
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "host"    # Lcom/facebook/react/ReactNativeHost;

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "host"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1}, Lcom/facebook/react/defaults/DefaultReactNativeHost;-><init>(Landroid/app/Application;)V

    .line 16
    iput-object p2, p0, Lexpo/modules/ReactNativeHostWrapperBase;->host:Lcom/facebook/react/ReactNativeHost;

    .line 20
    nop

    .line 19
    sget-object v0, Lexpo/modules/ExpoModulesPackage;->Companion:Lexpo/modules/ExpoModulesPackage$Companion;

    invoke-virtual {v0}, Lexpo/modules/ExpoModulesPackage$Companion;->getPackageList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 20
    nop

    .local v0, "$this$flatMap$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 109
    .local v1, "$i$f$flatMap":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$flatMapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 110
    .local v4, "$i$f$flatMapTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 111
    .local v6, "element$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lexpo/modules/core/interfaces/Package;

    .local v7, "it":Lexpo/modules/core/interfaces/Package;
    const/4 v8, 0x0

    .line 20
    .local v8, "$i$a$-flatMap-ReactNativeHostWrapperBase$reactNativeHostHandlers$1":I
    move-object v9, p1

    check-cast v9, Landroid/content/Context;

    invoke-interface {v7, v9}, Lexpo/modules/core/interfaces/Package;->createReactNativeHostHandlers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v9

    const-string v10, "createReactNativeHostHandlers(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    .end local v7    # "it":Lexpo/modules/core/interfaces/Package;
    .end local v8    # "$i$a$-flatMap-ReactNativeHostWrapperBase$reactNativeHostHandlers$1":I
    move-object v7, v9

    check-cast v7, Ljava/lang/Iterable;

    .line 112
    .local v7, "list$iv$iv":Ljava/lang/Iterable;
    invoke-static {v2, v7}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 114
    .end local v6    # "element$iv$iv":Ljava/lang/Object;
    .end local v7    # "list$iv$iv":Ljava/lang/Iterable;
    :cond_0
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$flatMapTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$flatMapTo":I
    check-cast v2, Ljava/util/List;

    .line 109
    nop

    .line 20
    .end local v0    # "$this$flatMap$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$flatMap":I
    iput-object v2, p0, Lexpo/modules/ReactNativeHostWrapperBase;->reactNativeHostHandlers:Ljava/util/List;

    .line 21
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lexpo/modules/ReactNativeHostWrapperBase;->methodMap:Landroidx/collection/ArrayMap;

    .line 14
    return-void
.end method

.method private final injectHostReactInstanceManager(Lcom/facebook/react/ReactInstanceManager;)V
    .locals 2
    .param p1, "reactInstanceManager"    # Lcom/facebook/react/ReactInstanceManager;

    const-class v0, Lcom/facebook/react/ReactNativeHost;

    .line 101
    const-string v1, "mReactInstanceManager"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 102
    .local v0, "mReactInstanceManagerField":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 103
    iget-object v1, p0, Lexpo/modules/ReactNativeHostWrapperBase;->host:Lcom/facebook/react/ReactNativeHost;

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 104
    return-void
.end method


# virtual methods
.method protected createReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;
    .locals 9

    .line 24
    invoke-virtual {p0}, Lexpo/modules/ReactNativeHostWrapperBase;->getUseDeveloperSupport()Z

    move-result v0

    .line 25
    .local v0, "developerSupport":Z
    iget-object v1, p0, Lexpo/modules/ReactNativeHostWrapperBase;->reactNativeHostHandlers:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 115
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

    .line 26
    .local v6, "$i$a$-forEach-ReactNativeHostWrapperBase$createReactInstanceManager$1":I
    invoke-interface {v5, v0}, Lexpo/modules/core/interfaces/ReactNativeHostHandler;->onWillCreateReactInstance(Z)V

    .line 27
    nop

    .line 115
    .end local v5    # "handler":Lexpo/modules/core/interfaces/ReactNativeHostHandler;
    .end local v6    # "$i$a$-forEach-ReactNativeHostWrapperBase$createReactInstanceManager$1":I
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 116
    :cond_0
    nop

    .line 29
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    invoke-super {p0}, Lcom/facebook/react/defaults/DefaultReactNativeHost;->createReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v1

    .line 31
    .local v1, "result":Lcom/facebook/react/ReactInstanceManager;
    iget-object v2, p0, Lexpo/modules/ReactNativeHostWrapperBase;->reactNativeHostHandlers:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 117
    .local v3, "$i$f$forEach":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Lexpo/modules/core/interfaces/ReactNativeHostHandler;

    .local v6, "handler":Lexpo/modules/core/interfaces/ReactNativeHostHandler;
    const/4 v7, 0x0

    .line 32
    .local v7, "$i$a$-forEach-ReactNativeHostWrapperBase$createReactInstanceManager$2":I
    invoke-virtual {v1}, Lcom/facebook/react/ReactInstanceManager;->getDevSupportManager()Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    move-result-object v8

    invoke-interface {v6, v8}, Lexpo/modules/core/interfaces/ReactNativeHostHandler;->onDidCreateDevSupportManager(Lcom/facebook/react/devsupport/interfaces/DevSupportManager;)V

    .line 33
    nop

    .line 117
    .end local v6    # "handler":Lexpo/modules/core/interfaces/ReactNativeHostHandler;
    .end local v7    # "$i$a$-forEach-ReactNativeHostWrapperBase$createReactInstanceManager$2":I
    nop

    .end local v5    # "element$iv":Ljava/lang/Object;
    goto :goto_1

    .line 118
    :cond_1
    nop

    .line 35
    .end local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$forEach":I
    new-instance v2, Lexpo/modules/ReactNativeHostWrapperBase$createReactInstanceManager$3;

    invoke-direct {v2, p0, v0}, Lexpo/modules/ReactNativeHostWrapperBase$createReactInstanceManager$3;-><init>(Lexpo/modules/ReactNativeHostWrapperBase;Z)V

    check-cast v2, Lcom/facebook/react/ReactInstanceEventListener;

    invoke-virtual {v1, v2}, Lcom/facebook/react/ReactInstanceManager;->addReactInstanceEventListener(Lcom/facebook/react/ReactInstanceEventListener;)V

    .line 43
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lexpo/modules/ReactNativeHostWrapperBase;->injectHostReactInstanceManager(Lcom/facebook/react/ReactInstanceManager;)V

    .line 45
    return-object v1
.end method

.method public getBundleAssetName()Ljava/lang/String;
    .locals 2

    .line 65
    iget-object v0, p0, Lexpo/modules/ReactNativeHostWrapperBase;->reactNativeHostHandlers:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 66
    new-instance v1, Lexpo/modules/ReactNativeHostWrapperBase$getBundleAssetName$1;

    invoke-direct {v1, p0}, Lexpo/modules/ReactNativeHostWrapperBase$getBundleAssetName$1;-><init>(Lexpo/modules/ReactNativeHostWrapperBase;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 67
    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->firstOrNull(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 65
    if-nez v0, :cond_0

    .line 67
    const-string v0, "getBundleAssetName"

    invoke-virtual {p0, v0}, Lexpo/modules/ReactNativeHostWrapperBase;->invokeDelegateMethod$expo_debug(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 65
    :cond_0
    return-object v0
.end method

.method protected final getHost()Lcom/facebook/react/ReactNativeHost;
    .locals 1

    .line 16
    iget-object v0, p0, Lexpo/modules/ReactNativeHostWrapperBase;->host:Lcom/facebook/react/ReactNativeHost;

    return-object v0
.end method

.method public getJSBundleFile()Ljava/lang/String;
    .locals 2

    .line 59
    iget-object v0, p0, Lexpo/modules/ReactNativeHostWrapperBase;->reactNativeHostHandlers:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 60
    new-instance v1, Lexpo/modules/ReactNativeHostWrapperBase$getJSBundleFile$1;

    invoke-direct {v1, p0}, Lexpo/modules/ReactNativeHostWrapperBase$getJSBundleFile$1;-><init>(Lexpo/modules/ReactNativeHostWrapperBase;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 61
    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->firstOrNull(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 59
    if-nez v0, :cond_0

    .line 61
    const-string v0, "getJSBundleFile"

    invoke-virtual {p0, v0}, Lexpo/modules/ReactNativeHostWrapperBase;->invokeDelegateMethod$expo_debug(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 59
    :cond_0
    return-object v0
.end method

.method public getJSMainModuleName()Ljava/lang/String;
    .locals 1

    .line 55
    const-string v0, "getJSMainModuleName"

    invoke-virtual {p0, v0}, Lexpo/modules/ReactNativeHostWrapperBase;->invokeDelegateMethod$expo_debug(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected getJavaScriptExecutorFactory()Lcom/facebook/react/bridge/JavaScriptExecutorFactory;
    .locals 2

    .line 49
    iget-object v0, p0, Lexpo/modules/ReactNativeHostWrapperBase;->reactNativeHostHandlers:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 50
    sget-object v1, Lexpo/modules/ReactNativeHostWrapperBase$getJavaScriptExecutorFactory$1;->INSTANCE:Lexpo/modules/ReactNativeHostWrapperBase$getJavaScriptExecutorFactory$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 51
    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->firstOrNull(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/JavaScriptExecutorFactory;

    .line 49
    if-nez v0, :cond_0

    .line 51
    const-string v0, "getJavaScriptExecutorFactory"

    invoke-virtual {p0, v0}, Lexpo/modules/ReactNativeHostWrapperBase;->invokeDelegateMethod$expo_debug(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/JavaScriptExecutorFactory;

    .line 49
    :cond_0
    return-object v0
.end method

.method public getPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/react/ReactPackage;",
            ">;"
        }
    .end annotation

    .line 77
    const-string v0, "getPackages"

    invoke-virtual {p0, v0}, Lexpo/modules/ReactNativeHostWrapperBase;->invokeDelegateMethod$expo_debug(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final getReactNativeHostHandlers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lexpo/modules/core/interfaces/ReactNativeHostHandler;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lexpo/modules/ReactNativeHostWrapperBase;->reactNativeHostHandlers:Ljava/util/List;

    return-object v0
.end method

.method public getUseDeveloperSupport()Z
    .locals 2

    .line 71
    iget-object v0, p0, Lexpo/modules/ReactNativeHostWrapperBase;->reactNativeHostHandlers:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 72
    sget-object v1, Lexpo/modules/ReactNativeHostWrapperBase$getUseDeveloperSupport$1;->INSTANCE:Lexpo/modules/ReactNativeHostWrapperBase$getUseDeveloperSupport$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 73
    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->firstOrNull(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 71
    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lexpo/modules/ReactNativeHostWrapperBase;->host:Lcom/facebook/react/ReactNativeHost;

    invoke-virtual {v0}, Lcom/facebook/react/ReactNativeHost;->getUseDeveloperSupport()Z

    move-result v0

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public final invokeDelegateMethod$expo_debug(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lexpo/modules/ReactNativeHostWrapperBase;->methodMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 88
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 89
    const-class v2, Lcom/facebook/react/ReactNativeHost;

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v2, p1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 90
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 91
    iget-object v2, p0, Lexpo/modules/ReactNativeHostWrapperBase;->methodMap:Landroidx/collection/ArrayMap;

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lexpo/modules/ReactNativeHostWrapperBase;->host:Lcom/facebook/react/ReactNativeHost;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
