.class public final Lcom/facebook/imagepipeline/listener/ForwardingRequestListener2;
.super Ljava/lang/Object;
.source "ForwardingRequestListener2.kt"

# interfaces
.implements Lcom/facebook/imagepipeline/listener/RequestListener2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/listener/ForwardingRequestListener2$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nForwardingRequestListener2.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ForwardingRequestListener2.kt\ncom/facebook/imagepipeline/listener/ForwardingRequestListener2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,125:1\n37#1:128\n38#1,7:130\n45#1:138\n37#1:139\n38#1,7:141\n45#1:149\n37#1:150\n38#1,7:152\n45#1:160\n37#1:161\n38#1,7:163\n45#1:171\n37#1:172\n38#1,7:174\n45#1:182\n37#1:183\n38#1,7:185\n45#1:193\n37#1:194\n38#1,7:196\n45#1:204\n37#1:205\n38#1,7:207\n45#1:215\n37#1:216\n38#1,7:218\n45#1:226\n37#1:227\n38#1,7:229\n45#1:237\n1855#2,2:126\n1855#2:129\n1856#2:137\n1855#2:140\n1856#2:148\n1855#2:151\n1856#2:159\n1855#2:162\n1856#2:170\n1855#2:173\n1856#2:181\n1855#2:184\n1856#2:192\n1855#2:195\n1856#2:203\n1855#2:206\n1856#2:214\n1855#2:217\n1856#2:225\n1855#2:228\n1856#2:236\n1747#2,3:238\n*S KotlinDebug\n*F\n+ 1 ForwardingRequestListener2.kt\ncom/facebook/imagepipeline/listener/ForwardingRequestListener2\n*L\n48#1:128\n48#1:130,7\n48#1:138\n52#1:139\n52#1:141,7\n52#1:149\n60#1:150\n60#1:152,7\n60#1:160\n71#1:161\n71#1:163,7\n71#1:171\n81#1:172\n81#1:174,7\n81#1:182\n91#1:183\n91#1:185,7\n91#1:193\n101#1:194\n101#1:196,7\n101#1:204\n107#1:205\n107#1:207,7\n107#1:215\n111#1:216\n111#1:218,7\n111#1:226\n115#1:227\n115#1:229,7\n115#1:237\n37#1:126,2\n48#1:129\n48#1:137\n52#1:140\n52#1:148\n60#1:151\n60#1:159\n71#1:162\n71#1:170\n81#1:173\n81#1:181\n91#1:184\n91#1:192\n101#1:195\n101#1:203\n107#1:206\n107#1:214\n111#1:217\n111#1:225\n115#1:228\n115#1:236\n119#1:238,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010%\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u0000 \'2\u00020\u0001:\u0001\'B\u0019\u0008\u0016\u0012\u0010\u0010\u0002\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004B\u001f\u0008\u0016\u0012\u0016\u0010\u0002\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00010\u0005\"\u0004\u0018\u00010\u0001\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0001J%\u0010\u000c\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000e2\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\n0\u0010H\u0082\u0008J \u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u000eH\u0016J2\u0010\u0016\u001a\u00020\n2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u000e2\u0014\u0010\u0017\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0018H\u0016J<\u0010\u0019\u001a\u00020\n2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0014\u0010\u0017\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0018H\u0016J2\u0010\u001c\u001a\u00020\n2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u000e2\u0014\u0010\u0017\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0018H\u0016J\u0018\u0010\u001d\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000eH\u0016J\u0010\u0010\u001e\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0018\u0010\u001f\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010 \u001a\u00020\u001bH\u0016J\u0010\u0010!\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010\"\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J \u0010#\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000e2\u0006\u0010$\u001a\u00020%H\u0016J\u0018\u0010&\u001a\u00020%2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000eH\u0016R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lcom/facebook/imagepipeline/listener/ForwardingRequestListener2;",
        "Lcom/facebook/imagepipeline/listener/RequestListener2;",
        "listenersToAdd",
        "",
        "(Ljava/util/Set;)V",
        "",
        "([Lcom/facebook/imagepipeline/listener/RequestListener2;)V",
        "requestListeners",
        "",
        "addRequestListener",
        "",
        "requestListener",
        "forEachListener",
        "methodName",
        "",
        "block",
        "Lkotlin/Function1;",
        "onProducerEvent",
        "producerContext",
        "Lcom/facebook/imagepipeline/producers/ProducerContext;",
        "producerName",
        "producerEventName",
        "onProducerFinishWithCancellation",
        "extraMap",
        "",
        "onProducerFinishWithFailure",
        "t",
        "",
        "onProducerFinishWithSuccess",
        "onProducerStart",
        "onRequestCancellation",
        "onRequestFailure",
        "throwable",
        "onRequestStart",
        "onRequestSuccess",
        "onUltimateProducerReached",
        "successful",
        "",
        "requiresExtraMap",
        "Companion",
        "imagepipeline_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/facebook/imagepipeline/listener/ForwardingRequestListener2$Companion;

.field private static final TAG:Ljava/lang/String; = "ForwardingRequestListener2"


# instance fields
.field private final requestListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/imagepipeline/listener/RequestListener2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener2$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener2$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener2;->Companion:Lcom/facebook/imagepipeline/listener/ForwardingRequestListener2$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 2
    .param p1, "listenersToAdd"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/facebook/imagepipeline/listener/RequestListener2;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    if-nez p1, :cond_0

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener2;->requestListeners:Ljava/util/List;

    .line 21
    return-void

    .line 23
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener2;->requestListeners:Ljava/util/List;

    .line 24
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    iget-object v1, p0, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener2;->requestListeners:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->filterNotNullTo(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/Collection;

    .line 25
    return-void
.end method

.method public varargs constructor <init>([Lcom/facebook/imagepipeline/listener/RequestListener2;)V
    .locals 2
    .param p1, "listenersToAdd"    # [Lcom/facebook/imagepipeline/listener/RequestListener2;

    const-string v0, "listenersToAdd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener2;->requestListeners:Ljava/util/List;

    .line 29
    iget-object v0, p0, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener2;->requestListeners:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {p1, v0}, Lkotlin/collections/ArraysKt;->filterNotNullTo([Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    .line 30
    return-void
.end method

.method private final forEachListener(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 11
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/facebook/imagepipeline/listener/RequestListener2;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 37
    .local v0, "$i$f$forEachListener":I
    iget-object v1, p0, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener2;->requestListeners:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 126
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

    check-cast v5, Lcom/facebook/imagepipeline/listener/RequestListener2;

    .local v5, "it":Lcom/facebook/imagepipeline/listener/RequestListener2;
    const/4 v6, 0x0

    .line 38
    .local v6, "$i$a$-forEach-ForwardingRequestListener2$forEachListener$1":I
    nop

    .line 39
    :try_start_0
    invoke-interface {p2, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 40
    :catch_0
    move-exception v7

    .line 42
    .local v7, "exception":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "InternalListener exception in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v9, v7

    check-cast v9, Ljava/lang/Throwable;

    const-string v10, "ForwardingRequestListener2"

    invoke-static {v10, v8, v9}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    .end local v7    # "exception":Ljava/lang/Exception;
    :goto_1
    nop

    .line 126
    .end local v5    # "it":Lcom/facebook/imagepipeline/listener/RequestListener2;
    .end local v6    # "$i$a$-forEach-ForwardingRequestListener2$forEachListener$1":I
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 127
    :cond_0
    nop

    .line 45
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    return-void
.end method


# virtual methods
.method public final addRequestListener(Lcom/facebook/imagepipeline/listener/RequestListener2;)V
    .locals 1
    .param p1, "requestListener"    # Lcom/facebook/imagepipeline/listener/RequestListener2;

    const-string/jumbo v0, "requestListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener2;->requestListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method

.method public onProducerEvent(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "producerContext"    # Lcom/facebook/imagepipeline/producers/ProducerContext;
    .param p2, "producerName"    # Ljava/lang/String;
    .param p3, "producerEventName"    # Ljava/lang/String;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string/jumbo v0, "producerContext"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "producerName"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "producerEventName"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    const-string/jumbo v0, "onIntermediateChunkStart"

    .local v0, "methodName$iv":Ljava/lang/String;
    move-object/from16 v4, p0

    .local v4, "this_$iv":Lcom/facebook/imagepipeline/listener/ForwardingRequestListener2;
    move-object v5, v0

    .end local v0    # "methodName$iv":Ljava/lang/String;
    .local v5, "methodName$iv":Ljava/lang/String;
    const/4 v6, 0x0

    .line 183
    .local v6, "$i$f$forEachListener":I
    iget-object v0, v4, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener2;->requestListeners:Ljava/util/List;

    move-object v7, v0

    check-cast v7, Ljava/lang/Iterable;

    .local v7, "$this$forEach$iv$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 184
    .local v8, "$i$f$forEach":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .local v10, "element$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Lcom/facebook/imagepipeline/listener/RequestListener2;

    .local v11, "it$iv":Lcom/facebook/imagepipeline/listener/RequestListener2;
    const/4 v12, 0x0

    .line 185
    .local v12, "$i$a$-forEach-ForwardingRequestListener2$forEachListener$1$iv":I
    nop

    .line 186
    move-object v0, v11

    .local v0, "it":Lcom/facebook/imagepipeline/listener/RequestListener2;
    const/4 v13, 0x0

    .line 92
    .local v13, "$i$a$-forEachListener-ForwardingRequestListener2$onProducerEvent$1":I
    :try_start_0
    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/listener/RequestListener2;->onProducerEvent(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    nop

    .line 186
    .end local v0    # "it":Lcom/facebook/imagepipeline/listener/RequestListener2;
    .end local v13    # "$i$a$-forEachListener-ForwardingRequestListener2$onProducerEvent$1":I
    goto :goto_1

    .line 187
    :catch_0
    move-exception v0

    move-object v13, v0

    move-object v0, v13

    .line 189
    .local v0, "exception$iv":Ljava/lang/Exception;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "InternalListener exception in "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v14, v0

    check-cast v14, Ljava/lang/Throwable;

    const-string v15, "ForwardingRequestListener2"

    invoke-static {v15, v13, v14}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    .end local v0    # "exception$iv":Ljava/lang/Exception;
    :goto_1
    nop

    .line 184
    .end local v11    # "it$iv":Lcom/facebook/imagepipeline/listener/RequestListener2;
    .end local v12    # "$i$a$-forEach-ForwardingRequestListener2$forEachListener$1$iv":I
    nop

    .end local v10    # "element$iv$iv":Ljava/lang/Object;
    goto :goto_0

    .line 192
    :cond_0
    nop

    .line 193
    .end local v7    # "$this$forEach$iv$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$forEach":I
    nop

    .line 94
    .end local v4    # "this_$iv":Lcom/facebook/imagepipeline/listener/ForwardingRequestListener2;
    .end local v5    # "methodName$iv":Ljava/lang/String;
    .end local v6    # "$i$f$forEachListener":I
    return-void
.end method

.method public onProducerFinishWithCancellation(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/util/Map;)V
    .locals 16
    .param p1, "producerContext"    # Lcom/facebook/imagepipeline/producers/ProducerContext;
    .param p2, "producerName"    # Ljava/lang/String;
    .param p3, "extraMap"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 81
    const-string/jumbo v0, "onProducerFinishWithCancellation"

    .local v0, "methodName$iv":Ljava/lang/String;
    move-object/from16 v1, p0

    .local v1, "this_$iv":Lcom/facebook/imagepipeline/listener/ForwardingRequestListener2;
    move-object v2, v0

    .end local v0    # "methodName$iv":Ljava/lang/String;
    .local v2, "methodName$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 172
    .local v3, "$i$f$forEachListener":I
    iget-object v0, v1, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener2;->requestListeners:Ljava/util/List;

    move-object v4, v0

    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$forEach$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 173
    .local v5, "$i$f$forEach":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "element$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Lcom/facebook/imagepipeline/listener/RequestListener2;

    .local v8, "it$iv":Lcom/facebook/imagepipeline/listener/RequestListener2;
    const/4 v9, 0x0

    .line 174
    .local v9, "$i$a$-forEach-ForwardingRequestListener2$forEachListener$1$iv":I
    nop

    .line 175
    move-object v0, v8

    .local v0, "it":Lcom/facebook/imagepipeline/listener/RequestListener2;
    const/4 v10, 0x0

    .line 82
    .local v10, "$i$a$-forEachListener-ForwardingRequestListener2$onProducerFinishWithCancellation$1":I
    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    :try_start_0
    invoke-interface {v0, v11, v12, v13}, Lcom/facebook/imagepipeline/listener/RequestListener2;->onProducerFinishWithCancellation(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    nop

    .line 175
    .end local v0    # "it":Lcom/facebook/imagepipeline/listener/RequestListener2;
    .end local v10    # "$i$a$-forEachListener-ForwardingRequestListener2$onProducerFinishWithCancellation$1":I
    goto :goto_1

    .line 176
    :catch_0
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    .line 178
    .local v0, "exception$iv":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "InternalListener exception in "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v14, v0

    check-cast v14, Ljava/lang/Throwable;

    const-string v15, "ForwardingRequestListener2"

    invoke-static {v15, v10, v14}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 180
    .end local v0    # "exception$iv":Ljava/lang/Exception;
    :goto_1
    nop

    .line 173
    .end local v8    # "it$iv":Lcom/facebook/imagepipeline/listener/RequestListener2;
    .end local v9    # "$i$a$-forEach-ForwardingRequestListener2$forEachListener$1$iv":I
    nop

    .end local v7    # "element$iv$iv":Ljava/lang/Object;
    goto :goto_0

    .line 181
    :cond_0
    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    .line 182
    .end local v4    # "$this$forEach$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$forEach":I
    nop

    .line 84
    .end local v1    # "this_$iv":Lcom/facebook/imagepipeline/listener/ForwardingRequestListener2;
    .end local v2    # "methodName$iv":Ljava/lang/String;
    .end local v3    # "$i$f$forEachListener":I
    return-void
.end method

.method public onProducerFinishWithFailure(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V
    .locals 17
    .param p1, "producerContext"    # Lcom/facebook/imagepipeline/producers/ProducerContext;
    .param p2, "producerName"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;
    .param p4, "extraMap"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 71
    const-string/jumbo v1, "onProducerFinishWithFailure"

    .local v1, "methodName$iv":Ljava/lang/String;
    move-object/from16 v2, p0

    .local v2, "this_$iv":Lcom/facebook/imagepipeline/listener/ForwardingRequestListener2;
    const/4 v3, 0x0

    .line 161
    .local v3, "$i$f$forEachListener":I
    iget-object v0, v2, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener2;->requestListeners:Ljava/util/List;

    move-object v4, v0

    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$forEach$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 162
    .local v5, "$i$f$forEach":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "element$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Lcom/facebook/imagepipeline/listener/RequestListener2;

    .local v8, "it$iv":Lcom/facebook/imagepipeline/listener/RequestListener2;
    const/4 v9, 0x0

    .line 163
    .local v9, "$i$a$-forEach-ForwardingRequestListener2$forEachListener$1$iv":I
    nop

    .line 164
    move-object v0, v8

    .local v0, "it":Lcom/facebook/imagepipeline/listener/RequestListener2;
    const/4 v10, 0x0

    .line 72
    .local v10, "$i$a$-forEachListener-ForwardingRequestListener2$onProducerFinishWithFailure$1":I
    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    :try_start_0
    invoke-interface {v0, v11, v12, v13, v14}, Lcom/facebook/imagepipeline/listener/RequestListener2;->onProducerFinishWithFailure(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    nop

    .line 164
    .end local v0    # "it":Lcom/facebook/imagepipeline/listener/RequestListener2;
    .end local v10    # "$i$a$-forEachListener-ForwardingRequestListener2$onProducerFinishWithFailure$1":I
    goto :goto_1

    .line 165
    :catch_0
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    .line 167
    .local v0, "exception$iv":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "InternalListener exception in "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v15, v0

    check-cast v15, Ljava/lang/Throwable;

    move-object/from16 v16, v0

    .end local v0    # "exception$iv":Ljava/lang/Exception;
    .local v16, "exception$iv":Ljava/lang/Exception;
    const-string v0, "ForwardingRequestListener2"

    invoke-static {v0, v10, v15}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 169
    .end local v16    # "exception$iv":Ljava/lang/Exception;
    :goto_1
    nop

    .line 162
    .end local v8    # "it$iv":Lcom/facebook/imagepipeline/listener/RequestListener2;
    .end local v9    # "$i$a$-forEach-ForwardingRequestListener2$forEachListener$1$iv":I
    nop

    .end local v7    # "element$iv$iv":Ljava/lang/Object;
    goto :goto_0

    .line 170
    :cond_0
    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    .line 171
    .end local v4    # "$this$forEach$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$forEach":I
    nop

    .line 74
    .end local v1    # "methodName$iv":Ljava/lang/String;
    .end local v2    # "this_$iv":Lcom/facebook/imagepipeline/listener/ForwardingRequestListener2;
    .end local v3    # "$i$f$forEachListener":I
    return-void
.end method

.method public onProducerFinishWithSuccess(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/util/Map;)V
    .locals 16
    .param p1, "producerContext"    # Lcom/facebook/imagepipeline/producers/ProducerContext;
    .param p2, "producerName"    # Ljava/lang/String;
    .param p3, "extraMap"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 60
    const-string/jumbo v0, "onProducerFinishWithSuccess"

    .local v0, "methodName$iv":Ljava/lang/String;
    move-object/from16 v1, p0

    .local v1, "this_$iv":Lcom/facebook/imagepipeline/listener/ForwardingRequestListener2;
    move-object v2, v0

    .end local v0    # "methodName$iv":Ljava/lang/String;
    .local v2, "methodName$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 150
    .local v3, "$i$f$forEachListener":I
    iget-object v0, v1, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener2;->requestListeners:Ljava/util/List;

    move-object v4, v0

    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$forEach$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 151
    .local v5, "$i$f$forEach":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "element$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Lcom/facebook/imagepipeline/listener/RequestListener2;

    .local v8, "it$iv":Lcom/facebook/imagepipeline/listener/RequestListener2;
    const/4 v9, 0x0

    .line 152
    .local v9, "$i$a$-forEach-ForwardingRequestListener2$forEachListener$1$iv":I
    nop

    .line 153
    move-object v0, v8

    .local v0, "it":Lcom/facebook/imagepipeline/listener/RequestListener2;
    const/4 v10, 0x0

    .line 61
    .local v10, "$i$a$-forEachListener-ForwardingRequestListener2$onProducerFinishWithSuccess$1":I
    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    :try_start_0
    invoke-interface {v0, v11, v12, v13}, Lcom/facebook/imagepipeline/listener/RequestListener2;->onProducerFinishWithSuccess(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    nop

    .line 153
    .end local v0    # "it":Lcom/facebook/imagepipeline/listener/RequestListener2;
    .end local v10    # "$i$a$-forEachListener-ForwardingRequestListener2$onProducerFinishWithSuccess$1":I
    goto :goto_1

    .line 154
    :catch_0
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    .line 156
    .local v0, "exception$iv":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "InternalListener exception in "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v14, v0

    check-cast v14, Ljava/lang/Throwable;

    const-string v15, "ForwardingRequestListener2"

    invoke-static {v15, v10, v14}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    .end local v0    # "exception$iv":Ljava/lang/Exception;
    :goto_1
    nop

    .line 151
    .end local v8    # "it$iv":Lcom/facebook/imagepipeline/listener/RequestListener2;
    .end local v9    # "$i$a$-forEach-ForwardingRequestListener2$forEachListener$1$iv":I
    nop

    .end local v7    # "element$iv$iv":Ljava/lang/Object;
    goto :goto_0

    .line 159
    :cond_0
    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    .line 160
    .end local v4    # "$this$forEach$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$forEach":I
    nop

    .line 63
    .end local v1    # "this_$iv":Lcom/facebook/imagepipeline/listener/ForwardingRequestListener2;
    .end local v2    # "methodName$iv":Ljava/lang/String;
    .end local v3    # "$i$f$forEachListener":I
    return-void
.end method

.method public onProducerStart(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)V
    .locals 13
    .param p1, "producerContext"    # Lcom/facebook/imagepipeline/producers/ProducerContext;
    .param p2, "producerName"    # Ljava/lang/String;

    const-string/jumbo v0, "producerContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "producerName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    const-string/jumbo v0, "onProducerStart"

    .local v0, "methodName$iv":Ljava/lang/String;
    move-object v1, p0

    .local v1, "this_$iv":Lcom/facebook/imagepipeline/listener/ForwardingRequestListener2;
    const/4 v2, 0x0

    .line 139
    .local v2, "$i$f$forEachListener":I
    iget-object v3, v1, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener2;->requestListeners:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$forEach$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 140
    .local v4, "$i$f$forEach":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lcom/facebook/imagepipeline/listener/RequestListener2;

    .local v7, "it$iv":Lcom/facebook/imagepipeline/listener/RequestListener2;
    const/4 v8, 0x0

    .line 141
    .local v8, "$i$a$-forEach-ForwardingRequestListener2$forEachListener$1$iv":I
    nop

    .line 142
    move-object v9, v7

    .local v9, "it":Lcom/facebook/imagepipeline/listener/RequestListener2;
    const/4 v10, 0x0

    .line 52
    .local v10, "$i$a$-forEachListener-ForwardingRequestListener2$onProducerStart$1":I
    :try_start_0
    invoke-interface {v9, p1, p2}, Lcom/facebook/imagepipeline/listener/RequestListener2;->onProducerStart(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v9    # "it":Lcom/facebook/imagepipeline/listener/RequestListener2;
    .end local v10    # "$i$a$-forEachListener-ForwardingRequestListener2$onProducerStart$1":I
    goto :goto_1

    .line 143
    :catch_0
    move-exception v9

    .line 145
    .local v9, "exception$iv":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "InternalListener exception in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v11, v9

    check-cast v11, Ljava/lang/Throwable;

    const-string v12, "ForwardingRequestListener2"

    invoke-static {v12, v10, v11}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    .end local v9    # "exception$iv":Ljava/lang/Exception;
    :goto_1
    nop

    .line 140
    .end local v7    # "it$iv":Lcom/facebook/imagepipeline/listener/RequestListener2;
    .end local v8    # "$i$a$-forEach-ForwardingRequestListener2$forEachListener$1$iv":I
    nop

    .end local v6    # "element$iv$iv":Ljava/lang/Object;
    goto :goto_0

    .line 148
    :cond_0
    nop

    .line 149
    .end local v3    # "$this$forEach$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$forEach":I
    nop

    .line 53
    .end local v0    # "methodName$iv":Ljava/lang/String;
    .end local v1    # "this_$iv":Lcom/facebook/imagepipeline/listener/ForwardingRequestListener2;
    .end local v2    # "$i$f$forEachListener":I
    return-void
.end method

.method public onRequestCancellation(Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .locals 13
    .param p1, "producerContext"    # Lcom/facebook/imagepipeline/producers/ProducerContext;

    const-string/jumbo v0, "producerContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    const-string/jumbo v0, "onRequestCancellation"

    .local v0, "methodName$iv":Ljava/lang/String;
    move-object v1, p0

    .local v1, "this_$iv":Lcom/facebook/imagepipeline/listener/ForwardingRequestListener2;
    const/4 v2, 0x0

    .line 227
    .local v2, "$i$f$forEachListener":I
    iget-object v3, v1, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener2;->requestListeners:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$forEach$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 228
    .local v4, "$i$f$forEach":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lcom/facebook/imagepipeline/listener/RequestListener2;

    .local v7, "it$iv":Lcom/facebook/imagepipeline/listener/RequestListener2;
    const/4 v8, 0x0

    .line 229
    .local v8, "$i$a$-forEach-ForwardingRequestListener2$forEachListener$1$iv":I
    nop

    .line 230
    move-object v9, v7

    .local v9, "it":Lcom/facebook/imagepipeline/listener/RequestListener2;
    const/4 v10, 0x0

    .line 115
    .local v10, "$i$a$-forEachListener-ForwardingRequestListener2$onRequestCancellation$1":I
    :try_start_0
    invoke-interface {v9, p1}, Lcom/facebook/imagepipeline/listener/RequestListener2;->onRequestCancellation(Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .end local v9    # "it":Lcom/facebook/imagepipeline/listener/RequestListener2;
    .end local v10    # "$i$a$-forEachListener-ForwardingRequestListener2$onRequestCancellation$1":I
    goto :goto_1

    .line 231
    :catch_0
    move-exception v9

    .line 233
    .local v9, "exception$iv":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "InternalListener exception in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v11, v9

    check-cast v11, Ljava/lang/Throwable;

    const-string v12, "ForwardingRequestListener2"

    invoke-static {v12, v10, v11}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 235
    .end local v9    # "exception$iv":Ljava/lang/Exception;
    :goto_1
    nop

    .line 228
    .end local v7    # "it$iv":Lcom/facebook/imagepipeline/listener/RequestListener2;
    .end local v8    # "$i$a$-forEach-ForwardingRequestListener2$forEachListener$1$iv":I
    nop

    .end local v6    # "element$iv$iv":Ljava/lang/Object;
    goto :goto_0

    .line 236
    :cond_0
    nop

    .line 237
    .end local v3    # "$this$forEach$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$forEach":I
    nop

    .line 116
    .end local v0    # "methodName$iv":Ljava/lang/String;
    .end local v1    # "this_$iv":Lcom/facebook/imagepipeline/listener/ForwardingRequestListener2;
    .end local v2    # "$i$f$forEachListener":I
    return-void
.end method

.method public onRequestFailure(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/Throwable;)V
    .locals 13
    .param p1, "producerContext"    # Lcom/facebook/imagepipeline/producers/ProducerContext;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    const-string/jumbo v0, "producerContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "throwable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    const-string/jumbo v0, "onRequestFailure"

    .local v0, "methodName$iv":Ljava/lang/String;
    move-object v1, p0

    .local v1, "this_$iv":Lcom/facebook/imagepipeline/listener/ForwardingRequestListener2;
    const/4 v2, 0x0

    .line 216
    .local v2, "$i$f$forEachListener":I
    iget-object v3, v1, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener2;->requestListeners:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$forEach$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 217
    .local v4, "$i$f$forEach":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lcom/facebook/imagepipeline/listener/RequestListener2;

    .local v7, "it$iv":Lcom/facebook/imagepipeline/listener/RequestListener2;
    const/4 v8, 0x0

    .line 218
    .local v8, "$i$a$-forEach-ForwardingRequestListener2$forEachListener$1$iv":I
    nop

    .line 219
    move-object v9, v7

    .local v9, "it":Lcom/facebook/imagepipeline/listener/RequestListener2;
    const/4 v10, 0x0

    .line 111
    .local v10, "$i$a$-forEachListener-ForwardingRequestListener2$onRequestFailure$1":I
    :try_start_0
    invoke-interface {v9, p1, p2}, Lcom/facebook/imagepipeline/listener/RequestListener2;->onRequestFailure(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .end local v9    # "it":Lcom/facebook/imagepipeline/listener/RequestListener2;
    .end local v10    # "$i$a$-forEachListener-ForwardingRequestListener2$onRequestFailure$1":I
    goto :goto_1

    .line 220
    :catch_0
    move-exception v9

    .line 222
    .local v9, "exception$iv":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "InternalListener exception in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v11, v9

    check-cast v11, Ljava/lang/Throwable;

    const-string v12, "ForwardingRequestListener2"

    invoke-static {v12, v10, v11}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 224
    .end local v9    # "exception$iv":Ljava/lang/Exception;
    :goto_1
    nop

    .line 217
    .end local v7    # "it$iv":Lcom/facebook/imagepipeline/listener/RequestListener2;
    .end local v8    # "$i$a$-forEach-ForwardingRequestListener2$forEachListener$1$iv":I
    nop

    .end local v6    # "element$iv$iv":Ljava/lang/Object;
    goto :goto_0

    .line 225
    :cond_0
    nop

    .line 226
    .end local v3    # "$this$forEach$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$forEach":I
    nop

    .line 112
    .end local v0    # "methodName$iv":Ljava/lang/String;
    .end local v1    # "this_$iv":Lcom/facebook/imagepipeline/listener/ForwardingRequestListener2;
    .end local v2    # "$i$f$forEachListener":I
    return-void
.end method

.method public onRequestStart(Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .locals 13
    .param p1, "producerContext"    # Lcom/facebook/imagepipeline/producers/ProducerContext;

    const-string/jumbo v0, "producerContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    const-string/jumbo v0, "onRequestStart"

    .local v0, "methodName$iv":Ljava/lang/String;
    move-object v1, p0

    .local v1, "this_$iv":Lcom/facebook/imagepipeline/listener/ForwardingRequestListener2;
    const/4 v2, 0x0

    .line 128
    .local v2, "$i$f$forEachListener":I
    iget-object v3, v1, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener2;->requestListeners:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$forEach$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 129
    .local v4, "$i$f$forEach":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lcom/facebook/imagepipeline/listener/RequestListener2;

    .local v7, "it$iv":Lcom/facebook/imagepipeline/listener/RequestListener2;
    const/4 v8, 0x0

    .line 130
    .local v8, "$i$a$-forEach-ForwardingRequestListener2$forEachListener$1$iv":I
    nop

    .line 131
    move-object v9, v7

    .local v9, "it":Lcom/facebook/imagepipeline/listener/RequestListener2;
    const/4 v10, 0x0

    .line 48
    .local v10, "$i$a$-forEachListener-ForwardingRequestListener2$onRequestStart$1":I
    :try_start_0
    invoke-interface {v9, p1}, Lcom/facebook/imagepipeline/listener/RequestListener2;->onRequestStart(Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v9    # "it":Lcom/facebook/imagepipeline/listener/RequestListener2;
    .end local v10    # "$i$a$-forEachListener-ForwardingRequestListener2$onRequestStart$1":I
    goto :goto_1

    .line 132
    :catch_0
    move-exception v9

    .line 134
    .local v9, "exception$iv":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "InternalListener exception in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v11, v9

    check-cast v11, Ljava/lang/Throwable;

    const-string v12, "ForwardingRequestListener2"

    invoke-static {v12, v10, v11}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    .end local v9    # "exception$iv":Ljava/lang/Exception;
    :goto_1
    nop

    .line 129
    .end local v7    # "it$iv":Lcom/facebook/imagepipeline/listener/RequestListener2;
    .end local v8    # "$i$a$-forEach-ForwardingRequestListener2$forEachListener$1$iv":I
    nop

    .end local v6    # "element$iv$iv":Ljava/lang/Object;
    goto :goto_0

    .line 137
    :cond_0
    nop

    .line 138
    .end local v3    # "$this$forEach$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$forEach":I
    nop

    .line 49
    .end local v0    # "methodName$iv":Ljava/lang/String;
    .end local v1    # "this_$iv":Lcom/facebook/imagepipeline/listener/ForwardingRequestListener2;
    .end local v2    # "$i$f$forEachListener":I
    return-void
.end method

.method public onRequestSuccess(Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .locals 13
    .param p1, "producerContext"    # Lcom/facebook/imagepipeline/producers/ProducerContext;

    const-string/jumbo v0, "producerContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    const-string/jumbo v0, "onRequestSuccess"

    .local v0, "methodName$iv":Ljava/lang/String;
    move-object v1, p0

    .local v1, "this_$iv":Lcom/facebook/imagepipeline/listener/ForwardingRequestListener2;
    const/4 v2, 0x0

    .line 205
    .local v2, "$i$f$forEachListener":I
    iget-object v3, v1, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener2;->requestListeners:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$forEach$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 206
    .local v4, "$i$f$forEach":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lcom/facebook/imagepipeline/listener/RequestListener2;

    .local v7, "it$iv":Lcom/facebook/imagepipeline/listener/RequestListener2;
    const/4 v8, 0x0

    .line 207
    .local v8, "$i$a$-forEach-ForwardingRequestListener2$forEachListener$1$iv":I
    nop

    .line 208
    move-object v9, v7

    .local v9, "it":Lcom/facebook/imagepipeline/listener/RequestListener2;
    const/4 v10, 0x0

    .line 107
    .local v10, "$i$a$-forEachListener-ForwardingRequestListener2$onRequestSuccess$1":I
    :try_start_0
    invoke-interface {v9, p1}, Lcom/facebook/imagepipeline/listener/RequestListener2;->onRequestSuccess(Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .end local v9    # "it":Lcom/facebook/imagepipeline/listener/RequestListener2;
    .end local v10    # "$i$a$-forEachListener-ForwardingRequestListener2$onRequestSuccess$1":I
    goto :goto_1

    .line 209
    :catch_0
    move-exception v9

    .line 211
    .local v9, "exception$iv":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "InternalListener exception in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v11, v9

    check-cast v11, Ljava/lang/Throwable;

    const-string v12, "ForwardingRequestListener2"

    invoke-static {v12, v10, v11}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    .end local v9    # "exception$iv":Ljava/lang/Exception;
    :goto_1
    nop

    .line 206
    .end local v7    # "it$iv":Lcom/facebook/imagepipeline/listener/RequestListener2;
    .end local v8    # "$i$a$-forEach-ForwardingRequestListener2$forEachListener$1$iv":I
    nop

    .end local v6    # "element$iv$iv":Ljava/lang/Object;
    goto :goto_0

    .line 214
    :cond_0
    nop

    .line 215
    .end local v3    # "$this$forEach$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$forEach":I
    nop

    .line 108
    .end local v0    # "methodName$iv":Ljava/lang/String;
    .end local v1    # "this_$iv":Lcom/facebook/imagepipeline/listener/ForwardingRequestListener2;
    .end local v2    # "$i$f$forEachListener":I
    return-void
.end method

.method public onUltimateProducerReached(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Z)V
    .locals 16
    .param p1, "producerContext"    # Lcom/facebook/imagepipeline/producers/ProducerContext;
    .param p2, "producerName"    # Ljava/lang/String;
    .param p3, "successful"    # Z

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string/jumbo v0, "producerContext"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "producerName"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    const-string/jumbo v0, "onProducerFinishWithSuccess"

    .local v0, "methodName$iv":Ljava/lang/String;
    move-object/from16 v3, p0

    .local v3, "this_$iv":Lcom/facebook/imagepipeline/listener/ForwardingRequestListener2;
    move-object v4, v0

    .end local v0    # "methodName$iv":Ljava/lang/String;
    .local v4, "methodName$iv":Ljava/lang/String;
    const/4 v5, 0x0

    .line 194
    .local v5, "$i$f$forEachListener":I
    iget-object v0, v3, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener2;->requestListeners:Ljava/util/List;

    move-object v6, v0

    check-cast v6, Ljava/lang/Iterable;

    .local v6, "$this$forEach$iv$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 195
    .local v7, "$i$f$forEach":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .local v9, "element$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Lcom/facebook/imagepipeline/listener/RequestListener2;

    .local v10, "it$iv":Lcom/facebook/imagepipeline/listener/RequestListener2;
    const/4 v11, 0x0

    .line 196
    .local v11, "$i$a$-forEach-ForwardingRequestListener2$forEachListener$1$iv":I
    nop

    .line 197
    move-object v0, v10

    .local v0, "it":Lcom/facebook/imagepipeline/listener/RequestListener2;
    const/4 v12, 0x0

    .line 102
    .local v12, "$i$a$-forEachListener-ForwardingRequestListener2$onUltimateProducerReached$1":I
    move/from16 v13, p3

    :try_start_0
    invoke-interface {v0, v1, v2, v13}, Lcom/facebook/imagepipeline/listener/RequestListener2;->onUltimateProducerReached(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    nop

    .line 197
    .end local v0    # "it":Lcom/facebook/imagepipeline/listener/RequestListener2;
    .end local v12    # "$i$a$-forEachListener-ForwardingRequestListener2$onUltimateProducerReached$1":I
    goto :goto_1

    .line 198
    :catch_0
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    .line 200
    .local v0, "exception$iv":Ljava/lang/Exception;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "InternalListener exception in "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v14, v0

    check-cast v14, Ljava/lang/Throwable;

    const-string v15, "ForwardingRequestListener2"

    invoke-static {v15, v12, v14}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 202
    .end local v0    # "exception$iv":Ljava/lang/Exception;
    :goto_1
    nop

    .line 195
    .end local v10    # "it$iv":Lcom/facebook/imagepipeline/listener/RequestListener2;
    .end local v11    # "$i$a$-forEach-ForwardingRequestListener2$forEachListener$1$iv":I
    nop

    .end local v9    # "element$iv$iv":Ljava/lang/Object;
    goto :goto_0

    .line 203
    :cond_0
    move/from16 v13, p3

    .line 204
    .end local v6    # "$this$forEach$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$forEach":I
    nop

    .line 104
    .end local v3    # "this_$iv":Lcom/facebook/imagepipeline/listener/ForwardingRequestListener2;
    .end local v4    # "methodName$iv":Ljava/lang/String;
    .end local v5    # "$i$f$forEachListener":I
    return-void
.end method

.method public requiresExtraMap(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)Z
    .locals 7
    .param p1, "producerContext"    # Lcom/facebook/imagepipeline/producers/ProducerContext;
    .param p2, "producerName"    # Ljava/lang/String;

    const-string/jumbo v0, "producerContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "producerName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener2;->requestListeners:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 238
    .local v1, "$i$f$any":I
    instance-of v2, v0, Ljava/util/Collection;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 239
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lcom/facebook/imagepipeline/listener/RequestListener2;

    .local v5, "it":Lcom/facebook/imagepipeline/listener/RequestListener2;
    const/4 v6, 0x0

    .line 119
    .local v6, "$i$a$-any-ForwardingRequestListener2$requiresExtraMap$1":I
    invoke-interface {v5, p1, p2}, Lcom/facebook/imagepipeline/listener/RequestListener2;->requiresExtraMap(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)Z

    move-result v5

    .line 239
    .end local v5    # "it":Lcom/facebook/imagepipeline/listener/RequestListener2;
    .end local v6    # "$i$a$-any-ForwardingRequestListener2$requiresExtraMap$1":I
    if-eqz v5, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    .line 240
    .end local v4    # "element$iv":Ljava/lang/Object;
    :cond_2
    nop

    .line 119
    .end local v0    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$any":I
    :goto_0
    return v3
.end method
