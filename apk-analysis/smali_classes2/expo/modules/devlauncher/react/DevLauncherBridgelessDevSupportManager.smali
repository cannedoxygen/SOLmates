.class public final Lexpo/modules/devlauncher/react/DevLauncherBridgelessDevSupportManager;
.super Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager;
.source "DevLauncherBridgelessDevSupportManager.kt"

# interfaces
.implements Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/devlauncher/react/DevLauncherBridgelessDevSupportManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDevLauncherBridgelessDevSupportManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DevLauncherBridgelessDevSupportManager.kt\nexpo/modules/devlauncher/react/DevLauncherBridgelessDevSupportManager\n+ 2 DevLauncherKoinComponent.kt\nexpo/modules/devlauncher/koin/DevLauncherKoinComponentKt\n*L\n1#1,65:1\n14#2,12:66\n*S KotlinDebug\n*F\n+ 1 DevLauncherBridgelessDevSupportManager.kt\nexpo/modules/devlauncher/react/DevLauncherBridgelessDevSupportManager\n*L\n20#1:66,12\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0004\u0018\u0000 \u001d2\u00020\u00012\u00020\u0002:\u0001\u001dB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\u0015\u001a\u00020\u0008H\u0014J\u001c\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J\u0008\u0010\u001b\u001a\u00020\u0017H\u0016J\u0006\u0010\u001c\u001a\u00020\u0017R\u001d\u0010\n\u001a\u0004\u0018\u00010\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u000c\u0010\rR\u001e\u0010\u0010\u001a\u0004\u0018\u00010\u00088WX\u0096\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u001e"
    }
    d2 = {
        "Lexpo/modules/devlauncher/react/DevLauncherBridgelessDevSupportManager;",
        "Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager;",
        "Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent;",
        "host",
        "Lcom/facebook/react/runtime/ReactHostImpl;",
        "context",
        "Landroid/content/Context;",
        "packagerPathForJSBundleName",
        "",
        "(Lcom/facebook/react/runtime/ReactHostImpl;Landroid/content/Context;Ljava/lang/String;)V",
        "controller",
        "Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;",
        "getController",
        "()Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;",
        "controller$delegate",
        "Lkotlin/Lazy;",
        "jSBundleURLForRemoteDebugging",
        "getjSBundleURLForRemoteDebugging$annotations",
        "()V",
        "getjSBundleURLForRemoteDebugging",
        "()Ljava/lang/String;",
        "getUniqueTag",
        "showNewJavaError",
        "",
        "message",
        "e",
        "",
        "startInspector",
        "startInspectorWhenDevLauncherReady",
        "Companion",
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
.field public static final Companion:Lexpo/modules/devlauncher/react/DevLauncherBridgelessDevSupportManager$Companion;


# instance fields
.field private final controller$delegate:Lkotlin/Lazy;

.field private final jSBundleURLForRemoteDebugging:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/devlauncher/react/DevLauncherBridgelessDevSupportManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/devlauncher/react/DevLauncherBridgelessDevSupportManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/devlauncher/react/DevLauncherBridgelessDevSupportManager;->Companion:Lexpo/modules/devlauncher/react/DevLauncherBridgelessDevSupportManager$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/runtime/ReactHostImpl;Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "host"    # Lcom/facebook/react/runtime/ReactHostImpl;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "packagerPathForJSBundleName"    # Ljava/lang/String;

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager;-><init>(Lcom/facebook/react/runtime/ReactHostImpl;Landroid/content/Context;Ljava/lang/String;)V

    .line 20
    move-object v0, p0

    check-cast v0, Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent;

    .line 66
    .local v0, "$this$optInject_u24default$iv":Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent;
    nop

    .line 67
    const/4 v1, 0x0

    .line 66
    .local v1, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 68
    sget-object v2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 66
    .local v2, "mode$iv":Lkotlin/LazyThreadSafetyMode;
    nop

    .line 69
    const/4 v3, 0x0

    .line 66
    .local v3, "parameters$iv":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 71
    .local v4, "$i$f$optInject":I
    new-instance v5, Lexpo/modules/devlauncher/react/DevLauncherBridgelessDevSupportManager$special$$inlined$optInject$default$1;

    invoke-direct {v5, v0, v1, v3}, Lexpo/modules/devlauncher/react/DevLauncherBridgelessDevSupportManager$special$$inlined$optInject$default$1;-><init>(Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v5}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v5

    .line 77
    nop

    .line 20
    .end local v0    # "$this$optInject_u24default$iv":Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent;
    .end local v1    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v2    # "mode$iv":Lkotlin/LazyThreadSafetyMode;
    .end local v3    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v4    # "$i$f$optInject":I
    iput-object v5, p0, Lexpo/modules/devlauncher/react/DevLauncherBridgelessDevSupportManager;->controller$delegate:Lkotlin/Lazy;

    .line 22
    nop

    .line 23
    move-object v0, p0

    check-cast v0, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    invoke-direct {p0}, Lexpo/modules/devlauncher/react/DevLauncherBridgelessDevSupportManager;->getController()Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lexpo/modules/devlauncher/helpers/DevLauncherReactUtilsKt;->injectDevServerHelper(Landroid/content/Context;Lcom/facebook/react/devsupport/interfaces/DevSupportManager;Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;)V

    .line 24
    nop

    .line 28
    invoke-super {p0}, Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager;->getJSBundleURLForRemoteDebugging()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/devlauncher/react/DevLauncherBridgelessDevSupportManager;->jSBundleURLForRemoteDebugging:Ljava/lang/String;

    .line 15
    return-void
.end method

.method private final getController()Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;
    .locals 1

    .line 20
    iget-object v0, p0, Lexpo/modules/devlauncher/react/DevLauncherBridgelessDevSupportManager;->controller$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    return-object v0
.end method

.method public static synthetic getjSBundleURLForRemoteDebugging$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public bridge synthetic getJSBundleURLForRemoteDebugging()Ljava/lang/String;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lexpo/modules/devlauncher/react/DevLauncherBridgelessDevSupportManager;->getjSBundleURLForRemoteDebugging()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 15
    invoke-static {p0}, Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent$DefaultImpls;->getKoin(Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method protected getUniqueTag()Ljava/lang/String;
    .locals 1

    .line 47
    const-string v0, "DevLauncherApp-Bridgeless"

    return-object v0
.end method

.method public getjSBundleURLForRemoteDebugging()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lexpo/modules/devlauncher/react/DevLauncherBridgelessDevSupportManager;->jSBundleURLForRemoteDebugging:Ljava/lang/String;

    return-object v0
.end method

.method public showNewJavaError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 31
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DevLauncher"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    sget-object v0, Lexpo/modules/devlauncher/DevLauncherController;->Companion:Lexpo/modules/devlauncher/DevLauncherController$Companion;

    invoke-virtual {v0}, Lexpo/modules/devlauncher/DevLauncherController$Companion;->wasInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    const-string v0, "DevLauncher wasn\'t initialized. Couldn\'t intercept native error handling."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-super {p0, p1, p2}, Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager;->showNewJavaError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    return-void

    .line 38
    :cond_0
    invoke-virtual {p0}, Lexpo/modules/devlauncher/react/DevLauncherBridgelessDevSupportManager;->getReactInstanceDevHelper()Lcom/facebook/react/devsupport/ReactInstanceDevHelper;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/facebook/react/devsupport/ReactInstanceDevHelper;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 39
    .local v0, "activity":Landroid/app/Activity;
    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 43
    :cond_2
    invoke-direct {p0}, Lexpo/modules/devlauncher/react/DevLauncherBridgelessDevSupportManager;->getController()Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;->onAppLoadedWithError()V

    .line 44
    :cond_3
    sget-object v1, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->Companion:Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$Companion;

    new-instance v2, Lexpo/modules/devlauncher/launcher/errors/DevLauncherAppError;

    invoke-direct {v2, p1, p2}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherAppError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v0, v2}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$Companion;->showError(Landroid/app/Activity;Lexpo/modules/devlauncher/launcher/errors/DevLauncherAppError;)V

    .line 45
    return-void

    .line 40
    :cond_4
    :goto_1
    return-void
.end method

.method public startInspector()V
    .locals 0

    .line 55
    return-void
.end method

.method public final startInspectorWhenDevLauncherReady()V
    .locals 0

    .line 58
    invoke-super {p0}, Lcom/facebook/react/runtime/NonFinalBridgelessDevSupportManager;->startInspector()V

    .line 59
    return-void
.end method
