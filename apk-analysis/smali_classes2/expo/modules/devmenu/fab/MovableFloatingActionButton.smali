.class public final Lexpo/modules/devmenu/fab/MovableFloatingActionButton;
.super Landroid/widget/FrameLayout;
.source "MovableFloatingActionButton.kt"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u0016H\u0014J\u0006\u0010\u0017\u001a\u00020\u0007J(\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001aH\u0014J\u0018\u0010\u001e\u001a\u00020\u00112\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lexpo/modules/devmenu/fab/MovableFloatingActionButton;",
        "Landroid/widget/FrameLayout;",
        "Landroid/view/View$OnTouchListener;",
        "context",
        "Landroid/content/Context;",
        "updateSystemGestureExclusionRects",
        "Lkotlin/Function0;",
        "",
        "(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V",
        "dX",
        "",
        "dY",
        "downRawX",
        "downRawY",
        "eventRegion",
        "Landroid/graphics/Region;",
        "isActive",
        "",
        "stencilPath",
        "Landroid/graphics/Path;",
        "dispatchDraw",
        "canvas",
        "Landroid/graphics/Canvas;",
        "onClick",
        "onSizeChanged",
        "w",
        "",
        "h",
        "oldw",
        "oldh",
        "onTouch",
        "view",
        "Landroid/view/View;",
        "motionEvent",
        "Landroid/view/MotionEvent;",
        "expo-dev-menu_debug"
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
.field private dX:F

.field private dY:F

.field private downRawX:F

.field private downRawY:F

.field private eventRegion:Landroid/graphics/Region;

.field private isActive:Z

.field private final stencilPath:Landroid/graphics/Path;

.field private final updateSystemGestureExclusionRects:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$d9iJy8iOIx-XArwrp2RIkq-wdxo(Lexpo/modules/devmenu/fab/MovableFloatingActionButton;)V
    .locals 0

    invoke-static {p0}, Lexpo/modules/devmenu/fab/MovableFloatingActionButton;->onTouch$lambda$3(Lexpo/modules/devmenu/fab/MovableFloatingActionButton;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "updateSystemGestureExclusionRects"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateSystemGestureExclusionRects"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object p2, p0, Lexpo/modules/devmenu/fab/MovableFloatingActionButton;->updateSystemGestureExclusionRects:Lkotlin/jvm/functions/Function0;

    .line 35
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lexpo/modules/devmenu/fab/MovableFloatingActionButton;->stencilPath:Landroid/graphics/Path;

    .line 38
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lexpo/modules/devmenu/fab/MovableFloatingActionButton;->eventRegion:Landroid/graphics/Region;

    .line 40
    nop

    .line 41
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x96

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v1, v0

    .local v1, "$this$_init__u24lambda_u240":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v2, 0x0

    .line 42
    .local v2, "$i$a$-apply-MovableFloatingActionButton$1":I
    const v3, 0x800055

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 43
    const/16 v3, 0x18

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 44
    nop

    .line 41
    .end local v1    # "$this$_init__u24lambda_u240":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "$i$a$-apply-MovableFloatingActionButton$1":I
    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, v0}, Lexpo/modules/devmenu/fab/MovableFloatingActionButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    invoke-virtual {p0, v0}, Lexpo/modules/devmenu/fab/MovableFloatingActionButton;->setZ(F)V

    .line 47
    move-object v0, p0

    check-cast v0, Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v0}, Lexpo/modules/devmenu/fab/MovableFloatingActionButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 49
    nop

    .line 50
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object v1, v0

    .local v1, "$this$_init__u24lambda_u242":Landroid/view/View;
    const/4 v2, 0x0

    .line 51
    .local v2, "$i$a$-apply-MovableFloatingActionButton$2":I
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v4, v3

    .local v4, "$this$lambda_u242_u24lambda_u241":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v5, 0x0

    .line 52
    .local v5, "$i$a$-apply-MovableFloatingActionButton$2$1":I
    const/16 v6, 0x11

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 53
    nop

    .line 51
    .end local v4    # "$this$lambda_u242_u24lambda_u241":Landroid/widget/FrameLayout$LayoutParams;
    .end local v5    # "$i$a$-apply-MovableFloatingActionButton$2$1":I
    check-cast v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    const v3, -0xff01

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 55
    nop

    .line 50
    .end local v1    # "$this$_init__u24lambda_u242":Landroid/view/View;
    .end local v2    # "$i$a$-apply-MovableFloatingActionButton$2":I
    nop

    .line 49
    invoke-virtual {p0, v0}, Lexpo/modules/devmenu/fab/MovableFloatingActionButton;->addView(Landroid/view/View;)V

    .line 57
    nop

    .line 24
    return-void
.end method

.method private static final onTouch$lambda$3(Lexpo/modules/devmenu/fab/MovableFloatingActionButton;)V
    .locals 1
    .param p0, "this$0"    # Lexpo/modules/devmenu/fab/MovableFloatingActionButton;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lexpo/modules/devmenu/fab/MovableFloatingActionButton;->updateSystemGestureExclusionRects:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 181
    .local v0, "save":I
    iget-object v1, p0, Lexpo/modules/devmenu/fab/MovableFloatingActionButton;->stencilPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 182
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 183
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 184
    return-void
.end method

.method public final onClick()V
    .locals 5

    .line 60
    sget-object v0, Lexpo/modules/devmenu/DevMenuManager;->INSTANCE:Lexpo/modules/devmenu/DevMenuManager;

    invoke-virtual {v0}, Lexpo/modules/devmenu/DevMenuManager;->getReactHost()Lexpo/interfaces/devmenu/ReactHostWrapper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 61
    return-void

    .line 62
    .local v0, "reactHostWrapper":Lexpo/interfaces/devmenu/ReactHostWrapper;
    :cond_0
    invoke-virtual {v0}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 65
    .local v1, "currentActivity":Landroid/app/Activity;
    :cond_1
    sget-object v2, Lexpo/modules/devmenu/DevMenuManager;->INSTANCE:Lexpo/modules/devmenu/DevMenuManager;

    check-cast v2, Lexpo/interfaces/devmenu/DevMenuManagerInterface;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v2, v1, v4, v3, v4}, Lexpo/interfaces/devmenu/DevMenuManagerInterface$DefaultImpls;->openMenu$default(Lexpo/interfaces/devmenu/DevMenuManagerInterface;Landroid/app/Activity;Ljava/lang/String;ILjava/lang/Object;)V

    .line 66
    return-void

    .line 63
    .end local v1    # "currentActivity":Landroid/app/Activity;
    :cond_2
    :goto_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 9
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 165
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 168
    iget-object v0, p0, Lexpo/modules/devmenu/fab/MovableFloatingActionButton;->stencilPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 169
    iget-object v1, p0, Lexpo/modules/devmenu/fab/MovableFloatingActionButton;->stencilPath:Landroid/graphics/Path;

    int-to-float v4, p1

    int-to-float v5, p2

    int-to-float v6, p1

    int-to-float v7, p2

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 170
    iget-object v0, p0, Lexpo/modules/devmenu/fab/MovableFloatingActionButton;->stencilPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 172
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 173
    .local v0, "rectF":Landroid/graphics/RectF;
    iget-object v1, p0, Lexpo/modules/devmenu/fab/MovableFloatingActionButton;->stencilPath:Landroid/graphics/Path;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 175
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Lexpo/modules/devmenu/fab/MovableFloatingActionButton;->eventRegion:Landroid/graphics/Region;

    .line 176
    iget-object v1, p0, Lexpo/modules/devmenu/fab/MovableFloatingActionButton;->eventRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lexpo/modules/devmenu/fab/MovableFloatingActionButton;->stencilPath:Landroid/graphics/Path;

    new-instance v3, Landroid/graphics/Region;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    iget v6, v0, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Region;-><init>(IIII)V

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 177
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 17
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "view"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "motionEvent"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const-string v4, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 70
    .local v2, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 72
    .local v4, "action":I
    const-string v5, "null cannot be cast to non-null type android.view.View"

    const/4 v6, 0x0

    packed-switch v4, :pswitch_data_0

    .line 159
    :pswitch_0
    move-object v14, v2

    .end local v2    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .local v14, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-super {v0, v1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 88
    .end local v14    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v2    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :pswitch_1
    iget-boolean v8, v0, Lexpo/modules/devmenu/fab/MovableFloatingActionButton;->isActive:Z

    if-nez v8, :cond_0

    .line 89
    return v6

    .line 92
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 93
    .local v6, "viewWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 95
    .local v8, "viewHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v9

    check-cast v5, Landroid/view/View;

    .line 96
    .local v5, "viewParent":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v9

    .line 97
    .local v9, "parentWidth":I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v10

    .line 99
    .local v10, "parentHeight":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v11

    iget v12, v0, Lexpo/modules/devmenu/fab/MovableFloatingActionButton;->dX:F

    add-float/2addr v11, v12

    .line 100
    .local v11, "newX":F
    iget v12, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    int-to-double v12, v12

    float-to-double v14, v11

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    double-to-float v11, v12

    .line 101
    sub-int v12, v9, v6

    iget v13, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v12, v13

    int-to-double v12, v12

    float-to-double v14, v11

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v12

    double-to-float v11, v12

    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    iget v13, v0, Lexpo/modules/devmenu/fab/MovableFloatingActionButton;->dY:F

    add-float/2addr v12, v13

    .line 104
    .local v12, "newY":F
    iget v13, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-double v13, v13

    move/from16 v16, v8

    .end local v8    # "viewHeight":I
    .local v16, "viewHeight":I
    float-to-double v7, v12

    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    double-to-float v7, v7

    .line 105
    .end local v12    # "newY":F
    .local v7, "newY":F
    sub-int v8, v10, v16

    iget v12, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v8, v12

    int-to-double v12, v8

    move v8, v4

    .end local v4    # "action":I
    .local v8, "action":I
    float-to-double v3, v7

    invoke-static {v12, v13, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    double-to-float v3, v3

    .line 107
    .end local v7    # "newY":F
    .local v3, "newY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 108
    invoke-virtual {v4, v11}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 109
    invoke-virtual {v4, v3}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 110
    const-wide/16 v12, 0x0

    invoke-virtual {v4, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 111
    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 113
    const/4 v4, 0x1

    return v4

    .line 117
    .end local v3    # "newY":F
    .end local v5    # "viewParent":Landroid/view/View;
    .end local v6    # "viewWidth":I
    .end local v8    # "action":I
    .end local v9    # "parentWidth":I
    .end local v10    # "parentHeight":I
    .end local v11    # "newX":F
    .end local v16    # "viewHeight":I
    .restart local v4    # "action":I
    :pswitch_2
    move v8, v4

    .end local v4    # "action":I
    .restart local v8    # "action":I
    iget-boolean v3, v0, Lexpo/modules/devmenu/fab/MovableFloatingActionButton;->isActive:Z

    if-nez v3, :cond_1

    .line 118
    return v6

    .line 121
    :cond_1
    iput-boolean v6, v0, Lexpo/modules/devmenu/fab/MovableFloatingActionButton;->isActive:Z

    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    .line 124
    .local v3, "upRawX":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    .line 126
    .local v4, "upRawY":F
    iget v6, v0, Lexpo/modules/devmenu/fab/MovableFloatingActionButton;->downRawX:F

    sub-float v6, v3, v6

    .line 127
    .local v6, "upDX":F
    iget v7, v0, Lexpo/modules/devmenu/fab/MovableFloatingActionButton;->downRawY:F

    sub-float v7, v4, v7

    .line 129
    .local v7, "upDY":F
    float-to-double v9, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    const-wide/high16 v11, 0x4024000000000000L    # 10.0

    cmpg-double v9, v9, v11

    if-gez v9, :cond_2

    float-to-double v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    cmpg-double v9, v9, v11

    if-gez v9, :cond_2

    .line 130
    invoke-virtual/range {p0 .. p0}, Lexpo/modules/devmenu/fab/MovableFloatingActionButton;->onClick()V

    .line 131
    move-object v14, v2

    move/from16 v16, v3

    goto :goto_1

    .line 133
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v9

    .line 135
    .local v9, "viewWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getX()F

    move-result v10

    div-int/lit8 v11, v9, 0x2

    int-to-float v11, v11

    add-float/2addr v10, v11

    .line 137
    .local v10, "centerX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    invoke-static {v11, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v11

    check-cast v5, Landroid/view/View;

    .line 138
    .restart local v5    # "viewParent":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v11

    .line 140
    .local v11, "parentWidth":I
    div-int/lit8 v12, v11, 0x2

    int-to-float v12, v12

    cmpg-float v12, v10, v12

    if-gez v12, :cond_3

    .line 141
    iget v12, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    int-to-float v12, v12

    goto :goto_0

    .line 143
    :cond_3
    sub-int v12, v11, v9

    iget v13, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v12, v13

    int-to-float v12, v12

    .line 140
    :goto_0
    nop

    .line 146
    .local v12, "newX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    .line 147
    invoke-virtual {v13, v12}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    .line 148
    move-object v14, v2

    move/from16 v16, v3

    .end local v2    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v3    # "upRawX":F
    .restart local v14    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .local v16, "upRawX":F
    const-wide/16 v2, 0x64

    invoke-virtual {v13, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 149
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 150
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 151
    new-instance v3, Lexpo/modules/devmenu/fab/MovableFloatingActionButton$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lexpo/modules/devmenu/fab/MovableFloatingActionButton$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/devmenu/fab/MovableFloatingActionButton;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 152
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 154
    nop

    .line 129
    .end local v5    # "viewParent":Landroid/view/View;
    .end local v9    # "viewWidth":I
    .end local v10    # "centerX":F
    .end local v11    # "parentWidth":I
    .end local v12    # "newX":F
    :goto_1
    const/4 v2, 0x1

    return v2

    .line 74
    .end local v6    # "upDX":F
    .end local v7    # "upDY":F
    .end local v8    # "action":I
    .end local v14    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v16    # "upRawX":F
    .restart local v2    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .local v4, "action":I
    :pswitch_3
    move-object v14, v2

    move v8, v4

    .end local v2    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v4    # "action":I
    .restart local v8    # "action":I
    .restart local v14    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v2, v0, Lexpo/modules/devmenu/fab/MovableFloatingActionButton;->eventRegion:Landroid/graphics/Region;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Region;->contains(II)Z

    move-result v2

    if-nez v2, :cond_4

    .line 75
    return v6

    .line 78
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, v0, Lexpo/modules/devmenu/fab/MovableFloatingActionButton;->downRawX:F

    .line 79
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, v0, Lexpo/modules/devmenu/fab/MovableFloatingActionButton;->downRawY:F

    .line 80
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getX()F

    move-result v2

    iget v3, v0, Lexpo/modules/devmenu/fab/MovableFloatingActionButton;->downRawX:F

    sub-float/2addr v2, v3

    iput v2, v0, Lexpo/modules/devmenu/fab/MovableFloatingActionButton;->dX:F

    .line 81
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getY()F

    move-result v2

    iget v3, v0, Lexpo/modules/devmenu/fab/MovableFloatingActionButton;->downRawY:F

    sub-float/2addr v2, v3

    iput v2, v0, Lexpo/modules/devmenu/fab/MovableFloatingActionButton;->dY:F

    .line 82
    const/4 v2, 0x1

    iput-boolean v2, v0, Lexpo/modules/devmenu/fab/MovableFloatingActionButton;->isActive:Z

    .line 84
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
