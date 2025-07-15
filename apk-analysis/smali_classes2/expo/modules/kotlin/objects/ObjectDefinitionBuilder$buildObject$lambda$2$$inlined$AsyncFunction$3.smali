.class public final Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder$buildObject$lambda$2$$inlined$AsyncFunction$3;
.super Lkotlin/jvm/internal/Lambda;
.source "ObjectDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


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
        "Lkotlin/jvm/functions/Function1<",
        "[",
        "Ljava/lang/Object;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$6\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,611:1\n8#2,4:612\n66#3:616\n67#3,2:618\n69#3:621\n1855#4:617\n1856#4:620\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$6\n+ 2 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder\n*L\n247#1:612,4\n66#2:617\n66#2:620\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0010\u0000\u001a\u0002H\u0001\"\u0006\u0008\u0000\u0010\u0001\u0018\u0001\"\u0006\u0008\u0001\u0010\u0002\u0018\u00012\u0010\u0010\u0003\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00050\u0004H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "<anonymous>",
        "R",
        "P0",
        "<name for destructuring parameter 0>",
        "",
        "",
        "invoke",
        "([Ljava/lang/Object;)Ljava/lang/Object;",
        "expo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$6"
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

    iput-object p1, p0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder$buildObject$lambda$2$$inlined$AsyncFunction$3;->this$0:Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    iput-object p2, p0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder$buildObject$lambda$2$$inlined$AsyncFunction$3;->$type$inlined:Lexpo/modules/kotlin/objects/EventObservingDefinition$Type;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 246
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder$buildObject$lambda$2$$inlined$AsyncFunction$3;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Lkotlin/Unit;"
        }
    .end annotation

    const-string v0, "<name for destructuring parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    const/4 v0, 0x0

    aget-object p1, p1, v0

    .line 247
    .local p1, "p0":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 612
    .local v0, "$i$f$enforceType":I
    nop

    .line 615
    nop

    .line 248
    .end local v0    # "$i$f$enforceType":I
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .local v0, "eventName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 616
    .local v1, "$i$a$-AsyncFunction-ObjectDefinitionBuilder$buildObject$1$1":I
    iget-object v2, p0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder$buildObject$lambda$2$$inlined$AsyncFunction$3;->this$0:Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    invoke-static {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->access$getEventObservers$p(Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 617
    .local v3, "$i$f$forEach":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Lexpo/modules/kotlin/objects/EventObservingDefinition;

    .local v6, "it":Lexpo/modules/kotlin/objects/EventObservingDefinition;
    const/4 v7, 0x0

    .line 618
    .local v7, "$i$a$-forEach-ObjectDefinitionBuilder$buildObject$1$1$1":I
    iget-object v8, p0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder$buildObject$lambda$2$$inlined$AsyncFunction$3;->$type$inlined:Lexpo/modules/kotlin/objects/EventObservingDefinition$Type;

    invoke-virtual {v6, v8, v0}, Lexpo/modules/kotlin/objects/EventObservingDefinition;->invokedIfNeed(Lexpo/modules/kotlin/objects/EventObservingDefinition$Type;Ljava/lang/String;)V

    .line 619
    nop

    .line 617
    .end local v6    # "it":Lexpo/modules/kotlin/objects/EventObservingDefinition;
    .end local v7    # "$i$a$-forEach-ObjectDefinitionBuilder$buildObject$1$1$1":I
    nop

    .end local v5    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 620
    :cond_0
    nop

    .line 621
    .end local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$forEach":I
    nop

    .end local v0    # "eventName":Ljava/lang/String;
    .end local v1    # "$i$a$-AsyncFunction-ObjectDefinitionBuilder$buildObject$1$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 248
    return-object v0
.end method
