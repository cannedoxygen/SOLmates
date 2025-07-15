.class final Lexpo/modules/devmenu/DevMenuManager$maybeInitDevMenuHost$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DevMenuManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/devmenu/DevMenuManager;->maybeInitDevMenuHost(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/facebook/react/ReactHost;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/facebook/react/ReactHost;",
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
.field final synthetic $application:Landroid/app/Application;


# direct methods
.method constructor <init>(Landroid/app/Application;)V
    .locals 1

    iput-object p1, p0, Lexpo/modules/devmenu/DevMenuManager$maybeInitDevMenuHost$1;->$application:Landroid/app/Application;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/facebook/react/ReactHost;
    .locals 3

    .line 96
    sget-object v0, Lexpo/modules/devmenu/DevMenuReactHost;->INSTANCE:Lexpo/modules/devmenu/DevMenuReactHost;

    iget-object v1, p0, Lexpo/modules/devmenu/DevMenuManager$maybeInitDevMenuHost$1;->$application:Landroid/app/Application;

    invoke-static {}, Lexpo/modules/devmenu/DevMenuManager;->access$getUseDeveloperSupport$p()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lexpo/modules/devmenu/DevMenuReactHost;->create(Landroid/app/Application;Z)Lcom/facebook/react/ReactHost;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 94
    invoke-virtual {p0}, Lexpo/modules/devmenu/DevMenuManager$maybeInitDevMenuHost$1;->invoke()Lcom/facebook/react/ReactHost;

    move-result-object v0

    return-object v0
.end method
