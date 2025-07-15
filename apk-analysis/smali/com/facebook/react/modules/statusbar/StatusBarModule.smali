.class public final Lcom/facebook/react/modules/statusbar/StatusBarModule;
.super Lcom/facebook/fbreact/specs/NativeStatusBarManagerAndroidSpec;
.source "StatusBarModule.kt"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "StatusBarManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/modules/statusbar/StatusBarModule$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStatusBarModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StatusBarModule.kt\ncom/facebook/react/modules/statusbar/StatusBarModule\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,162:1\n1#2:163\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0002J\u0014\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008H\u0014J\u0018\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u0010H\u0016J\u0012\u0010\u0013\u001a\u00020\u000c2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\tH\u0016J\u0010\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\u0016\u001a\u00020\u0010H\u0016\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/facebook/react/modules/statusbar/StatusBarModule;",
        "Lcom/facebook/fbreact/specs/NativeStatusBarManagerAndroidSpec;",
        "reactContext",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "(Lcom/facebook/react/bridge/ReactApplicationContext;)V",
        "getStatusBarHeightPx",
        "",
        "getTypedExportedConstants",
        "",
        "",
        "",
        "setColor",
        "",
        "colorDouble",
        "",
        "animated",
        "",
        "setHidden",
        "hidden",
        "setStyle",
        "style",
        "setTranslucent",
        "translucent",
        "Companion",
        "ReactAndroid_debug"
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
.field public static final Companion:Lcom/facebook/react/modules/statusbar/StatusBarModule$Companion;

.field private static final DEFAULT_BACKGROUND_COLOR_KEY:Ljava/lang/String; = "DEFAULT_BACKGROUND_COLOR"

.field private static final HEIGHT_KEY:Ljava/lang/String; = "HEIGHT"

.field public static final NAME:Ljava/lang/String; = "StatusBarManager"


# direct methods
.method public static synthetic $r8$lambda$7u_WW3IZ_lnBDr-bsdqngjJdtG4(Landroid/app/Activity;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/facebook/react/modules/statusbar/StatusBarModule;->setHidden$lambda$1(Landroid/app/Activity;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$U6aXIWOalBosaZxy4vA6y4RCHqo(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/facebook/react/modules/statusbar/StatusBarModule;->setStyle$lambda$2(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/react/modules/statusbar/StatusBarModule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/react/modules/statusbar/StatusBarModule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/react/modules/statusbar/StatusBarModule;->Companion:Lcom/facebook/react/modules/statusbar/StatusBarModule$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 33
    invoke-direct {p0, p1}, Lcom/facebook/fbreact/specs/NativeStatusBarManagerAndroidSpec;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 32
    return-void
.end method

.method private final getStatusBarHeightPx()F
    .locals 3

    .line 50
    invoke-virtual {p0}, Lcom/facebook/react/modules/statusbar/StatusBarModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 163
    .local v0, "p0":Landroid/view/View;
    const/4 v1, 0x0

    .line 50
    .local v1, "$i$a$-let-StatusBarModule$getStatusBarHeightPx$windowInsets$1":I
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    .end local v0    # "p0":Landroid/view/View;
    .end local v1    # "$i$a$-let-StatusBarModule$getStatusBarHeightPx$windowInsets$1":I
    if-nez v0, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    nop

    .line 56
    .local v0, "windowInsets":Landroidx/core/view/WindowInsetsCompat;
    nop

    .line 51
    nop

    .line 53
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->statusBars()I

    move-result v1

    .line 54
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    move-result v2

    .line 53
    or-int/2addr v1, v2

    .line 55
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    move-result v2

    .line 53
    or-int/2addr v1, v2

    .line 52
    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v1

    iget v1, v1, Landroidx/core/graphics/Insets;->top:I

    .line 57
    int-to-float v1, v1

    .line 51
    return v1

    .line 50
    .end local v0    # "windowInsets":Landroidx/core/view/WindowInsetsCompat;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private static final setHidden$lambda$1(Landroid/app/Activity;Z)V
    .locals 1
    .param p0, "$activity"    # Landroid/app/Activity;
    .param p1, "$hidden"    # Z

    .line 116
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/facebook/react/views/view/WindowUtilKt;->setStatusBarVisibility(Landroid/view/Window;Z)V

    :cond_0
    return-void
.end method

.method private static final setStyle$lambda$2(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4
    .param p0, "$activity"    # Landroid/app/Activity;
    .param p1, "$style"    # Ljava/lang/String;

    .line 130
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 131
    .local v0, "window":Landroid/view/Window;
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    const-string v3, "dark-content"

    if-le v1, v2, :cond_3

    .line 132
    invoke-virtual {v0}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 133
    .local v1, "insetsController":Landroid/view/WindowInsetsController;
    :cond_1
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_2

    .line 135
    nop

    .line 136
    nop

    .line 137
    nop

    .line 135
    invoke-interface {v1, v3, v3}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    goto :goto_1

    .line 139
    :cond_2
    nop

    .line 140
    nop

    .line 139
    const/4 v2, 0x0

    invoke-interface {v1, v2, v3}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    .end local v1    # "insetsController":Landroid/view/WindowInsetsController;
    goto :goto_1

    .line 143
    :cond_3
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const-string v2, "getDecorView(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    .local v1, "decorView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    .line 146
    .local v2, "systemUiVisibilityFlags":I
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 147
    or-int/lit16 v3, v2, 0x2000

    goto :goto_0

    .line 149
    :cond_4
    and-int/lit16 v3, v2, -0x2001

    .line 145
    :goto_0
    move v2, v3

    .line 151
    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 153
    .end local v1    # "decorView":Landroid/view/View;
    .end local v2    # "systemUiVisibilityFlags":I
    :goto_1
    return-void
.end method


# virtual methods
.method protected getTypedExportedConstants()Ljava/util/Map;
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

    .line 38
    invoke-virtual {p0}, Lcom/facebook/react/modules/statusbar/StatusBarModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getStatusBarColor()I

    move-result v0

    .local v0, "color":I
    const/4 v2, 0x0

    .line 39
    .local v2, "$i$a$-let-StatusBarModule$getTypedExportedConstants$statusBarColor$1":I
    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const v3, 0xffffff

    and-int/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v4, "#%06X"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "format(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .end local v0    # "color":I
    .end local v2    # "$i$a$-let-StatusBarModule$getTypedExportedConstants$statusBarColor$1":I
    if-nez v3, :cond_1

    .line 40
    :cond_0
    const-string v3, "black"

    .line 38
    :cond_1
    nop

    .line 37
    move-object v0, v3

    .line 42
    .local v0, "statusBarColor":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v2, v2, [Lkotlin/Pair;

    invoke-direct {p0}, Lcom/facebook/react/modules/statusbar/StatusBarModule;->getStatusBarHeightPx()F

    move-result v3

    invoke-static {v3}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "HEIGHT"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 43
    const-string v3, "DEFAULT_BACKGROUND_COLOR"

    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v2, v1

    .line 42
    nop

    .line 41
    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public setColor(DZ)V
    .locals 4
    .param p1, "colorDouble"    # D
    .param p3, "animated"    # Z

    .line 62
    double-to-int v0, p1

    .line 63
    .local v0, "color":I
    invoke-virtual {p0}, Lcom/facebook/react/modules/statusbar/StatusBarModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    .line 64
    .local v1, "activity":Landroid/app/Activity;
    if-nez v1, :cond_0

    .line 66
    nop

    .line 67
    nop

    .line 65
    const-string v2, "ReactNative"

    const-string v3, "StatusBarModule: Ignored status bar change, current activity is null."

    invoke-static {v2, v3}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/modules/statusbar/StatusBarModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v2

    new-instance v3, Lcom/facebook/react/modules/statusbar/StatusBarModule$setColor$1;

    invoke-direct {v3, v1, p3, v0, v2}, Lcom/facebook/react/modules/statusbar/StatusBarModule$setColor$1;-><init>(Landroid/app/Activity;ZILcom/facebook/react/bridge/ReactApplicationContext;)V

    check-cast v3, Ljava/lang/Runnable;

    .line 70
    invoke-static {v3}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    .line 88
    return-void
.end method

.method public setHidden(Z)V
    .locals 3
    .param p1, "hidden"    # Z

    .line 109
    invoke-virtual {p0}, Lcom/facebook/react/modules/statusbar/StatusBarModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 110
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 112
    nop

    .line 113
    nop

    .line 111
    const-string v1, "ReactNative"

    const-string v2, "StatusBarModule: Ignored status bar change, current activity is null."

    invoke-static {v1, v2}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void

    .line 116
    :cond_0
    new-instance v1, Lcom/facebook/react/modules/statusbar/StatusBarModule$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1}, Lcom/facebook/react/modules/statusbar/StatusBarModule$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;Z)V

    invoke-static {v1}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    .line 117
    return-void
.end method

.method public setStyle(Ljava/lang/String;)V
    .locals 3
    .param p1, "style"    # Ljava/lang/String;

    .line 121
    invoke-virtual {p0}, Lcom/facebook/react/modules/statusbar/StatusBarModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 122
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 124
    nop

    .line 125
    nop

    .line 123
    const-string v1, "ReactNative"

    const-string v2, "StatusBarModule: Ignored status bar change, current activity is null."

    invoke-static {v1, v2}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void

    .line 128
    :cond_0
    new-instance v1, Lcom/facebook/react/modules/statusbar/StatusBarModule$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p1}, Lcom/facebook/react/modules/statusbar/StatusBarModule$$ExternalSyntheticLambda1;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    .line 154
    return-void
.end method

.method public setTranslucent(Z)V
    .locals 3
    .param p1, "translucent"    # Z

    .line 92
    invoke-virtual {p0}, Lcom/facebook/react/modules/statusbar/StatusBarModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 93
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 95
    nop

    .line 96
    nop

    .line 94
    const-string v1, "ReactNative"

    const-string v2, "StatusBarModule: Ignored status bar change, current activity is null."

    invoke-static {v1, v2}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/modules/statusbar/StatusBarModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    new-instance v2, Lcom/facebook/react/modules/statusbar/StatusBarModule$setTranslucent$1;

    invoke-direct {v2, v0, p1, v1}, Lcom/facebook/react/modules/statusbar/StatusBarModule$setTranslucent$1;-><init>(Landroid/app/Activity;ZLcom/facebook/react/bridge/ReactApplicationContext;)V

    check-cast v2, Ljava/lang/Runnable;

    .line 99
    invoke-static {v2}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    .line 105
    return-void
.end method
