.class final Lexpo/modules/devmenu/DevMenuReactRootViewContainer$fab$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DevMenuReactRootViewContainer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/devmenu/DevMenuReactRootViewContainer$fab$2;->invoke()Lexpo/modules/devmenu/fab/MovableFloatingActionButton;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDevMenuReactRootViewContainer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DevMenuReactRootViewContainer.kt\nexpo/modules/devmenu/DevMenuReactRootViewContainer$fab$2$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,62:1\n65#2,4:63\n37#2:67\n53#2:68\n72#2:69\n*S KotlinDebug\n*F\n+ 1 DevMenuReactRootViewContainer.kt\nexpo/modules/devmenu/DevMenuReactRootViewContainer$fab$2$1\n*L\n39#1:63,4\n39#1:67\n39#1:68\n39#1:69\n*E\n"
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

    iput-object p1, p0, Lexpo/modules/devmenu/DevMenuReactRootViewContainer$fab$2$1;->this$0:Lexpo/modules/devmenu/DevMenuReactRootViewContainer;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lexpo/modules/devmenu/DevMenuReactRootViewContainer$fab$2$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 6

    .line 39
    iget-object v0, p0, Lexpo/modules/devmenu/DevMenuReactRootViewContainer$fab$2$1;->this$0:Lexpo/modules/devmenu/DevMenuReactRootViewContainer;

    check-cast v0, Landroid/view/View;

    .local v0, "$this$doOnLayout$iv":Landroid/view/View;
    iget-object v1, p0, Lexpo/modules/devmenu/DevMenuReactRootViewContainer$fab$2$1;->this$0:Lexpo/modules/devmenu/DevMenuReactRootViewContainer;

    const/4 v2, 0x0

    .line 63
    .local v2, "$i$f$doOnLayout":I
    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v3

    if-nez v3, :cond_0

    .line 64
    move-object v3, v0

    .local v3, "it":Landroid/view/View;
    const/4 v4, 0x0

    .line 40
    .local v4, "$i$a$-doOnLayout-DevMenuReactRootViewContainer$fab$2$1$1":I
    invoke-static {v1}, Lexpo/modules/devmenu/DevMenuReactRootViewContainer;->access$getUpdateSystemGestureExclusionRects$p(Lexpo/modules/devmenu/DevMenuReactRootViewContainer;)Lkotlin/jvm/functions/Function0;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 41
    nop

    .line 64
    .end local v3    # "it":Landroid/view/View;
    .end local v4    # "$i$a$-doOnLayout-DevMenuReactRootViewContainer$fab$2$1$1":I
    goto :goto_0

    .line 66
    :cond_0
    move-object v3, v0

    .local v3, "$this$doOnNextLayout$iv$iv":Landroid/view/View;
    const/4 v4, 0x0

    .line 67
    .local v4, "$i$f$doOnNextLayout":I
    new-instance v5, Lexpo/modules/devmenu/DevMenuReactRootViewContainer$fab$2$1$invoke$$inlined$doOnLayout$1;

    invoke-direct {v5, v1}, Lexpo/modules/devmenu/DevMenuReactRootViewContainer$fab$2$1$invoke$$inlined$doOnLayout$1;-><init>(Lexpo/modules/devmenu/DevMenuReactRootViewContainer;)V

    check-cast v5, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v3, v5}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 68
    nop

    .line 69
    .end local v3    # "$this$doOnNextLayout$iv$iv":Landroid/view/View;
    .end local v4    # "$i$f$doOnNextLayout":I
    :goto_0
    nop

    .line 42
    .end local v0    # "$this$doOnLayout$iv":Landroid/view/View;
    .end local v2    # "$i$f$doOnLayout":I
    return-void
.end method
