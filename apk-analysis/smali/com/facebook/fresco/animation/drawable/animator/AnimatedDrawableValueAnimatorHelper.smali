.class public final Lcom/facebook/fresco/animation/drawable/animator/AnimatedDrawableValueAnimatorHelper;
.super Ljava/lang/Object;
.source "AnimatedDrawableValueAnimatorHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0007J\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0007J\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\nH\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/facebook/fresco/animation/drawable/animator/AnimatedDrawableValueAnimatorHelper;",
        "",
        "()V",
        "createAnimatorUpdateListener",
        "Landroid/animation/ValueAnimator$AnimatorUpdateListener;",
        "drawable",
        "Landroid/graphics/drawable/Drawable;",
        "createValueAnimator",
        "Landroid/animation/ValueAnimator;",
        "maxDurationMs",
        "",
        "animated-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/fresco/animation/drawable/animator/AnimatedDrawableValueAnimatorHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/fresco/animation/drawable/animator/AnimatedDrawableValueAnimatorHelper;

    invoke-direct {v0}, Lcom/facebook/fresco/animation/drawable/animator/AnimatedDrawableValueAnimatorHelper;-><init>()V

    sput-object v0, Lcom/facebook/fresco/animation/drawable/animator/AnimatedDrawableValueAnimatorHelper;->INSTANCE:Lcom/facebook/fresco/animation/drawable/animator/AnimatedDrawableValueAnimatorHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createAnimatorUpdateListener(Landroid/graphics/drawable/Drawable;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 64
    instance-of v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;

    if-eqz v0, :cond_0

    .line 66
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 65
    invoke-static {v0}, Lcom/facebook/fresco/animation/drawable/animator/AnimatedDrawable2ValueAnimatorHelper;->createAnimatorUpdateListener(Landroid/graphics/drawable/Drawable;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v0

    goto :goto_0

    .line 68
    :cond_0
    const/4 v0, 0x0

    .line 69
    :goto_0
    return-object v0
.end method

.method public static final createValueAnimator(Landroid/graphics/drawable/Drawable;)Landroid/animation/ValueAnimator;
    .locals 4
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 48
    instance-of v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;

    if-eqz v0, :cond_0

    .line 49
    move-object v0, p0

    .line 51
    .local v0, "animatedDrawable2":Landroid/graphics/drawable/Drawable;
    move-object v1, v0

    check-cast v1, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;

    invoke-virtual {v1}, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->getLoopCount()I

    move-result v1

    move-object v2, v0

    check-cast v2, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;

    invoke-virtual {v2}, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->getLoopDurationMs()J

    move-result-wide v2

    .line 50
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/fresco/animation/drawable/animator/AnimatedDrawable2ValueAnimatorHelper;->createValueAnimator(Landroid/graphics/drawable/Drawable;IJ)Landroid/animation/ValueAnimator;

    move-result-object v1

    return-object v1

    .line 53
    .end local v0    # "animatedDrawable2":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static final createValueAnimator(Landroid/graphics/drawable/Drawable;I)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "maxDurationMs"    # I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 33
    instance-of v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;

    if-eqz v0, :cond_0

    .line 35
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;

    .line 34
    invoke-static {v0, p1}, Lcom/facebook/fresco/animation/drawable/animator/AnimatedDrawable2ValueAnimatorHelper;->createValueAnimator(Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;I)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_0

    .line 37
    :cond_0
    const/4 v0, 0x0

    .line 38
    :goto_0
    return-object v0
.end method
