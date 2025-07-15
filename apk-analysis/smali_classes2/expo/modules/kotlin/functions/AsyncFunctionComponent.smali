.class public abstract Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
.super Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;
.source "AsyncFunctionComponent.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAsyncFunctionComponent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsyncFunctionComponent.kt\nexpo/modules/kotlin/functions/AsyncFunctionComponent\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 AnyType.kt\nexpo/modules/kotlin/types/AnyType\n*L\n1#1,92:1\n11065#2:93\n11400#2,3:94\n12474#2:99\n12475#2:104\n37#3,2:97\n326#4,4:100\n*S KotlinDebug\n*F\n+ 1 AsyncFunctionComponent.kt\nexpo/modules/kotlin/functions/AsyncFunctionComponent\n*L\n30#1:93\n30#1:94,3\n69#1:99\n69#1:104\n30#1:97,2\n69#1:100,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008&\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0010\u0007J \u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0003H\u0016J/\u0010\u000f\u001a\u00020\t2\u000e\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u00052\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\u000bH \u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u001e\u0010\u0016\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0018H\u0002\u00a8\u0006\u0019"
    }
    d2 = {
        "Lexpo/modules/kotlin/functions/AsyncFunctionComponent;",
        "Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;",
        "name",
        "",
        "desiredArgsTypes",
        "",
        "Lexpo/modules/kotlin/types/AnyType;",
        "(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;)V",
        "attachToJSObject",
        "",
        "appContext",
        "Lexpo/modules/kotlin/AppContext;",
        "jsObject",
        "Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;",
        "moduleName",
        "callUserImplementation",
        "args",
        "",
        "promise",
        "Lexpo/modules/kotlin/Promise;",
        "callUserImplementation$expo_modules_core_debug",
        "([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;Lexpo/modules/kotlin/AppContext;)V",
        "dispatchOnQueue",
        "block",
        "Lkotlin/Function0;",
        "expo-modules-core_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$KVIx8hoCvfbbtbXP6p7_ZLnyVeQ(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lexpo/modules/kotlin/functions/AsyncFunctionComponent;Lexpo/modules/kotlin/AppContext;[Ljava/lang/Object;Lexpo/modules/kotlin/jni/PromiseImpl;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;->attachToJSObject$lambda$1(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lexpo/modules/kotlin/functions/AsyncFunctionComponent;Lexpo/modules/kotlin/AppContext;[Ljava/lang/Object;Lexpo/modules/kotlin/jni/PromiseImpl;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desiredArgsTypes"    # [Lexpo/modules/kotlin/types/AnyType;

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "desiredArgsTypes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1, p2}, Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;)V

    .line 18
    return-void
.end method

.method private static final attachToJSObject$lambda$1(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lexpo/modules/kotlin/functions/AsyncFunctionComponent;Lexpo/modules/kotlin/AppContext;[Ljava/lang/Object;Lexpo/modules/kotlin/jni/PromiseImpl;)V
    .locals 7
    .param p0, "$appContextHolder"    # Ljava/lang/ref/WeakReference;
    .param p1, "$moduleName"    # Ljava/lang/String;
    .param p2, "this$0"    # Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .param p3, "$appContext"    # Lexpo/modules/kotlin/AppContext;
    .param p4, "args"    # [Ljava/lang/Object;
    .param p5, "promiseImpl"    # Lexpo/modules/kotlin/jni/PromiseImpl;

    const-string v0, "$appContextHolder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$moduleName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$appContext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promiseImpl"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sget-boolean v0, Lexpo/modules/BuildConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 33
    nop

    .line 34
    nop

    .line 35
    nop

    .line 36
    invoke-virtual {p2}, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;->getName()Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-virtual {p5, p0, p1, v0}, Lexpo/modules/kotlin/jni/PromiseImpl;->decorateWithDebugInformation(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_0
    new-instance v0, Lexpo/modules/kotlin/functions/AsyncFunctionComponent$attachToJSObject$2$functionBody$1;

    move-object v1, v0

    move-object v2, p5

    move-object v3, p2

    move-object v4, p1

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lexpo/modules/kotlin/functions/AsyncFunctionComponent$attachToJSObject$2$functionBody$1;-><init>(Lexpo/modules/kotlin/jni/PromiseImpl;Lexpo/modules/kotlin/functions/AsyncFunctionComponent;Ljava/lang/String;[Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 56
    .local v0, "functionBody":Lkotlin/jvm/functions/Function0;
    invoke-direct {p2, p3, v0}, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;->dispatchOnQueue(Lexpo/modules/kotlin/AppContext;Lkotlin/jvm/functions/Function0;)V

    .line 57
    return-void
.end method

.method private final dispatchOnQueue(Lexpo/modules/kotlin/AppContext;Lkotlin/jvm/functions/Function0;)V
    .locals 16
    .param p1, "appContext"    # Lexpo/modules/kotlin/AppContext;
    .param p2, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/AppContext;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 61
    move-object/from16 v0, p2

    invoke-virtual/range {p0 .. p0}, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;->getQueue()Lexpo/modules/kotlin/functions/FunctionQueue;

    move-result-object v1

    .line 62
    .local v1, "queue":Lexpo/modules/kotlin/functions/FunctionQueue;
    sget-object v2, Lexpo/modules/kotlin/functions/Queues;->DEFAULT:Lexpo/modules/kotlin/functions/Queues;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 63
    invoke-virtual/range {p1 .. p1}, Lexpo/modules/kotlin/AppContext;->getModulesQueue()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    new-instance v2, Lexpo/modules/kotlin/functions/AsyncFunctionComponent$dispatchOnQueue$1;

    invoke-direct {v2, v0, v3}, Lexpo/modules/kotlin/functions/AsyncFunctionComponent$dispatchOnQueue$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    move-object v7, v2

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto/16 :goto_4

    .line 68
    :cond_0
    sget-object v2, Lexpo/modules/kotlin/functions/Queues;->MAIN:Lexpo/modules/kotlin/functions/Queues;

    if-ne v1, v2, :cond_6

    .line 69
    invoke-virtual/range {p0 .. p0}, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;->getDesiredArgsTypes()[Lexpo/modules/kotlin/types/AnyType;

    move-result-object v2

    .local v2, "$this$any$iv":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 99
    .local v4, "$i$f$any":I
    array-length v5, v2

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_4

    aget-object v8, v2, v7

    .local v8, "element$iv":Ljava/lang/Object;
    move-object v9, v8

    .local v9, "it":Lexpo/modules/kotlin/types/AnyType;
    const/4 v10, 0x0

    .line 69
    .local v10, "$i$a$-any-AsyncFunctionComponent$dispatchOnQueue$2":I
    move-object v11, v9

    .local v11, "this_$iv":Lexpo/modules/kotlin/types/AnyType;
    const/4 v12, 0x0

    .line 100
    .local v12, "$i$f$inheritFrom$expo_modules_core_debug":I
    invoke-virtual {v11}, Lexpo/modules/kotlin/types/AnyType;->getKType()Lkotlin/reflect/KType;

    move-result-object v13

    invoke-interface {v13}, Lkotlin/reflect/KType;->getClassifier()Lkotlin/reflect/KClassifier;

    move-result-object v13

    instance-of v14, v13, Lkotlin/reflect/KClass;

    if-eqz v14, :cond_1

    check-cast v13, Lkotlin/reflect/KClass;

    goto :goto_1

    :cond_1
    move-object v13, v3

    :goto_1
    if-nez v13, :cond_2

    move v15, v6

    goto :goto_2

    .line 101
    .local v13, "kClass$iv":Lkotlin/reflect/KClass;
    :cond_2
    invoke-static {v13}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v14

    .local v14, "jClass$iv":Ljava/lang/Class;
    const-class v15, Landroid/view/View;

    .line 103
    invoke-virtual {v15, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v15

    .line 69
    .end local v11    # "this_$iv":Lexpo/modules/kotlin/types/AnyType;
    .end local v12    # "$i$f$inheritFrom$expo_modules_core_debug":I
    .end local v13    # "kClass$iv":Lkotlin/reflect/KClass;
    .end local v14    # "jClass$iv":Ljava/lang/Class;
    :goto_2
    nop

    .line 99
    .end local v9    # "it":Lexpo/modules/kotlin/types/AnyType;
    .end local v10    # "$i$a$-any-AsyncFunctionComponent$dispatchOnQueue$2":I
    if-eqz v15, :cond_3

    const/4 v6, 0x1

    goto :goto_3

    .end local v8    # "element$iv":Ljava/lang/Object;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 104
    :cond_4
    nop

    .line 69
    .end local v2    # "$this$any$iv":[Ljava/lang/Object;
    .end local v4    # "$i$f$any":I
    :goto_3
    if-eqz v6, :cond_5

    .line 76
    invoke-virtual/range {p1 .. p2}, Lexpo/modules/kotlin/AppContext;->dispatchOnMainUsingUIManager$expo_modules_core_debug(Lkotlin/jvm/functions/Function0;)V

    .line 77
    return-void

    .line 80
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lexpo/modules/kotlin/AppContext;->getMainQueue()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v7

    new-instance v2, Lexpo/modules/kotlin/functions/AsyncFunctionComponent$dispatchOnQueue$3;

    invoke-direct {v2, v0, v3}, Lexpo/modules/kotlin/functions/AsyncFunctionComponent$dispatchOnQueue$3;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    move-object v10, v2

    check-cast v10, Lkotlin/jvm/functions/Function2;

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_4

    .line 85
    :cond_6
    instance-of v2, v1, Lexpo/modules/kotlin/functions/CustomQueue;

    if-eqz v2, :cond_7

    .line 86
    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/functions/CustomQueue;

    invoke-virtual {v2}, Lexpo/modules/kotlin/functions/CustomQueue;->getScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    new-instance v2, Lexpo/modules/kotlin/functions/AsyncFunctionComponent$dispatchOnQueue$4;

    invoke-direct {v2, v0, v3}, Lexpo/modules/kotlin/functions/AsyncFunctionComponent$dispatchOnQueue$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    move-object v7, v2

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 90
    .end local v1    # "queue":Lexpo/modules/kotlin/functions/FunctionQueue;
    :cond_7
    :goto_4
    return-void
.end method


# virtual methods
.method public attachToJSObject(Lexpo/modules/kotlin/AppContext;Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;Ljava/lang/String;)V
    .locals 18
    .param p1, "appContext"    # Lexpo/modules/kotlin/AppContext;
    .param p2, "jsObject"    # Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;
    .param p3, "moduleName"    # Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    const-string v2, "appContext"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "jsObject"

    move-object/from16 v9, p2

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "moduleName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-static/range {p1 .. p1}, Lexpo/modules/kotlin/UtilsKt;->weak(Ljava/lang/Object;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    .line 26
    .local v2, "appContextHolder":Ljava/lang/ref/WeakReference;
    nop

    .line 27
    invoke-virtual/range {p0 .. p0}, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;->getName()Ljava/lang/String;

    move-result-object v4

    .line 28
    invoke-virtual/range {p0 .. p0}, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;->getTakesOwner$expo_modules_core_debug()Z

    move-result v5

    .line 29
    invoke-virtual/range {p0 .. p0}, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;->isEnumerable$expo_modules_core_debug()Z

    move-result v6

    .line 30
    invoke-virtual/range {p0 .. p0}, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;->getDesiredArgsTypes()[Lexpo/modules/kotlin/types/AnyType;

    move-result-object v3

    .local v3, "$this$map$iv":[Ljava/lang/Object;
    const/4 v7, 0x0

    .line 93
    .local v7, "$i$f$map":I
    new-instance v8, Ljava/util/ArrayList;

    array-length v10, v3

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v8, Ljava/util/Collection;

    .local v8, "destination$iv$iv":Ljava/util/Collection;
    move-object v10, v3

    .local v10, "$this$mapTo$iv$iv":[Ljava/lang/Object;
    const/4 v11, 0x0

    .line 94
    .local v11, "$i$f$mapTo":I
    array-length v12, v10

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v12, :cond_0

    aget-object v15, v10, v14

    .line 95
    .local v15, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v16, v15

    .local v16, "it":Lexpo/modules/kotlin/types/AnyType;
    const/16 v17, 0x0

    .line 30
    .local v17, "$i$a$-map-AsyncFunctionComponent$attachToJSObject$1":I
    invoke-virtual/range {v16 .. v16}, Lexpo/modules/kotlin/types/AnyType;->getCppRequiredTypes()Lexpo/modules/kotlin/jni/ExpectedType;

    move-result-object v13

    .line 95
    .end local v16    # "it":Lexpo/modules/kotlin/types/AnyType;
    .end local v17    # "$i$a$-map-AsyncFunctionComponent$attachToJSObject$1":I
    invoke-interface {v8, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 94
    .end local v15    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 96
    :cond_0
    nop

    .end local v8    # "destination$iv$iv":Ljava/util/Collection;
    .end local v10    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    .end local v11    # "$i$f$mapTo":I
    check-cast v8, Ljava/util/List;

    .line 93
    nop

    .end local v3    # "$this$map$iv":[Ljava/lang/Object;
    .end local v7    # "$i$f$map":I
    check-cast v8, Ljava/util/Collection;

    .line 30
    move-object v3, v8

    .local v3, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v7, 0x0

    .line 97
    .local v7, "$i$f$toTypedArray":I
    nop

    .line 98
    .local v8, "thisCollection$iv":Ljava/util/Collection;
    const/4 v10, 0x0

    new-array v10, v10, [Lexpo/modules/kotlin/jni/ExpectedType;

    invoke-interface {v8, v10}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v7    # "$i$f$toTypedArray":I
    .end local v8    # "thisCollection$iv":Ljava/util/Collection;
    move-object v7, v3

    check-cast v7, [Lexpo/modules/kotlin/jni/ExpectedType;

    .line 26
    new-instance v8, Lexpo/modules/kotlin/functions/AsyncFunctionComponent$$ExternalSyntheticLambda0;

    move-object/from16 v10, p0

    invoke-direct {v8, v2, v1, v10, v0}, Lexpo/modules/kotlin/functions/AsyncFunctionComponent$$ExternalSyntheticLambda0;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lexpo/modules/kotlin/functions/AsyncFunctionComponent;Lexpo/modules/kotlin/AppContext;)V

    move-object/from16 v3, p2

    invoke-virtual/range {v3 .. v8}, Lexpo/modules/kotlin/jni/decorators/JSDecoratorsBridgingObject;->registerAsyncFunction(Ljava/lang/String;ZZ[Lexpo/modules/kotlin/jni/ExpectedType;Lexpo/modules/kotlin/jni/JNIAsyncFunctionBody;)V

    .line 58
    return-void
.end method

.method public abstract callUserImplementation$expo_modules_core_debug([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;Lexpo/modules/kotlin/AppContext;)V
.end method
