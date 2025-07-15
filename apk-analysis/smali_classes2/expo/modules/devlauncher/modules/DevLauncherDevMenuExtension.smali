.class public final Lexpo/modules/devlauncher/modules/DevLauncherDevMenuExtension;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "DevLauncherDevMenuExtension.kt"

# interfaces
.implements Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDevLauncherDevMenuExtension.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DevLauncherDevMenuExtension.kt\nexpo/modules/devlauncher/modules/DevLauncherDevMenuExtension\n+ 2 DevLauncherKoinComponent.kt\nexpo/modules/devlauncher/koin/DevLauncherKoinComponentKt\n*L\n1#1,22:1\n14#2,12:23\n*S KotlinDebug\n*F\n+ 1 DevLauncherDevMenuExtension.kt\nexpo/modules/devlauncher/modules/DevLauncherDevMenuExtension\n*L\n12#1:23,12\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0007R\u001d\u0010\u0006\u001a\u0004\u0018\u00010\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0012"
    }
    d2 = {
        "Lexpo/modules/devlauncher/modules/DevLauncherDevMenuExtension;",
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
        "getName",
        "",
        "navigateToLauncherAsync",
        "",
        "promise",
        "Lcom/facebook/react/bridge/Promise;",
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


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 6
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 11
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 12
    move-object v0, p0

    check-cast v0, Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent;

    .line 23
    .local v0, "$this$optInject_u24default$iv":Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent;
    nop

    .line 24
    const/4 v1, 0x0

    .line 23
    .local v1, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 25
    sget-object v2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 23
    .local v2, "mode$iv":Lkotlin/LazyThreadSafetyMode;
    nop

    .line 26
    const/4 v3, 0x0

    .line 23
    .local v3, "parameters$iv":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 28
    .local v4, "$i$f$optInject":I
    new-instance v5, Lexpo/modules/devlauncher/modules/DevLauncherDevMenuExtension$special$$inlined$optInject$default$1;

    invoke-direct {v5, v0, v1, v3}, Lexpo/modules/devlauncher/modules/DevLauncherDevMenuExtension$special$$inlined$optInject$default$1;-><init>(Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v5}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v5

    .line 34
    nop

    .line 12
    .end local v0    # "$this$optInject_u24default$iv":Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent;
    .end local v1    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v2    # "mode$iv":Lkotlin/LazyThreadSafetyMode;
    .end local v3    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v4    # "$i$f$optInject":I
    iput-object v5, p0, Lexpo/modules/devlauncher/modules/DevLauncherDevMenuExtension;->controller$delegate:Lkotlin/Lazy;

    .line 11
    return-void
.end method

.method private final getController()Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;
    .locals 1

    .line 12
    iget-object v0, p0, Lexpo/modules/devlauncher/modules/DevLauncherDevMenuExtension;->controller$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    return-object v0
.end method


# virtual methods
.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 11
    invoke-static {p0}, Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent$DefaultImpls;->getKoin(Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 14
    const-string v0, "EXDevLauncherExtension"

    return-object v0
.end method

.method public final navigateToLauncherAsync(Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .param p1, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "promise"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Lexpo/modules/devlauncher/modules/DevLauncherDevMenuExtension;->getController()Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;->navigateToLauncher()V

    .line 19
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 20
    return-void
.end method
