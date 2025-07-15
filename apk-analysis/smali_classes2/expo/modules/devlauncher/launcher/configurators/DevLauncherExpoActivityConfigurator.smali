.class public final Lexpo/modules/devlauncher/launcher/configurators/DevLauncherExpoActivityConfigurator;
.super Ljava/lang/Object;
.source "DevLauncherExpoActivityConfigurator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/devlauncher/launcher/configurators/DevLauncherExpoActivityConfigurator$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000c\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\r\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u000eJ\u0018\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u000eH\u0007J\u0018\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\u000eH\u0003J\u001a\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0006\u0010\t\u001a\u00020\u000eH\u0003J\u0018\u0010\u0018\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\u000eH\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lexpo/modules/devlauncher/launcher/configurators/DevLauncherExpoActivityConfigurator;",
        "",
        "manifest",
        "Lexpo/modules/manifests/core/Manifest;",
        "context",
        "Landroid/content/Context;",
        "(Lexpo/modules/manifests/core/Manifest;Landroid/content/Context;)V",
        "applyNavigationBarConfiguration",
        "",
        "activity",
        "Lcom/facebook/react/ReactActivity;",
        "applyOrientation",
        "applyStatusBarConfiguration",
        "applyTaskDescription",
        "Landroid/app/Activity;",
        "setColor",
        "color",
        "",
        "setHidden",
        "hidden",
        "",
        "setStyle",
        "",
        "style",
        "setTranslucent",
        "translucent",
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
.field public static final Companion:Lexpo/modules/devlauncher/launcher/configurators/DevLauncherExpoActivityConfigurator$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private manifest:Lexpo/modules/manifests/core/Manifest;


# direct methods
.method public static synthetic $r8$lambda$ENBAPrJ6CPku7yWBbD5X7bUjvyI(Lcom/facebook/react/ReactActivity;Lexpo/modules/devlauncher/launcher/configurators/DevLauncherExpoActivityConfigurator;ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lexpo/modules/devlauncher/launcher/configurators/DevLauncherExpoActivityConfigurator;->applyStatusBarConfiguration$lambda$0(Lcom/facebook/react/ReactActivity;Lexpo/modules/devlauncher/launcher/configurators/DevLauncherExpoActivityConfigurator;ZZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HkCSVzms4HR5JxY9XfuwUJLH3yw(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/devlauncher/launcher/configurators/DevLauncherExpoActivityConfigurator;->setTranslucent$lambda$1(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/devlauncher/launcher/configurators/DevLauncherExpoActivityConfigurator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/devlauncher/launcher/configurators/DevLauncherExpoActivityConfigurator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/devlauncher/launcher/configurators/DevLauncherExpoActivityConfigurator;->Companion:Lexpo/modules/devlauncher/launcher/configurators/DevLauncherExpoActivityConfigurator$Companion;

    .line 201
    const-class v0, Lexpo/modules/devlauncher/launcher/configurators/DevLauncherExpoActivityConfigurator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lexpo/modules/devlauncher/launcher/configurators/DevLauncherExpoActivityConfigurator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lexpo/modules/manifests/core/Manifest;Landroid/content/Context;)V
    .locals 1
    .param p1, "manifest"    # Lexpo/modules/manifests/core/Manifest;
    .param p2, "context"    # Landroid/content/Context;

    const-string v0, "manifest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lexpo/modules/devlauncher/launcher/configurators/DevLauncherExpoActivityConfigurator;->manifest:Lexpo/modules/manifests/core/Manifest;

    .line 27
    iput-object p2, p0, Lexpo/modules/devlauncher/launcher/configurators/DevLauncherExpoActivityConfigurator;->context:Landroid/content/Context;

    .line 25
    return-void
.end method

.method private static final applyStatusBarConfiguration$lambda$0(Lcom/facebook/react/ReactActivity;Lexpo/modules/devlauncher/launcher/configurators/DevLauncherExpoActivityConfigurator;ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "$activity"    # Lcom/facebook/react/ReactActivity;
    .param p1, "this$0"    # Lexpo/modules/devlauncher/launcher/configurators/DevLauncherExpoActivityConfigurator;
    .param p2, "$hidden"    # Z
    .param p3, "$translucent"    # Z
    .param p4, "$style"    # Ljava/lang/String;
    .param p5, "$backgroundColor"    # Ljava/lang/String;

    const-string v0, "$activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/facebook/react/ReactActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 64
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {p1, p2, v0}, Lexpo/modules/devlauncher/launcher/configurators/DevLauncherExpoActivityConfigurator;->setHidden(ZLandroid/app/Activity;)V

    .line 65
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {p1, p3, v0}, Lexpo/modules/devlauncher/launcher/configurators/DevLauncherExpoActivityConfigurator;->setTranslucent(ZLandroid/app/Activity;)V

    .line 66
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {p1, p4, v0}, Lexpo/modules/devlauncher/launcher/configurators/DevLauncherExpoActivityConfigurator;->setStyle(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "appliedStyle":Ljava/lang/String;
    invoke-static {p5}, Lexpo/modules/devlauncher/helpers/DevLauncherColorsHelperKt;->RGBAtoARGB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "normalizedStatusBarBackgroundColor":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-static {v1}, Lexpo/modules/devlauncher/helpers/DevLauncherColorsHelperKt;->isValidColor(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    .line 73
    :cond_1
    :goto_0
    const-string v2, "light-content"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 75
    const-string v2, "#88000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    .line 78
    :cond_2
    const/4 v2, 0x0

    .line 71
    :goto_1
    nop

    .line 84
    .local v2, "finalBackgroundColor":I
    move-object v3, p0

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {p1, v2, v3}, Lexpo/modules/devlauncher/launcher/configurators/DevLauncherExpoActivityConfigurator;->setColor(ILandroid/app/Activity;)V

    .line 85
    return-void
.end method

.method private final setHidden(ZLandroid/app/Activity;)V
    .locals 3
    .param p1, "hidden"    # Z
    .param p2, "activity"    # Landroid/app/Activity;

    .line 114
    const/16 v0, 0x400

    const/16 v1, 0x800

    if-eqz p1, :cond_0

    .line 115
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->addFlags(I)V

    .line 116
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->addFlags(I)V

    .line 119
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 121
    :goto_0
    return-void
.end method

.method private final setStyle(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;
    .locals 4
    .param p1, "style"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;

    .line 90
    const-string v0, "light-content"

    .line 91
    .local v0, "appliedStatusBarStyle":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const-string v2, "getDecorView(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .local v1, "decorView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    .line 93
    .local v2, "systemUiVisibilityFlags":I
    nop

    .line 94
    const-string v3, "light-content"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    and-int/lit16 v2, v2, -0x2001

    .line 96
    const-string v0, "light-content"

    goto :goto_0

    .line 98
    :cond_0
    const-string v3, "dark-content"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 99
    or-int/lit16 v2, v2, 0x2000

    .line 100
    const-string v0, "dark-content"

    goto :goto_0

    .line 103
    :cond_1
    or-int/lit16 v2, v2, 0x2000

    .line 104
    const-string v0, "dark-content"

    .line 107
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 109
    return-object v0
.end method

.method private final setTranslucent(ZLandroid/app/Activity;)V
    .locals 2
    .param p1, "translucent"    # Z
    .param p2, "activity"    # Landroid/app/Activity;

    .line 127
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "getDecorView(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    .local v0, "decorView":Landroid/view/View;
    if-eqz p1, :cond_0

    .line 129
    new-instance v1, Lexpo/modules/devlauncher/launcher/configurators/DevLauncherExpoActivityConfigurator$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lexpo/modules/devlauncher/launcher/configurators/DevLauncherExpoActivityConfigurator$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    goto :goto_0

    .line 139
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 141
    :goto_0
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 142
    return-void
.end method

.method private static final setTranslucent$lambda$1(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5
    .param p0, "v"    # Landroid/view/View;
    .param p1, "insets"    # Landroid/view/WindowInsets;

    const-string v0, "v"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0, p1}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    .line 131
    .local v0, "defaultInsets":Landroid/view/WindowInsets;
    nop

    .line 132
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    .line 133
    nop

    .line 134
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    .line 135
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    .line 131
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public final applyNavigationBarConfiguration(Lcom/facebook/react/ReactActivity;)V
    .locals 8
    .param p1, "activity"    # Lcom/facebook/react/ReactActivity;

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/configurators/DevLauncherExpoActivityConfigurator;->manifest:Lexpo/modules/manifests/core/Manifest;

    invoke-virtual {v0}, Lexpo/modules/manifests/core/Manifest;->getAndroidNavigationBarOptions()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 157
    .local v0, "navBarOptions":Lorg/json/JSONObject;
    :cond_0
    const-string v1, "backgroundColor"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "navBarColor":Ljava/lang/String;
    invoke-static {v1}, Lexpo/modules/devlauncher/helpers/DevLauncherColorsHelperKt;->isValidColor(Ljava/lang/String;)Z

    move-result v2

    const/high16 v3, 0x8000000

    if-eqz v2, :cond_1

    .line 159
    nop

    .line 160
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/react/ReactActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 161
    invoke-virtual {p1}, Lcom/facebook/react/ReactActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/Window;->setNavigationBarColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 162
    :catchall_0
    move-exception v2

    .line 163
    .local v2, "e":Ljava/lang/Throwable;
    sget-object v4, Lexpo/modules/devlauncher/launcher/configurators/DevLauncherExpoActivityConfigurator;->TAG:Ljava/lang/String;

    const-string v5, "Failed to configure androidNavigationBar.backgroundColor"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    const-string v2, "barStyle"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "navBarAppearance":Ljava/lang/String;
    const-string v4, ""

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "getDecorView(...)"

    if-nez v5, :cond_2

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    if-lt v5, v7, :cond_2

    .line 170
    nop

    .line 171
    :try_start_1
    invoke-virtual {p1}, Lcom/facebook/react/ReactActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 172
    invoke-virtual {p1}, Lcom/facebook/react/ReactActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v5, -0x80000000

    invoke-virtual {v3, v5}, Landroid/view/Window;->addFlags(I)V

    .line 173
    const-string v3, "dark-content"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 174
    invoke-virtual {p1}, Lcom/facebook/react/ReactActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    .local v3, "decorView":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v5

    .line 176
    .local v5, "flags":I
    or-int/lit8 v5, v5, 0x10

    .line 177
    invoke-virtual {v3, v5}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v3    # "decorView":Landroid/view/View;
    .end local v5    # "flags":I
    goto :goto_1

    .line 179
    :catchall_1
    move-exception v3

    .line 180
    .local v3, "e":Ljava/lang/Throwable;
    sget-object v5, Lexpo/modules/devlauncher/launcher/configurators/DevLauncherExpoActivityConfigurator;->TAG:Ljava/lang/String;

    const-string v7, "Failed to configure androidNavigationBar.barStyle"

    invoke-static {v5, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    const-string v3, "visible"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 186
    .local v3, "navBarVisible":Ljava/lang/String;
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 189
    invoke-virtual {p1}, Lcom/facebook/react/ReactActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    .local v4, "decorView":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v5

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v6, "leanback"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 191
    const/4 v6, 0x6

    goto :goto_3

    .line 190
    :sswitch_1
    const-string v6, "immersive"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_2

    .line 192
    :cond_3
    const/16 v6, 0x806

    goto :goto_3

    .line 190
    :sswitch_2
    const-string v6, "sticky-immersive"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_2

    .line 193
    :cond_4
    const/16 v6, 0x1006

    goto :goto_3

    .line 194
    :cond_5
    :goto_2
    const/4 v6, 0x0

    .line 190
    :goto_3
    or-int/2addr v5, v6

    .line 196
    .restart local v5    # "flags":I
    invoke-virtual {v4, v5}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 198
    .end local v4    # "decorView":Landroid/view/View;
    .end local v5    # "flags":I
    :cond_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4759d029 -> :sswitch_2
        0x43ceaabb -> :sswitch_1
        0x5d96814d -> :sswitch_0
    .end sparse-switch
.end method

.method public final applyOrientation(Lcom/facebook/react/ReactActivity;)V
    .locals 3
    .param p1, "activity"    # Lcom/facebook/react/ReactActivity;

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/configurators/DevLauncherExpoActivityConfigurator;->manifest:Lexpo/modules/manifests/core/Manifest;

    invoke-virtual {v0}, Lexpo/modules/manifests/core/Manifest;->getOrientation()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "default"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p1, v1}, Lcom/facebook/react/ReactActivity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 46
    :sswitch_1
    const-string v2, "landscape"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 49
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/react/ReactActivity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 46
    :sswitch_2
    const-string v2, "portrait"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 48
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/facebook/react/ReactActivity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 50
    :cond_3
    :goto_0
    invoke-virtual {p1, v1}, Lcom/facebook/react/ReactActivity;->setRequestedOrientation(I)V

    .line 52
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2b77bb9b -> :sswitch_2
        0x5545f2bb -> :sswitch_1
        0x5c13d641 -> :sswitch_0
    .end sparse-switch
.end method

.method public final applyStatusBarConfiguration(Lcom/facebook/react/ReactActivity;)V
    .locals 10
    .param p1, "activity"    # Lcom/facebook/react/ReactActivity;

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/configurators/DevLauncherExpoActivityConfigurator;->manifest:Lexpo/modules/manifests/core/Manifest;

    invoke-virtual {v0}, Lexpo/modules/manifests/core/Manifest;->getAndroidStatusBarOptions()Lorg/json/JSONObject;

    move-result-object v0

    .line 56
    .local v0, "statusBarOptions":Lorg/json/JSONObject;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "barStyle"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    goto :goto_0

    :cond_0
    move-object v8, v1

    .line 57
    .local v8, "style":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "backgroundColor"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object v9, v1

    .line 58
    .local v9, "backgroundColor":Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    const-string v3, "translucent"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v7, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v7, v2

    .line 59
    .local v7, "translucent":Z
    :goto_2
    if-eqz v0, :cond_4

    const-string v3, "hidden"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    move v6, v2

    goto :goto_3

    :cond_4
    move v6, v1

    .line 61
    .local v6, "hidden":Z
    :goto_3
    new-instance v1, Lexpo/modules/devlauncher/launcher/configurators/DevLauncherExpoActivityConfigurator$$ExternalSyntheticLambda1;

    move-object v3, v1

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v3 .. v9}, Lexpo/modules/devlauncher/launcher/configurators/DevLauncherExpoActivityConfigurator$$ExternalSyntheticLambda1;-><init>(Lcom/facebook/react/ReactActivity;Lexpo/modules/devlauncher/launcher/configurators/DevLauncherExpoActivityConfigurator;ZZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/facebook/react/ReactActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 86
    return-void
.end method

.method public final applyTaskDescription(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/configurators/DevLauncherExpoActivityConfigurator;->manifest:Lexpo/modules/manifests/core/Manifest;

    invoke-virtual {v0}, Lexpo/modules/manifests/core/Manifest;->getPrimaryColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lexpo/modules/devlauncher/helpers/DevLauncherColorsHelperKt;->isValidColor(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/configurators/DevLauncherExpoActivityConfigurator;->manifest:Lexpo/modules/manifests/core/Manifest;

    invoke-virtual {v0}, Lexpo/modules/manifests/core/Manifest;->getPrimaryColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 34
    .local v0, "color":I
    iget-object v1, p0, Lexpo/modules/devlauncher/launcher/configurators/DevLauncherExpoActivityConfigurator;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lexpo/modules/devlauncher/launcher/configurators/DevLauncherExpoActivityConfigurator;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 36
    .local v1, "icon":Landroid/graphics/Bitmap;
    nop

    .line 37
    new-instance v2, Landroid/app/ActivityManager$TaskDescription;

    .line 38
    iget-object v3, p0, Lexpo/modules/devlauncher/launcher/configurators/DevLauncherExpoActivityConfigurator;->manifest:Lexpo/modules/manifests/core/Manifest;

    invoke-virtual {v3}, Lexpo/modules/manifests/core/Manifest;->getName()Ljava/lang/String;

    move-result-object v3

    .line 39
    nop

    .line 40
    nop

    .line 37
    invoke-direct {v2, v3, v1, v0}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 36
    invoke-virtual {p1, v2}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 43
    return-void
.end method

.method public final setColor(ILandroid/app/Activity;)V
    .locals 2
    .param p1, "color"    # I
    .param p2, "activity"    # Landroid/app/Activity;

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    nop

    .line 147
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 148
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 149
    nop

    .line 150
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 149
    invoke-virtual {v0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 151
    return-void
.end method
