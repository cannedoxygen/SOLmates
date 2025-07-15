.class final Lcom/facebook/react/devsupport/LogBoxDialog$onCreate$1$windowInsetsListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LogBoxDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/devsupport/LogBoxDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroid/view/View;",
        "Landroidx/core/view/WindowInsetsCompat;",
        "Landroidx/core/view/WindowInsetsCompat;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/core/view/WindowInsetsCompat;",
        "view",
        "Landroid/view/View;",
        "windowInsets",
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
.field final synthetic $insetsType:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    iput p1, p0, Lcom/facebook/react/devsupport/LogBoxDialog$onCreate$1$windowInsetsListener$1;->$insetsType:I

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "windowInsets"    # Landroidx/core/view/WindowInsetsCompat;

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "windowInsets"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget v0, p0, Lcom/facebook/react/devsupport/LogBoxDialog$onCreate$1$windowInsetsListener$1;->$insetsType:I

    invoke-virtual {p2, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    const-string v1, "getInsets(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .local v0, "insets":Landroidx/core/graphics/Insets;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string/jumbo v2, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .local v1, "$this$invoke_u24lambda_u240":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v2, 0x0

    .line 45
    .local v2, "$i$a$-apply-LogBoxDialog$onCreate$1$windowInsetsListener$1$1":I
    iget v3, v0, Landroidx/core/graphics/Insets;->left:I

    iget v4, v0, Landroidx/core/graphics/Insets;->top:I

    iget v5, v0, Landroidx/core/graphics/Insets;->right:I

    iget v6, v0, Landroidx/core/graphics/Insets;->bottom:I

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 46
    nop

    .line 44
    .end local v1    # "$this$invoke_u24lambda_u240":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "$i$a$-apply-LogBoxDialog$onCreate$1$windowInsetsListener$1$1":I
    nop

    .line 48
    sget-object v1, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    return-object v1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 41
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    move-object v1, p2

    check-cast v1, Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/devsupport/LogBoxDialog$onCreate$1$windowInsetsListener$1;->invoke(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method
