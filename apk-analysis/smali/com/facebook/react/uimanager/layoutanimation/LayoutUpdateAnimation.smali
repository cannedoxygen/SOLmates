.class public final Lcom/facebook/react/uimanager/layoutanimation/LayoutUpdateAnimation;
.super Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;
.source "LayoutUpdateAnimation.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/uimanager/layoutanimation/LayoutUpdateAnimation$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0005\u00a2\u0006\u0002\u0010\u0002J7\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u0008H\u0010\u00a2\u0006\u0002\u0008\u000cJ\r\u0010\r\u001a\u00020\u000eH\u0010\u00a2\u0006\u0002\u0008\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/facebook/react/uimanager/layoutanimation/LayoutUpdateAnimation;",
        "Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;",
        "()V",
        "createAnimationImpl",
        "Landroid/view/animation/Animation;",
        "view",
        "Landroid/view/View;",
        "x",
        "",
        "y",
        "width",
        "height",
        "createAnimationImpl$ReactAndroid_debug",
        "isValid",
        "",
        "isValid$ReactAndroid_debug",
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
.field private static final Companion:Lcom/facebook/react/uimanager/layoutanimation/LayoutUpdateAnimation$Companion;

.field private static final USE_TRANSLATE_ANIMATION:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/react/uimanager/layoutanimation/LayoutUpdateAnimation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/react/uimanager/layoutanimation/LayoutUpdateAnimation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/react/uimanager/layoutanimation/LayoutUpdateAnimation;->Companion:Lcom/facebook/react/uimanager/layoutanimation/LayoutUpdateAnimation$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createAnimationImpl(Landroid/view/View;IIII)Landroid/view/animation/Animation;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 18
    invoke-virtual/range {p0 .. p5}, Lcom/facebook/react/uimanager/layoutanimation/LayoutUpdateAnimation;->createAnimationImpl$ReactAndroid_debug(Landroid/view/View;IIII)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public createAnimationImpl$ReactAndroid_debug(Landroid/view/View;IIII)Landroid/view/animation/Animation;
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    float-to-int v0, v0

    if-eq v0, p3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 30
    .local v0, "animateLocation":Z
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    if-ne v3, p4, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    if-eq v3, p5, :cond_3

    :cond_2
    move v1, v2

    .line 31
    .local v1, "animateSize":Z
    :cond_3
    if-nez v0, :cond_4

    if-nez v1, :cond_4

    .line 32
    const/4 v2, 0x0

    return-object v2

    .line 33
    :cond_4
    nop

    .line 40
    new-instance v2, Lcom/facebook/react/uimanager/layoutanimation/PositionAndSizeAnimation;

    move-object v3, v2

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/facebook/react/uimanager/layoutanimation/PositionAndSizeAnimation;-><init>(Landroid/view/View;IIII)V

    check-cast v2, Landroid/view/animation/Animation;

    return-object v2
.end method

.method public bridge synthetic isValid()Z
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/layoutanimation/LayoutUpdateAnimation;->isValid$ReactAndroid_debug()Z

    move-result v0

    return v0
.end method

.method public isValid$ReactAndroid_debug()Z
    .locals 1

    .line 20
    iget v0, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutUpdateAnimation;->mDurationMs:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
