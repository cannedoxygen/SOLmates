.class final Lexpo/modules/linking/ExpoLinkingModule$definition$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ExpoLinkingModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/linking/ExpoLinkingModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
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
.field final synthetic this$0:Lexpo/modules/linking/ExpoLinkingModule;


# direct methods
.method constructor <init>(Lexpo/modules/linking/ExpoLinkingModule;)V
    .locals 1

    iput-object p1, p0, Lexpo/modules/linking/ExpoLinkingModule$definition$1$2;->this$0:Lexpo/modules/linking/ExpoLinkingModule;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lexpo/modules/linking/ExpoLinkingModule$definition$1$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 27
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lexpo/modules/linking/ExpoLinkingModule$definition$1$2;->this$0:Lexpo/modules/linking/ExpoLinkingModule;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 28
    .local v0, "weakModule":Ljava/lang/ref/WeakReference;
    new-instance v1, Lexpo/modules/linking/ExpoLinkingModule$definition$1$2$observer$1;

    invoke-direct {v1, v0}, Lexpo/modules/linking/ExpoLinkingModule$definition$1$2$observer$1;-><init>(Ljava/lang/ref/WeakReference;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 31
    .local v1, "observer":Lkotlin/jvm/functions/Function1;
    sget-object v2, Lexpo/modules/linking/ExpoLinkingModule;->Companion:Lexpo/modules/linking/ExpoLinkingModule$Companion;

    invoke-virtual {v2}, Lexpo/modules/linking/ExpoLinkingModule$Companion;->getOnURLReceivedObservers()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v2, p0, Lexpo/modules/linking/ExpoLinkingModule$definition$1$2;->this$0:Lexpo/modules/linking/ExpoLinkingModule;

    invoke-static {v2, v1}, Lexpo/modules/linking/ExpoLinkingModule;->access$setOnURLReceivedObserver$p(Lexpo/modules/linking/ExpoLinkingModule;Lkotlin/jvm/functions/Function1;)V

    .line 33
    return-void
.end method
