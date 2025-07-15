.class public final Lcom/swmansion/rnscreens/ScreenStackFragment$bottomSheetStateCallback$1;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;
.source "ScreenStackFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swmansion/rnscreens/ScreenStackFragment;-><init>(Lcom/swmansion/rnscreens/Screen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0018\u0010\n\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "com/swmansion/rnscreens/ScreenStackFragment$bottomSheetStateCallback$1",
        "Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;",
        "lastStableState",
        "",
        "onSlide",
        "",
        "bottomSheet",
        "Landroid/view/View;",
        "slideOffset",
        "",
        "onStateChanged",
        "newState",
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
.field private lastStableState:I

.field final synthetic this$0:Lcom/swmansion/rnscreens/ScreenStackFragment;


# direct methods
.method constructor <init>(Lcom/swmansion/rnscreens/ScreenStackFragment;)V
    .locals 3
    .param p1, "$receiver"    # Lcom/swmansion/rnscreens/ScreenStackFragment;

    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenStackFragment$bottomSheetStateCallback$1;->this$0:Lcom/swmansion/rnscreens/ScreenStackFragment;

    .line 148
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;-><init>()V

    .line 150
    sget-object v0, Lcom/swmansion/rnscreens/bottomsheet/SheetUtils;->INSTANCE:Lcom/swmansion/rnscreens/bottomsheet/SheetUtils;

    .line 151
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/Screen;->getSheetInitialDetentIndex()I

    move-result v1

    .line 152
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/swmansion/rnscreens/Screen;->getSheetDetents()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    .line 150
    invoke-virtual {v0, v1, v2}, Lcom/swmansion/rnscreens/bottomsheet/SheetUtils;->sheetStateFromDetentIndex(II)I

    move-result v0

    iput v0, p0, Lcom/swmansion/rnscreens/ScreenStackFragment$bottomSheetStateCallback$1;->lastStableState:I

    .line 148
    return-void
.end method


# virtual methods
.method public onSlide(Landroid/view/View;F)V
    .locals 1
    .param p1, "bottomSheet"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    const-string v0, "bottomSheet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .locals 5
    .param p1, "bottomSheet"    # Landroid/view/View;
    .param p2, "newState"    # I

    const-string v0, "bottomSheet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    sget-object v0, Lcom/swmansion/rnscreens/bottomsheet/SheetUtils;->INSTANCE:Lcom/swmansion/rnscreens/bottomsheet/SheetUtils;

    invoke-virtual {v0, p2}, Lcom/swmansion/rnscreens/bottomsheet/SheetUtils;->isStateStable(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 160
    iput p2, p0, Lcom/swmansion/rnscreens/ScreenStackFragment$bottomSheetStateCallback$1;->lastStableState:I

    .line 161
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackFragment$bottomSheetStateCallback$1;->this$0:Lcom/swmansion/rnscreens/ScreenStackFragment;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    .line 162
    sget-object v2, Lcom/swmansion/rnscreens/bottomsheet/SheetUtils;->INSTANCE:Lcom/swmansion/rnscreens/bottomsheet/SheetUtils;

    .line 163
    iget v3, p0, Lcom/swmansion/rnscreens/ScreenStackFragment$bottomSheetStateCallback$1;->lastStableState:I

    .line 164
    iget-object v4, p0, Lcom/swmansion/rnscreens/ScreenStackFragment$bottomSheetStateCallback$1;->this$0:Lcom/swmansion/rnscreens/ScreenStackFragment;

    invoke-virtual {v4}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v4

    invoke-virtual {v4}, Lcom/swmansion/rnscreens/Screen;->getSheetDetents()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    .line 162
    invoke-virtual {v2, v3, v4}, Lcom/swmansion/rnscreens/bottomsheet/SheetUtils;->detentIndexFromSheetState(II)I

    move-result v2

    .line 166
    nop

    .line 161
    invoke-virtual {v0, v2, v1}, Lcom/swmansion/rnscreens/Screen;->notifySheetDetentChange$react_native_screens_debug(IZ)V

    goto :goto_0

    .line 168
    :cond_0
    if-ne p2, v1, :cond_1

    .line 169
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackFragment$bottomSheetStateCallback$1;->this$0:Lcom/swmansion/rnscreens/ScreenStackFragment;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    .line 170
    sget-object v1, Lcom/swmansion/rnscreens/bottomsheet/SheetUtils;->INSTANCE:Lcom/swmansion/rnscreens/bottomsheet/SheetUtils;

    .line 171
    iget v2, p0, Lcom/swmansion/rnscreens/ScreenStackFragment$bottomSheetStateCallback$1;->lastStableState:I

    .line 172
    iget-object v3, p0, Lcom/swmansion/rnscreens/ScreenStackFragment$bottomSheetStateCallback$1;->this$0:Lcom/swmansion/rnscreens/ScreenStackFragment;

    invoke-virtual {v3}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/swmansion/rnscreens/Screen;->getSheetDetents()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    .line 170
    invoke-virtual {v1, v2, v3}, Lcom/swmansion/rnscreens/bottomsheet/SheetUtils;->detentIndexFromSheetState(II)I

    move-result v1

    .line 174
    nop

    .line 169
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/swmansion/rnscreens/Screen;->notifySheetDetentChange$react_native_screens_debug(IZ)V

    .line 178
    :cond_1
    :goto_0
    const/4 v0, 0x5

    if-ne p2, v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackFragment$bottomSheetStateCallback$1;->this$0:Lcom/swmansion/rnscreens/ScreenStackFragment;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getNativeDismissalObserver()Lcom/swmansion/rnscreens/NativeDismissalObserver;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStackFragment$bottomSheetStateCallback$1;->this$0:Lcom/swmansion/rnscreens/ScreenStackFragment;

    check-cast v1, Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;

    invoke-interface {v0, v1}, Lcom/swmansion/rnscreens/NativeDismissalObserver;->onNativeDismiss(Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;)V

    .line 181
    :cond_2
    return-void
.end method
