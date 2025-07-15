.class public final Lcom/swmansion/rnscreens/bottomsheet/DimmingView;
.super Landroid/view/ViewGroup;
.source "DimmingView.kt"

# interfaces
.implements Lcom/facebook/react/uimanager/ReactCompoundViewGroup;
.implements Lcom/facebook/react/uimanager/ReactPointerEventsView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/rnscreens/bottomsheet/DimmingView$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u001e2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001\u001eB\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0018\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0007H\u0016J0\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u0016H\u0014J\u0012\u0010\u001a\u001a\u00020\n2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0018\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0007H\u0016R\u0014\u0010\t\u001a\u00020\n8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/swmansion/rnscreens/bottomsheet/DimmingView;",
        "Landroid/view/ViewGroup;",
        "Lcom/facebook/react/uimanager/ReactCompoundViewGroup;",
        "Lcom/facebook/react/uimanager/ReactPointerEventsView;",
        "context",
        "Landroid/content/Context;",
        "initialAlpha",
        "",
        "(Landroid/content/Context;F)V",
        "blockGestures",
        "",
        "getBlockGestures",
        "()Z",
        "getPointerEvents",
        "Lcom/facebook/react/uimanager/PointerEvents;",
        "interceptsTouchEvent",
        "x",
        "y",
        "onLayout",
        "",
        "changed",
        "l",
        "",
        "t",
        "r",
        "b",
        "onTouchEvent",
        "event",
        "Landroid/view/MotionEvent;",
        "reactTagForTouch",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/swmansion/rnscreens/bottomsheet/DimmingView$Companion;

.field public static final TAG:Ljava/lang/String; = "DimmingView"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/rnscreens/bottomsheet/DimmingView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/rnscreens/bottomsheet/DimmingView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/rnscreens/bottomsheet/DimmingView;->Companion:Lcom/swmansion/rnscreens/bottomsheet/DimmingView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;F)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "initialAlpha"    # F

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 29
    nop

    .line 30
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/swmansion/rnscreens/bottomsheet/DimmingView;->setBackgroundColor(I)V

    .line 31
    invoke-virtual {p0, p2}, Lcom/swmansion/rnscreens/bottomsheet/DimmingView;->setAlpha(F)V

    .line 32
    nop

    .line 20
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;FILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 20
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 22
    const p2, 0x3f19999a    # 0.6f

    .line 20
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/swmansion/rnscreens/bottomsheet/DimmingView;-><init>(Landroid/content/Context;F)V

    .line 66
    return-void
.end method

.method private final getBlockGestures()Z
    .locals 4

    .line 27
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/bottomsheet/DimmingView;->getAlpha()F

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v3, v1, v2}, Lcom/swmansion/rnscreens/ext/NumericExtKt;->equalWithRespectToEps$default(FFFILjava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public getPointerEvents()Lcom/facebook/react/uimanager/PointerEvents;
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/swmansion/rnscreens/bottomsheet/DimmingView;->getBlockGestures()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/react/uimanager/PointerEvents;->AUTO:Lcom/facebook/react/uimanager/PointerEvents;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/facebook/react/uimanager/PointerEvents;->NONE:Lcom/facebook/react/uimanager/PointerEvents;

    :goto_0
    return-object v0
.end method

.method public interceptsTouchEvent(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 58
    invoke-direct {p0}, Lcom/swmansion/rnscreens/bottomsheet/DimmingView;->getBlockGestures()Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 41
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 44
    invoke-direct {p0}, Lcom/swmansion/rnscreens/bottomsheet/DimmingView;->getBlockGestures()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/bottomsheet/DimmingView;->callOnClick()Z

    .line 47
    :cond_0
    invoke-direct {p0}, Lcom/swmansion/rnscreens/bottomsheet/DimmingView;->getBlockGestures()Z

    move-result v0

    return v0
.end method

.method public reactTagForTouch(FF)I
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 53
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "[RNScreens] DimmingView should never be asked for the view tag!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
