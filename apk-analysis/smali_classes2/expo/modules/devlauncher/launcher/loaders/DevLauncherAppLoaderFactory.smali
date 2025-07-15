.class public final Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;
.super Ljava/lang/Object;
.source "DevLauncherAppLoaderFactory.kt"

# interfaces
.implements Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent;
.implements Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactoryInterface;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDevLauncherAppLoaderFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DevLauncherAppLoaderFactory.kt\nexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 3 DevLauncherKoinComponent.kt\nexpo/modules/devlauncher/koin/DevLauncherKoinComponentKt\n*L\n1#1,89:1\n82#1,5:126\n82#1,5:131\n56#2,6:90\n56#2,6:96\n56#2,6:114\n56#2,6:120\n14#3,12:102\n*S KotlinDebug\n*F\n+ 1 DevLauncherAppLoaderFactory.kt\nexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory\n*L\n77#1:126,5\n79#1:131,5\n24#1:90,6\n25#1:96,6\n27#1:114,6\n28#1:120,6\n26#1:102,12\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\"\u0010#\u001a\u0002H$\"\u0004\u0008\u0000\u0010$2\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u0002H$0&H\u0082\u0008\u00a2\u0006\u0002\u0010\'J&\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020+2\u0006\u0010-\u001a\u00020.H\u0096@\u00a2\u0006\u0002\u0010/J\n\u00100\u001a\u0004\u0018\u00010\u001cH\u0016J\u0008\u00101\u001a\u00020\u001aH\u0016R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\t\u001a\u0004\u0008\u000c\u0010\rR\u001b\u0010\u000f\u001a\u00020\u00108BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\t\u001a\u0004\u0008\u0011\u0010\u0012R\u001b\u0010\u0014\u001a\u00020\u00158BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\t\u001a\u0004\u0008\u0016\u0010\u0017R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u001d\u001a\u0004\u0018\u00010\u001e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008!\u0010\t\u001a\u0004\u0008\u001f\u0010 R\u000e\u0010\"\u001a\u00020\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00062"
    }
    d2 = {
        "Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;",
        "Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent;",
        "Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactoryInterface;",
        "()V",
        "appHost",
        "Lexpo/interfaces/devmenu/ReactHostWrapper;",
        "getAppHost",
        "()Lexpo/interfaces/devmenu/ReactHostWrapper;",
        "appHost$delegate",
        "Lkotlin/Lazy;",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "context$delegate",
        "controller",
        "Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;",
        "getController",
        "()Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;",
        "controller$delegate",
        "installationIDHelper",
        "Lexpo/modules/devlauncher/helpers/DevLauncherInstallationIDHelper;",
        "getInstallationIDHelper",
        "()Lexpo/modules/devlauncher/helpers/DevLauncherInstallationIDHelper;",
        "installationIDHelper$delegate",
        "instanceWasCreated",
        "",
        "manifest",
        "Lexpo/modules/manifests/core/Manifest;",
        "updatesInterface",
        "Lexpo/modules/updatesinterface/UpdatesInterface;",
        "getUpdatesInterface",
        "()Lexpo/modules/updatesinterface/UpdatesInterface;",
        "updatesInterface$delegate",
        "useDeveloperSupport",
        "checkIfInstanceWasCreated",
        "T",
        "block",
        "Lkotlin/Function0;",
        "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "createAppLoader",
        "Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;",
        "url",
        "Landroid/net/Uri;",
        "projectUrl",
        "manifestParser",
        "Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser;",
        "(Landroid/net/Uri;Landroid/net/Uri;Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getManifest",
        "shouldUseDeveloperSupport",
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
.field private final appHost$delegate:Lkotlin/Lazy;

.field private final context$delegate:Lkotlin/Lazy;

.field private final controller$delegate:Lkotlin/Lazy;

.field private final installationIDHelper$delegate:Lkotlin/Lazy;

.field private instanceWasCreated:Z

.field private manifest:Lexpo/modules/manifests/core/Manifest;

.field private final updatesInterface$delegate:Lkotlin/Lazy;

.field private useDeveloperSupport:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    move-object v0, p0

    check-cast v0, Lorg/koin/core/component/KoinComponent;

    .line 90
    .local v0, "$this$inject_u24default$iv":Lorg/koin/core/component/KoinComponent;
    nop

    .line 91
    const/4 v1, 0x0

    .line 90
    .local v1, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 92
    sget-object v2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 90
    .local v2, "mode$iv":Lkotlin/LazyThreadSafetyMode;
    nop

    .line 93
    const/4 v3, 0x0

    .line 90
    .local v3, "parameters$iv":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 95
    .local v4, "$i$f$inject":I
    new-instance v5, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory$special$$inlined$inject$default$1;

    invoke-direct {v5, v0, v1, v3}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v5}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 24
    .end local v0    # "$this$inject_u24default$iv":Lorg/koin/core/component/KoinComponent;
    .end local v1    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v2    # "mode$iv":Lkotlin/LazyThreadSafetyMode;
    .end local v3    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v4    # "$i$f$inject":I
    iput-object v0, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;->context$delegate:Lkotlin/Lazy;

    .line 25
    move-object v0, p0

    check-cast v0, Lorg/koin/core/component/KoinComponent;

    .line 96
    .restart local v0    # "$this$inject_u24default$iv":Lorg/koin/core/component/KoinComponent;
    nop

    .line 97
    const/4 v1, 0x0

    .line 96
    .restart local v1    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 98
    sget-object v2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 96
    .restart local v2    # "mode$iv":Lkotlin/LazyThreadSafetyMode;
    nop

    .line 99
    const/4 v3, 0x0

    .line 96
    .restart local v3    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 101
    .restart local v4    # "$i$f$inject":I
    new-instance v5, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory$special$$inlined$inject$default$2;

    invoke-direct {v5, v0, v1, v3}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory$special$$inlined$inject$default$2;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v5}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 25
    .end local v0    # "$this$inject_u24default$iv":Lorg/koin/core/component/KoinComponent;
    .end local v1    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v2    # "mode$iv":Lkotlin/LazyThreadSafetyMode;
    .end local v3    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v4    # "$i$f$inject":I
    iput-object v0, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;->appHost$delegate:Lkotlin/Lazy;

    .line 26
    move-object v0, p0

    check-cast v0, Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent;

    .line 102
    .local v0, "$this$optInject_u24default$iv":Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent;
    nop

    .line 103
    const/4 v1, 0x0

    .line 102
    .restart local v1    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 104
    sget-object v2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 102
    .restart local v2    # "mode$iv":Lkotlin/LazyThreadSafetyMode;
    nop

    .line 105
    const/4 v3, 0x0

    .line 102
    .restart local v3    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 107
    .local v4, "$i$f$optInject":I
    new-instance v5, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory$special$$inlined$optInject$default$1;

    invoke-direct {v5, v0, v1, v3}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory$special$$inlined$optInject$default$1;-><init>(Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v5}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v5

    .line 113
    nop

    .line 26
    .end local v0    # "$this$optInject_u24default$iv":Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent;
    .end local v1    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v2    # "mode$iv":Lkotlin/LazyThreadSafetyMode;
    .end local v3    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v4    # "$i$f$optInject":I
    iput-object v5, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;->updatesInterface$delegate:Lkotlin/Lazy;

    .line 27
    move-object v0, p0

    check-cast v0, Lorg/koin/core/component/KoinComponent;

    .line 114
    .local v0, "$this$inject_u24default$iv":Lorg/koin/core/component/KoinComponent;
    nop

    .line 115
    const/4 v1, 0x0

    .line 114
    .restart local v1    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 116
    sget-object v2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 114
    .restart local v2    # "mode$iv":Lkotlin/LazyThreadSafetyMode;
    nop

    .line 117
    const/4 v3, 0x0

    .line 114
    .restart local v3    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 119
    .local v4, "$i$f$inject":I
    new-instance v5, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory$special$$inlined$inject$default$3;

    invoke-direct {v5, v0, v1, v3}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory$special$$inlined$inject$default$3;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v5}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 27
    .end local v0    # "$this$inject_u24default$iv":Lorg/koin/core/component/KoinComponent;
    .end local v1    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v2    # "mode$iv":Lkotlin/LazyThreadSafetyMode;
    .end local v3    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v4    # "$i$f$inject":I
    iput-object v0, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;->controller$delegate:Lkotlin/Lazy;

    .line 28
    move-object v0, p0

    check-cast v0, Lorg/koin/core/component/KoinComponent;

    .line 120
    .restart local v0    # "$this$inject_u24default$iv":Lorg/koin/core/component/KoinComponent;
    nop

    .line 121
    const/4 v1, 0x0

    .line 120
    .restart local v1    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 122
    sget-object v2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 120
    .restart local v2    # "mode$iv":Lkotlin/LazyThreadSafetyMode;
    nop

    .line 123
    const/4 v3, 0x0

    .line 120
    .restart local v3    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 125
    .restart local v4    # "$i$f$inject":I
    new-instance v5, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory$special$$inlined$inject$default$4;

    invoke-direct {v5, v0, v1, v3}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory$special$$inlined$inject$default$4;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v5}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 28
    .end local v0    # "$this$inject_u24default$iv":Lorg/koin/core/component/KoinComponent;
    .end local v1    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v2    # "mode$iv":Lkotlin/LazyThreadSafetyMode;
    .end local v3    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v4    # "$i$f$inject":I
    iput-object v0, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;->installationIDHelper$delegate:Lkotlin/Lazy;

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;->useDeveloperSupport:Z

    .line 23
    return-void
.end method

.method public static final synthetic access$getManifest$p(Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;)Lexpo/modules/manifests/core/Manifest;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;

    .line 23
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;->manifest:Lexpo/modules/manifests/core/Manifest;

    return-object v0
.end method

.method public static final synthetic access$setManifest$p(Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;Lexpo/modules/manifests/core/Manifest;)V
    .locals 0
    .param p0, "$this"    # Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;
    .param p1, "<set-?>"    # Lexpo/modules/manifests/core/Manifest;

    .line 23
    iput-object p1, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;->manifest:Lexpo/modules/manifests/core/Manifest;

    return-void
.end method

.method private final checkIfInstanceWasCreated(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 3
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 82
    .local v0, "$i$f$checkIfInstanceWasCreated":I
    iget-boolean v1, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;->instanceWasCreated:Z

    if-eqz v1, :cond_0

    .line 86
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 83
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "You need to create the AppLoader first."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final getAppHost()Lexpo/interfaces/devmenu/ReactHostWrapper;
    .locals 1

    .line 25
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;->appHost$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/interfaces/devmenu/ReactHostWrapper;

    return-object v0
.end method

.method private final getContext()Landroid/content/Context;
    .locals 1

    .line 24
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;->context$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method private final getController()Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;
    .locals 1

    .line 27
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;->controller$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    return-object v0
.end method

.method private final getInstallationIDHelper()Lexpo/modules/devlauncher/helpers/DevLauncherInstallationIDHelper;
    .locals 1

    .line 28
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;->installationIDHelper$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/devlauncher/helpers/DevLauncherInstallationIDHelper;

    return-object v0
.end method

.method private final getUpdatesInterface()Lexpo/modules/updatesinterface/UpdatesInterface;
    .locals 1

    .line 26
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;->updatesInterface$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/updatesinterface/UpdatesInterface;

    return-object v0
.end method


# virtual methods
.method public createAppLoader(Landroid/net/Uri;Landroid/net/Uri;Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory$createAppLoader$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory$createAppLoader$1;

    iget v1, v0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory$createAppLoader$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory$createAppLoader$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory$createAppLoader$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory$createAppLoader$1;

    invoke-direct {v0, p0, p4}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory$createAppLoader$1;-><init>(Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p4, v0

    .local p4, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p4, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory$createAppLoader$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 34
    iget v2, p4, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory$createAppLoader$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p4    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p4    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object p1, p4, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory$createAppLoader$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;

    .local p1, "this":Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, v0

    goto/16 :goto_5

    .end local p1    # "this":Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;
    :pswitch_1
    iget-object p1, p4, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory$createAppLoader$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;

    iget-object p2, p4, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory$createAppLoader$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;

    .local p2, "this":Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p3, p2

    move-object p2, v0

    goto/16 :goto_4

    .end local p2    # "this":Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;
    :pswitch_2
    iget-object p1, p4, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory$createAppLoader$1;->L$3:Ljava/lang/Object;

    check-cast p1, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser;

    .local p1, "manifestParser":Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser;
    iget-object p2, p4, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory$createAppLoader$1;->L$2:Ljava/lang/Object;

    check-cast p2, Landroid/net/Uri;

    .local p2, "projectUrl":Landroid/net/Uri;
    iget-object p3, p4, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory$createAppLoader$1;->L$1:Ljava/lang/Object;

    check-cast p3, Landroid/net/Uri;

    .local p3, "url":Landroid/net/Uri;
    iget-object v2, p4, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory$createAppLoader$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;

    .local v2, "this":Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v0

    move-object v9, p3

    move-object p3, p1

    move-object p1, v2

    move-object v2, v9

    goto :goto_1

    .end local v2    # "this":Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;
    .end local p1    # "manifestParser":Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser;
    .end local p2    # "projectUrl":Landroid/net/Uri;
    .end local p3    # "url":Landroid/net/Uri;
    :pswitch_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 35
    .restart local v2    # "this":Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;
    .local p1, "url":Landroid/net/Uri;
    .restart local p2    # "projectUrl":Landroid/net/Uri;
    .local p3, "manifestParser":Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser;
    const/4 v3, 0x1

    iput-boolean v3, v2, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;->instanceWasCreated:Z

    .line 37
    iput-object v2, p4, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory$createAppLoader$1;->L$0:Ljava/lang/Object;

    iput-object p1, p4, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory$createAppLoader$1;->L$1:Ljava/lang/Object;

    iput-object p2, p4, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory$createAppLoader$1;->L$2:Ljava/lang/Object;

    iput-object p3, p4, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory$createAppLoader$1;->L$3:Ljava/lang/Object;

    iput v3, p4, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory$createAppLoader$1;->label:I

    invoke-virtual {p3, p4}, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser;->isManifestUrl(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_1

    .line 34
    return-object v1

    .line 37
    :cond_1
    move-object v9, v2

    move-object v2, p1

    move-object p1, v9

    .local v2, "url":Landroid/net/Uri;
    .local p1, "this":Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;
    :goto_1
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    .line 39
    .end local p2    # "projectUrl":Landroid/net/Uri;
    .end local p3    # "manifestParser":Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser;
    new-instance p2, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherReactNativeAppLoader;

    invoke-direct {p1}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;->getAppHost()Lexpo/interfaces/devmenu/ReactHostWrapper;

    move-result-object p3

    invoke-direct {p1}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;->getController()Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    move-result-object v3

    invoke-direct {p2, v2, p3, v1, v3}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherReactNativeAppLoader;-><init>(Landroid/net/Uri;Lexpo/interfaces/devmenu/ReactHostWrapper;Landroid/content/Context;Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;)V

    return-object p2

    .line 42
    .restart local p2    # "projectUrl":Landroid/net/Uri;
    .restart local p3    # "manifestParser":Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser;
    :cond_2
    invoke-direct {p1}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;->getUpdatesInterface()Lexpo/modules/updatesinterface/UpdatesInterface;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    .local v3, "it":Lexpo/modules/updatesinterface/UpdatesInterface;
    const/4 v5, 0x0

    .line 43
    .local v5, "$i$a$-let-DevLauncherAppLoaderFactory$createAppLoader$validConfiguration$1":I
    invoke-interface {v3}, Lexpo/modules/updatesinterface/UpdatesInterface;->getRuntimeVersion()Ljava/lang/String;

    move-result-object v6

    .line 44
    .local v6, "runtimeVersion":Ljava/lang/String;
    if-nez v6, :cond_3

    .line 45
    .end local v2    # "url":Landroid/net/Uri;
    .end local v3    # "it":Lexpo/modules/updatesinterface/UpdatesInterface;
    .end local v6    # "runtimeVersion":Ljava/lang/String;
    .end local p2    # "projectUrl":Landroid/net/Uri;
    move-object p2, v4

    goto :goto_2

    .line 47
    .restart local v2    # "url":Landroid/net/Uri;
    .restart local v3    # "it":Lexpo/modules/updatesinterface/UpdatesInterface;
    .restart local v6    # "runtimeVersion":Ljava/lang/String;
    .restart local p2    # "projectUrl":Landroid/net/Uri;
    :cond_3
    invoke-direct {p1}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;->getInstallationIDHelper()Lexpo/modules/devlauncher/helpers/DevLauncherInstallationIDHelper;

    move-result-object v7

    invoke-direct {p1}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8}, Lexpo/modules/devlauncher/helpers/DevLauncherInstallationIDHelper;->getOrCreateInstallationID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, p2, v6, v7}, Lexpo/modules/devlauncher/helpers/DevLauncherUpdatesHelperKt;->createUpdatesConfigurationWithUrl(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p2

    .line 48
    .end local v2    # "url":Landroid/net/Uri;
    .end local v6    # "runtimeVersion":Ljava/lang/String;
    .local p2, "configurationCandidate":Ljava/util/HashMap;
    invoke-interface {v3, p2}, Lexpo/modules/updatesinterface/UpdatesInterface;->isValidUpdatesConfiguration(Ljava/util/HashMap;)Z

    move-result v2

    .end local v3    # "it":Lexpo/modules/updatesinterface/UpdatesInterface;
    if-eqz v2, :cond_4

    .line 49
    goto :goto_2

    .line 51
    :cond_4
    move-object p2, v4

    .line 44
    .end local p2    # "configurationCandidate":Ljava/util/HashMap;
    :goto_2
    nop

    .line 42
    .end local v5    # "$i$a$-let-DevLauncherAppLoaderFactory$createAppLoader$validConfiguration$1":I
    goto :goto_3

    .restart local v2    # "url":Landroid/net/Uri;
    .local p2, "projectUrl":Landroid/net/Uri;
    :cond_5
    move-object p2, v4

    .line 56
    .end local v2    # "url":Landroid/net/Uri;
    .local p2, "validConfiguration":Ljava/util/HashMap;
    :goto_3
    if-nez p2, :cond_8

    .line 57
    .end local p2    # "validConfiguration":Ljava/util/HashMap;
    iput-object p1, p4, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory$createAppLoader$1;->L$0:Ljava/lang/Object;

    iput-object p1, p4, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory$createAppLoader$1;->L$1:Ljava/lang/Object;

    iput-object v4, p4, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory$createAppLoader$1;->L$2:Ljava/lang/Object;

    iput-object v4, p4, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory$createAppLoader$1;->L$3:Ljava/lang/Object;

    const/4 p2, 0x2

    iput p2, p4, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory$createAppLoader$1;->label:I

    invoke-virtual {p3, p4}, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser;->parseManifest(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    .end local p3    # "manifestParser":Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser;
    if-ne p2, v1, :cond_6

    .line 34
    return-object v1

    .line 57
    :cond_6
    move-object p3, p1

    .line 34
    .end local p1    # "this":Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;
    .local p3, "this":Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;
    :goto_4
    check-cast p2, Lexpo/modules/manifests/core/Manifest;

    iput-object p2, p1, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;->manifest:Lexpo/modules/manifests/core/Manifest;

    .line 58
    iget-object p1, p3, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;->manifest:Lexpo/modules/manifests/core/Manifest;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lexpo/modules/manifests/core/Manifest;->isUsingDeveloperTool()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 61
    new-instance p1, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherLocalAppLoader;

    iget-object p2, p3, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;->manifest:Lexpo/modules/manifests/core/Manifest;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p3}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;->getAppHost()Lexpo/interfaces/devmenu/ReactHostWrapper;

    move-result-object v1

    invoke-direct {p3}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p3}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;->getController()Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    move-result-object v3

    invoke-direct {p1, p2, v1, v2, v3}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherLocalAppLoader;-><init>(Lexpo/modules/manifests/core/Manifest;Lexpo/interfaces/devmenu/ReactHostWrapper;Landroid/content/Context;Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;)V

    check-cast p1, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;

    goto/16 :goto_7

    .line 59
    :cond_7
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "expo-updates is not properly installed or integrated. In order to load published projects with this development client, follow all installation and setup instructions for both the expo-dev-client and expo-updates packages."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    .end local p3    # "this":Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;
    .restart local p1    # "this":Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;
    .restart local p2    # "validConfiguration":Ljava/util/HashMap;
    :cond_8
    invoke-direct {p1}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;->getUpdatesInterface()Lexpo/modules/updatesinterface/UpdatesInterface;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p1}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory$createAppLoader$update$1;

    invoke-direct {v3, p1}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory$createAppLoader$update$1;-><init>(Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    iput-object p1, p4, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory$createAppLoader$1;->L$0:Ljava/lang/Object;

    iput-object v4, p4, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory$createAppLoader$1;->L$1:Ljava/lang/Object;

    iput-object v4, p4, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory$createAppLoader$1;->L$2:Ljava/lang/Object;

    iput-object v4, p4, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory$createAppLoader$1;->L$3:Ljava/lang/Object;

    const/4 v4, 0x3

    iput v4, p4, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory$createAppLoader$1;->label:I

    invoke-static {p3, p2, v2, v3, p4}, Lexpo/modules/devlauncher/helpers/DevLauncherUpdatesHelperKt;->loadUpdate(Lexpo/modules/updatesinterface/UpdatesInterface;Ljava/util/HashMap;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    .end local p2    # "validConfiguration":Ljava/util/HashMap;
    if-ne p2, v1, :cond_9

    .line 34
    return-object v1

    :cond_9
    :goto_5
    check-cast p2, Lexpo/modules/updatesinterface/UpdatesInterface$Update;

    .line 67
    .local p2, "update":Lexpo/modules/updatesinterface/UpdatesInterface$Update;
    iget-object p3, p1, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;->manifest:Lexpo/modules/manifests/core/Manifest;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Lexpo/modules/manifests/core/Manifest;->isUsingDeveloperTool()Z

    move-result p3

    if-eqz p3, :cond_a

    .line 68
    .end local p2    # "update":Lexpo/modules/updatesinterface/UpdatesInterface$Update;
    new-instance p2, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherLocalAppLoader;

    iget-object p3, p1, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;->manifest:Lexpo/modules/manifests/core/Manifest;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p1}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;->getAppHost()Lexpo/interfaces/devmenu/ReactHostWrapper;

    move-result-object v1

    invoke-direct {p1}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;->getController()Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    move-result-object v3

    invoke-direct {p2, p3, v1, v2, v3}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherLocalAppLoader;-><init>(Lexpo/modules/manifests/core/Manifest;Lexpo/interfaces/devmenu/ReactHostWrapper;Landroid/content/Context;Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;)V

    check-cast p2, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherExpoAppLoader;

    goto :goto_6

    .line 70
    .restart local p2    # "update":Lexpo/modules/updatesinterface/UpdatesInterface$Update;
    :cond_a
    const/4 p3, 0x0

    iput-boolean p3, p1, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;->useDeveloperSupport:Z

    .line 71
    invoke-interface {p2}, Lexpo/modules/updatesinterface/UpdatesInterface$Update;->getLaunchAssetPath()Ljava/lang/String;

    move-result-object p2

    .line 72
    .local p2, "localBundlePath":Ljava/lang/String;
    new-instance p3, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherPublishedAppLoader;

    iget-object v2, p1, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;->manifest:Lexpo/modules/manifests/core/Manifest;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p1}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;->getAppHost()Lexpo/interfaces/devmenu/ReactHostWrapper;

    move-result-object v4

    invoke-direct {p1}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p1}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;->getController()Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    move-result-object v6

    move-object v1, p3

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherPublishedAppLoader;-><init>(Lexpo/modules/manifests/core/Manifest;Ljava/lang/String;Lexpo/interfaces/devmenu/ReactHostWrapper;Landroid/content/Context;Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;)V

    .end local p1    # "this":Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;
    .end local p2    # "localBundlePath":Ljava/lang/String;
    move-object p2, p3

    check-cast p2, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherExpoAppLoader;

    :goto_6
    move-object p1, p2

    check-cast p1, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;

    .line 56
    :goto_7
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 23
    invoke-static {p0}, Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent$DefaultImpls;->getKoin(Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public getManifest()Lexpo/modules/manifests/core/Manifest;
    .locals 4

    .line 77
    move-object v0, p0

    .local v0, "this_$iv":Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;
    const/4 v1, 0x0

    .line 126
    .local v1, "$i$f$checkIfInstanceWasCreated":I
    iget-boolean v2, v0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;->instanceWasCreated:Z

    if-eqz v2, :cond_0

    .line 130
    const/4 v2, 0x0

    .line 77
    .local v2, "$i$a$-checkIfInstanceWasCreated-DevLauncherAppLoaderFactory$getManifest$1":I
    iget-object v2, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;->manifest:Lexpo/modules/manifests/core/Manifest;

    .line 130
    .end local v2    # "$i$a$-checkIfInstanceWasCreated-DevLauncherAppLoaderFactory$getManifest$1":I
    nop

    .line 77
    .end local v0    # "this_$iv":Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;
    .end local v1    # "$i$f$checkIfInstanceWasCreated":I
    return-object v2

    .line 127
    .restart local v0    # "this_$iv":Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;
    .restart local v1    # "$i$f$checkIfInstanceWasCreated":I
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "You need to create the AppLoader first."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public shouldUseDeveloperSupport()Z
    .locals 4

    .line 79
    move-object v0, p0

    .local v0, "this_$iv":Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;
    const/4 v1, 0x0

    .line 131
    .local v1, "$i$f$checkIfInstanceWasCreated":I
    iget-boolean v2, v0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;->instanceWasCreated:Z

    if-eqz v2, :cond_0

    .line 135
    const/4 v2, 0x0

    .line 79
    .local v2, "$i$a$-checkIfInstanceWasCreated-DevLauncherAppLoaderFactory$shouldUseDeveloperSupport$1":I
    iget-boolean v2, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;->useDeveloperSupport:Z

    .line 135
    .end local v2    # "$i$a$-checkIfInstanceWasCreated-DevLauncherAppLoaderFactory$shouldUseDeveloperSupport$1":I
    nop

    .line 79
    .end local v0    # "this_$iv":Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;
    .end local v1    # "$i$f$checkIfInstanceWasCreated":I
    return v2

    .line 132
    .restart local v0    # "this_$iv":Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;
    .restart local v1    # "$i$f$checkIfInstanceWasCreated":I
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "You need to create the AppLoader first."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
