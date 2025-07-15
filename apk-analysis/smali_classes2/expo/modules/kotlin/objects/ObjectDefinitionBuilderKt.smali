.class public final Lexpo/modules/kotlin/objects/ObjectDefinitionBuilderKt;
.super Ljava/lang/Object;
.source "ObjectDefinitionBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilderKt\n+ 2 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,611:1\n581#1,11:612\n592#1,2:624\n595#1,3:627\n598#1,2:631\n601#1,9:634\n32#2:623\n33#2:626\n32#2,2:643\n215#3:630\n216#3:633\n215#3,2:645\n215#3,2:647\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilderKt\n*L\n577#1:612,11\n577#1:624,2\n577#1:627,3\n577#1:631,2\n577#1:634,9\n577#1:623\n577#1:626\n591#1:643,2\n577#1:630\n577#1:633\n597#1:645,2\n603#1:647,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a)\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0017\u0010\u0003\u001a\u0013\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u00a2\u0006\u0002\u0008\u0007H\u0086\u0008\u00f8\u0001\u0000\u001a)\u0010\u0000\u001a\u00020\u0001*\u00020\u00082\u0017\u0010\u0003\u001a\u0013\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u00a2\u0006\u0002\u0008\u0007H\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\t"
    }
    d2 = {
        "Object",
        "Lexpo/modules/kotlin/jni/JavaScriptModuleObject;",
        "Lexpo/modules/kotlin/modules/Module;",
        "block",
        "Lkotlin/Function1;",
        "Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;",
        "expo-modules-core_debug"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final Object(Lexpo/modules/kotlin/modules/Module;Lkotlin/jvm/functions/Function1;)Lexpo/modules/kotlin/jni/JavaScriptModuleObject;
    .locals 13
    .param p0, "$this$Object"    # Lexpo/modules/kotlin/modules/Module;
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/modules/Module;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lexpo/modules/kotlin/jni/JavaScriptModuleObject;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 581
    .local v0, "$i$f$Object":I
    new-instance v1, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;-><init>(Lexpo/modules/kotlin/types/TypeConverterProvider;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->buildObject()Lexpo/modules/kotlin/objects/ObjectDefinitionData;

    move-result-object v1

    .line 582
    .local v1, "objectData":Lexpo/modules/kotlin/objects/ObjectDefinitionData;
    invoke-virtual {v1}, Lexpo/modules/kotlin/objects/ObjectDefinitionData;->getLegacyConstantsProvider()Lkotlin/jvm/functions/Function0;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 583
    .local v2, "constants":Ljava/util/Map;
    invoke-static {v2}, Lcom/facebook/react/bridge/Arguments;->makeNativeMap(Ljava/util/Map;)Lcom/facebook/react/bridge/WritableNativeMap;

    move-result-object v3

    .line 584
    .local v3, "convertedConstants":Lcom/facebook/react/bridge/WritableNativeMap;
    const-string v4, "[Anonymous Object]"

    .line 586
    .local v4, "moduleName":Ljava/lang/String;
    new-instance v5, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;

    invoke-virtual {p0}, Lexpo/modules/kotlin/modules/Module;->getRuntimeContext()Lexpo/modules/kotlin/RuntimeContext;

    move-result-object v6

    invoke-virtual {v6}, Lexpo/modules/kotlin/RuntimeContext;->getJniDeallocator()Lexpo/modules/kotlin/jni/JNIDeallocator;

    move-result-object v6

    invoke-direct {v5, v6}, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;-><init>(Lexpo/modules/kotlin/jni/JNIDeallocator;)V

    .line 587
    .local v5, "decorator":Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v6, v3

    check-cast v6, Lcom/facebook/react/bridge/NativeMap;

    invoke-virtual {v5, v6}, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;->registerConstants(Lcom/facebook/react/bridge/NativeMap;)V

    .line 589
    nop

    .line 590
    invoke-virtual {v1}, Lexpo/modules/kotlin/objects/ObjectDefinitionData;->getFunctions()Lexpo/modules/kotlin/ConcatIterator;

    move-result-object v6

    check-cast v6, Ljava/util/Iterator;

    .line 591
    nop

    .local v6, "$this$forEach$iv":Ljava/util/Iterator;
    const/4 v7, 0x0

    .line 643
    .local v7, "$i$f$forEach":I
    nop

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Lexpo/modules/kotlin/functions/AnyFunction;

    .local v9, "function":Lexpo/modules/kotlin/functions/AnyFunction;
    const/4 v10, 0x0

    .line 592
    .local v10, "$i$a$-forEach-ObjectDefinitionBuilderKt$Object$1":I
    invoke-virtual {p0}, Lexpo/modules/kotlin/modules/Module;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v11

    invoke-virtual {v9, v11, v5, v4}, Lexpo/modules/kotlin/functions/AnyFunction;->attachToJSObject(Lexpo/modules/kotlin/AppContext;Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;Ljava/lang/String;)V

    .line 593
    nop

    .line 643
    .end local v9    # "function":Lexpo/modules/kotlin/functions/AnyFunction;
    .end local v10    # "$i$a$-forEach-ObjectDefinitionBuilderKt$Object$1":I
    nop

    .end local v8    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 644
    :cond_0
    nop

    .line 595
    .end local v6    # "$this$forEach$iv":Ljava/util/Iterator;
    .end local v7    # "$i$f$forEach":I
    nop

    .line 596
    invoke-virtual {v1}, Lexpo/modules/kotlin/objects/ObjectDefinitionData;->getProperties()Ljava/util/Map;

    move-result-object v6

    .line 597
    nop

    .local v6, "$this$forEach$iv":Ljava/util/Map;
    const/4 v7, 0x0

    .line 645
    .restart local v7    # "$i$f$forEach":I
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .local v9, "element$iv":Ljava/util/Map$Entry;
    const/4 v10, 0x0

    .line 597
    .local v10, "$i$a$-forEach-ObjectDefinitionBuilderKt$Object$2":I
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lexpo/modules/kotlin/objects/PropertyComponent;

    .line 598
    .local v11, "prop":Lexpo/modules/kotlin/objects/PropertyComponent;
    invoke-virtual {p0}, Lexpo/modules/kotlin/modules/Module;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v12

    invoke-virtual {v11, v12, v5}, Lexpo/modules/kotlin/objects/PropertyComponent;->attachToJSObject(Lexpo/modules/kotlin/AppContext;Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;)V

    .line 599
    nop

    .line 645
    .end local v10    # "$i$a$-forEach-ObjectDefinitionBuilderKt$Object$2":I
    .end local v11    # "prop":Lexpo/modules/kotlin/objects/PropertyComponent;
    nop

    .end local v9    # "element$iv":Ljava/util/Map$Entry;
    goto :goto_1

    .line 646
    :cond_1
    nop

    .line 601
    .end local v6    # "$this$forEach$iv":Ljava/util/Map;
    .end local v7    # "$i$f$forEach":I
    nop

    .line 602
    invoke-virtual {v1}, Lexpo/modules/kotlin/objects/ObjectDefinitionData;->getConstants()Ljava/util/Map;

    move-result-object v6

    .line 603
    nop

    .restart local v6    # "$this$forEach$iv":Ljava/util/Map;
    const/4 v7, 0x0

    .line 647
    .restart local v7    # "$i$f$forEach":I
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .restart local v9    # "element$iv":Ljava/util/Map$Entry;
    const/4 v10, 0x0

    .line 603
    .local v10, "$i$a$-forEach-ObjectDefinitionBuilderKt$Object$3":I
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lexpo/modules/kotlin/objects/ConstantComponent;

    .line 604
    .local v11, "prop":Lexpo/modules/kotlin/objects/ConstantComponent;
    invoke-virtual {v11, v5}, Lexpo/modules/kotlin/objects/ConstantComponent;->attachToJSObject(Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;)V

    .line 605
    nop

    .line 647
    .end local v10    # "$i$a$-forEach-ObjectDefinitionBuilderKt$Object$3":I
    .end local v11    # "prop":Lexpo/modules/kotlin/objects/ConstantComponent;
    nop

    .end local v9    # "element$iv":Ljava/util/Map$Entry;
    goto :goto_2

    .line 648
    :cond_2
    nop

    .line 607
    .end local v6    # "$this$forEach$iv":Ljava/util/Map;
    .end local v7    # "$i$f$forEach":I
    new-instance v6, Lexpo/modules/kotlin/jni/JavaScriptModuleObject;

    invoke-virtual {p0}, Lexpo/modules/kotlin/modules/Module;->getRuntimeContext()Lexpo/modules/kotlin/RuntimeContext;

    move-result-object v7

    invoke-virtual {v7}, Lexpo/modules/kotlin/RuntimeContext;->getJniDeallocator()Lexpo/modules/kotlin/jni/JNIDeallocator;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Lexpo/modules/kotlin/jni/JavaScriptModuleObject;-><init>(Lexpo/modules/kotlin/jni/JNIDeallocator;Ljava/lang/String;)V

    move-object v7, v6

    .local v7, "$this$Object_u24lambda_u243":Lexpo/modules/kotlin/jni/JavaScriptModuleObject;
    const/4 v8, 0x0

    .line 608
    .local v8, "$i$a$-apply-ObjectDefinitionBuilderKt$Object$4":I
    invoke-virtual {v7, v5}, Lexpo/modules/kotlin/jni/JavaScriptModuleObject;->decorate(Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;)V

    .line 609
    nop

    .line 607
    .end local v7    # "$this$Object_u24lambda_u243":Lexpo/modules/kotlin/jni/JavaScriptModuleObject;
    .end local v8    # "$i$a$-apply-ObjectDefinitionBuilderKt$Object$4":I
    return-object v6
.end method

.method public static final Object(Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;Lkotlin/jvm/functions/Function1;)Lexpo/modules/kotlin/jni/JavaScriptModuleObject;
    .locals 16
    .param p0, "$this$Object"    # Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lexpo/modules/kotlin/jni/JavaScriptModuleObject;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "block"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 577
    .local v1, "$i$f$Object":I
    invoke-virtual/range {p0 .. p0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->getModule()Lexpo/modules/kotlin/modules/Module;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .local v3, "$this$Object$iv":Lexpo/modules/kotlin/modules/Module;
    const/4 v4, 0x0

    .line 612
    .local v4, "$i$f$Object":I
    new-instance v5, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7, v6}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;-><init>(Lexpo/modules/kotlin/types/TypeConverterProvider;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->buildObject()Lexpo/modules/kotlin/objects/ObjectDefinitionData;

    move-result-object v5

    .line 613
    .local v5, "objectData$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionData;
    invoke-virtual {v5}, Lexpo/modules/kotlin/objects/ObjectDefinitionData;->getLegacyConstantsProvider()Lkotlin/jvm/functions/Function0;

    move-result-object v6

    invoke-interface {v6}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 614
    .local v6, "constants$iv":Ljava/util/Map;
    invoke-static {v6}, Lcom/facebook/react/bridge/Arguments;->makeNativeMap(Ljava/util/Map;)Lcom/facebook/react/bridge/WritableNativeMap;

    move-result-object v7

    .line 615
    .local v7, "convertedConstants$iv":Lcom/facebook/react/bridge/WritableNativeMap;
    const-string v8, "[Anonymous Object]"

    .line 617
    .local v8, "moduleName$iv":Ljava/lang/String;
    new-instance v9, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;

    invoke-virtual {v3}, Lexpo/modules/kotlin/modules/Module;->getRuntimeContext()Lexpo/modules/kotlin/RuntimeContext;

    move-result-object v10

    invoke-virtual {v10}, Lexpo/modules/kotlin/RuntimeContext;->getJniDeallocator()Lexpo/modules/kotlin/jni/JNIDeallocator;

    move-result-object v10

    invoke-direct {v9, v10}, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;-><init>(Lexpo/modules/kotlin/jni/JNIDeallocator;)V

    .line 618
    .local v9, "decorator$iv":Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v10, v7

    check-cast v10, Lcom/facebook/react/bridge/NativeMap;

    invoke-virtual {v9, v10}, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;->registerConstants(Lcom/facebook/react/bridge/NativeMap;)V

    .line 620
    nop

    .line 621
    invoke-virtual {v5}, Lexpo/modules/kotlin/objects/ObjectDefinitionData;->getFunctions()Lexpo/modules/kotlin/ConcatIterator;

    move-result-object v10

    check-cast v10, Ljava/util/Iterator;

    .line 622
    nop

    .local v10, "$this$forEach$iv$iv":Ljava/util/Iterator;
    const/4 v11, 0x0

    .line 623
    .local v11, "$i$f$forEach":I
    nop

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .local v12, "element$iv$iv":Ljava/lang/Object;
    move-object v13, v12

    check-cast v13, Lexpo/modules/kotlin/functions/AnyFunction;

    .local v13, "function$iv":Lexpo/modules/kotlin/functions/AnyFunction;
    const/4 v14, 0x0

    .line 624
    .local v14, "$i$a$-forEach-ObjectDefinitionBuilderKt$Object$1$iv":I
    invoke-virtual {v3}, Lexpo/modules/kotlin/modules/Module;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v15

    invoke-virtual {v13, v15, v9, v8}, Lexpo/modules/kotlin/functions/AnyFunction;->attachToJSObject(Lexpo/modules/kotlin/AppContext;Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;Ljava/lang/String;)V

    .line 625
    nop

    .line 623
    .end local v13    # "function$iv":Lexpo/modules/kotlin/functions/AnyFunction;
    .end local v14    # "$i$a$-forEach-ObjectDefinitionBuilderKt$Object$1$iv":I
    nop

    .end local v12    # "element$iv$iv":Ljava/lang/Object;
    goto :goto_0

    .line 626
    :cond_0
    nop

    .line 627
    .end local v10    # "$this$forEach$iv$iv":Ljava/util/Iterator;
    .end local v11    # "$i$f$forEach":I
    nop

    .line 628
    invoke-virtual {v5}, Lexpo/modules/kotlin/objects/ObjectDefinitionData;->getProperties()Ljava/util/Map;

    move-result-object v10

    .line 629
    nop

    .local v10, "$this$forEach$iv$iv":Ljava/util/Map;
    const/4 v11, 0x0

    .line 630
    .restart local v11    # "$i$f$forEach":I
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .local v13, "element$iv$iv":Ljava/util/Map$Entry;
    const/4 v14, 0x0

    .line 629
    .local v14, "$i$a$-forEach-ObjectDefinitionBuilderKt$Object$2$iv":I
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lexpo/modules/kotlin/objects/PropertyComponent;

    .line 631
    .local v15, "prop$iv":Lexpo/modules/kotlin/objects/PropertyComponent;
    invoke-virtual {v3}, Lexpo/modules/kotlin/modules/Module;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v15, v0, v9}, Lexpo/modules/kotlin/objects/PropertyComponent;->attachToJSObject(Lexpo/modules/kotlin/AppContext;Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;)V

    .line 632
    nop

    .line 630
    .end local v14    # "$i$a$-forEach-ObjectDefinitionBuilderKt$Object$2$iv":I
    .end local v15    # "prop$iv":Lexpo/modules/kotlin/objects/PropertyComponent;
    move-object/from16 v0, p1

    .end local v13    # "element$iv$iv":Ljava/util/Map$Entry;
    goto :goto_1

    .line 633
    :cond_1
    nop

    .line 634
    .end local v10    # "$this$forEach$iv$iv":Ljava/util/Map;
    .end local v11    # "$i$f$forEach":I
    nop

    .line 635
    invoke-virtual {v5}, Lexpo/modules/kotlin/objects/ObjectDefinitionData;->getConstants()Ljava/util/Map;

    move-result-object v0

    .line 636
    nop

    .local v0, "$this$forEach$iv$iv":Ljava/util/Map;
    const/4 v10, 0x0

    .line 630
    .local v10, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .local v12, "element$iv$iv":Ljava/util/Map$Entry;
    const/4 v13, 0x0

    .line 636
    .local v13, "$i$a$-forEach-ObjectDefinitionBuilderKt$Object$3$iv":I
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lexpo/modules/kotlin/objects/ConstantComponent;

    .line 637
    .local v14, "prop$iv":Lexpo/modules/kotlin/objects/ConstantComponent;
    invoke-virtual {v14, v9}, Lexpo/modules/kotlin/objects/ConstantComponent;->attachToJSObject(Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;)V

    .line 638
    nop

    .line 630
    .end local v13    # "$i$a$-forEach-ObjectDefinitionBuilderKt$Object$3$iv":I
    .end local v14    # "prop$iv":Lexpo/modules/kotlin/objects/ConstantComponent;
    nop

    .end local v12    # "element$iv$iv":Ljava/util/Map$Entry;
    goto :goto_2

    .line 633
    :cond_2
    nop

    .line 640
    .end local v0    # "$this$forEach$iv$iv":Ljava/util/Map;
    .end local v10    # "$i$f$forEach":I
    new-instance v0, Lexpo/modules/kotlin/jni/JavaScriptModuleObject;

    invoke-virtual {v3}, Lexpo/modules/kotlin/modules/Module;->getRuntimeContext()Lexpo/modules/kotlin/RuntimeContext;

    move-result-object v10

    invoke-virtual {v10}, Lexpo/modules/kotlin/RuntimeContext;->getJniDeallocator()Lexpo/modules/kotlin/jni/JNIDeallocator;

    move-result-object v10

    invoke-direct {v0, v10, v8}, Lexpo/modules/kotlin/jni/JavaScriptModuleObject;-><init>(Lexpo/modules/kotlin/jni/JNIDeallocator;Ljava/lang/String;)V

    move-object v10, v0

    .local v10, "$this$Object_u24lambda_u243$iv":Lexpo/modules/kotlin/jni/JavaScriptModuleObject;
    const/4 v11, 0x0

    .line 641
    .local v11, "$i$a$-apply-ObjectDefinitionBuilderKt$Object$4$iv":I
    invoke-virtual {v10, v9}, Lexpo/modules/kotlin/jni/JavaScriptModuleObject;->decorate(Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;)V

    .line 642
    nop

    .line 640
    .end local v10    # "$this$Object_u24lambda_u243$iv":Lexpo/modules/kotlin/jni/JavaScriptModuleObject;
    .end local v11    # "$i$a$-apply-ObjectDefinitionBuilderKt$Object$4$iv":I
    nop

    .line 577
    .end local v3    # "$this$Object$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v4    # "$i$f$Object":I
    .end local v5    # "objectData$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionData;
    .end local v6    # "constants$iv":Ljava/util/Map;
    .end local v7    # "convertedConstants$iv":Lcom/facebook/react/bridge/WritableNativeMap;
    .end local v8    # "moduleName$iv":Ljava/lang/String;
    .end local v9    # "decorator$iv":Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;
    return-object v0
.end method
