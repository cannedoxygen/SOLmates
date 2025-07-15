.class public final Lexpo/modules/devlauncher/splashscreen/DevLauncherSplashScreen;
.super Landroid/widget/RelativeLayout;
.source "DevLauncherSplashScreen.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lexpo/modules/devlauncher/splashscreen/DevLauncherSplashScreen;",
        "Landroid/widget/RelativeLayout;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
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
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 16
    nop

    .line 17
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lexpo/modules/devlauncher/splashscreen/DevLauncherSplashScreen;->setBackgroundColor(I)V

    .line 19
    const/high16 v1, 0x42aa0000    # 85.0f

    .line 21
    .local v1, "imageWidthDPI":F
    nop

    .line 22
    nop

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 20
    const/4 v3, 0x1

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    .line 26
    .local v2, "imageWidthPixels":F
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 27
    .local v3, "imageView":Landroid/widget/ImageView;
    sget v4, Lexpo/modules/devlauncher/R$drawable;->_expodevclientcomponents_assets_logoicon:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 28
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 29
    float-to-int v5, v2

    .line 30
    nop

    .line 28
    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 31
    move-object v5, v4

    .local v5, "$this$_init__u24lambda_u240":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v6, 0x0

    .line 32
    .local v6, "$i$a$-apply-DevLauncherSplashScreen$1":I
    const/16 v7, 0xd

    invoke-virtual {v5, v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 33
    nop

    .line 31
    .end local v5    # "$this$_init__u24lambda_u240":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v6    # "$i$a$-apply-DevLauncherSplashScreen$1":I
    check-cast v4, Landroid/view/ViewGroup$LayoutParams;

    .line 28
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    move-object v0, v3

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lexpo/modules/devlauncher/splashscreen/DevLauncherSplashScreen;->addView(Landroid/view/View;)V

    .line 35
    .end local v1    # "imageWidthDPI":F
    .end local v2    # "imageWidthPixels":F
    .end local v3    # "imageView":Landroid/widget/ImageView;
    nop

    .line 13
    return-void
.end method
