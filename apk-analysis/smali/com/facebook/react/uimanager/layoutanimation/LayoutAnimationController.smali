.class public Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;
.super Ljava/lang/Object;
.source "LayoutAnimationController.java"


# instance fields
.field private mCompletionRunnable:Ljava/lang/Runnable;

.field private final mLayoutCreateAnimation:Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;

.field private final mLayoutDeleteAnimation:Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;

.field private final mLayoutHandlers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/react/uimanager/layoutanimation/LayoutHandlingAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayoutUpdateAnimation:Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;

.field private mMaxAnimationDuration:J

.field private mShouldAnimateLayout:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmLayoutHandlers(Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->mLayoutHandlers:Landroid/util/SparseArray;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/facebook/react/uimanager/layoutanimation/LayoutCreateAnimation;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/layoutanimation/LayoutCreateAnimation;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->mLayoutCreateAnimation:Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;

    .line 30
    new-instance v0, Lcom/facebook/react/uimanager/layoutanimation/LayoutUpdateAnimation;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/layoutanimation/LayoutUpdateAnimation;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->mLayoutUpdateAnimation:Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;

    .line 31
    new-instance v0, Lcom/facebook/react/uimanager/layoutanimation/LayoutDeleteAnimation;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/layoutanimation/LayoutDeleteAnimation;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->mLayoutDeleteAnimation:Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;

    .line 32
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->mLayoutHandlers:Landroid/util/SparseArray;

    .line 35
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->mMaxAnimationDuration:J

    return-void
.end method

.method private disableUserInteractions(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 206
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 207
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 208
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 209
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 210
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->disableUserInteractions(Landroid/view/View;)V

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 213
    .end local v0    # "viewGroup":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private scheduleCompletionCallback(J)V
    .locals 2
    .param p1, "delayMillis"    # J

    .line 216
    iget-object v0, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->mCompletionRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 217
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    .line 218
    .local v0, "completionHandler":Landroid/os/Handler;
    iget-object v1, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->mCompletionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 219
    iget-object v1, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->mCompletionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 221
    .end local v0    # "completionHandler":Landroid/os/Handler;
    :cond_0
    return-void
.end method


# virtual methods
.method public applyLayoutUpdate(Landroid/view/View;IIII)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 107
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 113
    .local v0, "reactTag":I
    iget-object v1, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->mLayoutHandlers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/layoutanimation/LayoutHandlingAnimation;

    .line 114
    .local v1, "existingAnimation":Lcom/facebook/react/uimanager/layoutanimation/LayoutHandlingAnimation;
    if-eqz v1, :cond_0

    .line 115
    invoke-interface {v1, p2, p3, p4, p5}, Lcom/facebook/react/uimanager/layoutanimation/LayoutHandlingAnimation;->onLayoutUpdate(IIII)V

    .line 116
    return-void

    .line 123
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 125
    :cond_1
    iget-object v2, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->mLayoutUpdateAnimation:Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;

    move-object v3, v2

    goto :goto_1

    .line 124
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->mLayoutCreateAnimation:Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;

    move-object v3, v2

    .line 125
    :goto_1
    nop

    .line 127
    .local v3, "layoutAnimation":Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;
    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;->createAnimation(Landroid/view/View;IIII)Landroid/view/animation/Animation;

    move-result-object v2

    .line 129
    .local v2, "animation":Landroid/view/animation/Animation;
    instance-of v4, v2, Lcom/facebook/react/uimanager/layoutanimation/LayoutHandlingAnimation;

    if-eqz v4, :cond_3

    .line 130
    new-instance v4, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController$2;

    invoke-direct {v4, p0, v0}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController$2;-><init>(Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;I)V

    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_2

    .line 146
    :cond_3
    add-int v4, p2, p4

    add-int v5, p3, p5

    invoke-virtual {p1, p2, p3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 149
    :goto_2
    if-eqz v2, :cond_5

    .line 150
    invoke-virtual {v2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v4

    .line 151
    .local v4, "animationDuration":J
    iget-wide v6, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->mMaxAnimationDuration:J

    cmp-long v6, v4, v6

    if-lez v6, :cond_4

    .line 152
    iput-wide v4, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->mMaxAnimationDuration:J

    .line 153
    invoke-direct {p0, v4, v5}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->scheduleCompletionCallback(J)V

    .line 156
    :cond_4
    invoke-virtual {p1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 158
    .end local v4    # "animationDuration":J
    :cond_5
    return-void
.end method

.method public deleteView(Landroid/view/View;Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationListener;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "listener"    # Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationListener;

    .line 169
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 171
    iget-object v0, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->mLayoutDeleteAnimation:Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;

    .line 173
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 172
    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;->createAnimation(Landroid/view/View;IIII)Landroid/view/animation/Animation;

    move-result-object v0

    .line 175
    .local v0, "animation":Landroid/view/animation/Animation;
    if-eqz v0, :cond_1

    .line 176
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->disableUserInteractions(Landroid/view/View;)V

    .line 178
    new-instance v1, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController$3;

    invoke-direct {v1, p0, p2}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController$3;-><init>(Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationListener;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 192
    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v1

    .line 193
    .local v1, "animationDuration":J
    iget-wide v3, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->mMaxAnimationDuration:J

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 194
    invoke-direct {p0, v1, v2}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->scheduleCompletionCallback(J)V

    .line 195
    iput-wide v1, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->mMaxAnimationDuration:J

    .line 198
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 199
    .end local v1    # "animationDuration":J
    goto :goto_0

    .line 200
    :cond_1
    invoke-interface {p2}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationListener;->onAnimationEnd()V

    .line 202
    :goto_0
    return-void
.end method

.method public initializeFromConfig(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V
    .locals 4
    .param p1, "config"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p2, "completionCallback"    # Lcom/facebook/react/bridge/Callback;

    .line 40
    if-nez p1, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->reset()V

    .line 42
    return-void

    .line 45
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->mShouldAnimateLayout:Z

    .line 46
    const-string v1, "duration"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 47
    .local v0, "globalDuration":I
    :cond_1
    sget-object v1, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationType;->CREATE:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationType;

    invoke-static {v1}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationType;->toString(Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationType;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 48
    iget-object v1, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->mLayoutCreateAnimation:Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;

    sget-object v3, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationType;->CREATE:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationType;

    .line 49
    invoke-static {v3}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationType;->toString(Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationType;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v3

    .line 48
    invoke-virtual {v1, v3, v0}, Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;->initializeFromConfig(Lcom/facebook/react/bridge/ReadableMap;I)V

    .line 50
    iput-boolean v2, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->mShouldAnimateLayout:Z

    .line 52
    :cond_2
    sget-object v1, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationType;->UPDATE:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationType;

    invoke-static {v1}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationType;->toString(Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationType;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 53
    iget-object v1, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->mLayoutUpdateAnimation:Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;

    sget-object v3, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationType;->UPDATE:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationType;

    .line 54
    invoke-static {v3}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationType;->toString(Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationType;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v3

    .line 53
    invoke-virtual {v1, v3, v0}, Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;->initializeFromConfig(Lcom/facebook/react/bridge/ReadableMap;I)V

    .line 55
    iput-boolean v2, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->mShouldAnimateLayout:Z

    .line 57
    :cond_3
    sget-object v1, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationType;->DELETE:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationType;

    invoke-static {v1}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationType;->toString(Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationType;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 58
    iget-object v1, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->mLayoutDeleteAnimation:Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;

    sget-object v3, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationType;->DELETE:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationType;

    .line 59
    invoke-static {v3}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationType;->toString(Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationType;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v3

    .line 58
    invoke-virtual {v1, v3, v0}, Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;->initializeFromConfig(Lcom/facebook/react/bridge/ReadableMap;I)V

    .line 60
    iput-boolean v2, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->mShouldAnimateLayout:Z

    .line 63
    :cond_4
    iget-boolean v1, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->mShouldAnimateLayout:Z

    if-eqz v1, :cond_5

    if-eqz p2, :cond_5

    .line 64
    new-instance v1, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController$1;

    invoke-direct {v1, p0, p2}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController$1;-><init>(Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;Lcom/facebook/react/bridge/Callback;)V

    iput-object v1, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->mCompletionRunnable:Ljava/lang/Runnable;

    .line 72
    :cond_5
    return-void
.end method

.method public reset()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->mLayoutCreateAnimation:Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;->reset()V

    .line 76
    iget-object v0, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->mLayoutUpdateAnimation:Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;->reset()V

    .line 77
    iget-object v0, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->mLayoutDeleteAnimation:Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;->reset()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->mCompletionRunnable:Ljava/lang/Runnable;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->mShouldAnimateLayout:Z

    .line 80
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->mMaxAnimationDuration:J

    .line 81
    return-void
.end method

.method public shouldAnimateLayout(Landroid/view/View;)Z
    .locals 3
    .param p1, "viewToAnimate"    # Landroid/view/View;

    .line 88
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 89
    return v0

    .line 91
    :cond_0
    iget-boolean v1, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->mShouldAnimateLayout:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->mLayoutHandlers:Landroid/util/SparseArray;

    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 91
    :cond_3
    return v0
.end method
