.class final Lexpo/modules/devmenu/DevMenuReactRootViewContainer$updateSystemGestureExclusionRects$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DevMenuReactRootViewContainer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/devmenu/DevMenuReactRootViewContainer;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lexpo/modules/devmenu/DevMenuReactRootViewContainer;


# direct methods
.method constructor <init>(Lexpo/modules/devmenu/DevMenuReactRootViewContainer;)V
    .locals 1

    iput-object p1, p0, Lexpo/modules/devmenu/DevMenuReactRootViewContainer$updateSystemGestureExclusionRects$1;->this$0:Lexpo/modules/devmenu/DevMenuReactRootViewContainer;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lexpo/modules/devmenu/DevMenuReactRootViewContainer$updateSystemGestureExclusionRects$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 7

    .line 21
    iget-object v0, p0, Lexpo/modules/devmenu/DevMenuReactRootViewContainer$updateSystemGestureExclusionRects$1;->this$0:Lexpo/modules/devmenu/DevMenuReactRootViewContainer;

    invoke-static {v0}, Lexpo/modules/devmenu/DevMenuReactRootViewContainer;->access$getFab(Lexpo/modules/devmenu/DevMenuReactRootViewContainer;)Lexpo/modules/devmenu/fab/MovableFloatingActionButton;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/devmenu/fab/MovableFloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 24
    .local v0, "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    new-instance v1, Landroid/graphics/Rect;

    .line 25
    iget-object v2, p0, Lexpo/modules/devmenu/DevMenuReactRootViewContainer$updateSystemGestureExclusionRects$1;->this$0:Lexpo/modules/devmenu/DevMenuReactRootViewContainer;

    invoke-static {v2}, Lexpo/modules/devmenu/DevMenuReactRootViewContainer;->access$getFab(Lexpo/modules/devmenu/DevMenuReactRootViewContainer;)Lexpo/modules/devmenu/fab/MovableFloatingActionButton;

    move-result-object v2

    invoke-virtual {v2}, Lexpo/modules/devmenu/fab/MovableFloatingActionButton;->getX()F

    move-result v2

    float-to-int v2, v2

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v2, v3

    .line 26
    iget-object v3, p0, Lexpo/modules/devmenu/DevMenuReactRootViewContainer$updateSystemGestureExclusionRects$1;->this$0:Lexpo/modules/devmenu/DevMenuReactRootViewContainer;

    invoke-static {v3}, Lexpo/modules/devmenu/DevMenuReactRootViewContainer;->access$getFab(Lexpo/modules/devmenu/DevMenuReactRootViewContainer;)Lexpo/modules/devmenu/fab/MovableFloatingActionButton;

    move-result-object v3

    invoke-virtual {v3}, Lexpo/modules/devmenu/fab/MovableFloatingActionButton;->getY()F

    move-result v3

    float-to-int v3, v3

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v3, v4

    .line 27
    iget-object v4, p0, Lexpo/modules/devmenu/DevMenuReactRootViewContainer$updateSystemGestureExclusionRects$1;->this$0:Lexpo/modules/devmenu/DevMenuReactRootViewContainer;

    invoke-static {v4}, Lexpo/modules/devmenu/DevMenuReactRootViewContainer;->access$getFab(Lexpo/modules/devmenu/DevMenuReactRootViewContainer;)Lexpo/modules/devmenu/fab/MovableFloatingActionButton;

    move-result-object v4

    invoke-virtual {v4}, Lexpo/modules/devmenu/fab/MovableFloatingActionButton;->getX()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lexpo/modules/devmenu/DevMenuReactRootViewContainer$updateSystemGestureExclusionRects$1;->this$0:Lexpo/modules/devmenu/DevMenuReactRootViewContainer;

    invoke-static {v5}, Lexpo/modules/devmenu/DevMenuReactRootViewContainer;->access$getFab(Lexpo/modules/devmenu/DevMenuReactRootViewContainer;)Lexpo/modules/devmenu/fab/MovableFloatingActionButton;

    move-result-object v5

    invoke-virtual {v5}, Lexpo/modules/devmenu/fab/MovableFloatingActionButton;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 28
    iget-object v5, p0, Lexpo/modules/devmenu/DevMenuReactRootViewContainer$updateSystemGestureExclusionRects$1;->this$0:Lexpo/modules/devmenu/DevMenuReactRootViewContainer;

    invoke-static {v5}, Lexpo/modules/devmenu/DevMenuReactRootViewContainer;->access$getFab(Lexpo/modules/devmenu/DevMenuReactRootViewContainer;)Lexpo/modules/devmenu/fab/MovableFloatingActionButton;

    move-result-object v5

    invoke-virtual {v5}, Lexpo/modules/devmenu/fab/MovableFloatingActionButton;->getY()F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lexpo/modules/devmenu/DevMenuReactRootViewContainer$updateSystemGestureExclusionRects$1;->this$0:Lexpo/modules/devmenu/DevMenuReactRootViewContainer;

    invoke-static {v6}, Lexpo/modules/devmenu/DevMenuReactRootViewContainer;->access$getFab(Lexpo/modules/devmenu/DevMenuReactRootViewContainer;)Lexpo/modules/devmenu/fab/MovableFloatingActionButton;

    move-result-object v6

    invoke-virtual {v6}, Lexpo/modules/devmenu/fab/MovableFloatingActionButton;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v6

    .line 24
    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 33
    .local v1, "rect":Landroid/graphics/Rect;
    iget-object v2, p0, Lexpo/modules/devmenu/DevMenuReactRootViewContainer$updateSystemGestureExclusionRects$1;->this$0:Lexpo/modules/devmenu/DevMenuReactRootViewContainer;

    check-cast v2, Landroid/view/View;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->setSystemGestureExclusionRects(Landroid/view/View;Ljava/util/List;)V

    .line 34
    return-void
.end method
