.class public final Lexpo/modules/devlauncher/react/activitydelegates/DevLauncherReactActivityRedirectDelegate;
.super Lexpo/modules/devlauncher/react/activitydelegates/DevLauncherReactActivityNOPDelegate;
.source "DevLauncherReactActivityRedirectDelegate.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0014\u0010\u0004\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0002\u0010\u0008J\u0012\u0010\t\u001a\u00020\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016R\u001c\u0010\u0004\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lexpo/modules/devlauncher/react/activitydelegates/DevLauncherReactActivityRedirectDelegate;",
        "Lexpo/modules/devlauncher/react/activitydelegates/DevLauncherReactActivityNOPDelegate;",
        "activity",
        "Lcom/facebook/react/ReactActivity;",
        "redirect",
        "Lkotlin/Function1;",
        "Landroid/content/Intent;",
        "",
        "(Lcom/facebook/react/ReactActivity;Lkotlin/jvm/functions/Function1;)V",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
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
.field private final redirect:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/content/Intent;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/react/ReactActivity;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "activity"    # Lcom/facebook/react/ReactActivity;
    .param p2, "redirect"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/ReactActivity;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/content/Intent;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "redirect"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p1}, Lexpo/modules/devlauncher/react/activitydelegates/DevLauncherReactActivityNOPDelegate;-><init>(Lcom/facebook/react/ReactActivity;)V

    .line 10
    iput-object p2, p0, Lexpo/modules/devlauncher/react/activitydelegates/DevLauncherReactActivityRedirectDelegate;->redirect:Lkotlin/jvm/functions/Function1;

    .line 8
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 14
    new-instance v0, Lexpo/modules/devlauncher/splashscreen/DevLauncherSplashScreenProvider;

    invoke-direct {v0}, Lexpo/modules/devlauncher/splashscreen/DevLauncherSplashScreenProvider;-><init>()V

    .line 15
    invoke-virtual {p0}, Lexpo/modules/devlauncher/react/activitydelegates/DevLauncherReactActivityRedirectDelegate;->getPlainActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "getPlainActivity(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lexpo/modules/devlauncher/splashscreen/DevLauncherSplashScreenProvider;->attachSplashScreenViewAsync(Landroid/app/Activity;)Lexpo/modules/devlauncher/splashscreen/DevLauncherSplashScreen;

    .line 16
    iget-object v0, p0, Lexpo/modules/devlauncher/react/activitydelegates/DevLauncherReactActivityRedirectDelegate;->redirect:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0}, Lexpo/modules/devlauncher/react/activitydelegates/DevLauncherReactActivityRedirectDelegate;->getPlainActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    return-void
.end method
