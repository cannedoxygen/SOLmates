.class public Lcom/swmansion/reanimated/keyboard/Keyboard;
.super Ljava/lang/Object;
.source "Keyboard.java"


# static fields
.field private static final CONTENT_TYPE_MASK:I

.field private static final SYSTEM_BAR_TYPE_MASK:I


# instance fields
.field private mActiveTransitionCounter:I

.field private mHeight:I

.field private mState:Lcom/swmansion/reanimated/keyboard/KeyboardState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v0

    sput v0, Lcom/swmansion/reanimated/keyboard/Keyboard;->CONTENT_TYPE_MASK:I

    .line 11
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    sput v0, Lcom/swmansion/reanimated/keyboard/Keyboard;->SYSTEM_BAR_TYPE_MASK:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    sget-object v0, Lcom/swmansion/reanimated/keyboard/KeyboardState;->UNKNOWN:Lcom/swmansion/reanimated/keyboard/KeyboardState;

    iput-object v0, p0, Lcom/swmansion/reanimated/keyboard/Keyboard;->mState:Lcom/swmansion/reanimated/keyboard/KeyboardState;

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/swmansion/reanimated/keyboard/Keyboard;->mHeight:I

    .line 9
    iput v0, p0, Lcom/swmansion/reanimated/keyboard/Keyboard;->mActiveTransitionCounter:I

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/swmansion/reanimated/keyboard/Keyboard;->mHeight:I

    return v0
.end method

.method public getState()Lcom/swmansion/reanimated/keyboard/KeyboardState;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/swmansion/reanimated/keyboard/Keyboard;->mState:Lcom/swmansion/reanimated/keyboard/KeyboardState;

    return-object v0
.end method

.method public onAnimationEnd()V
    .locals 1

    .line 48
    iget v0, p0, Lcom/swmansion/reanimated/keyboard/Keyboard;->mActiveTransitionCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/swmansion/reanimated/keyboard/Keyboard;->mActiveTransitionCounter:I

    .line 49
    iget v0, p0, Lcom/swmansion/reanimated/keyboard/Keyboard;->mActiveTransitionCounter:I

    if-nez v0, :cond_1

    .line 50
    iget v0, p0, Lcom/swmansion/reanimated/keyboard/Keyboard;->mHeight:I

    if-gtz v0, :cond_0

    sget-object v0, Lcom/swmansion/reanimated/keyboard/KeyboardState;->CLOSED:Lcom/swmansion/reanimated/keyboard/KeyboardState;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/swmansion/reanimated/keyboard/KeyboardState;->OPEN:Lcom/swmansion/reanimated/keyboard/KeyboardState;

    :goto_0
    iput-object v0, p0, Lcom/swmansion/reanimated/keyboard/Keyboard;->mState:Lcom/swmansion/reanimated/keyboard/KeyboardState;

    .line 52
    :cond_1
    return-void
.end method

.method public onAnimationStart()V
    .locals 2

    .line 39
    iget v0, p0, Lcom/swmansion/reanimated/keyboard/Keyboard;->mActiveTransitionCounter:I

    if-lez v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/swmansion/reanimated/keyboard/Keyboard;->mState:Lcom/swmansion/reanimated/keyboard/KeyboardState;

    sget-object v1, Lcom/swmansion/reanimated/keyboard/KeyboardState;->OPENING:Lcom/swmansion/reanimated/keyboard/KeyboardState;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/swmansion/reanimated/keyboard/KeyboardState;->CLOSING:Lcom/swmansion/reanimated/keyboard/KeyboardState;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/swmansion/reanimated/keyboard/KeyboardState;->OPENING:Lcom/swmansion/reanimated/keyboard/KeyboardState;

    :goto_0
    iput-object v0, p0, Lcom/swmansion/reanimated/keyboard/Keyboard;->mState:Lcom/swmansion/reanimated/keyboard/KeyboardState;

    goto :goto_2

    .line 42
    :cond_1
    iget v0, p0, Lcom/swmansion/reanimated/keyboard/Keyboard;->mHeight:I

    if-gtz v0, :cond_2

    sget-object v0, Lcom/swmansion/reanimated/keyboard/KeyboardState;->OPENING:Lcom/swmansion/reanimated/keyboard/KeyboardState;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/swmansion/reanimated/keyboard/KeyboardState;->CLOSING:Lcom/swmansion/reanimated/keyboard/KeyboardState;

    :goto_1
    iput-object v0, p0, Lcom/swmansion/reanimated/keyboard/Keyboard;->mState:Lcom/swmansion/reanimated/keyboard/KeyboardState;

    .line 44
    :goto_2
    iget v0, p0, Lcom/swmansion/reanimated/keyboard/Keyboard;->mActiveTransitionCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/swmansion/reanimated/keyboard/Keyboard;->mActiveTransitionCounter:I

    .line 45
    return-void
.end method

.method public updateHeight(Landroidx/core/view/WindowInsetsCompat;Z)V
    .locals 6
    .param p1, "insets"    # Landroidx/core/view/WindowInsetsCompat;
    .param p2, "isNavigationBarTranslucent"    # Z

    .line 22
    sget v0, Lcom/swmansion/reanimated/keyboard/Keyboard;->CONTENT_TYPE_MASK:I

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    .line 24
    .local v0, "contentBottomInset":I
    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    sget v2, Lcom/swmansion/reanimated/keyboard/Keyboard;->SYSTEM_BAR_TYPE_MASK:I

    invoke-virtual {p1, v2}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v2

    iget v2, v2, Landroidx/core/graphics/Insets;->bottom:I

    .line 25
    .local v2, "systemBarBottomInset":I
    :goto_0
    sub-int v3, v0, v2

    .line 26
    .local v3, "keyboardHeightDip":I
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v1

    float-to-int v1, v1

    .line 27
    .local v1, "keyboardHeight":I
    if-gtz v1, :cond_1

    iget-object v4, p0, Lcom/swmansion/reanimated/keyboard/Keyboard;->mState:Lcom/swmansion/reanimated/keyboard/KeyboardState;

    sget-object v5, Lcom/swmansion/reanimated/keyboard/KeyboardState;->OPEN:Lcom/swmansion/reanimated/keyboard/KeyboardState;

    if-ne v4, v5, :cond_1

    .line 33
    return-void

    .line 35
    :cond_1
    iput v1, p0, Lcom/swmansion/reanimated/keyboard/Keyboard;->mHeight:I

    .line 36
    return-void
.end method
