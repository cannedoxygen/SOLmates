.class final Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$AnimateDimmingViewCallback;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;
.source "DimmingFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AnimateDimmingViewCallback"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0018\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u0007H\u0016J\u0018\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u0017H\u0016R\u0016\u0010\t\u001a\n \u000b*\u0004\u0018\u00010\n0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$AnimateDimmingViewCallback;",
        "Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;",
        "screen",
        "Lcom/swmansion/rnscreens/Screen;",
        "viewToAnimate",
        "Landroid/view/View;",
        "maxAlpha",
        "",
        "(Lcom/swmansion/rnscreens/Screen;Landroid/view/View;F)V",
        "animator",
        "Landroid/animation/ValueAnimator;",
        "kotlin.jvm.PlatformType",
        "firstDimmedOffset",
        "intervalLength",
        "largestUndimmedOffset",
        "getMaxAlpha",
        "()F",
        "getScreen",
        "()Lcom/swmansion/rnscreens/Screen;",
        "getViewToAnimate",
        "()Landroid/view/View;",
        "computeOffsetFromDetentIndex",
        "index",
        "",
        "onSlide",
        "",
        "bottomSheet",
        "slideOffset",
        "onStateChanged",
        "newState",
        "react-native-screens_debug"
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
.field private final animator:Landroid/animation/ValueAnimator;

.field private firstDimmedOffset:F

.field private intervalLength:F

.field private largestUndimmedOffset:F

.field private final maxAlpha:F

.field private final screen:Lcom/swmansion/rnscreens/Screen;

.field private final viewToAnimate:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$bYQ1VOL0XUTHKQ4AJpXPp0fo3QQ(Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$AnimateDimmingViewCallback;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$AnimateDimmingViewCallback;->animator$lambda$1$lambda$0(Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$AnimateDimmingViewCallback;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Lcom/swmansion/rnscreens/Screen;Landroid/view/View;F)V
    .locals 5
    .param p1, "screen"    # Lcom/swmansion/rnscreens/Screen;
    .param p2, "viewToAnimate"    # Landroid/view/View;
    .param p3, "maxAlpha"    # F

    const-string v0, "screen"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewToAnimate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$AnimateDimmingViewCallback;->screen:Lcom/swmansion/rnscreens/Screen;

    .line 86
    iput-object p2, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$AnimateDimmingViewCallback;->viewToAnimate:Landroid/view/View;

    .line 87
    iput p3, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$AnimateDimmingViewCallback;->maxAlpha:F

    .line 91
    iget-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$AnimateDimmingViewCallback;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getSheetLargestUndimmedDetentIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$AnimateDimmingViewCallback;->computeOffsetFromDetentIndex(I)F

    move-result v0

    iput v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$AnimateDimmingViewCallback;->largestUndimmedOffset:F

    .line 95
    nop

    .line 96
    iget-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$AnimateDimmingViewCallback;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getSheetLargestUndimmedDetentIndex()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 97
    nop

    .line 98
    iget-object v2, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$AnimateDimmingViewCallback;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {v2}, Lcom/swmansion/rnscreens/Screen;->getSheetDetents()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .line 96
    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v0

    .line 95
    invoke-direct {p0, v0}, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$AnimateDimmingViewCallback;->computeOffsetFromDetentIndex(I)F

    move-result v0

    iput v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$AnimateDimmingViewCallback;->firstDimmedOffset:F

    .line 103
    iget v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$AnimateDimmingViewCallback;->firstDimmedOffset:F

    iget v2, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$AnimateDimmingViewCallback;->largestUndimmedOffset:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$AnimateDimmingViewCallback;->intervalLength:F

    .line 105
    iget v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$AnimateDimmingViewCallback;->maxAlpha:F

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v4, 0x0

    aput v4, v2, v3

    aput v0, v2, v1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    move-object v1, v0

    .local v1, "$this$animator_u24lambda_u241":Landroid/animation/ValueAnimator;
    const/4 v2, 0x0

    .line 106
    .local v2, "$i$a$-apply-DimmingFragment$AnimateDimmingViewCallback$animator$1":I
    const-wide/16 v3, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 107
    new-instance v3, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$AnimateDimmingViewCallback$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$AnimateDimmingViewCallback$$ExternalSyntheticLambda0;-><init>(Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$AnimateDimmingViewCallback;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 110
    nop

    .line 105
    .end local v1    # "$this$animator_u24lambda_u241":Landroid/animation/ValueAnimator;
    .end local v2    # "$i$a$-apply-DimmingFragment$AnimateDimmingViewCallback$animator$1":I
    iput-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$AnimateDimmingViewCallback;->animator:Landroid/animation/ValueAnimator;

    .line 84
    return-void
.end method

.method private static final animator$lambda$1$lambda$0(Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$AnimateDimmingViewCallback;Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p0, "this$0"    # Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$AnimateDimmingViewCallback;
    .param p1, "it"    # Landroid/animation/ValueAnimator;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$AnimateDimmingViewCallback;->viewToAnimate:Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 109
    return-void
.end method

.method private final computeOffsetFromDetentIndex(I)F
    .locals 4
    .param p1, "index"    # I

    .line 148
    iget-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$AnimateDimmingViewCallback;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getSheetDetents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    packed-switch v0, :pswitch_data_0

    .line 173
    move v1, v3

    goto :goto_0

    .line 165
    :pswitch_0
    packed-switch p1, :pswitch_data_1

    .line 170
    move v1, v3

    goto :goto_0

    .line 169
    :pswitch_1
    move v1, v2

    goto :goto_0

    .line 168
    :pswitch_2
    iget-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$AnimateDimmingViewCallback;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getSheetBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getHalfExpandedRatio()F

    move-result v1

    goto :goto_0

    .line 167
    :pswitch_3
    goto :goto_0

    .line 166
    :pswitch_4
    move v1, v3

    goto :goto_0

    .line 157
    :pswitch_5
    packed-switch p1, :pswitch_data_2

    .line 161
    move v1, v3

    goto :goto_0

    .line 160
    :pswitch_6
    move v1, v2

    goto :goto_0

    .line 159
    :pswitch_7
    goto :goto_0

    .line 158
    :pswitch_8
    move v1, v3

    goto :goto_0

    .line 150
    :pswitch_9
    packed-switch p1, :pswitch_data_3

    .line 153
    move v1, v3

    goto :goto_0

    .line 152
    :pswitch_a
    move v1, v2

    goto :goto_0

    .line 151
    :pswitch_b
    move v1, v3

    .line 174
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_5
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch -0x1
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method


# virtual methods
.method public final getMaxAlpha()F
    .locals 1

    .line 87
    iget v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$AnimateDimmingViewCallback;->maxAlpha:F

    return v0
.end method

.method public final getScreen()Lcom/swmansion/rnscreens/Screen;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$AnimateDimmingViewCallback;->screen:Lcom/swmansion/rnscreens/Screen;

    return-object v0
.end method

.method public final getViewToAnimate()Landroid/view/View;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$AnimateDimmingViewCallback;->viewToAnimate:Landroid/view/View;

    return-object v0
.end method

.method public onSlide(Landroid/view/View;F)V
    .locals 2
    .param p1, "bottomSheet"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    const-string v0, "bottomSheet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iget v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$AnimateDimmingViewCallback;->largestUndimmedOffset:F

    cmpg-float v0, v0, p2

    if-gez v0, :cond_0

    iget v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$AnimateDimmingViewCallback;->firstDimmedOffset:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .line 138
    iget v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$AnimateDimmingViewCallback;->largestUndimmedOffset:F

    sub-float v0, p2, v0

    iget v1, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$AnimateDimmingViewCallback;->intervalLength:F

    div-float/2addr v0, v1

    .line 139
    .local v0, "fraction":F
    iget-object v1, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$AnimateDimmingViewCallback;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    .line 141
    .end local v0    # "fraction":F
    :cond_0
    return-void
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .locals 5
    .param p1, "bottomSheet"    # Landroid/view/View;
    .param p2, "newState"    # I

    const-string v0, "bottomSheet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    packed-switch p2, :pswitch_data_0

    goto :goto_1

    .line 117
    :pswitch_0
    nop

    .line 118
    iget-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$AnimateDimmingViewCallback;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getSheetLargestUndimmedDetentIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$AnimateDimmingViewCallback;->computeOffsetFromDetentIndex(I)F

    move-result v0

    .line 117
    iput v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$AnimateDimmingViewCallback;->largestUndimmedOffset:F

    .line 119
    nop

    .line 120
    nop

    .line 121
    iget-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$AnimateDimmingViewCallback;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getSheetLargestUndimmedDetentIndex()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 122
    nop

    .line 123
    iget-object v2, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$AnimateDimmingViewCallback;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {v2}, Lcom/swmansion/rnscreens/Screen;->getSheetDetents()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .line 121
    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v0

    .line 120
    invoke-direct {p0, v0}, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$AnimateDimmingViewCallback;->computeOffsetFromDetentIndex(I)F

    move-result v0

    .line 119
    iput v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$AnimateDimmingViewCallback;->firstDimmedOffset:F

    .line 126
    iget v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$AnimateDimmingViewCallback;->firstDimmedOffset:F

    iget v2, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$AnimateDimmingViewCallback;->largestUndimmedOffset:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 129
    iget v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$AnimateDimmingViewCallback;->firstDimmedOffset:F

    iget v1, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$AnimateDimmingViewCallback;->largestUndimmedOffset:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$AnimateDimmingViewCallback;->intervalLength:F

    goto :goto_1

    .line 126
    :cond_1
    const/4 v0, 0x0

    .line 127
    .local v0, "$i$a$-assert-DimmingFragment$AnimateDimmingViewCallback$onStateChanged$1":I
    iget v1, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$AnimateDimmingViewCallback;->firstDimmedOffset:F

    iget v2, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingFragment$AnimateDimmingViewCallback;->largestUndimmedOffset:F

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[RNScreens] Invariant violation: firstDimmedOffset ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") < largestDimmedOffset ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    .end local v0    # "$i$a$-assert-DimmingFragment$AnimateDimmingViewCallback$onStateChanged$1":I
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 131
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
