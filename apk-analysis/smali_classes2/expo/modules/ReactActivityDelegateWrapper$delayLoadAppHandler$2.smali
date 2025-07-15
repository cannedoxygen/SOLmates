.class final Lexpo/modules/ReactActivityDelegateWrapper$delayLoadAppHandler$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ReactActivityDelegateWrapper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/ReactActivityDelegateWrapper;-><init>(Lcom/facebook/react/ReactActivity;ZLcom/facebook/react/ReactActivityDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lexpo/modules/core/interfaces/ReactActivityHandler$DelayLoadAppHandler;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lexpo/modules/core/interfaces/ReactActivityHandler$DelayLoadAppHandler;",
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
.field final synthetic this$0:Lexpo/modules/ReactActivityDelegateWrapper;


# direct methods
.method constructor <init>(Lexpo/modules/ReactActivityDelegateWrapper;)V
    .locals 1

    iput-object p1, p0, Lexpo/modules/ReactActivityDelegateWrapper$delayLoadAppHandler$2;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lexpo/modules/core/interfaces/ReactActivityHandler$DelayLoadAppHandler;
    .locals 3

    .line 65
    iget-object v0, p0, Lexpo/modules/ReactActivityDelegateWrapper$delayLoadAppHandler$2;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    invoke-static {v0}, Lexpo/modules/ReactActivityDelegateWrapper;->access$getReactActivityHandlers$p(Lexpo/modules/ReactActivityDelegateWrapper;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 66
    new-instance v1, Lexpo/modules/ReactActivityDelegateWrapper$delayLoadAppHandler$2$1;

    iget-object v2, p0, Lexpo/modules/ReactActivityDelegateWrapper$delayLoadAppHandler$2;->this$0:Lexpo/modules/ReactActivityDelegateWrapper;

    invoke-direct {v1, v2}, Lexpo/modules/ReactActivityDelegateWrapper$delayLoadAppHandler$2$1;-><init>(Lexpo/modules/ReactActivityDelegateWrapper;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 67
    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->firstOrNull(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/core/interfaces/ReactActivityHandler$DelayLoadAppHandler;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lexpo/modules/ReactActivityDelegateWrapper$delayLoadAppHandler$2;->invoke()Lexpo/modules/core/interfaces/ReactActivityHandler$DelayLoadAppHandler;

    move-result-object v0

    return-object v0
.end method
