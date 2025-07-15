.class final Lexpo/modules/devmenu/DevMenuReactRootViewContainer$fab$2;
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
        "Lexpo/modules/devmenu/fab/MovableFloatingActionButton;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lexpo/modules/devmenu/fab/MovableFloatingActionButton;",
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
.field final synthetic $context:Landroid/content/Context;

.field final synthetic this$0:Lexpo/modules/devmenu/DevMenuReactRootViewContainer;


# direct methods
.method constructor <init>(Landroid/content/Context;Lexpo/modules/devmenu/DevMenuReactRootViewContainer;)V
    .locals 1

    iput-object p1, p0, Lexpo/modules/devmenu/DevMenuReactRootViewContainer$fab$2;->$context:Landroid/content/Context;

    iput-object p2, p0, Lexpo/modules/devmenu/DevMenuReactRootViewContainer$fab$2;->this$0:Lexpo/modules/devmenu/DevMenuReactRootViewContainer;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lexpo/modules/devmenu/fab/MovableFloatingActionButton;
    .locals 4

    .line 37
    new-instance v0, Lexpo/modules/devmenu/fab/MovableFloatingActionButton;

    iget-object v1, p0, Lexpo/modules/devmenu/DevMenuReactRootViewContainer$fab$2;->$context:Landroid/content/Context;

    new-instance v2, Lexpo/modules/devmenu/DevMenuReactRootViewContainer$fab$2$1;

    iget-object v3, p0, Lexpo/modules/devmenu/DevMenuReactRootViewContainer$fab$2;->this$0:Lexpo/modules/devmenu/DevMenuReactRootViewContainer;

    invoke-direct {v2, v3}, Lexpo/modules/devmenu/DevMenuReactRootViewContainer$fab$2$1;-><init>(Lexpo/modules/devmenu/DevMenuReactRootViewContainer;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, v1, v2}, Lexpo/modules/devmenu/fab/MovableFloatingActionButton;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lexpo/modules/devmenu/DevMenuReactRootViewContainer$fab$2;->invoke()Lexpo/modules/devmenu/fab/MovableFloatingActionButton;

    move-result-object v0

    return-object v0
.end method
