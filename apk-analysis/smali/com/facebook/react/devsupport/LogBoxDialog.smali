.class public final Lcom/facebook/react/devsupport/LogBoxDialog;
.super Landroid/app/Dialog;
.source "LogBoxDialog.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0012\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0014R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/facebook/react/devsupport/LogBoxDialog;",
        "Landroid/app/Dialog;",
        "context",
        "Landroid/app/Activity;",
        "reactRootView",
        "Landroid/view/View;",
        "(Landroid/app/Activity;Landroid/view/View;)V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
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


# instance fields
.field private final reactRootView:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$YNKCyC9-QTRydZVM6nScwM25Hk4(Lkotlin/jvm/functions/Function2;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/facebook/react/devsupport/LogBoxDialog;->onCreate$lambda$1$lambda$0(Lkotlin/jvm/functions/Function2;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "reactRootView"    # Landroid/view/View;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    sget v1, Lcom/facebook/react/R$style;->Theme_Catalyst_LogBox:I

    invoke-direct {p0, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 23
    iput-object p2, p0, Lcom/facebook/react/devsupport/LogBoxDialog;->reactRootView:Landroid/view/View;

    .line 25
    nop

    .line 26
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/react/devsupport/LogBoxDialog;->requestWindowFeature(I)Z

    .line 27
    iget-object v0, p0, Lcom/facebook/react/devsupport/LogBoxDialog;->reactRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/facebook/react/devsupport/LogBoxDialog;->reactRootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/facebook/react/devsupport/LogBoxDialog;->setContentView(Landroid/view/View;)V

    .line 30
    :cond_0
    nop

    .line 23
    return-void
.end method

.method private static final onCreate$lambda$1$lambda$0(Lkotlin/jvm/functions/Function2;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 1
    .param p0, "$tmp0"    # Lkotlin/jvm/functions/Function2;
    .param p1, "p0"    # Landroid/view/View;
    .param p2, "p1"    # Landroidx/core/view/WindowInsetsCompat;

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "p1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/WindowInsetsCompat;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 33
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/LogBoxDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x1000000

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/devsupport/LogBoxDialog;->reactRootView:Landroid/view/View;

    if-eqz v0, :cond_1

    .local v0, "rootView":Landroid/view/View;
    const/4 v1, 0x0

    .line 39
    .local v1, "$i$a$-let-LogBoxDialog$onCreate$1":I
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v2

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    move-result v3

    or-int/2addr v2, v3

    .line 38
    nop

    .line 41
    .local v2, "insetsType":I
    new-instance v3, Lcom/facebook/react/devsupport/LogBoxDialog$onCreate$1$windowInsetsListener$1;

    invoke-direct {v3, v2}, Lcom/facebook/react/devsupport/LogBoxDialog$onCreate$1$windowInsetsListener$1;-><init>(I)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 50
    .local v3, "windowInsetsListener":Lkotlin/jvm/functions/Function2;
    new-instance v4, Lcom/facebook/react/devsupport/LogBoxDialog$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3}, Lcom/facebook/react/devsupport/LogBoxDialog$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-static {v0, v4}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 51
    nop

    .line 37
    .end local v0    # "rootView":Landroid/view/View;
    .end local v1    # "$i$a$-let-LogBoxDialog$onCreate$1":I
    .end local v2    # "insetsType":I
    .end local v3    # "windowInsetsListener":Lkotlin/jvm/functions/Function2;
    nop

    .line 52
    :cond_1
    return-void
.end method
