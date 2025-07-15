.class public final Lexpo/modules/devlauncher/launcher/DevLauncherActivity;
.super Lcom/facebook/react/ReactActivity;
.source "DevLauncherActivity.kt"

# interfaces
.implements Lcom/facebook/react/ReactInstanceEventListener;
.implements Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDevLauncherActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DevLauncherActivity.kt\nexpo/modules/devlauncher/launcher/DevLauncherActivity\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,140:1\n56#2,6:141\n1#3:147\n*S KotlinDebug\n*F\n+ 1 DevLauncherActivity.kt\nexpo/modules/devlauncher/launcher/DevLauncherActivity\n*L\n26#1:141,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0017\u001a\u00020\u0018H\u0014J\u0012\u0010\u0019\u001a\u00020\u00122\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\u0008\u0010\u001f\u001a\u00020 H\u0014J\u0010\u0010!\u001a\u00020\"2\u0006\u0010\u001d\u001a\u00020\u0006H\u0002J\u0008\u0010#\u001a\u00020\"H\u0002J\u0012\u0010$\u001a\u00020\"2\u0008\u0010%\u001a\u0004\u0018\u00010&H\u0014J\u0018\u0010\'\u001a\u00020\u00122\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+H\u0016J\u0008\u0010,\u001a\u00020\"H\u0014J\u0012\u0010-\u001a\u00020\"2\u0008\u0010%\u001a\u0004\u0018\u00010&H\u0014J\u0010\u0010.\u001a\u00020\"2\u0006\u0010/\u001a\u000200H\u0016J\u0008\u00101\u001a\u00020\"H\u0014J\u0008\u00102\u001a\u00020\"H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0007\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u00020\u00128BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0013R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00063"
    }
    d2 = {
        "Lexpo/modules/devlauncher/launcher/DevLauncherActivity;",
        "Lcom/facebook/react/ReactActivity;",
        "Lcom/facebook/react/ReactInstanceEventListener;",
        "Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent;",
        "()V",
        "contentView",
        "Landroid/view/ViewGroup;",
        "controller",
        "Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;",
        "getController",
        "()Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;",
        "controller$delegate",
        "Lkotlin/Lazy;",
        "devMenuManager",
        "Lexpo/modules/devmenu/DevMenuManager;",
        "handler",
        "Landroid/os/Handler;",
        "isSimulator",
        "",
        "()Z",
        "rootView",
        "splashScreen",
        "Lexpo/modules/devlauncher/splashscreen/DevLauncherSplashScreen;",
        "createReactActivityDelegate",
        "Lcom/facebook/react/ReactActivityDelegate;",
        "dispatchTouchEvent",
        "ev",
        "Landroid/view/MotionEvent;",
        "findRootView",
        "view",
        "Landroid/view/View;",
        "getMainComponentName",
        "",
        "handleRootView",
        "",
        "hideSplashScreen",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onKeyUp",
        "keyCode",
        "",
        "event",
        "Landroid/view/KeyEvent;",
        "onPause",
        "onPostCreate",
        "onReactContextInitialized",
        "context",
        "Lcom/facebook/react/bridge/ReactContext;",
        "onStart",
        "searchForRootView",
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
.field private contentView:Landroid/view/ViewGroup;

.field private final controller$delegate:Lkotlin/Lazy;

.field private devMenuManager:Lexpo/modules/devmenu/DevMenuManager;

.field private final handler:Landroid/os/Handler;

.field private rootView:Landroid/view/ViewGroup;

.field private splashScreen:Lexpo/modules/devlauncher/splashscreen/DevLauncherSplashScreen;


# direct methods
.method public static synthetic $r8$lambda$c5xtggSK2Zwg4KzKikEDwPTP3M8(Lexpo/modules/devlauncher/launcher/DevLauncherActivity;)V
    .locals 0

    invoke-static {p0}, Lexpo/modules/devlauncher/launcher/DevLauncherActivity;->searchForRootView$lambda$2(Lexpo/modules/devlauncher/launcher/DevLauncherActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mhqNeh504Dge8AknshpOZ1ds1_8(Lexpo/modules/devlauncher/launcher/DevLauncherActivity;Lexpo/modules/devlauncher/splashscreen/DevLauncherSplashScreen;)V
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/devlauncher/launcher/DevLauncherActivity;->hideSplashScreen$lambda$5$lambda$4(Lexpo/modules/devlauncher/launcher/DevLauncherActivity;Lexpo/modules/devlauncher/splashscreen/DevLauncherSplashScreen;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 25
    invoke-direct {p0}, Lcom/facebook/react/ReactActivity;-><init>()V

    .line 26
    move-object v0, p0

    check-cast v0, Lorg/koin/core/component/KoinComponent;

    .line 141
    .local v0, "$this$inject_u24default$iv":Lorg/koin/core/component/KoinComponent;
    nop

    .line 142
    const/4 v1, 0x0

    .line 141
    .local v1, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 143
    sget-object v2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 141
    .local v2, "mode$iv":Lkotlin/LazyThreadSafetyMode;
    nop

    .line 144
    const/4 v3, 0x0

    .line 141
    .local v3, "parameters$iv":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 146
    .local v4, "$i$f$inject":I
    new-instance v5, Lexpo/modules/devlauncher/launcher/DevLauncherActivity$special$$inlined$inject$default$1;

    invoke-direct {v5, v0, v1, v3}, Lexpo/modules/devlauncher/launcher/DevLauncherActivity$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v5}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 26
    .end local v0    # "$this$inject_u24default$iv":Lorg/koin/core/component/KoinComponent;
    .end local v1    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v2    # "mode$iv":Lkotlin/LazyThreadSafetyMode;
    .end local v3    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v4    # "$i$f$inject":I
    iput-object v0, p0, Lexpo/modules/devlauncher/launcher/DevLauncherActivity;->controller$delegate:Lkotlin/Lazy;

    .line 27
    sget-object v0, Lexpo/modules/devmenu/DevMenuManager;->INSTANCE:Lexpo/modules/devmenu/DevMenuManager;

    iput-object v0, p0, Lexpo/modules/devlauncher/launcher/DevLauncherActivity;->devMenuManager:Lexpo/modules/devmenu/DevMenuManager;

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lexpo/modules/devlauncher/launcher/DevLauncherActivity;->handler:Landroid/os/Handler;

    .line 25
    return-void
.end method

.method public static final synthetic access$getController(Lexpo/modules/devlauncher/launcher/DevLauncherActivity;)Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/devlauncher/launcher/DevLauncherActivity;

    .line 25
    invoke-direct {p0}, Lexpo/modules/devlauncher/launcher/DevLauncherActivity;->getController()Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getRootView$p(Lexpo/modules/devlauncher/launcher/DevLauncherActivity;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/devlauncher/launcher/DevLauncherActivity;

    .line 25
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/DevLauncherActivity;->rootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public static final synthetic access$hideSplashScreen(Lexpo/modules/devlauncher/launcher/DevLauncherActivity;)V
    .locals 0
    .param p0, "$this"    # Lexpo/modules/devlauncher/launcher/DevLauncherActivity;

    .line 25
    invoke-direct {p0}, Lexpo/modules/devlauncher/launcher/DevLauncherActivity;->hideSplashScreen()V

    return-void
.end method

.method public static final synthetic access$isSimulator(Lexpo/modules/devlauncher/launcher/DevLauncherActivity;)Z
    .locals 1
    .param p0, "$this"    # Lexpo/modules/devlauncher/launcher/DevLauncherActivity;

    .line 25
    invoke-direct {p0}, Lexpo/modules/devlauncher/launcher/DevLauncherActivity;->isSimulator()Z

    move-result v0

    return v0
.end method

.method private final findRootView(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 103
    instance-of v0, p1, Lcom/facebook/react/ReactRootView;

    if-eqz v0, :cond_0

    .line 104
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0

    .line 106
    :cond_0
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/DevLauncherActivity;->splashScreen:Lexpo/modules/devlauncher/splashscreen/DevLauncherSplashScreen;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 107
    const/4 v0, 0x0

    .local v0, "idx":I
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 108
    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "getChildAt(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lexpo/modules/devlauncher/launcher/DevLauncherActivity;->findRootView(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v1, v2

    .line 147
    .local v1, "it":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .line 108
    .local v2, "$i$a$-let-DevLauncherActivity$findRootView$1":I
    return-object v1

    .line 107
    .end local v1    # "it":Landroid/view/ViewGroup;
    .end local v2    # "$i$a$-let-DevLauncherActivity$findRootView$1":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    .end local v0    # "idx":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private final getController()Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;
    .locals 1

    .line 26
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/DevLauncherActivity;->controller$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    return-object v0
.end method

.method private final handleRootView(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "view"    # Landroid/view/ViewGroup;

    .line 115
    iput-object p1, p0, Lexpo/modules/devlauncher/launcher/DevLauncherActivity;->rootView:Landroid/view/ViewGroup;

    .line 116
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/DevLauncherActivity;->rootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-lez v0, :cond_1

    .line 117
    invoke-direct {p0}, Lexpo/modules/devlauncher/launcher/DevLauncherActivity;->hideSplashScreen()V

    .line 120
    :cond_1
    new-instance v0, Lexpo/modules/devlauncher/launcher/DevLauncherActivity$handleRootView$1;

    invoke-direct {v0, p0}, Lexpo/modules/devlauncher/launcher/DevLauncherActivity$handleRootView$1;-><init>(Lexpo/modules/devlauncher/launcher/DevLauncherActivity;)V

    check-cast v0, Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 129
    return-void
.end method

.method private final hideSplashScreen()V
    .locals 3

    .line 132
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/DevLauncherActivity;->splashScreen:Lexpo/modules/devlauncher/splashscreen/DevLauncherSplashScreen;

    if-eqz v0, :cond_0

    .local v0, "it":Lexpo/modules/devlauncher/splashscreen/DevLauncherSplashScreen;
    const/4 v1, 0x0

    .line 133
    .local v1, "$i$a$-let-DevLauncherActivity$hideSplashScreen$1":I
    new-instance v2, Lexpo/modules/devlauncher/launcher/DevLauncherActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lexpo/modules/devlauncher/launcher/DevLauncherActivity$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/devlauncher/launcher/DevLauncherActivity;Lexpo/modules/devlauncher/splashscreen/DevLauncherSplashScreen;)V

    invoke-virtual {p0, v2}, Lexpo/modules/devlauncher/launcher/DevLauncherActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 137
    nop

    .line 132
    .end local v0    # "it":Lexpo/modules/devlauncher/splashscreen/DevLauncherSplashScreen;
    .end local v1    # "$i$a$-let-DevLauncherActivity$hideSplashScreen$1":I
    nop

    .line 138
    :cond_0
    return-void
.end method

.method private static final hideSplashScreen$lambda$5$lambda$4(Lexpo/modules/devlauncher/launcher/DevLauncherActivity;Lexpo/modules/devlauncher/splashscreen/DevLauncherSplashScreen;)V
    .locals 3
    .param p0, "this$0"    # Lexpo/modules/devlauncher/launcher/DevLauncherActivity;
    .param p1, "$it"    # Lexpo/modules/devlauncher/splashscreen/DevLauncherSplashScreen;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/DevLauncherActivity;->contentView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "contentView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    move-object v2, p1

    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 135
    iput-object v1, p0, Lexpo/modules/devlauncher/launcher/DevLauncherActivity;->splashScreen:Lexpo/modules/devlauncher/splashscreen/DevLauncherSplashScreen;

    .line 136
    return-void
.end method

.method private final isSimulator()Z
    .locals 1

    .line 91
    sget-object v0, Lexpo/modules/core/utilities/EmulatorUtilities;->INSTANCE:Lexpo/modules/core/utilities/EmulatorUtilities;

    invoke-virtual {v0}, Lexpo/modules/core/utilities/EmulatorUtilities;->isRunningOnEmulator()Z

    move-result v0

    return v0
.end method

.method private final searchForRootView()V
    .locals 4

    .line 94
    nop

    .line 98
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/DevLauncherActivity;->rootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 95
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/DevLauncherActivity;->contentView:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    const-string v0, "contentView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lexpo/modules/devlauncher/launcher/DevLauncherActivity;->findRootView(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 147
    .local v0, "it":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .line 98
    .local v1, "$i$a$-let-DevLauncherActivity$searchForRootView$1":I
    invoke-direct {p0, v0}, Lexpo/modules/devlauncher/launcher/DevLauncherActivity;->handleRootView(Landroid/view/ViewGroup;)V

    return-void

    .line 99
    .end local v0    # "it":Landroid/view/ViewGroup;
    .end local v1    # "$i$a$-let-DevLauncherActivity$searchForRootView$1":I
    :cond_2
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/DevLauncherActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lexpo/modules/devlauncher/launcher/DevLauncherActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lexpo/modules/devlauncher/launcher/DevLauncherActivity$$ExternalSyntheticLambda1;-><init>(Lexpo/modules/devlauncher/launcher/DevLauncherActivity;)V

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 100
    return-void
.end method

.method private static final searchForRootView$lambda$2(Lexpo/modules/devlauncher/launcher/DevLauncherActivity;)V
    .locals 1
    .param p0, "this$0"    # Lexpo/modules/devlauncher/launcher/DevLauncherActivity;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-direct {p0}, Lexpo/modules/devlauncher/launcher/DevLauncherActivity;->searchForRootView()V

    return-void
.end method


# virtual methods
.method protected createReactActivityDelegate()Lcom/facebook/react/ReactActivityDelegate;
    .locals 3

    .line 36
    invoke-virtual {p0}, Lexpo/modules/devlauncher/launcher/DevLauncherActivity;->getMainComponentName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/facebook/react/defaults/DefaultNewArchitectureEntryPoint;->getFabricEnabled()Z

    move-result v1

    new-instance v2, Lexpo/modules/devlauncher/launcher/DevLauncherActivity$createReactActivityDelegate$1;

    invoke-direct {v2, p0, v0, v1}, Lexpo/modules/devlauncher/launcher/DevLauncherActivity$createReactActivityDelegate$1;-><init>(Lexpo/modules/devlauncher/launcher/DevLauncherActivity;Ljava/lang/String;Z)V

    check-cast v2, Lcom/facebook/react/ReactActivityDelegate;

    return-object v2
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 78
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/DevLauncherActivity;->devMenuManager:Lexpo/modules/devmenu/DevMenuManager;

    invoke-virtual {v0, p1}, Lexpo/modules/devmenu/DevMenuManager;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 79
    invoke-super {p0, p1}, Lcom/facebook/react/ReactActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 25
    invoke-static {p0}, Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent$DefaultImpls;->getKoin(Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method protected getMainComponentName()Ljava/lang/String;
    .locals 1

    .line 33
    const-string v0, "main"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 54
    invoke-super {p0, p1}, Lcom/facebook/react/ReactActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lexpo/modules/devlauncher/launcher/DevLauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object v0, p0, Lexpo/modules/devlauncher/launcher/DevLauncherActivity;->contentView:Landroid/view/ViewGroup;

    .line 57
    new-instance v0, Lexpo/modules/devlauncher/splashscreen/DevLauncherSplashScreenProvider;

    invoke-direct {v0}, Lexpo/modules/devlauncher/splashscreen/DevLauncherSplashScreenProvider;-><init>()V

    .line 58
    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lexpo/modules/devlauncher/splashscreen/DevLauncherSplashScreenProvider;->attachSplashScreenViewAsync(Landroid/app/Activity;)Lexpo/modules/devlauncher/splashscreen/DevLauncherSplashScreen;

    move-result-object v0

    .line 57
    iput-object v0, p0, Lexpo/modules/devlauncher/launcher/DevLauncherActivity;->splashScreen:Lexpo/modules/devlauncher/splashscreen/DevLauncherSplashScreen;

    .line 59
    invoke-direct {p0}, Lexpo/modules/devlauncher/launcher/DevLauncherActivity;->searchForRootView()V

    .line 60
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/DevLauncherActivity;->devMenuManager:Lexpo/modules/devmenu/DevMenuManager;

    invoke-virtual {v0, p1, p2}, Lexpo/modules/devmenu/DevMenuManager;->onKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Lcom/facebook/react/ReactActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected onPause()V
    .locals 1

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lexpo/modules/devlauncher/launcher/DevLauncherActivity;->overridePendingTransition(II)V

    .line 74
    invoke-super {p0}, Lcom/facebook/react/ReactActivity;->onPause()V

    .line 75
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 63
    nop

    .line 64
    invoke-super {p0, p1}, Lcom/facebook/react/ReactActivity;->onPostCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lexpo/modules/devlauncher/launcher/DevLauncherActivity;->getController()Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    move-result-object v0

    invoke-interface {v0}, Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;->getDevClientHost()Lexpo/interfaces/devmenu/ReactHostWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .local v0, "it":Lcom/facebook/react/bridge/ReactContext;
    const/4 v1, 0x0

    .line 65
    .local v1, "$i$a$-let-DevLauncherActivity$onPostCreate$1":I
    invoke-virtual {p0, v0}, Lexpo/modules/devlauncher/launcher/DevLauncherActivity;->onReactContextInitialized(Lcom/facebook/react/bridge/ReactContext;)V

    .line 66
    return-void

    .line 69
    .end local v0    # "it":Lcom/facebook/react/bridge/ReactContext;
    .end local v1    # "$i$a$-let-DevLauncherActivity$onPostCreate$1":I
    :cond_0
    invoke-direct {p0}, Lexpo/modules/devlauncher/launcher/DevLauncherActivity;->getController()Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    move-result-object v0

    invoke-interface {v0}, Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;->getDevClientHost()Lexpo/interfaces/devmenu/ReactHostWrapper;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/facebook/react/ReactInstanceEventListener;

    invoke-virtual {v0, v1}, Lexpo/interfaces/devmenu/ReactHostWrapper;->addReactInstanceEventListener(Lcom/facebook/react/ReactInstanceEventListener;)V

    .line 70
    return-void
.end method

.method public onReactContextInitialized(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 2
    .param p1, "context"    # Lcom/facebook/react/bridge/ReactContext;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-direct {p0}, Lexpo/modules/devlauncher/launcher/DevLauncherActivity;->getController()Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    move-result-object v0

    invoke-interface {v0}, Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;->getDevClientHost()Lexpo/interfaces/devmenu/ReactHostWrapper;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/facebook/react/ReactInstanceEventListener;

    invoke-virtual {v0, v1}, Lexpo/interfaces/devmenu/ReactHostWrapper;->removeReactInstanceEventListener(Lcom/facebook/react/ReactInstanceEventListener;)V

    .line 88
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lexpo/modules/devlauncher/launcher/DevLauncherActivity;->overridePendingTransition(II)V

    .line 50
    invoke-super {p0}, Lcom/facebook/react/ReactActivity;->onStart()V

    .line 51
    return-void
.end method
