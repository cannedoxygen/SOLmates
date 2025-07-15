.class public Leightbitlab/com/blurview/NoOpController;
.super Ljava/lang/Object;
.source "NoOpController.java"

# interfaces
.implements Leightbitlab/com/blurview/BlurController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 21
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)Z
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 12
    const/4 v0, 0x1

    return v0
.end method

.method public setBlurAutoUpdate(Z)Leightbitlab/com/blurview/BlurViewFacade;
    .locals 0
    .param p1, "enabled"    # Z

    .line 45
    return-object p0
.end method

.method public setBlurEnabled(Z)Leightbitlab/com/blurview/BlurViewFacade;
    .locals 0
    .param p1, "enabled"    # Z

    .line 40
    return-object p0
.end method

.method public setBlurRadius(F)Leightbitlab/com/blurview/BlurViewFacade;
    .locals 0
    .param p1, "radius"    # F

    .line 25
    return-object p0
.end method

.method public setFrameClearDrawable(Landroid/graphics/drawable/Drawable;)Leightbitlab/com/blurview/BlurViewFacade;
    .locals 0
    .param p1, "windowBackground"    # Landroid/graphics/drawable/Drawable;

    .line 35
    return-object p0
.end method

.method public setOverlayColor(I)Leightbitlab/com/blurview/BlurViewFacade;
    .locals 0
    .param p1, "overlayColor"    # I

    .line 30
    return-object p0
.end method

.method public updateBlurViewSize()V
    .locals 0

    .line 17
    return-void
.end method
