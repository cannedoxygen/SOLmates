.class public final Lcom/facebook/react/views/drawer/ReactDrawerLayout;
.super Landroidx/drawerlayout/widget/DrawerLayout;
.source "ReactDrawerLayout.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/views/drawer/ReactDrawerLayout$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\r\u0010\n\u001a\u00020\u000bH\u0001\u00a2\u0006\u0002\u0008\u000cJ\u0010\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\r\u0010\u0011\u001a\u00020\u000bH\u0001\u00a2\u0006\u0002\u0008\u0012J\u0015\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u0008H\u0000\u00a2\u0006\u0002\u0008\u0015J\r\u0010\u0016\u001a\u00020\u000bH\u0000\u00a2\u0006\u0002\u0008\u0017J\u0015\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u0008H\u0000\u00a2\u0006\u0002\u0008\u001aR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/facebook/react/views/drawer/ReactDrawerLayout;",
        "Landroidx/drawerlayout/widget/DrawerLayout;",
        "reactContext",
        "Lcom/facebook/react/bridge/ReactContext;",
        "(Lcom/facebook/react/bridge/ReactContext;)V",
        "dragging",
        "",
        "drawerPosition",
        "",
        "drawerWidth",
        "closeDrawer",
        "",
        "closeDrawer$ReactAndroid_debug",
        "onInterceptTouchEvent",
        "ev",
        "Landroid/view/MotionEvent;",
        "onTouchEvent",
        "openDrawer",
        "openDrawer$ReactAndroid_debug",
        "setDrawerPosition",
        "newDrawerPosition",
        "setDrawerPosition$ReactAndroid_debug",
        "setDrawerProperties",
        "setDrawerProperties$ReactAndroid_debug",
        "setDrawerWidth",
        "drawerWidthInPx",
        "setDrawerWidth$ReactAndroid_debug",
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
.field public static final Companion:Lcom/facebook/react/views/drawer/ReactDrawerLayout$Companion;

.field public static final DEFAULT_DRAWER_WIDTH:I = -0x1


# instance fields
.field private dragging:Z

.field private drawerPosition:I

.field private drawerWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/react/views/drawer/ReactDrawerLayout$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/react/views/drawer/ReactDrawerLayout$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/react/views/drawer/ReactDrawerLayout;->Companion:Lcom/facebook/react/views/drawer/ReactDrawerLayout$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 2
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactContext;

    const-string/jumbo v0, "reactContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;-><init>(Landroid/content/Context;)V

    .line 32
    const v0, 0x800003

    iput v0, p0, Lcom/facebook/react/views/drawer/ReactDrawerLayout;->drawerPosition:I

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/react/views/drawer/ReactDrawerLayout;->drawerWidth:I

    .line 36
    nop

    .line 38
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    .line 39
    new-instance v1, Lcom/facebook/react/views/drawer/ReactDrawerLayout$1;

    invoke-direct {v1}, Lcom/facebook/react/views/drawer/ReactDrawerLayout$1;-><init>()V

    check-cast v1, Landroidx/core/view/AccessibilityDelegateCompat;

    .line 37
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 60
    nop

    .line 31
    return-void
.end method


# virtual methods
.method public final closeDrawer$ReactAndroid_debug()V
    .locals 1

    .line 95
    iget v0, p0, Lcom/facebook/react/views/drawer/ReactDrawerLayout;->drawerPosition:I

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/drawer/ReactDrawerLayout;->closeDrawer(I)V

    .line 96
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    nop

    .line 64
    :try_start_0
    invoke-super {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    invoke-static {v0, p1}, Lcom/facebook/react/uimanager/events/NativeGestureUtil;->notifyNativeGestureStarted(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/views/drawer/ReactDrawerLayout;->dragging:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    return v0

    .line 69
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "Error intercepting touch event."

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    const-string v3, "ReactNative"

    invoke-static {v3, v1, v2}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 81
    .local v0, "action":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/facebook/react/views/drawer/ReactDrawerLayout;->dragging:Z

    if-eqz v1, :cond_0

    .line 82
    move-object v1, p0

    check-cast v1, Landroid/view/View;

    invoke-static {v1, p1}, Lcom/facebook/react/uimanager/events/NativeGestureUtil;->notifyNativeGestureEnded(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 83
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/react/views/drawer/ReactDrawerLayout;->dragging:Z

    .line 85
    :cond_0
    invoke-super {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public final openDrawer$ReactAndroid_debug()V
    .locals 1

    .line 90
    iget v0, p0, Lcom/facebook/react/views/drawer/ReactDrawerLayout;->drawerPosition:I

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/drawer/ReactDrawerLayout;->openDrawer(I)V

    .line 91
    return-void
.end method

.method public final setDrawerPosition$ReactAndroid_debug(I)V
    .locals 0
    .param p1, "newDrawerPosition"    # I

    .line 99
    iput p1, p0, Lcom/facebook/react/views/drawer/ReactDrawerLayout;->drawerPosition:I

    .line 100
    invoke-virtual {p0}, Lcom/facebook/react/views/drawer/ReactDrawerLayout;->setDrawerProperties$ReactAndroid_debug()V

    .line 101
    return-void
.end method

.method public final setDrawerProperties$ReactAndroid_debug()V
    .locals 4

    .line 112
    invoke-virtual {p0}, Lcom/facebook/react/views/drawer/ReactDrawerLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 113
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/drawer/ReactDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 114
    .local v1, "drawerView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const-string/jumbo v3, "null cannot be cast to non-null type androidx.drawerlayout.widget.DrawerLayout.LayoutParams"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    .line 115
    .local v2, "layoutParams":Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;
    iget v3, p0, Lcom/facebook/react/views/drawer/ReactDrawerLayout;->drawerPosition:I

    iput v3, v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 116
    iget v3, p0, Lcom/facebook/react/views/drawer/ReactDrawerLayout;->drawerWidth:I

    iput v3, v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->width:I

    .line 117
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 120
    .end local v1    # "drawerView":Landroid/view/View;
    .end local v2    # "layoutParams":Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public final setDrawerWidth$ReactAndroid_debug(I)V
    .locals 0
    .param p1, "drawerWidthInPx"    # I

    .line 104
    iput p1, p0, Lcom/facebook/react/views/drawer/ReactDrawerLayout;->drawerWidth:I

    .line 105
    invoke-virtual {p0}, Lcom/facebook/react/views/drawer/ReactDrawerLayout;->setDrawerProperties$ReactAndroid_debug()V

    .line 106
    return-void
.end method
