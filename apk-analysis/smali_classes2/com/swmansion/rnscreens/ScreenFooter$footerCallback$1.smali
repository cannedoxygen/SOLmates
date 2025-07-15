.class public final Lcom/swmansion/rnscreens/ScreenFooter$footerCallback$1;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;
.source "ScreenFooter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swmansion/rnscreens/ScreenFooter;-><init>(Lcom/facebook/react/bridge/ReactContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/swmansion/rnscreens/ScreenFooter$footerCallback$1",
        "Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;",
        "onSlide",
        "",
        "bottomSheet",
        "Landroid/view/View;",
        "slideOffset",
        "",
        "onStateChanged",
        "newState",
        "",
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
.field final synthetic this$0:Lcom/swmansion/rnscreens/ScreenFooter;


# direct methods
.method constructor <init>(Lcom/swmansion/rnscreens/ScreenFooter;)V
    .locals 0
    .param p1, "$receiver"    # Lcom/swmansion/rnscreens/ScreenFooter;

    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenFooter$footerCallback$1;->this$0:Lcom/swmansion/rnscreens/ScreenFooter;

    .line 132
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSlide(Landroid/view/View;F)V
    .locals 5
    .param p1, "bottomSheet"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    const-string v0, "bottomSheet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenFooter$footerCallback$1;->this$0:Lcom/swmansion/rnscreens/ScreenFooter;

    const/4 v1, 0x0

    invoke-static {p2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Lcom/swmansion/rnscreens/ScreenFooter;->access$setLastSlideOffset$p(Lcom/swmansion/rnscreens/ScreenFooter;F)V

    .line 163
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenFooter$footerCallback$1;->this$0:Lcom/swmansion/rnscreens/ScreenFooter;

    invoke-static {v0}, Lcom/swmansion/rnscreens/ScreenFooter;->access$isAnimationControlledByKeyboard$p(Lcom/swmansion/rnscreens/ScreenFooter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenFooter$footerCallback$1;->this$0:Lcom/swmansion/rnscreens/ScreenFooter;

    .line 165
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenFooter$footerCallback$1;->this$0:Lcom/swmansion/rnscreens/ScreenFooter;

    invoke-static {v1}, Lcom/swmansion/rnscreens/ScreenFooter;->access$getLastContainerHeight$p(Lcom/swmansion/rnscreens/ScreenFooter;)I

    move-result v1

    .line 166
    iget-object v2, p0, Lcom/swmansion/rnscreens/ScreenFooter$footerCallback$1;->this$0:Lcom/swmansion/rnscreens/ScreenFooter;

    invoke-static {v2}, Lcom/swmansion/rnscreens/ScreenFooter;->access$getReactHeight(Lcom/swmansion/rnscreens/ScreenFooter;)I

    move-result v2

    .line 167
    iget-object v3, p0, Lcom/swmansion/rnscreens/ScreenFooter$footerCallback$1;->this$0:Lcom/swmansion/rnscreens/ScreenFooter;

    iget-object v4, p0, Lcom/swmansion/rnscreens/ScreenFooter$footerCallback$1;->this$0:Lcom/swmansion/rnscreens/ScreenFooter;

    invoke-static {v4}, Lcom/swmansion/rnscreens/ScreenFooter;->access$getLastSlideOffset$p(Lcom/swmansion/rnscreens/ScreenFooter;)F

    move-result v4

    invoke-static {v3, v4}, Lcom/swmansion/rnscreens/ScreenFooter;->access$sheetTopWhileDragging(Lcom/swmansion/rnscreens/ScreenFooter;F)I

    move-result v3

    .line 168
    iget-object v4, p0, Lcom/swmansion/rnscreens/ScreenFooter$footerCallback$1;->this$0:Lcom/swmansion/rnscreens/ScreenFooter;

    invoke-static {v4}, Lcom/swmansion/rnscreens/ScreenFooter;->access$getLastBottomInset$p(Lcom/swmansion/rnscreens/ScreenFooter;)I

    move-result v4

    .line 164
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/swmansion/rnscreens/ScreenFooter;->layoutFooterOnYAxis(IIII)V

    .line 171
    :cond_0
    return-void
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .locals 5
    .param p1, "bottomSheet"    # Landroid/view/View;
    .param p2, "newState"    # I

    const-string v0, "bottomSheet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    sget-object v0, Lcom/swmansion/rnscreens/bottomsheet/SheetUtils;->INSTANCE:Lcom/swmansion/rnscreens/bottomsheet/SheetUtils;

    invoke-virtual {v0, p2}, Lcom/swmansion/rnscreens/bottomsheet/SheetUtils;->isStateStable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    return-void

    .line 141
    :cond_0
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 146
    :pswitch_1
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenFooter$footerCallback$1;->this$0:Lcom/swmansion/rnscreens/ScreenFooter;

    .line 147
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenFooter$footerCallback$1;->this$0:Lcom/swmansion/rnscreens/ScreenFooter;

    invoke-static {v1}, Lcom/swmansion/rnscreens/ScreenFooter;->access$getLastContainerHeight$p(Lcom/swmansion/rnscreens/ScreenFooter;)I

    move-result v1

    .line 148
    iget-object v2, p0, Lcom/swmansion/rnscreens/ScreenFooter$footerCallback$1;->this$0:Lcom/swmansion/rnscreens/ScreenFooter;

    invoke-static {v2}, Lcom/swmansion/rnscreens/ScreenFooter;->access$getReactHeight(Lcom/swmansion/rnscreens/ScreenFooter;)I

    move-result v2

    .line 149
    iget-object v3, p0, Lcom/swmansion/rnscreens/ScreenFooter$footerCallback$1;->this$0:Lcom/swmansion/rnscreens/ScreenFooter;

    invoke-static {v3, p2}, Lcom/swmansion/rnscreens/ScreenFooter;->access$sheetTopInStableState(Lcom/swmansion/rnscreens/ScreenFooter;I)I

    move-result v3

    .line 150
    iget-object v4, p0, Lcom/swmansion/rnscreens/ScreenFooter$footerCallback$1;->this$0:Lcom/swmansion/rnscreens/ScreenFooter;

    invoke-static {v4}, Lcom/swmansion/rnscreens/ScreenFooter;->access$getLastBottomInset$p(Lcom/swmansion/rnscreens/ScreenFooter;)I

    move-result v4

    .line 146
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/swmansion/rnscreens/ScreenFooter;->layoutFooterOnYAxis(IIII)V

    .line 155
    :goto_0
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenFooter$footerCallback$1;->this$0:Lcom/swmansion/rnscreens/ScreenFooter;

    invoke-static {v0, p2}, Lcom/swmansion/rnscreens/ScreenFooter;->access$setLastStableSheetState$p(Lcom/swmansion/rnscreens/ScreenFooter;I)V

    .line 156
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
