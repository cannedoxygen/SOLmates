.class public final Lcom/facebook/react/uimanager/RootViewUtil;
.super Ljava/lang/Object;
.source "RootViewUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0006H\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/facebook/react/uimanager/RootViewUtil;",
        "",
        "()V",
        "getRootView",
        "Lcom/facebook/react/uimanager/RootView;",
        "reactView",
        "Landroid/view/View;",
        "getViewportOffset",
        "Landroid/graphics/Point;",
        "v",
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
.field public static final INSTANCE:Lcom/facebook/react/uimanager/RootViewUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/react/uimanager/RootViewUtil;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/RootViewUtil;-><init>()V

    sput-object v0, Lcom/facebook/react/uimanager/RootViewUtil;->INSTANCE:Lcom/facebook/react/uimanager/RootViewUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getRootView(Landroid/view/View;)Lcom/facebook/react/uimanager/RootView;
    .locals 3
    .param p0, "reactView"    # Landroid/view/View;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "reactView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    move-object v0, p0

    .line 21
    .local v0, "current":Landroid/view/View;
    :goto_0
    nop

    .line 22
    instance-of v1, v0, Lcom/facebook/react/uimanager/RootView;

    if-eqz v1, :cond_0

    .line 23
    move-object v1, v0

    check-cast v1, Lcom/facebook/react/uimanager/RootView;

    return-object v1

    .line 25
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    return-object v1

    .line 26
    .local v1, "next":Landroid/view/ViewParent;
    :cond_1
    instance-of v2, v1, Landroid/view/View;

    invoke-static {v2}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(Z)V

    .line 27
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    .end local v1    # "next":Landroid/view/ViewParent;
    goto :goto_0
.end method

.method public static final getViewportOffset(Landroid/view/View;)Landroid/graphics/Point;
    .locals 6
    .param p0, "v"    # Landroid/view/View;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "v"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 35
    .local v0, "locationInWindow":[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 39
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 40
    .local v1, "visibleWindowFrame":Landroid/graphics/Rect;
    invoke-virtual {p0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 41
    const/4 v2, 0x0

    aget v3, v0, v2

    iget v4, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    aput v3, v0, v2

    .line 42
    const/4 v3, 0x1

    aget v4, v0, v3

    iget v5, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    aput v4, v0, v3

    .line 43
    new-instance v4, Landroid/graphics/Point;

    aget v2, v0, v2

    aget v3, v0, v3

    invoke-direct {v4, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    return-object v4
.end method
