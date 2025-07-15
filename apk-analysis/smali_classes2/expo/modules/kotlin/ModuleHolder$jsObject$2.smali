.class final Lexpo/modules/kotlin/ModuleHolder$jsObject$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ModuleHolder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/kotlin/ModuleHolder;-><init>(Lexpo/modules/kotlin/modules/Module;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lexpo/modules/kotlin/jni/JavaScriptModuleObject;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModuleHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModuleHolder.kt\nexpo/modules/kotlin/ModuleHolder$jsObject$2\n+ 2 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 3 Trace.kt\nandroidx/tracing/TraceKt\n+ 4 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,178:1\n14#2:179\n25#2:180\n14#2:185\n25#2:186\n27#3,3:181\n27#3,3:187\n31#3:194\n31#3:195\n26#4:184\n1855#5:190\n1856#5:193\n37#6,2:191\n*S KotlinDebug\n*F\n+ 1 ModuleHolder.kt\nexpo/modules/kotlin/ModuleHolder$jsObject$2\n*L\n41#1:179\n41#1:180\n68#1:185\n68#1:186\n41#1:181,3\n68#1:187,3\n68#1:194\n41#1:195\n50#1:184\n69#1:190\n69#1:193\n83#1:191,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lexpo/modules/kotlin/jni/JavaScriptModuleObject;",
        "T",
        "Lexpo/modules/kotlin/modules/Module;",
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
.field final synthetic this$0:Lexpo/modules/kotlin/ModuleHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lexpo/modules/kotlin/ModuleHolder<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lexpo/modules/kotlin/ModuleHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/ModuleHolder<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/kotlin/ModuleHolder$jsObject$2;->this$0:Lexpo/modules/kotlin/ModuleHolder;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lexpo/modules/kotlin/jni/JavaScriptModuleObject;
    .locals 37

    .line 39
    move-object/from16 v1, p0

    iget-object v0, v1, Lexpo/modules/kotlin/ModuleHolder$jsObject$2;->this$0:Lexpo/modules/kotlin/ModuleHolder;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lexpo/modules/kotlin/ModuleHolder;->access$setWasInitialized$p(Lexpo/modules/kotlin/ModuleHolder;Z)V

    .line 41
    iget-object v0, v1, Lexpo/modules/kotlin/ModuleHolder$jsObject$2;->this$0:Lexpo/modules/kotlin/ModuleHolder;

    invoke-virtual {v0}, Lexpo/modules/kotlin/ModuleHolder;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".jsObject"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "blockName$iv":Ljava/lang/String;
    iget-object v0, v1, Lexpo/modules/kotlin/ModuleHolder$jsObject$2;->this$0:Lexpo/modules/kotlin/ModuleHolder;

    const/4 v3, 0x0

    .line 179
    .local v3, "$i$f$trace":I
    const-string v4, "ExpoModulesCore"

    .local v4, "tag$iv$iv":Ljava/lang/String;
    const/4 v5, 0x0

    .line 180
    .local v5, "$i$f$trace":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "] "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, "label$iv$iv$iv":Ljava/lang/String;
    const/4 v9, 0x0

    .line 181
    .local v9, "$i$f$trace":I
    invoke-static {v6}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 182
    nop

    .line 183
    const/4 v10, 0x0

    .line 42
    .local v10, "$i$a$-trace-ModuleHolder$jsObject$2$1":I
    :try_start_0
    invoke-virtual {v0}, Lexpo/modules/kotlin/ModuleHolder;->getModule()Lexpo/modules/kotlin/modules/Module;

    move-result-object v11

    invoke-virtual {v11}, Lexpo/modules/kotlin/modules/Module;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v11

    .line 43
    .local v11, "appContext":Lexpo/modules/kotlin/AppContext;
    invoke-virtual {v0}, Lexpo/modules/kotlin/ModuleHolder;->getModule()Lexpo/modules/kotlin/modules/Module;

    move-result-object v12

    invoke-virtual {v12}, Lexpo/modules/kotlin/modules/Module;->getRuntimeContext()Lexpo/modules/kotlin/RuntimeContext;

    move-result-object v12

    .line 44
    .local v12, "runtimeContext":Lexpo/modules/kotlin/RuntimeContext;
    invoke-virtual {v12}, Lexpo/modules/kotlin/RuntimeContext;->getJniDeallocator()Lexpo/modules/kotlin/jni/JNIDeallocator;

    move-result-object v13

    .line 46
    .local v13, "jniDeallocator":Lexpo/modules/kotlin/jni/JNIDeallocator;
    new-instance v14, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;

    invoke-direct {v14, v13}, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;-><init>(Lexpo/modules/kotlin/jni/JNIDeallocator;)V

    .line 47
    .local v14, "moduleDecorator":Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;
    invoke-virtual {v0}, Lexpo/modules/kotlin/ModuleHolder;->getDefinition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v15

    invoke-virtual {v15}, Lexpo/modules/kotlin/modules/ModuleDefinitionData;->getObjectDefinition()Lexpo/modules/kotlin/objects/ObjectDefinitionData;

    move-result-object v15

    invoke-virtual {v0}, Lexpo/modules/kotlin/ModuleHolder;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v11, v15, v14, v1}, Lexpo/modules/kotlin/ModuleHolder;->access$attachPrimitives(Lexpo/modules/kotlin/ModuleHolder;Lexpo/modules/kotlin/AppContext;Lexpo/modules/kotlin/objects/ObjectDefinitionData;Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;Ljava/lang/String;)V

    .line 50
    const-string v16, "__expo_module_name__"

    const/4 v1, 0x0

    .line 184
    .local v1, "$i$f$emptyArray":I
    const/4 v15, 0x0

    move/from16 v17, v1

    .end local v1    # "$i$f$emptyArray":I
    .local v17, "$i$f$emptyArray":I
    new-array v1, v15, [Lexpo/modules/kotlin/jni/ExpectedType;

    .line 50
    .end local v17    # "$i$f$emptyArray":I
    new-instance v15, Lexpo/modules/kotlin/ModuleHolder$jsObject$2$1$1;

    invoke-direct {v15, v0}, Lexpo/modules/kotlin/ModuleHolder$jsObject$2$1$1;-><init>(Lexpo/modules/kotlin/ModuleHolder;)V

    move-object/from16 v19, v15

    check-cast v19, Lexpo/modules/kotlin/jni/JNIFunctionBody;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    const/4 v15, 0x0

    .line 184
    .local v15, "$i$f$emptyArray":I
    move-object/from16 v23, v2

    move/from16 v24, v3

    const/4 v2, 0x0

    .end local v2    # "blockName$iv":Ljava/lang/String;
    .end local v3    # "$i$f$trace":I
    .local v23, "blockName$iv":Ljava/lang/String;
    .local v24, "$i$f$trace":I
    :try_start_1
    new-array v3, v2, [Lexpo/modules/kotlin/jni/ExpectedType;

    .line 50
    .end local v15    # "$i$f$emptyArray":I
    const/16 v22, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    move-object v15, v14

    move-object/from16 v18, v1

    move-object/from16 v21, v3

    invoke-virtual/range {v15 .. v22}, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;->registerProperty(Ljava/lang/String;Z[Lexpo/modules/kotlin/jni/ExpectedType;Lexpo/modules/kotlin/jni/JNIFunctionBody;Z[Lexpo/modules/kotlin/jni/ExpectedType;Lexpo/modules/kotlin/jni/JNIFunctionBody;)V

    .line 52
    new-instance v1, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;

    invoke-direct {v1, v13}, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;-><init>(Lexpo/modules/kotlin/jni/JNIDeallocator;)V

    .line 53
    .local v1, "viewPrototypesDecorator":Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;
    invoke-virtual {v0}, Lexpo/modules/kotlin/ModuleHolder;->getDefinition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v3

    invoke-virtual {v3}, Lexpo/modules/kotlin/modules/ModuleDefinitionData;->getViewManagerDefinitions()Ljava/util/Map;

    move-result-object v3

    new-instance v15, Lexpo/modules/kotlin/ModuleHolder$jsObject$2$1$2;

    invoke-direct {v15, v13, v1, v0, v11}, Lexpo/modules/kotlin/ModuleHolder$jsObject$2$1$2;-><init>(Lexpo/modules/kotlin/jni/JNIDeallocator;Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;Lexpo/modules/kotlin/ModuleHolder;Lexpo/modules/kotlin/AppContext;)V

    check-cast v15, Lkotlin/jvm/functions/Function2;

    new-instance v2, Lexpo/modules/kotlin/ModuleHolder$sam$java_util_function_BiConsumer$0;

    invoke-direct {v2, v15}, Lexpo/modules/kotlin/ModuleHolder$sam$java_util_function_BiConsumer$0;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast v2, Ljava/util/function/BiConsumer;

    invoke-interface {v3, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 66
    const-string v2, "ViewPrototypes"

    invoke-virtual {v14, v2, v1}, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;->registerObject(Ljava/lang/String;Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;)V

    .line 68
    const-string v2, "Attaching classes"

    .restart local v2    # "blockName$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 185
    .restart local v3    # "$i$f$trace":I
    const-string v15, "ExpoModulesCore"

    .local v15, "tag$iv$iv":Ljava/lang/String;
    const/16 v25, 0x0

    .line 186
    .local v25, "$i$f$trace":I
    move-object/from16 v26, v1

    .end local v1    # "viewPrototypesDecorator":Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;
    .local v26, "viewPrototypesDecorator":Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "label$iv$iv$iv":Ljava/lang/String;
    const/4 v7, 0x0

    .line 187
    .local v7, "$i$f$trace":I
    invoke-static {v1}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    .line 188
    nop

    .line 189
    const/4 v8, 0x0

    .line 69
    .local v8, "$i$a$-trace-ModuleHolder$jsObject$2$1$3":I
    :try_start_2
    invoke-virtual {v0}, Lexpo/modules/kotlin/ModuleHolder;->getDefinition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lexpo/modules/kotlin/modules/ModuleDefinitionData;->getClassData()Ljava/util/List;

    move-result-object v16

    check-cast v16, Ljava/lang/Iterable;

    move-object/from16 v27, v16

    .local v27, "$this$forEach$iv":Ljava/lang/Iterable;
    const/16 v28, 0x0

    .line 190
    .local v28, "$i$f$forEach":I
    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :goto_0
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v30, v16

    .local v30, "element$iv":Ljava/lang/Object;
    move-object/from16 v16, v30

    check-cast v16, Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    move-object/from16 v31, v16

    .local v31, "clazz":Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;
    const/16 v32, 0x0

    .line 70
    .local v32, "$i$a$-forEach-ModuleHolder$jsObject$2$1$3$1":I
    move-object/from16 v33, v1

    .end local v1    # "label$iv$iv$iv":Ljava/lang/String;
    .local v33, "label$iv$iv$iv":Ljava/lang/String;
    :try_start_3
    new-instance v1, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;

    invoke-direct {v1, v13}, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;-><init>(Lexpo/modules/kotlin/jni/JNIDeallocator;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 72
    .local v1, "prototypeDecorator":Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;
    move-object/from16 v34, v2

    .end local v2    # "blockName$iv":Ljava/lang/String;
    .local v34, "blockName$iv":Ljava/lang/String;
    :try_start_4
    invoke-virtual/range {v31 .. v31}, Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;->getObjectDefinition()Lexpo/modules/kotlin/objects/ObjectDefinitionData;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move/from16 v35, v3

    .end local v3    # "$i$f$trace":I
    .local v35, "$i$f$trace":I
    :try_start_5
    invoke-virtual/range {v31 .. v31}, Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v11, v2, v1, v3}, Lexpo/modules/kotlin/ModuleHolder;->access$attachPrimitives(Lexpo/modules/kotlin/ModuleHolder;Lexpo/modules/kotlin/AppContext;Lexpo/modules/kotlin/objects/ObjectDefinitionData;Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;Ljava/lang/String;)V

    .line 74
    invoke-virtual/range {v31 .. v31}, Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;->getConstructor()Lexpo/modules/kotlin/functions/SyncFunctionComponent;

    move-result-object v2

    .line 75
    .local v2, "constructor":Lexpo/modules/kotlin/functions/SyncFunctionComponent;
    invoke-virtual {v2}, Lexpo/modules/kotlin/functions/SyncFunctionComponent;->getOwnerType()Lkotlin/reflect/KType;

    move-result-object v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    const/16 v16, 0x0

    if-eqz v3, :cond_0

    :try_start_6
    invoke-interface {v3}, Lkotlin/reflect/KType;->getClassifier()Lkotlin/reflect/KClassifier;

    move-result-object v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 194
    .end local v1    # "prototypeDecorator":Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;
    .end local v2    # "constructor":Lexpo/modules/kotlin/functions/SyncFunctionComponent;
    .end local v8    # "$i$a$-trace-ModuleHolder$jsObject$2$1$3":I
    .end local v27    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v28    # "$i$f$forEach":I
    .end local v30    # "element$iv":Ljava/lang/Object;
    .end local v31    # "clazz":Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;
    .end local v32    # "$i$a$-forEach-ModuleHolder$jsObject$2$1$3$1":I
    :catchall_0
    move-exception v0

    move-object/from16 v36, v4

    move-object v3, v15

    goto/16 :goto_4

    .line 75
    .restart local v1    # "prototypeDecorator":Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;
    .restart local v2    # "constructor":Lexpo/modules/kotlin/functions/SyncFunctionComponent;
    .restart local v8    # "$i$a$-trace-ModuleHolder$jsObject$2$1$3":I
    .restart local v27    # "$this$forEach$iv":Ljava/lang/Iterable;
    .restart local v28    # "$i$f$forEach":I
    .restart local v30    # "element$iv":Ljava/lang/Object;
    .restart local v31    # "clazz":Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;
    .restart local v32    # "$i$a$-forEach-ModuleHolder$jsObject$2$1$3$1":I
    :cond_0
    move-object/from16 v3, v16

    :goto_1
    move-object/from16 v36, v4

    .end local v4    # "tag$iv$iv":Ljava/lang/String;
    .local v36, "tag$iv$iv":Ljava/lang/String;
    :try_start_7
    instance-of v4, v3, Lkotlin/reflect/KClass;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v4, :cond_1

    :try_start_8
    check-cast v3, Lkotlin/reflect/KClass;

    goto :goto_2

    .line 194
    .end local v1    # "prototypeDecorator":Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;
    .end local v2    # "constructor":Lexpo/modules/kotlin/functions/SyncFunctionComponent;
    .end local v8    # "$i$a$-trace-ModuleHolder$jsObject$2$1$3":I
    .end local v27    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v28    # "$i$f$forEach":I
    .end local v30    # "element$iv":Ljava/lang/Object;
    .end local v31    # "clazz":Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;
    .end local v32    # "$i$a$-forEach-ModuleHolder$jsObject$2$1$3$1":I
    :catchall_1
    move-exception v0

    move-object v3, v15

    goto/16 :goto_4

    .line 75
    .restart local v1    # "prototypeDecorator":Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;
    .restart local v2    # "constructor":Lexpo/modules/kotlin/functions/SyncFunctionComponent;
    .restart local v8    # "$i$a$-trace-ModuleHolder$jsObject$2$1$3":I
    .restart local v27    # "$this$forEach$iv":Ljava/lang/Iterable;
    .restart local v28    # "$i$f$forEach":I
    .restart local v30    # "element$iv":Ljava/lang/Object;
    .restart local v31    # "clazz":Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;
    .restart local v32    # "$i$a$-forEach-ModuleHolder$jsObject$2$1$3$1":I
    :cond_1
    move-object/from16 v3, v16

    :goto_2
    if-eqz v3, :cond_2

    invoke-static {v3}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object/from16 v19, v3

    goto :goto_3

    :cond_2
    move-object/from16 v19, v16

    .line 77
    .local v19, "ownerClass":Ljava/lang/Class;
    :goto_3
    nop

    .line 78
    :try_start_9
    invoke-virtual/range {v31 .. v31}, Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;->getName()Ljava/lang/String;

    move-result-object v16

    .line 79
    nop

    .line 80
    invoke-virtual {v2}, Lexpo/modules/kotlin/functions/SyncFunctionComponent;->getTakesOwner$expo_modules_core_debug()Z

    move-result v18

    .line 81
    nop

    .line 82
    invoke-virtual/range {v31 .. v31}, Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;->isSharedRef()Z

    move-result v20

    .line 83
    invoke-virtual {v2}, Lexpo/modules/kotlin/functions/SyncFunctionComponent;->getCppRequiredTypes$expo_modules_core_debug()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .local v3, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v4, 0x0

    .line 191
    .local v4, "$i$f$toTypedArray":I
    move-object/from16 v17, v3

    .line 192
    .local v17, "thisCollection$iv":Ljava/util/Collection;
    move-object/from16 v21, v3

    move/from16 v22, v4

    const/4 v3, 0x0

    .end local v3    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v4    # "$i$f$toTypedArray":I
    .local v21, "$this$toTypedArray$iv":Ljava/util/Collection;
    .local v22, "$i$f$toTypedArray":I
    new-array v4, v3, [Lexpo/modules/kotlin/jni/ExpectedType;

    move-object/from16 v3, v17

    .end local v17    # "thisCollection$iv":Ljava/util/Collection;
    .local v3, "thisCollection$iv":Ljava/util/Collection;
    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    .end local v3    # "thisCollection$iv":Ljava/util/Collection;
    .end local v21    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v22    # "$i$f$toTypedArray":I
    move-object/from16 v21, v4

    check-cast v21, [Lexpo/modules/kotlin/jni/ExpectedType;

    .line 84
    invoke-virtual/range {v31 .. v31}, Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v11}, Lexpo/modules/kotlin/functions/SyncFunctionComponent;->getJNIFunctionBody$expo_modules_core_debug(Ljava/lang/String;Lexpo/modules/kotlin/AppContext;)Lexpo/modules/kotlin/jni/JNIFunctionBody;

    move-result-object v22
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 77
    move-object v3, v15

    .end local v15    # "tag$iv$iv":Ljava/lang/String;
    .local v3, "tag$iv$iv":Ljava/lang/String;
    move-object v15, v14

    move-object/from16 v17, v1

    :try_start_a
    invoke-virtual/range {v15 .. v22}, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;->registerClass(Ljava/lang/String;Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;ZLjava/lang/Class;Z[Lexpo/modules/kotlin/jni/ExpectedType;Lexpo/modules/kotlin/jni/JNIFunctionBody;)V

    .line 86
    nop

    .line 190
    .end local v1    # "prototypeDecorator":Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;
    .end local v2    # "constructor":Lexpo/modules/kotlin/functions/SyncFunctionComponent;
    .end local v19    # "ownerClass":Ljava/lang/Class;
    .end local v31    # "clazz":Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;
    .end local v32    # "$i$a$-forEach-ModuleHolder$jsObject$2$1$3$1":I
    move-object v15, v3

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move/from16 v3, v35

    move-object/from16 v4, v36

    .end local v30    # "element$iv":Ljava/lang/Object;
    goto/16 :goto_0

    .line 194
    .end local v3    # "tag$iv$iv":Ljava/lang/String;
    .end local v8    # "$i$a$-trace-ModuleHolder$jsObject$2$1$3":I
    .end local v27    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v28    # "$i$f$forEach":I
    .restart local v15    # "tag$iv$iv":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object v3, v15

    .end local v15    # "tag$iv$iv":Ljava/lang/String;
    .restart local v3    # "tag$iv$iv":Ljava/lang/String;
    goto :goto_4

    .end local v3    # "tag$iv$iv":Ljava/lang/String;
    .end local v36    # "tag$iv$iv":Ljava/lang/String;
    .local v4, "tag$iv$iv":Ljava/lang/String;
    .restart local v15    # "tag$iv$iv":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move-object/from16 v36, v4

    move-object v3, v15

    .end local v4    # "tag$iv$iv":Ljava/lang/String;
    .end local v15    # "tag$iv$iv":Ljava/lang/String;
    .restart local v3    # "tag$iv$iv":Ljava/lang/String;
    .restart local v36    # "tag$iv$iv":Ljava/lang/String;
    goto :goto_4

    .end local v35    # "$i$f$trace":I
    .end local v36    # "tag$iv$iv":Ljava/lang/String;
    .local v3, "$i$f$trace":I
    .restart local v4    # "tag$iv$iv":Ljava/lang/String;
    .restart local v15    # "tag$iv$iv":Ljava/lang/String;
    :catchall_4
    move-exception v0

    move/from16 v35, v3

    move-object/from16 v36, v4

    move-object v3, v15

    .end local v4    # "tag$iv$iv":Ljava/lang/String;
    .end local v15    # "tag$iv$iv":Ljava/lang/String;
    .local v3, "tag$iv$iv":Ljava/lang/String;
    .restart local v35    # "$i$f$trace":I
    .restart local v36    # "tag$iv$iv":Ljava/lang/String;
    goto :goto_4

    .end local v34    # "blockName$iv":Ljava/lang/String;
    .end local v35    # "$i$f$trace":I
    .end local v36    # "tag$iv$iv":Ljava/lang/String;
    .local v2, "blockName$iv":Ljava/lang/String;
    .local v3, "$i$f$trace":I
    .restart local v4    # "tag$iv$iv":Ljava/lang/String;
    .restart local v15    # "tag$iv$iv":Ljava/lang/String;
    :catchall_5
    move-exception v0

    move-object/from16 v34, v2

    move/from16 v35, v3

    move-object/from16 v36, v4

    move-object v3, v15

    .end local v2    # "blockName$iv":Ljava/lang/String;
    .end local v4    # "tag$iv$iv":Ljava/lang/String;
    .end local v15    # "tag$iv$iv":Ljava/lang/String;
    .local v3, "tag$iv$iv":Ljava/lang/String;
    .restart local v34    # "blockName$iv":Ljava/lang/String;
    .restart local v35    # "$i$f$trace":I
    .restart local v36    # "tag$iv$iv":Ljava/lang/String;
    goto :goto_4

    .line 193
    .end local v33    # "label$iv$iv$iv":Ljava/lang/String;
    .end local v34    # "blockName$iv":Ljava/lang/String;
    .end local v35    # "$i$f$trace":I
    .end local v36    # "tag$iv$iv":Ljava/lang/String;
    .local v1, "label$iv$iv$iv":Ljava/lang/String;
    .restart local v2    # "blockName$iv":Ljava/lang/String;
    .local v3, "$i$f$trace":I
    .restart local v4    # "tag$iv$iv":Ljava/lang/String;
    .restart local v8    # "$i$a$-trace-ModuleHolder$jsObject$2$1$3":I
    .restart local v15    # "tag$iv$iv":Ljava/lang/String;
    .restart local v27    # "$this$forEach$iv":Ljava/lang/Iterable;
    .restart local v28    # "$i$f$forEach":I
    :cond_3
    move-object/from16 v33, v1

    move-object/from16 v34, v2

    move/from16 v35, v3

    move-object/from16 v36, v4

    move-object v3, v15

    .line 87
    .end local v1    # "label$iv$iv$iv":Ljava/lang/String;
    .end local v2    # "blockName$iv":Ljava/lang/String;
    .end local v4    # "tag$iv$iv":Ljava/lang/String;
    .end local v15    # "tag$iv$iv":Ljava/lang/String;
    .end local v27    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v28    # "$i$f$forEach":I
    .local v3, "tag$iv$iv":Ljava/lang/String;
    .restart local v33    # "label$iv$iv$iv":Ljava/lang/String;
    .restart local v34    # "blockName$iv":Ljava/lang/String;
    .restart local v35    # "$i$f$trace":I
    .restart local v36    # "tag$iv$iv":Ljava/lang/String;
    nop

    .end local v8    # "$i$a$-trace-ModuleHolder$jsObject$2$1$3":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 189
    nop

    .line 194
    :try_start_b
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 189
    nop

    .line 186
    .end local v7    # "$i$f$trace":I
    .end local v33    # "label$iv$iv$iv":Ljava/lang/String;
    nop

    .line 185
    .end local v3    # "tag$iv$iv":Ljava/lang/String;
    .end local v25    # "$i$f$trace":I
    nop

    .line 89
    .end local v34    # "blockName$iv":Ljava/lang/String;
    .end local v35    # "$i$f$trace":I
    new-instance v1, Lexpo/modules/kotlin/jni/JavaScriptModuleObject;

    invoke-virtual {v0}, Lexpo/modules/kotlin/ModuleHolder;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v13, v0}, Lexpo/modules/kotlin/jni/JavaScriptModuleObject;-><init>(Lexpo/modules/kotlin/jni/JNIDeallocator;Ljava/lang/String;)V

    move-object v0, v1

    .local v0, "$this$invoke_u24lambda_u243_u24lambda_u242":Lexpo/modules/kotlin/jni/JavaScriptModuleObject;
    const/4 v2, 0x0

    .line 90
    .local v2, "$i$a$-apply-ModuleHolder$jsObject$2$1$4":I
    invoke-virtual {v0, v14}, Lexpo/modules/kotlin/jni/JavaScriptModuleObject;->decorate(Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 91
    nop

    .line 89
    .end local v0    # "$this$invoke_u24lambda_u243_u24lambda_u242":Lexpo/modules/kotlin/jni/JavaScriptModuleObject;
    .end local v2    # "$i$a$-apply-ModuleHolder$jsObject$2$1$4":I
    nop

    .line 183
    .end local v10    # "$i$a$-trace-ModuleHolder$jsObject$2$1":I
    .end local v11    # "appContext":Lexpo/modules/kotlin/AppContext;
    .end local v12    # "runtimeContext":Lexpo/modules/kotlin/RuntimeContext;
    .end local v13    # "jniDeallocator":Lexpo/modules/kotlin/jni/JNIDeallocator;
    .end local v14    # "moduleDecorator":Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;
    .end local v26    # "viewPrototypesDecorator":Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;
    nop

    .line 195
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 183
    nop

    .line 180
    .end local v6    # "label$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    nop

    .line 179
    .end local v5    # "$i$f$trace":I
    .end local v36    # "tag$iv$iv":Ljava/lang/String;
    nop

    .line 41
    .end local v23    # "blockName$iv":Ljava/lang/String;
    .end local v24    # "$i$f$trace":I
    return-object v1

    .line 194
    .restart local v3    # "tag$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "label$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v9    # "$i$f$trace":I
    .restart local v10    # "$i$a$-trace-ModuleHolder$jsObject$2$1":I
    .restart local v11    # "appContext":Lexpo/modules/kotlin/AppContext;
    .restart local v12    # "runtimeContext":Lexpo/modules/kotlin/RuntimeContext;
    .restart local v13    # "jniDeallocator":Lexpo/modules/kotlin/jni/JNIDeallocator;
    .restart local v14    # "moduleDecorator":Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;
    .restart local v23    # "blockName$iv":Ljava/lang/String;
    .restart local v24    # "$i$f$trace":I
    .restart local v25    # "$i$f$trace":I
    .restart local v26    # "viewPrototypesDecorator":Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;
    .restart local v33    # "label$iv$iv$iv":Ljava/lang/String;
    .restart local v34    # "blockName$iv":Ljava/lang/String;
    .restart local v35    # "$i$f$trace":I
    .restart local v36    # "tag$iv$iv":Ljava/lang/String;
    :catchall_6
    move-exception v0

    goto :goto_4

    .end local v33    # "label$iv$iv$iv":Ljava/lang/String;
    .end local v34    # "blockName$iv":Ljava/lang/String;
    .end local v35    # "$i$f$trace":I
    .end local v36    # "tag$iv$iv":Ljava/lang/String;
    .restart local v1    # "label$iv$iv$iv":Ljava/lang/String;
    .local v2, "blockName$iv":Ljava/lang/String;
    .local v3, "$i$f$trace":I
    .restart local v4    # "tag$iv$iv":Ljava/lang/String;
    .restart local v15    # "tag$iv$iv":Ljava/lang/String;
    :catchall_7
    move-exception v0

    move-object/from16 v33, v1

    move-object/from16 v34, v2

    move/from16 v35, v3

    move-object/from16 v36, v4

    move-object v3, v15

    .end local v1    # "label$iv$iv$iv":Ljava/lang/String;
    .end local v2    # "blockName$iv":Ljava/lang/String;
    .end local v4    # "tag$iv$iv":Ljava/lang/String;
    .end local v15    # "tag$iv$iv":Ljava/lang/String;
    .local v3, "tag$iv$iv":Ljava/lang/String;
    .restart local v33    # "label$iv$iv$iv":Ljava/lang/String;
    .restart local v34    # "blockName$iv":Ljava/lang/String;
    .restart local v35    # "$i$f$trace":I
    .restart local v36    # "tag$iv$iv":Ljava/lang/String;
    :goto_4
    :try_start_c
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .end local v5    # "$i$f$trace":I
    .end local v6    # "label$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .end local v23    # "blockName$iv":Ljava/lang/String;
    .end local v24    # "$i$f$trace":I
    .end local v36    # "tag$iv$iv":Ljava/lang/String;
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    .line 195
    .end local v3    # "tag$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v10    # "$i$a$-trace-ModuleHolder$jsObject$2$1":I
    .end local v11    # "appContext":Lexpo/modules/kotlin/AppContext;
    .end local v12    # "runtimeContext":Lexpo/modules/kotlin/RuntimeContext;
    .end local v13    # "jniDeallocator":Lexpo/modules/kotlin/jni/JNIDeallocator;
    .end local v14    # "moduleDecorator":Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;
    .end local v25    # "$i$f$trace":I
    .end local v26    # "viewPrototypesDecorator":Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;
    .end local v33    # "label$iv$iv$iv":Ljava/lang/String;
    .end local v34    # "blockName$iv":Ljava/lang/String;
    .end local v35    # "$i$f$trace":I
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "label$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    .restart local v23    # "blockName$iv":Ljava/lang/String;
    .restart local v24    # "$i$f$trace":I
    .restart local v36    # "tag$iv$iv":Ljava/lang/String;
    :catchall_8
    move-exception v0

    goto :goto_5

    .end local v36    # "tag$iv$iv":Ljava/lang/String;
    .restart local v4    # "tag$iv$iv":Ljava/lang/String;
    :catchall_9
    move-exception v0

    move-object/from16 v36, v4

    .end local v4    # "tag$iv$iv":Ljava/lang/String;
    .restart local v36    # "tag$iv$iv":Ljava/lang/String;
    goto :goto_5

    .end local v23    # "blockName$iv":Ljava/lang/String;
    .end local v24    # "$i$f$trace":I
    .end local v36    # "tag$iv$iv":Ljava/lang/String;
    .restart local v2    # "blockName$iv":Ljava/lang/String;
    .local v3, "$i$f$trace":I
    .restart local v4    # "tag$iv$iv":Ljava/lang/String;
    :catchall_a
    move-exception v0

    move-object/from16 v23, v2

    move/from16 v24, v3

    move-object/from16 v36, v4

    .end local v2    # "blockName$iv":Ljava/lang/String;
    .end local v3    # "$i$f$trace":I
    .end local v4    # "tag$iv$iv":Ljava/lang/String;
    .restart local v23    # "blockName$iv":Ljava/lang/String;
    .restart local v24    # "$i$f$trace":I
    .restart local v36    # "tag$iv$iv":Ljava/lang/String;
    :goto_5
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lexpo/modules/kotlin/ModuleHolder$jsObject$2;->invoke()Lexpo/modules/kotlin/jni/JavaScriptModuleObject;

    move-result-object v0

    return-object v0
.end method
