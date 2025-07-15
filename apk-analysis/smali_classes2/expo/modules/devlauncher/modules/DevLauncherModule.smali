.class public final Lexpo/modules/devlauncher/modules/DevLauncherModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "DevLauncherModule.kt"

# interfaces
.implements Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDevLauncherModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DevLauncherModule.kt\nexpo/modules/devlauncher/modules/DevLauncherModule\n+ 2 DevLauncherKoinComponent.kt\nexpo/modules/devlauncher/koin/DevLauncherKoinComponentKt\n*L\n1#1,32:1\n14#2,12:33\n*S KotlinDebug\n*F\n+ 1 DevLauncherModule.kt\nexpo/modules/devlauncher/modules/DevLauncherModule\n*L\n10#1:33,12\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0005J\u0016\u0010\u000c\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\rH\u0016J\u0008\u0010\u0010\u001a\u00020\u000eH\u0016R\u001d\u0010\u0006\u001a\u0004\u0018\u00010\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0011"
    }
    d2 = {
        "Lexpo/modules/devlauncher/modules/DevLauncherModule;",
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
        "getConstants",
        "",
        "",
        "",
        "getName",
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

    .line 9
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 10
    move-object v0, p0

    check-cast v0, Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent;

    .line 33
    .local v0, "$this$optInject_u24default$iv":Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent;
    nop

    .line 34
    const/4 v1, 0x0

    .line 33
    .local v1, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 35
    sget-object v2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 33
    .local v2, "mode$iv":Lkotlin/LazyThreadSafetyMode;
    nop

    .line 36
    const/4 v3, 0x0

    .line 33
    .local v3, "parameters$iv":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 38
    .local v4, "$i$f$optInject":I
    new-instance v5, Lexpo/modules/devlauncher/modules/DevLauncherModule$special$$inlined$optInject$default$1;

    invoke-direct {v5, v0, v1, v3}, Lexpo/modules/devlauncher/modules/DevLauncherModule$special$$inlined$optInject$default$1;-><init>(Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v5}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v5

    .line 44
    nop

    .line 10
    .end local v0    # "$this$optInject_u24default$iv":Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent;
    .end local v1    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v2    # "mode$iv":Lkotlin/LazyThreadSafetyMode;
    .end local v3    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v4    # "$i$f$optInject":I
    iput-object v5, p0, Lexpo/modules/devlauncher/modules/DevLauncherModule;->controller$delegate:Lkotlin/Lazy;

    .line 9
    return-void
.end method

.method private final getController()Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;
    .locals 1

    .line 10
    iget-object v0, p0, Lexpo/modules/devlauncher/modules/DevLauncherModule;->controller$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    return-object v0
.end method


# virtual methods
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

    .line 15
    nop

    .line 16
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lexpo/modules/devlauncher/modules/DevLauncherModule;->getController()Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;->getManifest()Lexpo/modules/manifests/core/Manifest;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lexpo/modules/manifests/core/Manifest;->getRawJson()Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 17
    :catch_0
    move-exception v1

    .line 18
    .local v1, "_":Ljava/lang/IllegalStateException;
    move-object v1, v0

    .line 15
    .end local v1    # "_":Ljava/lang/IllegalStateException;
    :goto_1
    nop

    .line 20
    .local v1, "manifestString":Ljava/lang/String;
    nop

    .line 21
    :try_start_1
    invoke-direct {p0}, Lexpo/modules/devlauncher/modules/DevLauncherModule;->getController()Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;->getManifestURL()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 22
    :catch_1
    move-exception v2

    .line 23
    .local v2, "_":Ljava/lang/IllegalStateException;
    nop

    .line 20
    .end local v2    # "_":Ljava/lang/IllegalStateException;
    :cond_1
    :goto_2
    nop

    .line 27
    .local v0, "manifestURLString":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v2, v2, [Lkotlin/Pair;

    const-string v3, "manifestString"

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 28
    const-string v3, "manifestURL"

    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 27
    nop

    .line 26
    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    return-object v2
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 9
    invoke-static {p0}, Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent$DefaultImpls;->getKoin(Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 12
    const-string v0, "EXDevLauncher"

    return-object v0
.end method
