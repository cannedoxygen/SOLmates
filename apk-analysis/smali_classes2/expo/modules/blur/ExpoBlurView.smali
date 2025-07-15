.class public final Lexpo/modules/blur/ExpoBlurView;
.super Lexpo/modules/kotlin/views/ExpoView;
.source "ExpoBlurView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/blur/ExpoBlurView$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\nJ\u0006\u0010\u0017\u001a\u00020\u0015J\u000e\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u0008J\u000e\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\nR\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u00020\u000fX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001c"
    }
    d2 = {
        "Lexpo/modules/blur/ExpoBlurView;",
        "Lexpo/modules/kotlin/views/ExpoView;",
        "context",
        "Landroid/content/Context;",
        "appContext",
        "Lexpo/modules/kotlin/AppContext;",
        "(Landroid/content/Context;Lexpo/modules/kotlin/AppContext;)V",
        "blurMethod",
        "Lexpo/modules/blur/enums/BlurMethod;",
        "blurRadius",
        "",
        "blurReduction",
        "blurView",
        "Leightbitlab/com/blurview/BlurView;",
        "tint",
        "Lexpo/modules/blur/enums/TintStyle;",
        "getTint$expo_blur_debug",
        "()Lexpo/modules/blur/enums/TintStyle;",
        "setTint$expo_blur_debug",
        "(Lexpo/modules/blur/enums/TintStyle;)V",
        "applyBlurReduction",
        "",
        "reductionFactor",
        "applyTint",
        "setBlurMethod",
        "method",
        "setBlurRadius",
        "radius",
        "expo-blur_debug"
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
.field private blurMethod:Lexpo/modules/blur/enums/BlurMethod;

.field private blurRadius:F

.field private blurReduction:F

.field private final blurView:Leightbitlab/com/blurview/BlurView;

.field private tint:Lexpo/modules/blur/enums/TintStyle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lexpo/modules/kotlin/AppContext;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appContext"    # Lexpo/modules/kotlin/AppContext;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1, p2}, Lexpo/modules/kotlin/views/ExpoView;-><init>(Landroid/content/Context;Lexpo/modules/kotlin/AppContext;)V

    .line 18
    sget-object v0, Lexpo/modules/blur/enums/BlurMethod;->NONE:Lexpo/modules/blur/enums/BlurMethod;

    iput-object v0, p0, Lexpo/modules/blur/ExpoBlurView;->blurMethod:Lexpo/modules/blur/enums/BlurMethod;

    .line 19
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lexpo/modules/blur/ExpoBlurView;->blurReduction:F

    .line 20
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lexpo/modules/blur/ExpoBlurView;->blurRadius:F

    .line 21
    sget-object v0, Lexpo/modules/blur/enums/TintStyle;->DEFAULT:Lexpo/modules/blur/enums/TintStyle;

    iput-object v0, p0, Lexpo/modules/blur/ExpoBlurView;->tint:Lexpo/modules/blur/enums/TintStyle;

    .line 23
    new-instance v0, Leightbitlab/com/blurview/BlurView;

    invoke-direct {v0, p1}, Leightbitlab/com/blurview/BlurView;-><init>(Landroid/content/Context;)V

    move-object v1, v0

    .local v1, "it":Leightbitlab/com/blurview/BlurView;
    const/4 v2, 0x0

    .line 24
    .local v2, "$i$a$-also-ExpoBlurView$blurView$1":I
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v3}, Leightbitlab/com/blurview/BlurView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    invoke-virtual {p2}, Lexpo/modules/kotlin/AppContext;->getThrowingActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    .line 27
    .local v3, "decorView":Landroid/view/View;
    :goto_0
    if-eqz v3, :cond_1

    const v4, 0x1020002

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    :cond_1
    if-eqz v4, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 28
    .local v4, "rootView":Landroid/view/ViewGroup;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1f

    if-lt v5, v6, :cond_2

    .line 29
    new-instance v5, Leightbitlab/com/blurview/RenderEffectBlur;

    invoke-direct {v5}, Leightbitlab/com/blurview/RenderEffectBlur;-><init>()V

    check-cast v5, Leightbitlab/com/blurview/BlurAlgorithm;

    invoke-virtual {v1, v4, v5}, Leightbitlab/com/blurview/BlurView;->setupWith(Landroid/view/ViewGroup;Leightbitlab/com/blurview/BlurAlgorithm;)Leightbitlab/com/blurview/BlurViewFacade;

    move-result-object v5

    .line 30
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-interface {v5, v6}, Leightbitlab/com/blurview/BlurViewFacade;->setFrameClearDrawable(Landroid/graphics/drawable/Drawable;)Leightbitlab/com/blurview/BlurViewFacade;

    goto :goto_1

    .line 33
    :cond_2
    new-instance v5, Leightbitlab/com/blurview/RenderScriptBlur;

    invoke-direct {v5, p1}, Leightbitlab/com/blurview/RenderScriptBlur;-><init>(Landroid/content/Context;)V

    check-cast v5, Leightbitlab/com/blurview/BlurAlgorithm;

    invoke-virtual {v1, v4, v5}, Leightbitlab/com/blurview/BlurView;->setupWith(Landroid/view/ViewGroup;Leightbitlab/com/blurview/BlurAlgorithm;)Leightbitlab/com/blurview/BlurViewFacade;

    move-result-object v5

    .line 34
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-interface {v5, v6}, Leightbitlab/com/blurview/BlurViewFacade;->setFrameClearDrawable(Landroid/graphics/drawable/Drawable;)Leightbitlab/com/blurview/BlurViewFacade;

    .line 36
    :goto_1
    move-object v5, v1

    check-cast v5, Landroid/view/View;

    invoke-virtual {p0, v5}, Lexpo/modules/blur/ExpoBlurView;->addView(Landroid/view/View;)V

    .line 37
    nop

    .line 23
    .end local v1    # "it":Leightbitlab/com/blurview/BlurView;
    .end local v2    # "$i$a$-also-ExpoBlurView$blurView$1":I
    .end local v3    # "decorView":Landroid/view/View;
    .end local v4    # "rootView":Landroid/view/ViewGroup;
    iput-object v0, p0, Lexpo/modules/blur/ExpoBlurView;->blurView:Leightbitlab/com/blurview/BlurView;

    .line 17
    return-void

    .line 27
    .restart local v1    # "it":Leightbitlab/com/blurview/BlurView;
    .restart local v2    # "$i$a$-also-ExpoBlurView$blurView$1":I
    .restart local v3    # "decorView":Landroid/view/View;
    :cond_3
    new-instance v0, Lexpo/modules/kotlin/exception/Exceptions$MissingRootView;

    invoke-direct {v0}, Lexpo/modules/kotlin/exception/Exceptions$MissingRootView;-><init>()V

    throw v0
.end method


# virtual methods
.method public final applyBlurReduction(F)V
    .locals 1
    .param p1, "reductionFactor"    # F

    .line 75
    iput p1, p0, Lexpo/modules/blur/ExpoBlurView;->blurReduction:F

    .line 76
    iget v0, p0, Lexpo/modules/blur/ExpoBlurView;->blurRadius:F

    invoke-virtual {p0, v0}, Lexpo/modules/blur/ExpoBlurView;->setBlurRadius(F)V

    .line 77
    return-void
.end method

.method public final applyTint()V
    .locals 3

    .line 80
    iget-object v0, p0, Lexpo/modules/blur/ExpoBlurView;->blurMethod:Lexpo/modules/blur/enums/BlurMethod;

    sget-object v1, Lexpo/modules/blur/ExpoBlurView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lexpo/modules/blur/enums/BlurMethod;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 82
    :pswitch_0
    iget-object v0, p0, Lexpo/modules/blur/ExpoBlurView;->blurView:Leightbitlab/com/blurview/BlurView;

    iget-object v1, p0, Lexpo/modules/blur/ExpoBlurView;->tint:Lexpo/modules/blur/enums/TintStyle;

    iget v2, p0, Lexpo/modules/blur/ExpoBlurView;->blurRadius:F

    invoke-virtual {v1, v2}, Lexpo/modules/blur/enums/TintStyle;->toBlurEffect(F)I

    move-result v1

    invoke-virtual {v0, v1}, Leightbitlab/com/blurview/BlurView;->setOverlayColor(I)Leightbitlab/com/blurview/BlurViewFacade;

    goto :goto_0

    .line 86
    :pswitch_1
    iget-object v0, p0, Lexpo/modules/blur/ExpoBlurView;->tint:Lexpo/modules/blur/enums/TintStyle;

    iget v1, p0, Lexpo/modules/blur/ExpoBlurView;->blurRadius:F

    invoke-virtual {v0, v1}, Lexpo/modules/blur/enums/TintStyle;->toBlurEffect(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lexpo/modules/blur/ExpoBlurView;->setBackgroundColor(I)V

    .line 89
    :goto_0
    iget-object v0, p0, Lexpo/modules/blur/ExpoBlurView;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v0}, Leightbitlab/com/blurview/BlurView;->invalidate()V

    .line 90
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getTint$expo_blur_debug()Lexpo/modules/blur/enums/TintStyle;
    .locals 1

    .line 21
    iget-object v0, p0, Lexpo/modules/blur/ExpoBlurView;->tint:Lexpo/modules/blur/enums/TintStyle;

    return-object v0
.end method

.method public final setBlurMethod(Lexpo/modules/blur/enums/BlurMethod;)V
    .locals 3
    .param p1, "method"    # Lexpo/modules/blur/enums/BlurMethod;

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iput-object p1, p0, Lexpo/modules/blur/ExpoBlurView;->blurMethod:Lexpo/modules/blur/enums/BlurMethod;

    .line 60
    sget-object v0, Lexpo/modules/blur/ExpoBlurView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lexpo/modules/blur/enums/BlurMethod;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 66
    :pswitch_0
    iget-object v0, p0, Lexpo/modules/blur/ExpoBlurView;->blurView:Leightbitlab/com/blurview/BlurView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Leightbitlab/com/blurview/BlurView;->setBlurEnabled(Z)Leightbitlab/com/blurview/BlurViewFacade;

    .line 67
    invoke-virtual {p0, v1}, Lexpo/modules/blur/ExpoBlurView;->setBackgroundColor(I)V

    goto :goto_0

    .line 62
    :pswitch_1
    iget-object v0, p0, Lexpo/modules/blur/ExpoBlurView;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v0, v1}, Leightbitlab/com/blurview/BlurView;->setBlurEnabled(Z)Leightbitlab/com/blurview/BlurViewFacade;

    .line 71
    :goto_0
    iget v0, p0, Lexpo/modules/blur/ExpoBlurView;->blurRadius:F

    invoke-virtual {p0, v0}, Lexpo/modules/blur/ExpoBlurView;->setBlurRadius(F)V

    .line 72
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setBlurRadius(F)V
    .locals 4
    .param p1, "radius"    # F

    .line 40
    iget-object v0, p0, Lexpo/modules/blur/ExpoBlurView;->blurMethod:Lexpo/modules/blur/enums/BlurMethod;

    sget-object v1, Lexpo/modules/blur/ExpoBlurView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lexpo/modules/blur/enums/BlurMethod;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 48
    :pswitch_0
    iget-object v0, p0, Lexpo/modules/blur/ExpoBlurView;->blurView:Leightbitlab/com/blurview/BlurView;

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    const/4 v3, 0x1

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    xor-int/2addr v2, v3

    invoke-virtual {v0, v2}, Leightbitlab/com/blurview/BlurView;->setBlurEnabled(Z)Leightbitlab/com/blurview/BlurViewFacade;

    .line 49
    cmpl-float v0, p1, v1

    if-lez v0, :cond_1

    .line 50
    iget-object v0, p0, Lexpo/modules/blur/ExpoBlurView;->blurView:Leightbitlab/com/blurview/BlurView;

    iget v1, p0, Lexpo/modules/blur/ExpoBlurView;->blurReduction:F

    div-float v1, p1, v1

    invoke-virtual {v0, v1}, Leightbitlab/com/blurview/BlurView;->setBlurRadius(F)Leightbitlab/com/blurview/BlurViewFacade;

    .line 51
    iget-object v0, p0, Lexpo/modules/blur/ExpoBlurView;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v0}, Leightbitlab/com/blurview/BlurView;->invalidate()V

    goto :goto_1

    .line 42
    :pswitch_1
    iget-object v0, p0, Lexpo/modules/blur/ExpoBlurView;->tint:Lexpo/modules/blur/enums/TintStyle;

    iget v1, p0, Lexpo/modules/blur/ExpoBlurView;->blurRadius:F

    invoke-virtual {v0, v1}, Lexpo/modules/blur/enums/TintStyle;->toBlurEffect(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lexpo/modules/blur/ExpoBlurView;->setBackgroundColor(I)V

    .line 55
    :cond_1
    :goto_1
    iput p1, p0, Lexpo/modules/blur/ExpoBlurView;->blurRadius:F

    .line 56
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setTint$expo_blur_debug(Lexpo/modules/blur/enums/TintStyle;)V
    .locals 1
    .param p1, "<set-?>"    # Lexpo/modules/blur/enums/TintStyle;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lexpo/modules/blur/ExpoBlurView;->tint:Lexpo/modules/blur/enums/TintStyle;

    return-void
.end method
