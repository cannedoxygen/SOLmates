.class public final Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder$buildObject$lambda$2$$inlined$AsyncFunction$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ObjectDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->buildObject()Lexpo/modules/kotlin/objects/ObjectDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "[",
        "Ljava/lang/Object;",
        "Lexpo/modules/kotlin/Promise;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$5\n+ 2 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,611:1\n66#2:612\n67#2,2:614\n69#2:617\n1855#3:613\n1856#3:616\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder\n*L\n66#1:613\n66#1:616\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001\"\u0006\u0008\u0001\u0010\u0003\u0018\u00012\u0010\u0010\u0004\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00060\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\n\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "<anonymous>",
        "",
        "R",
        "P0",
        "<anonymous parameter 0>",
        "",
        "",
        "promise",
        "Lexpo/modules/kotlin/Promise;",
        "invoke",
        "([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V",
        "expo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$5"
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
.field final synthetic $type$inlined:Lexpo/modules/kotlin/objects/EventObservingDefinition$Type;

.field final synthetic this$0:Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;


# direct methods
.method public constructor <init>(Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;Lexpo/modules/kotlin/objects/EventObservingDefinition$Type;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder$buildObject$lambda$2$$inlined$AsyncFunction$1;->this$0:Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    iput-object p2, p0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder$buildObject$lambda$2$$inlined$AsyncFunction$1;->$type$inlined:Lexpo/modules/kotlin/objects/EventObservingDefinition$Type;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 250
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v1, p2

    check-cast v1, Lexpo/modules/kotlin/Promise;

    invoke-virtual {p0, v0, v1}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder$buildObject$lambda$2$$inlined$AsyncFunction$1;->invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V
    .locals 8
    .param p2, "promise"    # Lexpo/modules/kotlin/Promise;

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "promise"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    move-object p1, p2

    check-cast p1, Ljava/lang/String;

    .local p1, "eventName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 612
    .local v0, "$i$a$-AsyncFunction-ObjectDefinitionBuilder$buildObject$1$1":I
    iget-object v1, p0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder$buildObject$lambda$2$$inlined$AsyncFunction$1;->this$0:Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    invoke-static {v1}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->access$getEventObservers$p(Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 613
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lexpo/modules/kotlin/objects/EventObservingDefinition;

    .local v5, "it":Lexpo/modules/kotlin/objects/EventObservingDefinition;
    const/4 v6, 0x0

    .line 614
    .local v6, "$i$a$-forEach-ObjectDefinitionBuilder$buildObject$1$1$1":I
    iget-object v7, p0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder$buildObject$lambda$2$$inlined$AsyncFunction$1;->$type$inlined:Lexpo/modules/kotlin/objects/EventObservingDefinition$Type;

    invoke-virtual {v5, v7, p1}, Lexpo/modules/kotlin/objects/EventObservingDefinition;->invokedIfNeed(Lexpo/modules/kotlin/objects/EventObservingDefinition$Type;Ljava/lang/String;)V

    .line 615
    nop

    .line 613
    .end local v5    # "it":Lexpo/modules/kotlin/objects/EventObservingDefinition;
    .end local v6    # "$i$a$-forEach-ObjectDefinitionBuilder$buildObject$1$1$1":I
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 616
    :cond_0
    nop

    .line 617
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    nop

    .line 244
    .end local v0    # "$i$a$-AsyncFunction-ObjectDefinitionBuilder$buildObject$1$1":I
    .end local p1    # "eventName":Ljava/lang/String;
    return-void
.end method
