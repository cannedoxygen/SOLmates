.class final Lorg/koin/core/scope/Scope$close$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Scope.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/koin/core/scope/Scope;->close()V
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
    value = "SMAP\nScope.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Scope.kt\norg/koin/core/scope/Scope$close$1\n+ 2 Logger.kt\norg/koin/core/logger/Logger\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,403:1\n28#2:404\n46#2,2:405\n29#2:407\n1855#3,2:408\n*S KotlinDebug\n*F\n+ 1 Scope.kt\norg/koin/core/scope/Scope$close$1\n*L\n389#1:404\n389#1:405,2\n389#1:407\n390#1:408,2\n*E\n"
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
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lorg/koin/core/scope/Scope;


# direct methods
.method constructor <init>(Lorg/koin/core/scope/Scope;)V
    .locals 1

    iput-object p1, p0, Lorg/koin/core/scope/Scope$close$1;->this$0:Lorg/koin/core/scope/Scope;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 388
    invoke-virtual {p0}, Lorg/koin/core/scope/Scope$close$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 7

    .line 389
    iget-object v0, p0, Lorg/koin/core/scope/Scope$close$1;->this$0:Lorg/koin/core/scope/Scope;

    invoke-virtual {v0}, Lorg/koin/core/scope/Scope;->get_koin()Lorg/koin/core/Koin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/koin/core/Koin;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object v0

    .local v0, "this_$iv":Lorg/koin/core/logger/Logger;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "|- (-) Scope - id:\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/koin/core/scope/Scope$close$1;->this$0:Lorg/koin/core/scope/Scope;

    invoke-virtual {v2}, Lorg/koin/core/scope/Scope;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "msg$iv":Ljava/lang/String;
    const/4 v2, 0x0

    .line 404
    .local v2, "$i$f$debug":I
    sget-object v3, Lorg/koin/core/logger/Level;->DEBUG:Lorg/koin/core/logger/Level;

    .local v3, "lvl$iv$iv":Lorg/koin/core/logger/Level;
    move-object v4, v0

    .local v4, "this_$iv$iv":Lorg/koin/core/logger/Logger;
    const/4 v5, 0x0

    .line 405
    .local v5, "$i$f$log":I
    invoke-virtual {v4, v3}, Lorg/koin/core/logger/Logger;->isAt(Lorg/koin/core/logger/Level;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4, v3, v1}, Lorg/koin/core/logger/Logger;->display(Lorg/koin/core/logger/Level;Ljava/lang/String;)V

    .line 406
    :cond_0
    nop

    .line 407
    .end local v3    # "lvl$iv$iv":Lorg/koin/core/logger/Level;
    .end local v4    # "this_$iv$iv":Lorg/koin/core/logger/Logger;
    .end local v5    # "$i$f$log":I
    nop

    .line 390
    .end local v0    # "this_$iv":Lorg/koin/core/logger/Logger;
    .end local v1    # "msg$iv":Ljava/lang/String;
    .end local v2    # "$i$f$debug":I
    iget-object v0, p0, Lorg/koin/core/scope/Scope$close$1;->this$0:Lorg/koin/core/scope/Scope;

    invoke-static {v0}, Lorg/koin/core/scope/Scope;->access$get_callbacks$p(Lorg/koin/core/scope/Scope;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    iget-object v1, p0, Lorg/koin/core/scope/Scope$close$1;->this$0:Lorg/koin/core/scope/Scope;

    const/4 v2, 0x0

    .line 408
    .local v2, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lorg/koin/core/scope/ScopeCallback;

    .local v5, "it":Lorg/koin/core/scope/ScopeCallback;
    const/4 v6, 0x0

    .line 390
    .local v6, "$i$a$-forEach-Scope$close$1$1":I
    invoke-interface {v5, v1}, Lorg/koin/core/scope/ScopeCallback;->onScopeClose(Lorg/koin/core/scope/Scope;)V

    .line 408
    .end local v5    # "it":Lorg/koin/core/scope/ScopeCallback;
    .end local v6    # "$i$a$-forEach-Scope$close$1$1":I
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 409
    :cond_1
    nop

    .line 391
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    iget-object v0, p0, Lorg/koin/core/scope/Scope$close$1;->this$0:Lorg/koin/core/scope/Scope;

    invoke-static {v0}, Lorg/koin/core/scope/Scope;->access$get_callbacks$p(Lorg/koin/core/scope/Scope;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 392
    iget-object v0, p0, Lorg/koin/core/scope/Scope$close$1;->this$0:Lorg/koin/core/scope/Scope;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/koin/core/scope/Scope;->set_source(Ljava/lang/Object;)V

    .line 393
    iget-object v0, p0, Lorg/koin/core/scope/Scope$close$1;->this$0:Lorg/koin/core/scope/Scope;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/koin/core/scope/Scope;->access$set_closed$p(Lorg/koin/core/scope/Scope;Z)V

    .line 394
    iget-object v0, p0, Lorg/koin/core/scope/Scope$close$1;->this$0:Lorg/koin/core/scope/Scope;

    invoke-virtual {v0}, Lorg/koin/core/scope/Scope;->get_koin()Lorg/koin/core/Koin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/koin/core/Koin;->getScopeRegistry()Lorg/koin/core/registry/ScopeRegistry;

    move-result-object v0

    iget-object v1, p0, Lorg/koin/core/scope/Scope$close$1;->this$0:Lorg/koin/core/scope/Scope;

    invoke-virtual {v0, v1}, Lorg/koin/core/registry/ScopeRegistry;->deleteScope$koin_core(Lorg/koin/core/scope/Scope;)V

    .line 395
    return-void
.end method
