.class public final Lcom/facebook/react/views/progressbar/ProgressBarContainerView;
.super Landroid/widget/FrameLayout;
.source "ProgressBarContainerView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/views/progressbar/ProgressBarContainerView$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProgressBarContainerView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProgressBarContainerView.kt\ncom/facebook/react/views/progressbar/ProgressBarContainerView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,71:1\n1#2:72\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u0006\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 %2\u00020\u0001:\u0001%B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\r\u0010\u001d\u001a\u00020\u001eH\u0000\u00a2\u0006\u0002\u0008\u001fJ\u0010\u0010 \u001a\u00020\u001e2\u0006\u0010\u001b\u001a\u00020\u001cH\u0002J\u0017\u0010!\u001a\u00020\u001e2\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0000\u00a2\u0006\u0002\u0008$R\u001a\u0010\u0005\u001a\u00020\u0006X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001e\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0080\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0011\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0012\u001a\u00020\u0006X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0008\"\u0004\u0008\u0014\u0010\nR\u001a\u0010\u0015\u001a\u00020\u0016X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcom/facebook/react/views/progressbar/ProgressBarContainerView;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "animating",
        "",
        "getAnimating$ReactAndroid_debug",
        "()Z",
        "setAnimating$ReactAndroid_debug",
        "(Z)V",
        "color",
        "",
        "getColor$ReactAndroid_debug",
        "()Ljava/lang/Integer;",
        "setColor$ReactAndroid_debug",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "indeterminate",
        "getIndeterminate$ReactAndroid_debug",
        "setIndeterminate$ReactAndroid_debug",
        "progress",
        "",
        "getProgress$ReactAndroid_debug",
        "()D",
        "setProgress$ReactAndroid_debug",
        "(D)V",
        "progressBar",
        "Landroid/widget/ProgressBar;",
        "apply",
        "",
        "apply$ReactAndroid_debug",
        "setColor",
        "setStyle",
        "styleName",
        "",
        "setStyle$ReactAndroid_debug",
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
.field private static final Companion:Lcom/facebook/react/views/progressbar/ProgressBarContainerView$Companion;

.field public static final MAX_PROGRESS:I = 0x3e8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private animating:Z

.field private color:Ljava/lang/Integer;

.field private indeterminate:Z

.field private progress:D

.field private progressBar:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/react/views/progressbar/ProgressBarContainerView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/react/views/progressbar/ProgressBarContainerView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;->Companion:Lcom/facebook/react/views/progressbar/ProgressBarContainerView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;->indeterminate:Z

    .line 25
    iput-boolean v0, p0, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;->animating:Z

    .line 21
    return-void
.end method

.method private final setColor(Landroid/widget/ProgressBar;)V
    .locals 4
    .param p1, "progressBar"    # Landroid/widget/ProgressBar;

    .line 52
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 52
    :goto_0
    nop

    .line 51
    nop

    .line 58
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    .line 59
    return-void

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;->color:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 72
    .local v1, "it":I
    const/4 v2, 0x0

    .line 63
    .local v2, "$i$a$-let-ProgressBarContainerView$setColor$1":I
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .end local v1    # "it":I
    .end local v2    # "$i$a$-let-ProgressBarContainerView$setColor$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_3

    .line 64
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 65
    :cond_3
    return-void
.end method


# virtual methods
.method public final apply$ReactAndroid_debug()V
    .locals 6

    .line 31
    iget-object v0, p0, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .local v0, "progressBar":Landroid/widget/ProgressBar;
    const/4 v1, 0x0

    .line 32
    .local v1, "$i$a$-let-ProgressBarContainerView$apply$1":I
    iget-boolean v2, p0, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;->indeterminate:Z

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 33
    invoke-direct {p0, v0}, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;->setColor(Landroid/widget/ProgressBar;)V

    .line 34
    iget-wide v2, p0, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;->progress:D

    const/16 v4, 0x3e8

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 35
    iget-boolean v2, p0, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;->animating:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 36
    nop

    .line 31
    .end local v0    # "progressBar":Landroid/widget/ProgressBar;
    .end local v1    # "$i$a$-let-ProgressBarContainerView$apply$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 37
    return-void

    .line 36
    :cond_2
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    const-string/jumbo v1, "setStyle() not called"

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getAnimating$ReactAndroid_debug()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;->animating:Z

    return v0
.end method

.method public final getColor$ReactAndroid_debug()Ljava/lang/Integer;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;->color:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getIndeterminate$ReactAndroid_debug()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;->indeterminate:Z

    return v0
.end method

.method public final getProgress$ReactAndroid_debug()D
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;->progress:D

    return-wide v0
.end method

.method public final setAnimating$ReactAndroid_debug(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 25
    iput-boolean p1, p0, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;->animating:Z

    return-void
.end method

.method public final setColor$ReactAndroid_debug(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/Integer;

    .line 23
    iput-object p1, p0, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;->color:Ljava/lang/Integer;

    return-void
.end method

.method public final setIndeterminate$ReactAndroid_debug(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 24
    iput-boolean p1, p0, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;->indeterminate:Z

    return-void
.end method

.method public final setProgress$ReactAndroid_debug(D)V
    .locals 0
    .param p1, "<set-?>"    # D

    .line 26
    iput-wide p1, p0, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;->progress:D

    return-void
.end method

.method public final setStyle$ReactAndroid_debug(Ljava/lang/String;)V
    .locals 5
    .param p1, "styleName"    # Ljava/lang/String;

    .line 40
    sget-object v0, Lcom/facebook/react/views/progressbar/ReactProgressBarViewManager;->Companion:Lcom/facebook/react/views/progressbar/ReactProgressBarViewManager$Companion;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/progressbar/ReactProgressBarViewManager$Companion;->getStyleFromString$ReactAndroid_debug(Ljava/lang/String;)I

    move-result v0

    .line 41
    .local v0, "style":I
    nop

    .line 42
    sget-object v1, Lcom/facebook/react/views/progressbar/ReactProgressBarViewManager;->Companion:Lcom/facebook/react/views/progressbar/ReactProgressBarViewManager$Companion;

    invoke-virtual {p0}, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/facebook/react/views/progressbar/ReactProgressBarViewManager$Companion;->createProgressBar(Landroid/content/Context;I)Landroid/widget/ProgressBar;

    move-result-object v1

    .line 72
    move-object v2, v1

    .local v2, "$this$setStyle_u24lambda_u241":Landroid/widget/ProgressBar;
    const/4 v3, 0x0

    .line 42
    .local v3, "$i$a$-apply-ProgressBarContainerView$setStyle$1":I
    const/16 v4, 0x3e8

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 41
    .end local v2    # "$this$setStyle_u24lambda_u241":Landroid/widget/ProgressBar;
    .end local v3    # "$i$a$-apply-ProgressBarContainerView$setStyle$1":I
    iput-object v1, p0, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;->progressBar:Landroid/widget/ProgressBar;

    .line 43
    invoke-virtual {p0}, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;->removeAllViews()V

    .line 44
    nop

    .line 45
    iget-object v1, p0, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;->progressBar:Landroid/widget/ProgressBar;

    check-cast v1, Landroid/view/View;

    .line 46
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 47
    nop

    .line 46
    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 44
    invoke-virtual {p0, v1, v2}, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    return-void
.end method
