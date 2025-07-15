.class public final Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$12$$inlined$Function$6;
.super Lkotlin/jvm/internal/Lambda;
.source "ObjectDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/kotlin/defaultmodules/CoreModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$Function$8\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 CoreModule.kt\nexpo/modules/kotlin/defaultmodules/CoreModule\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,611:1\n15#2,4:612\n57#3,10:616\n70#3:632\n68#3,4:633\n72#3,3:641\n79#3,2:645\n78#3:647\n1271#4,2:626\n1285#4,4:628\n8406#5,2:637\n9088#5,2:639\n9091#5:644\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$Function$8\n+ 2 CoreModule.kt\nexpo/modules/kotlin/defaultmodules/CoreModule\n*L\n140#1:612,4\n66#2:626,2\n66#2:628,4\n71#2:637,2\n71#2:639,2\n71#2:644\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0008\u0003\u0010\u0000\u001a\u0004\u0018\u00010\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001\"\u0006\u0008\u0001\u0010\u0003\u0018\u0001\"\u0006\u0008\u0002\u0010\u0004\u0018\u00012\u0010\u0010\u0005\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00010\u0006H\n\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "<anonymous>",
        "",
        "R",
        "P0",
        "P1",
        "<name for destructuring parameter 0>",
        "",
        "invoke",
        "([Ljava/lang/Object;)Ljava/lang/Object;",
        "expo/modules/kotlin/objects/ObjectDefinitionBuilder$Function$8"
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
.field final synthetic this$0:Lexpo/modules/kotlin/defaultmodules/CoreModule;


# direct methods
.method public constructor <init>(Lexpo/modules/kotlin/defaultmodules/CoreModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$12$$inlined$Function$6;->this$0:Lexpo/modules/kotlin/defaultmodules/CoreModule;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 142
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$12$$inlined$Function$6;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p1

    const-string v1, "<name for destructuring parameter 0>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    const/4 v1, 0x0

    aget-object v2, v0, v1

    .local v2, "p0":Ljava/lang/Object;
    const/4 v3, 0x1

    aget-object v0, v0, v3

    .line 140
    .local v0, "p1":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 612
    .local v4, "$i$f$enforceType":I
    nop

    .line 615
    nop

    .line 141
    .end local v4    # "$i$f$enforceType":I
    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .local v4, "viewName":Ljava/lang/String;
    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    .local v5, "moduleName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 616
    .local v6, "$i$a$-Function-CoreModule$definition$1$6":I
    move-object/from16 v7, p0

    iget-object v8, v7, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$12$$inlined$Function$6;->this$0:Lexpo/modules/kotlin/defaultmodules/CoreModule;

    invoke-virtual {v8}, Lexpo/modules/kotlin/defaultmodules/CoreModule;->getRuntimeContext()Lexpo/modules/kotlin/RuntimeContext;

    move-result-object v8

    invoke-virtual {v8}, Lexpo/modules/kotlin/RuntimeContext;->getRegistry()Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v8

    invoke-virtual {v8, v5}, Lexpo/modules/kotlin/ModuleRegistry;->getModuleHolder(Ljava/lang/String;)Lexpo/modules/kotlin/ModuleHolder;

    move-result-object v8

    if-nez v8, :cond_0

    .line 617
    move-object/from16 v17, v0

    move-object/from16 v21, v2

    const/4 v9, 0x0

    goto/16 :goto_5

    .line 619
    .local v8, "holder":Lexpo/modules/kotlin/ModuleHolder;
    :cond_0
    invoke-virtual {v8}, Lexpo/modules/kotlin/ModuleHolder;->getDefinition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v10

    invoke-virtual {v10}, Lexpo/modules/kotlin/modules/ModuleDefinitionData;->getViewManagerDefinitions()Ljava/util/Map;

    move-result-object v10

    if-nez v4, :cond_1

    const-string v11, "DEFAULT_MODULE_VIEW"

    goto :goto_0

    :cond_1
    move-object v11, v4

    :goto_0
    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lexpo/modules/kotlin/views/ViewManagerDefinition;

    if-nez v10, :cond_2

    .line 620
    move-object/from16 v17, v0

    move-object/from16 v21, v2

    const/4 v9, 0x0

    goto/16 :goto_5

    .line 622
    .local v10, "viewManagerDefinition":Lexpo/modules/kotlin/views/ViewManagerDefinition;
    :cond_2
    nop

    .line 623
    invoke-virtual {v10}, Lexpo/modules/kotlin/views/ViewManagerDefinition;->getProps$expo_modules_core_debug()Ljava/util/Map;

    move-result-object v11

    .line 624
    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    check-cast v11, Ljava/lang/Iterable;

    .line 625
    nop

    .local v11, "$this$associateWith$iv":Ljava/lang/Iterable;
    const/4 v12, 0x0

    .line 626
    .local v12, "$i$f$associateWith":I
    new-instance v13, Ljava/util/LinkedHashMap;

    const/16 v14, 0xa

    invoke-static {v11, v14}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-static {v14}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v14

    const/16 v15, 0x10

    invoke-static {v14, v15}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 627
    .local v13, "result$iv":Ljava/util/LinkedHashMap;
    move-object v14, v11

    .local v14, "$this$associateWithTo$iv$iv":Ljava/lang/Iterable;
    const/16 v16, 0x0

    .line 628
    .local v16, "$i$f$associateWithTo":I
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 629
    .local v9, "element$iv$iv":Ljava/lang/Object;
    move-object v1, v13

    check-cast v1, Ljava/util/Map;

    move-object/from16 v19, v9

    check-cast v19, Ljava/lang/String;

    .local v19, "it":Ljava/lang/String;
    const/16 v20, 0x0

    .line 625
    .local v20, "$i$a$-associateWith-CoreModule$definition$1$6$validAttributes$1":I
    nop

    .end local v19    # "it":Ljava/lang/String;
    .end local v20    # "$i$a$-associateWith-CoreModule$definition$1$6$validAttributes$1":I
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    .line 629
    invoke-interface {v1, v9, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const/16 v15, 0x10

    goto :goto_1

    .line 631
    .end local v9    # "element$iv$iv":Ljava/lang/Object;
    :cond_3
    move-object v1, v13

    check-cast v1, Ljava/util/Map;

    .line 627
    .end local v14    # "$this$associateWithTo$iv$iv":Ljava/lang/Iterable;
    .end local v16    # "$i$f$associateWithTo":I
    nop

    .line 625
    .end local v11    # "$this$associateWith$iv":Ljava/lang/Iterable;
    .end local v12    # "$i$f$associateWith":I
    .end local v13    # "result$iv":Ljava/util/LinkedHashMap;
    nop

    .line 622
    nop

    .line 632
    .local v1, "validAttributes":Ljava/util/Map;
    nop

    .line 633
    nop

    .line 634
    invoke-virtual {v10}, Lexpo/modules/kotlin/views/ViewManagerDefinition;->getCallbacksDefinition()Lexpo/modules/kotlin/views/CallbacksDefinition;

    move-result-object v9

    .line 632
    if-eqz v9, :cond_6

    .line 634
    nop

    .line 632
    invoke-virtual {v9}, Lexpo/modules/kotlin/views/CallbacksDefinition;->getNames()[Ljava/lang/String;

    move-result-object v9

    .line 636
    if-eqz v9, :cond_5

    .line 632
    nop

    .line 636
    nop

    .local v9, "$this$associate$iv":[Ljava/lang/Object;
    const/4 v11, 0x0

    .line 637
    .local v11, "$i$f$associate":I
    array-length v12, v9

    invoke-static {v12}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v12

    const/16 v13, 0x10

    invoke-static {v12, v13}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v12

    .line 638
    .local v12, "capacity$iv":I
    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-direct {v13, v12}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v13, Ljava/util/Map;

    .local v13, "destination$iv$iv":Ljava/util/Map;
    move-object v14, v9

    .local v14, "$this$associateTo$iv$iv":[Ljava/lang/Object;
    const/4 v15, 0x0

    .line 639
    .local v15, "$i$f$associateTo":I
    array-length v3, v14

    move-object/from16 v17, v0

    const/4 v0, 0x0

    .end local v0    # "p1":Ljava/lang/Object;
    .local v17, "p1":Ljava/lang/Object;
    :goto_2
    if-ge v0, v3, :cond_4

    aget-object v19, v14, v0

    .line 640
    .local v19, "element$iv$iv":Ljava/lang/Object;
    move-object/from16 p1, v19

    .local p1, "it":Ljava/lang/String;
    const/16 v20, 0x0

    .line 641
    .local v20, "$i$a$-associate-CoreModule$definition$1$6$directEventTypes$1":I
    move-object/from16 v21, v2

    .end local v2    # "p0":Ljava/lang/Object;
    .local v21, "p0":Ljava/lang/Object;
    invoke-static/range {p1 .. p1}, Lexpo/modules/kotlin/events/KModuleEventEmitterWrapperKt;->normalizeEventName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 642
    .local v2, "normalizedEventName":Ljava/lang/String;
    nop

    .line 643
    move/from16 v22, v3

    const-string v3, "registrationName"

    move-object/from16 v23, v4

    move-object/from16 v4, p1

    .end local p1    # "it":Ljava/lang/String;
    .local v4, "it":Ljava/lang/String;
    .local v23, "viewName":Ljava/lang/String;
    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    .line 642
    invoke-static {v3}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 640
    .end local v2    # "normalizedEventName":Ljava/lang/String;
    .end local v4    # "it":Ljava/lang/String;
    .end local v20    # "$i$a$-associate-CoreModule$definition$1$6$directEventTypes$1":I
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v13, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    .end local v19    # "element$iv$iv":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, v23

    goto :goto_2

    .line 644
    .end local v21    # "p0":Ljava/lang/Object;
    .end local v23    # "viewName":Ljava/lang/String;
    .local v2, "p0":Ljava/lang/Object;
    .local v4, "viewName":Ljava/lang/String;
    :cond_4
    move-object/from16 v21, v2

    move-object/from16 v23, v4

    .line 638
    .end local v2    # "p0":Ljava/lang/Object;
    .end local v4    # "viewName":Ljava/lang/String;
    .end local v13    # "destination$iv$iv":Ljava/util/Map;
    .end local v14    # "$this$associateTo$iv$iv":[Ljava/lang/Object;
    .end local v15    # "$i$f$associateTo":I
    .restart local v21    # "p0":Ljava/lang/Object;
    .restart local v23    # "viewName":Ljava/lang/String;
    move-object v9, v13

    .end local v9    # "$this$associate$iv":[Ljava/lang/Object;
    .end local v11    # "$i$f$associate":I
    .end local v12    # "capacity$iv":I
    goto :goto_4

    .line 636
    .end local v17    # "p1":Ljava/lang/Object;
    .end local v21    # "p0":Ljava/lang/Object;
    .end local v23    # "viewName":Ljava/lang/String;
    .restart local v0    # "p1":Ljava/lang/Object;
    .restart local v2    # "p0":Ljava/lang/Object;
    .restart local v4    # "viewName":Ljava/lang/String;
    :cond_5
    move-object/from16 v17, v0

    move-object/from16 v21, v2

    move-object/from16 v23, v4

    .end local v0    # "p1":Ljava/lang/Object;
    .end local v2    # "p0":Ljava/lang/Object;
    .end local v4    # "viewName":Ljava/lang/String;
    .restart local v17    # "p1":Ljava/lang/Object;
    .restart local v21    # "p0":Ljava/lang/Object;
    .restart local v23    # "viewName":Ljava/lang/String;
    goto :goto_3

    .line 632
    .end local v17    # "p1":Ljava/lang/Object;
    .end local v21    # "p0":Ljava/lang/Object;
    .end local v23    # "viewName":Ljava/lang/String;
    .restart local v0    # "p1":Ljava/lang/Object;
    .restart local v2    # "p0":Ljava/lang/Object;
    .restart local v4    # "viewName":Ljava/lang/String;
    :cond_6
    move-object/from16 v17, v0

    move-object/from16 v21, v2

    move-object/from16 v23, v4

    .end local v0    # "p1":Ljava/lang/Object;
    .end local v2    # "p0":Ljava/lang/Object;
    .end local v4    # "viewName":Ljava/lang/String;
    .restart local v17    # "p1":Ljava/lang/Object;
    .restart local v21    # "p0":Ljava/lang/Object;
    .restart local v23    # "viewName":Ljava/lang/String;
    :goto_3
    const/4 v9, 0x0

    .line 633
    :goto_4
    move-object v0, v9

    .line 645
    .local v0, "directEventTypes":Ljava/util/Map;
    const/4 v2, 0x2

    new-array v2, v2, [Lkotlin/Pair;

    const-string v3, "validAttributes"

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 646
    const-string v3, "directEventTypes"

    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 645
    nop

    .line 647
    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v9

    .line 141
    .end local v0    # "directEventTypes":Ljava/util/Map;
    .end local v1    # "validAttributes":Ljava/util/Map;
    .end local v5    # "moduleName":Ljava/lang/String;
    .end local v6    # "$i$a$-Function-CoreModule$definition$1$6":I
    .end local v8    # "holder":Lexpo/modules/kotlin/ModuleHolder;
    .end local v10    # "viewManagerDefinition":Lexpo/modules/kotlin/views/ViewManagerDefinition;
    .end local v23    # "viewName":Ljava/lang/String;
    :goto_5
    return-object v9
.end method
