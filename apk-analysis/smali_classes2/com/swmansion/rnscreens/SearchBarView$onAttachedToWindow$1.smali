.class final Lcom/swmansion/rnscreens/SearchBarView$onAttachedToWindow$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SearchBarView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swmansion/rnscreens/SearchBarView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/swmansion/rnscreens/CustomSearchView;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "newSearchView",
        "Lcom/swmansion/rnscreens/CustomSearchView;",
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
.field final synthetic this$0:Lcom/swmansion/rnscreens/SearchBarView;


# direct methods
.method constructor <init>(Lcom/swmansion/rnscreens/SearchBarView;)V
    .locals 1

    iput-object p1, p0, Lcom/swmansion/rnscreens/SearchBarView$onAttachedToWindow$1;->this$0:Lcom/swmansion/rnscreens/SearchBarView;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 75
    move-object v0, p1

    check-cast v0, Lcom/swmansion/rnscreens/CustomSearchView;

    invoke-virtual {p0, v0}, Lcom/swmansion/rnscreens/SearchBarView$onAttachedToWindow$1;->invoke(Lcom/swmansion/rnscreens/CustomSearchView;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Lcom/swmansion/rnscreens/CustomSearchView;)V
    .locals 3
    .param p1, "newSearchView"    # Lcom/swmansion/rnscreens/CustomSearchView;

    const-string v0, "newSearchView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/swmansion/rnscreens/SearchBarView$onAttachedToWindow$1;->this$0:Lcom/swmansion/rnscreens/SearchBarView;

    invoke-static {v0}, Lcom/swmansion/rnscreens/SearchBarView;->access$getSearchViewFormatter$p(Lcom/swmansion/rnscreens/SearchBarView;)Lcom/swmansion/rnscreens/SearchViewFormatter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/swmansion/rnscreens/SearchBarView$onAttachedToWindow$1;->this$0:Lcom/swmansion/rnscreens/SearchBarView;

    .line 78
    new-instance v1, Lcom/swmansion/rnscreens/SearchViewFormatter;

    move-object v2, p1

    check-cast v2, Landroidx/appcompat/widget/SearchView;

    invoke-direct {v1, v2}, Lcom/swmansion/rnscreens/SearchViewFormatter;-><init>(Landroidx/appcompat/widget/SearchView;)V

    .line 77
    invoke-static {v0, v1}, Lcom/swmansion/rnscreens/SearchBarView;->access$setSearchViewFormatter$p(Lcom/swmansion/rnscreens/SearchBarView;Lcom/swmansion/rnscreens/SearchViewFormatter;)V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/swmansion/rnscreens/SearchBarView$onAttachedToWindow$1;->this$0:Lcom/swmansion/rnscreens/SearchBarView;

    invoke-static {v0}, Lcom/swmansion/rnscreens/SearchBarView;->access$setSearchViewProps(Lcom/swmansion/rnscreens/SearchBarView;)V

    .line 81
    iget-object v0, p0, Lcom/swmansion/rnscreens/SearchBarView$onAttachedToWindow$1;->this$0:Lcom/swmansion/rnscreens/SearchBarView;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/SearchBarView;->getAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/swmansion/rnscreens/SearchBarView$onAttachedToWindow$1;->this$0:Lcom/swmansion/rnscreens/SearchBarView;

    invoke-static {v0}, Lcom/swmansion/rnscreens/SearchBarView;->access$getScreenStackFragment(Lcom/swmansion/rnscreens/SearchBarView;)Lcom/swmansion/rnscreens/ScreenStackFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getSearchView()Lcom/swmansion/rnscreens/CustomSearchView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/CustomSearchView;->focus()V

    .line 84
    :cond_1
    return-void
.end method
