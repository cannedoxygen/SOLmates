.class public abstract Lexpo/modules/devlauncher/launcher/loaders/DevLauncherExpoAppLoader;
.super Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;
.source "DevLauncherExpoAppLoader.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008&\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0010\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0006\u001a\u00020\u0012H\u0002J\n\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0017H\u0014J\u0010\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0006\u001a\u00020\u0012H\u0014R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lexpo/modules/devlauncher/launcher/loaders/DevLauncherExpoAppLoader;",
        "Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;",
        "manifest",
        "Lexpo/modules/manifests/core/Manifest;",
        "appHost",
        "Lexpo/interfaces/devmenu/ReactHostWrapper;",
        "context",
        "Landroid/content/Context;",
        "controller",
        "Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;",
        "activityConfigurator",
        "Lexpo/modules/devlauncher/launcher/configurators/DevLauncherExpoActivityConfigurator;",
        "(Lexpo/modules/manifests/core/Manifest;Lexpo/interfaces/devmenu/ReactHostWrapper;Landroid/content/Context;Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;Lexpo/modules/devlauncher/launcher/configurators/DevLauncherExpoActivityConfigurator;)V",
        "applyBackgroundColor",
        "",
        "view",
        "Landroid/view/View;",
        "applyUserInterfaceStyle",
        "Lcom/facebook/react/bridge/ReactContext;",
        "getAppName",
        "",
        "onCreate",
        "activity",
        "Lcom/facebook/react/ReactActivity;",
        "onReactContext",
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
.field private final activityConfigurator:Lexpo/modules/devlauncher/launcher/configurators/DevLauncherExpoActivityConfigurator;

.field private final manifest:Lexpo/modules/manifests/core/Manifest;


# direct methods
.method public constructor <init>(Lexpo/modules/manifests/core/Manifest;Lexpo/interfaces/devmenu/ReactHostWrapper;Landroid/content/Context;Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;Lexpo/modules/devlauncher/launcher/configurators/DevLauncherExpoActivityConfigurator;)V
    .locals 1
    .param p1, "manifest"    # Lexpo/modules/manifests/core/Manifest;
    .param p2, "appHost"    # Lexpo/interfaces/devmenu/ReactHostWrapper;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "controller"    # Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;
    .param p5, "activityConfigurator"    # Lexpo/modules/devlauncher/launcher/configurators/DevLauncherExpoActivityConfigurator;

    const-string v0, "manifest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appHost"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controller"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityConfigurator"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p2, p3, p4}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoader;-><init>(Lexpo/interfaces/devmenu/ReactHostWrapper;Landroid/content/Context;Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;)V

    .line 19
    iput-object p1, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherExpoAppLoader;->manifest:Lexpo/modules/manifests/core/Manifest;

    .line 23
    iput-object p5, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherExpoAppLoader;->activityConfigurator:Lexpo/modules/devlauncher/launcher/configurators/DevLauncherExpoActivityConfigurator;

    .line 18
    return-void
.end method

.method public synthetic constructor <init>(Lexpo/modules/manifests/core/Manifest;Lexpo/interfaces/devmenu/ReactHostWrapper;Landroid/content/Context;Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;Lexpo/modules/devlauncher/launcher/configurators/DevLauncherExpoActivityConfigurator;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    .line 18
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    .line 24
    new-instance p5, Lexpo/modules/devlauncher/launcher/configurators/DevLauncherExpoActivityConfigurator;

    invoke-direct {p5, p1, p3}, Lexpo/modules/devlauncher/launcher/configurators/DevLauncherExpoActivityConfigurator;-><init>(Lexpo/modules/manifests/core/Manifest;Landroid/content/Context;)V

    move-object v5, p5

    goto :goto_0

    .line 18
    :cond_0
    move-object v5, p5

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherExpoAppLoader;-><init>(Lexpo/modules/manifests/core/Manifest;Lexpo/interfaces/devmenu/ReactHostWrapper;Landroid/content/Context;Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;Lexpo/modules/devlauncher/launcher/configurators/DevLauncherExpoActivityConfigurator;)V

    .line 84
    return-void
.end method

.method private final applyBackgroundColor(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 74
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherExpoAppLoader;->manifest:Lexpo/modules/manifests/core/Manifest;

    invoke-virtual {v0}, Lexpo/modules/manifests/core/Manifest;->getAndroidBackgroundColor()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 75
    .local v0, "backgroundColor":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Lexpo/modules/devlauncher/helpers/DevLauncherColorsHelperKt;->isValidColor(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 76
    return-void

    .line 78
    :cond_1
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 79
    return-void
.end method

.method private final applyUserInterfaceStyle(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 10
    .param p1, "context"    # Lcom/facebook/react/bridge/ReactContext;

    .line 43
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherExpoAppLoader;->manifest:Lexpo/modules/manifests/core/Manifest;

    invoke-virtual {v0}, Lexpo/modules/manifests/core/Manifest;->getAndroidUserInterfaceStyle()Ljava/lang/String;

    move-result-object v0

    .line 44
    const-string v1, "dark"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    const-string v1, "light"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 43
    :goto_0
    move-object v0, v1

    .line 49
    .local v0, "userInterfaceStyle":Ljava/lang/String;
    const-class v1, Lcom/facebook/react/modules/appearance/AppearanceModule;

    invoke-virtual {p1, v1}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/modules/appearance/AppearanceModule;

    if-eqz v1, :cond_1

    .local v1, "appearanceModule":Lcom/facebook/react/modules/appearance/AppearanceModule;
    const/4 v9, 0x0

    .line 50
    .local v9, "$i$a$-let-DevLauncherExpoAppLoader$applyUserInterfaceStyle$1":I
    nop

    .line 51
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 52
    nop

    .line 53
    const-string v3, "mOverrideColorScheme"

    .line 54
    new-instance v4, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherExpoAppLoader$applyUserInterfaceStyle$1$1;

    invoke-direct {v4, v0}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherExpoAppLoader$applyUserInterfaceStyle$1$1;-><init>(Ljava/lang/String;)V

    .line 51
    sget-object v5, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherExpoAppLoader$applyUserInterfaceStyle$1$2;->INSTANCE:Lexpo/modules/devlauncher/launcher/loaders/DevLauncherExpoAppLoader$applyUserInterfaceStyle$1$2;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v1, v3, v4, v5}, Lexpo/modules/devlauncher/helpers/DevLauncherReflectionExtensionsKt;->setProtectedDeclaredField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 62
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 63
    nop

    .line 64
    const-string v4, "mColorScheme"

    .line 65
    nop

    .line 62
    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, v1

    move-object v5, v0

    invoke-static/range {v2 .. v8}, Lexpo/modules/devlauncher/helpers/DevLauncherReflectionExtensionsKt;->setProtectedDeclaredField$default(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 67
    :catch_0
    move-exception v2

    .line 68
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "DevLauncher"

    move-object v4, v2

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    nop

    .line 49
    .end local v1    # "appearanceModule":Lcom/facebook/react/modules/appearance/AppearanceModule;
    .end local v9    # "$i$a$-let-DevLauncherExpoAppLoader$applyUserInterfaceStyle$1":I
    nop

    .line 71
    :cond_1
    return-void

    .line 46
    .end local v0    # "userInterfaceStyle":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherExpoAppLoader;->manifest:Lexpo/modules/manifests/core/Manifest;

    invoke-virtual {v0}, Lexpo/modules/manifests/core/Manifest;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Lcom/facebook/react/ReactActivity;)V
    .locals 3
    .param p1, "activity"    # Lcom/facebook/react/ReactActivity;

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherExpoAppLoader;->activityConfigurator:Lexpo/modules/devlauncher/launcher/configurators/DevLauncherExpoActivityConfigurator;

    .local v0, "$this$onCreate_u24lambda_u240":Lexpo/modules/devlauncher/launcher/configurators/DevLauncherExpoActivityConfigurator;
    const/4 v1, 0x0

    .line 27
    .local v1, "$i$a$-with-DevLauncherExpoAppLoader$onCreate$1":I
    invoke-virtual {v0, p1}, Lexpo/modules/devlauncher/launcher/configurators/DevLauncherExpoActivityConfigurator;->applyOrientation(Lcom/facebook/react/ReactActivity;)V

    .line 28
    invoke-virtual {v0, p1}, Lexpo/modules/devlauncher/launcher/configurators/DevLauncherExpoActivityConfigurator;->applyStatusBarConfiguration(Lcom/facebook/react/ReactActivity;)V

    .line 29
    move-object v2, p1

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lexpo/modules/devlauncher/launcher/configurators/DevLauncherExpoActivityConfigurator;->applyTaskDescription(Landroid/app/Activity;)V

    .line 30
    invoke-virtual {v0, p1}, Lexpo/modules/devlauncher/launcher/configurators/DevLauncherExpoActivityConfigurator;->applyNavigationBarConfiguration(Lcom/facebook/react/ReactActivity;)V

    .line 31
    nop

    .line 26
    .end local v0    # "$this$onCreate_u24lambda_u240":Lexpo/modules/devlauncher/launcher/configurators/DevLauncherExpoActivityConfigurator;
    .end local v1    # "$i$a$-with-DevLauncherExpoAppLoader$onCreate$1":I
    nop

    .line 31
    return-void
.end method

.method protected onReactContext(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 3
    .param p1, "context"    # Lcom/facebook/react/bridge/ReactContext;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .local v0, "$this$onReactContext_u24lambda_u241":Landroid/app/Activity;
    const/4 v1, 0x0

    .line 35
    .local v1, "$i$a$-run-DevLauncherExpoAppLoader$onReactContext$1":I
    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 36
    .local v2, "rootView":Landroid/view/View;
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v2}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherExpoAppLoader;->applyBackgroundColor(Landroid/view/View;)V

    .line 37
    nop

    .line 34
    .end local v0    # "$this$onReactContext_u24lambda_u241":Landroid/app/Activity;
    .end local v1    # "$i$a$-run-DevLauncherExpoAppLoader$onReactContext$1":I
    .end local v2    # "rootView":Landroid/view/View;
    nop

    .line 39
    :cond_0
    invoke-direct {p0, p1}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherExpoAppLoader;->applyUserInterfaceStyle(Lcom/facebook/react/bridge/ReactContext;)V

    .line 40
    return-void
.end method
