.class public final Lexpo/modules/splashscreen/SplashScreenManager;
.super Ljava/lang/Object;
.source "SplashScreenManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0011H\u0002J\u0006\u0010\u0012\u001a\u00020\u000fJ\u000e\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0015J\u000e\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J\u0006\u0010\u0017\u001a\u00020\u000fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\rX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lexpo/modules/splashscreen/SplashScreenManager;",
        "",
        "()V",
        "contentAppearedListener",
        "Lcom/facebook/react/bridge/ReactMarker$MarkerListener;",
        "keepSplashScreenOnScreen",
        "",
        "preventAutoHideCalled",
        "getPreventAutoHideCalled",
        "()Z",
        "setPreventAutoHideCalled",
        "(Z)V",
        "splashScreen",
        "Landroidx/core/splashscreen/SplashScreen;",
        "configureSplashScreen",
        "",
        "options",
        "Lexpo/modules/splashscreen/SplashScreenOptions;",
        "hide",
        "registerOnActivity",
        "activity",
        "Landroid/app/Activity;",
        "setSplashScreenOptions",
        "unregisterContentAppearedListener",
        "expo-splash-screen_debug"
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
.field public static final INSTANCE:Lexpo/modules/splashscreen/SplashScreenManager;

.field private static final contentAppearedListener:Lcom/facebook/react/bridge/ReactMarker$MarkerListener;

.field private static keepSplashScreenOnScreen:Z

.field private static preventAutoHideCalled:Z

.field private static splashScreen:Landroidx/core/splashscreen/SplashScreen;


# direct methods
.method public static synthetic $r8$lambda$1BP-sDlX88DwPP-Dl-3RbnDVe4w(Landroidx/core/splashscreen/SplashScreenViewProvider;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/splashscreen/SplashScreenManager;->configureSplashScreen$lambda$2$lambda$1(Landroidx/core/splashscreen/SplashScreenViewProvider;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CO0qzVxxxstS1XmdFP7DxUZ6hik(Lcom/facebook/react/bridge/ReactMarkerConstants;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lexpo/modules/splashscreen/SplashScreenManager;->contentAppearedListener$lambda$0(Lcom/facebook/react/bridge/ReactMarkerConstants;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$wWjuA0cUyjR9WiCmeXMuRwbzWkE(JLandroidx/core/splashscreen/SplashScreenViewProvider;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lexpo/modules/splashscreen/SplashScreenManager;->configureSplashScreen$lambda$2(JLandroidx/core/splashscreen/SplashScreenViewProvider;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/splashscreen/SplashScreenManager;

    invoke-direct {v0}, Lexpo/modules/splashscreen/SplashScreenManager;-><init>()V

    sput-object v0, Lexpo/modules/splashscreen/SplashScreenManager;->INSTANCE:Lexpo/modules/splashscreen/SplashScreenManager;

    .line 15
    const/4 v0, 0x1

    sput-boolean v0, Lexpo/modules/splashscreen/SplashScreenManager;->keepSplashScreenOnScreen:Z

    .line 19
    new-instance v0, Lexpo/modules/splashscreen/SplashScreenManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lexpo/modules/splashscreen/SplashScreenManager$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lexpo/modules/splashscreen/SplashScreenManager;->contentAppearedListener:Lcom/facebook/react/bridge/ReactMarker$MarkerListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getKeepSplashScreenOnScreen$p()Z
    .locals 1

    .line 14
    sget-boolean v0, Lexpo/modules/splashscreen/SplashScreenManager;->keepSplashScreenOnScreen:Z

    return v0
.end method

.method private final configureSplashScreen(Lexpo/modules/splashscreen/SplashScreenOptions;)V
    .locals 4
    .param p1, "options"    # Lexpo/modules/splashscreen/SplashScreenOptions;

    .line 30
    sget-object v0, Lexpo/modules/splashscreen/SplashScreenManager;->splashScreen:Landroidx/core/splashscreen/SplashScreen;

    if-nez v0, :cond_0

    .line 31
    return-void

    .line 34
    :cond_0
    invoke-virtual {p1}, Lexpo/modules/splashscreen/SplashScreenOptions;->getDuration()J

    move-result-wide v0

    .line 36
    .local v0, "duration":J
    sget-object v2, Lexpo/modules/splashscreen/SplashScreenManager;->splashScreen:Landroidx/core/splashscreen/SplashScreen;

    if-nez v2, :cond_1

    const-string v2, "splashScreen"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_1
    new-instance v3, Lexpo/modules/splashscreen/SplashScreenManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v1}, Lexpo/modules/splashscreen/SplashScreenManager$$ExternalSyntheticLambda0;-><init>(J)V

    invoke-virtual {v2, v3}, Landroidx/core/splashscreen/SplashScreen;->setOnExitAnimationListener(Landroidx/core/splashscreen/SplashScreen$OnExitAnimationListener;)V

    .line 52
    return-void
.end method

.method static synthetic configureSplashScreen$default(Lexpo/modules/splashscreen/SplashScreenManager;Lexpo/modules/splashscreen/SplashScreenOptions;ILjava/lang/Object;)V
    .locals 0

    .line 27
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    new-instance p1, Lexpo/modules/splashscreen/SplashScreenOptions;

    invoke-direct {p1}, Lexpo/modules/splashscreen/SplashScreenOptions;-><init>()V

    :cond_0
    invoke-direct {p0, p1}, Lexpo/modules/splashscreen/SplashScreenManager;->configureSplashScreen(Lexpo/modules/splashscreen/SplashScreenOptions;)V

    return-void
.end method

.method private static final configureSplashScreen$lambda$2(JLandroidx/core/splashscreen/SplashScreenViewProvider;)V
    .locals 3
    .param p0, "$duration"    # J
    .param p2, "splashScreenViewProvider"    # Landroidx/core/splashscreen/SplashScreenViewProvider;

    const-string v0, "splashScreenViewProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p2}, Landroidx/core/splashscreen/SplashScreenViewProvider;->getView()Landroid/view/View;

    move-result-object v0

    .line 38
    .local v0, "splashScreenView":Landroid/view/View;
    nop

    .line 39
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 40
    invoke-virtual {v1, p0, p1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 41
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 42
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    check-cast v2, Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 43
    new-instance v2, Lexpo/modules/splashscreen/SplashScreenManager$$ExternalSyntheticLambda2;

    invoke-direct {v2, p2, v0}, Lexpo/modules/splashscreen/SplashScreenManager$$ExternalSyntheticLambda2;-><init>(Landroidx/core/splashscreen/SplashScreenViewProvider;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 50
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 51
    return-void
.end method

.method private static final configureSplashScreen$lambda$2$lambda$1(Landroidx/core/splashscreen/SplashScreenViewProvider;Landroid/view/View;)V
    .locals 2
    .param p0, "$splashScreenViewProvider"    # Landroidx/core/splashscreen/SplashScreenViewProvider;
    .param p1, "$splashScreenView"    # Landroid/view/View;

    const-string v0, "$splashScreenViewProvider"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$splashScreenView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    .line 45
    invoke-virtual {p0}, Landroidx/core/splashscreen/SplashScreenViewProvider;->remove()V

    goto :goto_0

    .line 48
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/window/SplashScreenView;

    invoke-virtual {v0}, Landroid/window/SplashScreenView;->remove()V

    .line 50
    :goto_0
    return-void
.end method

.method private static final contentAppearedListener$lambda$0(Lcom/facebook/react/bridge/ReactMarkerConstants;Ljava/lang/String;I)V
    .locals 0
    .param p0, "name"    # Lcom/facebook/react/bridge/ReactMarkerConstants;

    .line 20
    sget-object p1, Lcom/facebook/react/bridge/ReactMarkerConstants;->CONTENT_APPEARED:Lcom/facebook/react/bridge/ReactMarkerConstants;

    if-ne p0, p1, :cond_0

    .line 21
    sget-boolean p1, Lexpo/modules/splashscreen/SplashScreenManager;->preventAutoHideCalled:Z

    if-nez p1, :cond_0

    .line 22
    sget-object p1, Lexpo/modules/splashscreen/SplashScreenManager;->INSTANCE:Lexpo/modules/splashscreen/SplashScreenManager;

    invoke-virtual {p1}, Lexpo/modules/splashscreen/SplashScreenManager;->hide()V

    .line 25
    :cond_0
    return-void
.end method


# virtual methods
.method public final getPreventAutoHideCalled()Z
    .locals 1

    .line 16
    sget-boolean v0, Lexpo/modules/splashscreen/SplashScreenManager;->preventAutoHideCalled:Z

    return v0
.end method

.method public final hide()V
    .locals 1

    .line 76
    const/4 v0, 0x0

    sput-boolean v0, Lexpo/modules/splashscreen/SplashScreenManager;->keepSplashScreenOnScreen:Z

    .line 77
    return-void
.end method

.method public final registerOnActivity(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    sget-object v0, Landroidx/core/splashscreen/SplashScreen;->Companion:Landroidx/core/splashscreen/SplashScreen$Companion;

    invoke-virtual {v0, p1}, Landroidx/core/splashscreen/SplashScreen$Companion;->installSplashScreen(Landroid/app/Activity;)Landroidx/core/splashscreen/SplashScreen;

    move-result-object v0

    sput-object v0, Lexpo/modules/splashscreen/SplashScreenManager;->splashScreen:Landroidx/core/splashscreen/SplashScreen;

    .line 56
    sget-object v0, Lexpo/modules/splashscreen/SplashScreenManager;->contentAppearedListener:Lcom/facebook/react/bridge/ReactMarker$MarkerListener;

    invoke-static {v0}, Lcom/facebook/react/bridge/ReactMarker;->addListener(Lcom/facebook/react/bridge/ReactMarker$MarkerListener;)V

    .line 60
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, "contentView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 62
    .local v1, "observer":Landroid/view/ViewTreeObserver;
    new-instance v2, Lexpo/modules/splashscreen/SplashScreenManager$registerOnActivity$1;

    invoke-direct {v2, v0}, Lexpo/modules/splashscreen/SplashScreenManager$registerOnActivity$1;-><init>(Landroid/view/View;)V

    check-cast v2, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 72
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p0, v2, v3, v2}, Lexpo/modules/splashscreen/SplashScreenManager;->configureSplashScreen$default(Lexpo/modules/splashscreen/SplashScreenManager;Lexpo/modules/splashscreen/SplashScreenOptions;ILjava/lang/Object;)V

    .line 73
    return-void
.end method

.method public final setPreventAutoHideCalled(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 16
    sput-boolean p1, Lexpo/modules/splashscreen/SplashScreenManager;->preventAutoHideCalled:Z

    return-void
.end method

.method public final setSplashScreenOptions(Lexpo/modules/splashscreen/SplashScreenOptions;)V
    .locals 1
    .param p1, "options"    # Lexpo/modules/splashscreen/SplashScreenOptions;

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0, p1}, Lexpo/modules/splashscreen/SplashScreenManager;->configureSplashScreen(Lexpo/modules/splashscreen/SplashScreenOptions;)V

    .line 81
    return-void
.end method

.method public final unregisterContentAppearedListener()V
    .locals 1

    .line 84
    sget-object v0, Lexpo/modules/splashscreen/SplashScreenManager;->contentAppearedListener:Lcom/facebook/react/bridge/ReactMarker$MarkerListener;

    invoke-static {v0}, Lcom/facebook/react/bridge/ReactMarker;->removeListener(Lcom/facebook/react/bridge/ReactMarker$MarkerListener;)V

    .line 85
    return-void
.end method
