.class public final Lexpo/modules/devlauncher/splashscreen/DevLauncherSplashScreenProvider;
.super Ljava/lang/Object;
.source "DevLauncherSplashScreenProvider.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lexpo/modules/devlauncher/splashscreen/DevLauncherSplashScreenProvider;",
        "",
        "()V",
        "attachSplashScreenViewAsync",
        "Lexpo/modules/devlauncher/splashscreen/DevLauncherSplashScreen;",
        "activity",
        "Landroid/app/Activity;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final attachSplashScreenViewAsync(Landroid/app/Activity;)Lexpo/modules/devlauncher/splashscreen/DevLauncherSplashScreen;
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 9
    const/4 v0, 0x0

    return-object v0

    .line 11
    .local v0, "contentView":Landroid/view/ViewGroup;
    :cond_0
    new-instance v1, Lexpo/modules/devlauncher/splashscreen/DevLauncherSplashScreen;

    .line 12
    move-object v2, p1

    check-cast v2, Landroid/content/Context;

    .line 11
    invoke-direct {v1, v2}, Lexpo/modules/devlauncher/splashscreen/DevLauncherSplashScreen;-><init>(Landroid/content/Context;)V

    .line 15
    .local v1, "splashScreenView":Lexpo/modules/devlauncher/splashscreen/DevLauncherSplashScreen;
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 16
    return-object v1
.end method
