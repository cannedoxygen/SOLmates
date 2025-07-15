.class public final Lorg/koin/core/instance/InstanceBuilderKt;
.super Ljava/lang/Object;
.source "InstanceBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInstanceBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InstanceBuilder.kt\norg/koin/core/instance/InstanceBuilderKt\n+ 2 Logger.kt\norg/koin/core/logger/Logger\n+ 3 Measure.kt\norg/koin/core/time/MeasureKt\n+ 4 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,80:1\n28#2:81\n46#2,2:82\n29#2:84\n28#2:94\n46#2,2:95\n29#2:97\n28#2:107\n46#2,2:108\n29#2:110\n43#3,9:85\n43#3,9:98\n26#4:111\n*S KotlinDebug\n*F\n+ 1 InstanceBuilder.kt\norg/koin/core/instance/InstanceBuilderKt\n*L\n29#1:81\n29#1:82,2\n29#1:84\n39#1:94\n39#1:95,2\n39#1:97\n49#1:107\n49#1:108,2\n49#1:110\n36#1:85,9\n46#1:98,9\n70#1:111\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001a+\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00032\u000e\u0010\u0004\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\u0005H\u0002\u00a2\u0006\u0002\u0010\u0006\u001a/\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00032\n\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u00052\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002\u00a2\u0006\u0002\u0010\u000c\u001a1\u0010\r\u001a\u0002H\u000e\"\u0008\u0008\u0000\u0010\u000e*\u00020\u0001*\u00020\t2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u0002H\u000e0\u00102\u0006\u0010\u0011\u001a\u00020\u000bH\u0007\u00a2\u0006\u0002\u0010\u0012\u001a(\u0010\r\u001a\u0002H\u000e\"\n\u0008\u0000\u0010\u000e\u0018\u0001*\u00020\u0001*\u00020\t2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000bH\u0087\u0008\u00a2\u0006\u0002\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "createInstance",
        "",
        "args",
        "",
        "constructor",
        "Ljava/lang/reflect/Constructor;",
        "([Ljava/lang/Object;Ljava/lang/reflect/Constructor;)Ljava/lang/Object;",
        "getArguments",
        "scope",
        "Lorg/koin/core/scope/Scope;",
        "parameters",
        "Lorg/koin/core/parameter/ParametersHolder;",
        "(Ljava/lang/reflect/Constructor;Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)[Ljava/lang/Object;",
        "newInstance",
        "T",
        "kClass",
        "Lkotlin/reflect/KClass;",
        "params",
        "(Lorg/koin/core/scope/Scope;Lkotlin/reflect/KClass;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;",
        "defParams",
        "(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;",
        "koin-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private static final createInstance([Ljava/lang/Object;Ljava/lang/reflect/Constructor;)Ljava/lang/Object;
    .locals 2
    .param p0, "args"    # [Ljava/lang/Object;
    .param p1, "constructor"    # Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 58
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 59
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 61
    :cond_1
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 58
    :goto_1
    const-string v1, "if (args.isEmpty()) {\n  \u2026.newInstance(*args)\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private static final getArguments(Ljava/lang/reflect/Constructor;Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)[Ljava/lang/Object;
    .locals 8
    .param p0, "constructor"    # Ljava/lang/reflect/Constructor;
    .param p1, "scope"    # Lorg/koin/core/scope/Scope;
    .param p2, "parameters"    # Lorg/koin/core/parameter/ParametersHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Lorg/koin/core/scope/Scope;",
            "Lorg/koin/core/parameter/ParametersHolder;",
            ")[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 69
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    .line 70
    .local v0, "length":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 111
    .local v2, "$i$f$emptyArray":I
    new-array v1, v1, [Ljava/lang/Object;

    .end local v2    # "$i$f$emptyArray":I
    goto :goto_3

    .line 72
    :cond_0
    new-array v2, v0, [Ljava/lang/Object;

    :goto_0
    if-ge v1, v0, :cond_1

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 73
    .local v1, "result":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 74
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    aget-object v3, v3, v2

    .line 75
    .local v3, "p":Ljava/lang/Class;
    const-string v4, "p"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    .line 76
    .local v4, "parameterClass":Lkotlin/reflect/KClass;
    new-instance v5, Lorg/koin/core/instance/InstanceBuilderKt$getArguments$1;

    invoke-direct {v5, p2}, Lorg/koin/core/instance/InstanceBuilderKt$getArguments$1;-><init>(Lorg/koin/core/parameter/ParametersHolder;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v6, v5}, Lorg/koin/core/scope/Scope;->getOrNull(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    invoke-virtual {p2, v4}, Lorg/koin/core/parameter/ParametersHolder;->getOrNull(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    new-instance v5, Lorg/koin/core/error/NoBeanDefFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No definition found for class \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x27

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/koin/core/error/NoBeanDefFoundException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    :goto_2
    aput-object v5, v1, v2

    .line 73
    .end local v3    # "p":Ljava/lang/Class;
    .end local v4    # "parameterClass":Lkotlin/reflect/KClass;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 78
    .end local v2    # "i":I
    :cond_4
    nop

    .line 70
    .end local v1    # "result":[Ljava/lang/Object;
    :goto_3
    return-object v1
.end method

.method public static final newInstance(Lorg/koin/core/scope/Scope;Lkotlin/reflect/KClass;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;
    .locals 17
    .param p0, "$this$newInstance"    # Lorg/koin/core/scope/Scope;
    .param p1, "kClass"    # Lkotlin/reflect/KClass;
    .param p2, "params"    # Lorg/koin/core/parameter/ParametersHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/koin/core/scope/Scope;",
            "Lkotlin/reflect/KClass<",
            "TT;>;",
            "Lorg/koin/core/parameter/ParametersHolder;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Koin Reflection API is deprecated"
    .end annotation

    .annotation runtime Lorg/koin/core/annotation/KoinReflectAPI;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "<this>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "kClass"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "params"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 28
    .local v2, "instance":Ljava/lang/Object;
    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/scope/Scope;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object v4

    invoke-virtual {v4}, Lorg/koin/core/logger/Logger;->getLevel()Lorg/koin/core/logger/Level;

    move-result-object v4

    sget-object v5, Lorg/koin/core/logger/Level;->DEBUG:Lorg/koin/core/logger/Level;

    if-ne v4, v5, :cond_1

    .line 29
    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/scope/Scope;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object v4

    .local v4, "this_$iv":Lorg/koin/core/logger/Logger;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "|- creating new instance - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Lorg/koin/ext/KClassExtKt;->getFullName(Lkotlin/reflect/KClass;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .local v5, "msg$iv":Ljava/lang/String;
    const/4 v6, 0x0

    .line 81
    .local v6, "$i$f$debug":I
    sget-object v7, Lorg/koin/core/logger/Level;->DEBUG:Lorg/koin/core/logger/Level;

    .local v7, "lvl$iv$iv":Lorg/koin/core/logger/Level;
    move-object v8, v4

    .local v8, "this_$iv$iv":Lorg/koin/core/logger/Logger;
    const/4 v9, 0x0

    .line 82
    .local v9, "$i$f$log":I
    invoke-virtual {v8, v7}, Lorg/koin/core/logger/Logger;->isAt(Lorg/koin/core/logger/Level;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v8, v7, v5}, Lorg/koin/core/logger/Logger;->display(Lorg/koin/core/logger/Level;Ljava/lang/String;)V

    .line 83
    :cond_0
    nop

    .line 84
    .end local v7    # "lvl$iv$iv":Lorg/koin/core/logger/Level;
    .end local v8    # "this_$iv$iv":Lorg/koin/core/logger/Logger;
    .end local v9    # "$i$f$log":I
    nop

    .line 32
    .end local v4    # "this_$iv":Lorg/koin/core/logger/Logger;
    .end local v5    # "msg$iv":Ljava/lang/String;
    .end local v6    # "$i$f$debug":I
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v4

    const-string v5, "kClass.java.constructors"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/collections/ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Constructor;

    if-eqz v4, :cond_6

    .line 35
    .local v4, "constructor":Ljava/lang/reflect/Constructor;
    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/scope/Scope;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object v5

    invoke-virtual {v5}, Lorg/koin/core/logger/Logger;->getLevel()Lorg/koin/core/logger/Level;

    move-result-object v5

    sget-object v6, Lorg/koin/core/logger/Level;->DEBUG:Lorg/koin/core/logger/Level;

    const-string v7, " ms"

    const-wide v8, 0x412e848000000000L    # 1000000.0

    if-ne v5, v6, :cond_3

    .line 36
    const/4 v5, 0x0

    .line 85
    .local v5, "$i$f$measureDurationForResult":I
    const/4 v6, 0x0

    .line 90
    .local v6, "$i$f$measureTimedValue":I
    sget-object v10, Lorg/koin/mp/KoinPlatformTimeTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTimeTools;

    invoke-virtual {v10}, Lorg/koin/mp/KoinPlatformTimeTools;->getTimeInNanoSeconds()J

    move-result-wide v10

    .line 91
    .local v10, "start$iv$iv":J
    const/4 v12, 0x0

    .line 37
    .local v12, "$i$a$-measureDurationForResult-InstanceBuilderKt$newInstance$args$1":I
    invoke-static {v4, v0, v1}, Lorg/koin/core/instance/InstanceBuilderKt;->getArguments(Ljava/lang/reflect/Constructor;Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)[Ljava/lang/Object;

    move-result-object v12

    .line 91
    .end local v12    # "$i$a$-measureDurationForResult-InstanceBuilderKt$newInstance$args$1":I
    nop

    .line 92
    .local v12, "value$iv$iv":Ljava/lang/Object;
    sget-object v13, Lorg/koin/mp/KoinPlatformTimeTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTimeTools;

    invoke-virtual {v13}, Lorg/koin/mp/KoinPlatformTimeTools;->getTimeInNanoSeconds()J

    move-result-wide v13

    .line 93
    .local v13, "stop$iv$iv":J
    new-instance v15, Lkotlin/Pair;

    move-object/from16 v16, v2

    .end local v2    # "instance":Ljava/lang/Object;
    .local v16, "instance":Ljava/lang/Object;
    sub-long v2, v13, v10

    long-to-double v2, v2

    div-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v15, v12, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    .end local v6    # "$i$f$measureTimedValue":I
    .end local v10    # "start$iv$iv":J
    .end local v12    # "value$iv$iv":Ljava/lang/Object;
    .end local v13    # "stop$iv$iv":J
    invoke-virtual {v15}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    .local v2, "value$iv":Ljava/lang/Object;
    invoke-virtual {v15}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    .line 86
    .local v10, "duration$iv":D
    new-instance v3, Lkotlin/Pair;

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-direct {v3, v2, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 36
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v5    # "$i$f$measureDurationForResult":I
    .end local v10    # "duration$iv":D
    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .local v2, "_args":[Ljava/lang/Object;
    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    .line 39
    .local v5, "duration":D
    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/scope/Scope;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object v3

    .local v3, "this_$iv":Lorg/koin/core/logger/Logger;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "|- got arguments in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .local v10, "msg$iv":Ljava/lang/String;
    const/4 v11, 0x0

    .line 94
    .local v11, "$i$f$debug":I
    sget-object v12, Lorg/koin/core/logger/Level;->DEBUG:Lorg/koin/core/logger/Level;

    .local v12, "lvl$iv$iv":Lorg/koin/core/logger/Level;
    move-object v13, v3

    .local v13, "this_$iv$iv":Lorg/koin/core/logger/Logger;
    const/4 v14, 0x0

    .line 95
    .local v14, "$i$f$log":I
    invoke-virtual {v13, v12}, Lorg/koin/core/logger/Logger;->isAt(Lorg/koin/core/logger/Level;)Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-virtual {v13, v12, v10}, Lorg/koin/core/logger/Logger;->display(Lorg/koin/core/logger/Level;Ljava/lang/String;)V

    .line 96
    :cond_2
    nop

    .line 97
    .end local v12    # "lvl$iv$iv":Lorg/koin/core/logger/Level;
    .end local v13    # "this_$iv$iv":Lorg/koin/core/logger/Logger;
    .end local v14    # "$i$f$log":I
    nop

    .line 40
    .end local v3    # "this_$iv":Lorg/koin/core/logger/Logger;
    .end local v10    # "msg$iv":Ljava/lang/String;
    .end local v11    # "$i$f$debug":I
    nop

    .end local v2    # "_args":[Ljava/lang/Object;
    .end local v5    # "duration":D
    goto :goto_0

    .line 42
    .end local v16    # "instance":Ljava/lang/Object;
    .local v2, "instance":Ljava/lang/Object;
    :cond_3
    move-object/from16 v16, v2

    .end local v2    # "instance":Ljava/lang/Object;
    .restart local v16    # "instance":Ljava/lang/Object;
    invoke-static {v4, v0, v1}, Lorg/koin/core/instance/InstanceBuilderKt;->getArguments(Ljava/lang/reflect/Constructor;Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)[Ljava/lang/Object;

    move-result-object v2

    .line 35
    :goto_0
    nop

    .line 45
    .local v2, "args":[Ljava/lang/Object;
    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/scope/Scope;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object v3

    invoke-virtual {v3}, Lorg/koin/core/logger/Logger;->getLevel()Lorg/koin/core/logger/Level;

    move-result-object v3

    sget-object v5, Lorg/koin/core/logger/Level;->DEBUG:Lorg/koin/core/logger/Level;

    if-ne v3, v5, :cond_5

    .line 46
    const/4 v3, 0x0

    .line 98
    .local v3, "$i$f$measureDurationForResult":I
    const/4 v5, 0x0

    .line 103
    .local v5, "$i$f$measureTimedValue":I
    sget-object v6, Lorg/koin/mp/KoinPlatformTimeTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTimeTools;

    invoke-virtual {v6}, Lorg/koin/mp/KoinPlatformTimeTools;->getTimeInNanoSeconds()J

    move-result-wide v10

    .line 104
    .local v10, "start$iv$iv":J
    const/4 v6, 0x0

    .line 47
    .local v6, "$i$a$-measureDurationForResult-InstanceBuilderKt$newInstance$1":I
    invoke-static {v2, v4}, Lorg/koin/core/instance/InstanceBuilderKt;->createInstance([Ljava/lang/Object;Ljava/lang/reflect/Constructor;)Ljava/lang/Object;

    move-result-object v6

    .line 104
    .end local v6    # "$i$a$-measureDurationForResult-InstanceBuilderKt$newInstance$1":I
    nop

    .line 105
    .local v6, "value$iv$iv":Ljava/lang/Object;
    sget-object v12, Lorg/koin/mp/KoinPlatformTimeTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTimeTools;

    invoke-virtual {v12}, Lorg/koin/mp/KoinPlatformTimeTools;->getTimeInNanoSeconds()J

    move-result-wide v12

    .line 106
    .local v12, "stop$iv$iv":J
    new-instance v14, Lkotlin/Pair;

    sub-long v0, v12, v10

    long-to-double v0, v0

    div-double/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v14, v6, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 98
    .end local v5    # "$i$f$measureTimedValue":I
    .end local v6    # "value$iv$iv":Ljava/lang/Object;
    .end local v10    # "start$iv$iv":J
    .end local v12    # "stop$iv$iv":J
    invoke-virtual {v14}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    .local v0, "value$iv":Ljava/lang/Object;
    invoke-virtual {v14}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    .line 99
    .local v5, "duration$iv":D
    new-instance v1, Lkotlin/Pair;

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-direct {v1, v0, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    .end local v0    # "value$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$measureDurationForResult":I
    .end local v5    # "duration$iv":D
    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    .local v0, "_instance":Ljava/lang/Object;
    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    .line 49
    .local v5, "duration":D
    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/scope/Scope;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object v1

    .local v1, "this_$iv":Lorg/koin/core/logger/Logger;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "|- created instance in "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "msg$iv":Ljava/lang/String;
    const/4 v7, 0x0

    .line 107
    .local v7, "$i$f$debug":I
    sget-object v8, Lorg/koin/core/logger/Level;->DEBUG:Lorg/koin/core/logger/Level;

    .local v8, "lvl$iv$iv":Lorg/koin/core/logger/Level;
    move-object v9, v1

    .local v9, "this_$iv$iv":Lorg/koin/core/logger/Logger;
    const/4 v10, 0x0

    .line 108
    .local v10, "$i$f$log":I
    invoke-virtual {v9, v8}, Lorg/koin/core/logger/Logger;->isAt(Lorg/koin/core/logger/Level;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v9, v8, v3}, Lorg/koin/core/logger/Logger;->display(Lorg/koin/core/logger/Level;Ljava/lang/String;)V

    .line 109
    :cond_4
    nop

    .line 110
    .end local v8    # "lvl$iv$iv":Lorg/koin/core/logger/Level;
    .end local v9    # "this_$iv$iv":Lorg/koin/core/logger/Logger;
    .end local v10    # "$i$f$log":I
    nop

    .line 50
    .end local v1    # "this_$iv":Lorg/koin/core/logger/Logger;
    .end local v3    # "msg$iv":Ljava/lang/String;
    .end local v7    # "$i$f$debug":I
    nop

    .end local v0    # "_instance":Ljava/lang/Object;
    .end local v5    # "duration":D
    goto :goto_1

    .line 52
    :cond_5
    invoke-static {v2, v4}, Lorg/koin/core/instance/InstanceBuilderKt;->createInstance([Ljava/lang/Object;Ljava/lang/reflect/Constructor;)Ljava/lang/Object;

    move-result-object v0

    .line 45
    :goto_1
    nop

    .line 54
    .end local v16    # "instance":Ljava/lang/Object;
    .local v0, "instance":Ljava/lang/Object;
    const-string v1, "null cannot be cast to non-null type T of org.koin.core.instance.InstanceBuilderKt.newInstance"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 32
    .end local v0    # "instance":Ljava/lang/Object;
    .end local v4    # "constructor":Ljava/lang/reflect/Constructor;
    .local v2, "instance":Ljava/lang/Object;
    :cond_6
    move-object/from16 v16, v2

    .end local v2    # "instance":Ljava/lang/Object;
    .restart local v16    # "instance":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No constructor found for class \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lorg/koin/ext/KClassExtKt;->getFullName(Lkotlin/reflect/KClass;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final synthetic newInstance(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;
    .locals 3
    .param p0, "$this$newInstance"    # Lorg/koin/core/scope/Scope;
    .param p1, "defParams"    # Lorg/koin/core/parameter/ParametersHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/koin/core/scope/Scope;",
            "Lorg/koin/core/parameter/ParametersHolder;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Koin Reflection API is deprecated"
    .end annotation

    .annotation runtime Lorg/koin/core/annotation/KoinReflectAPI;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 17
    .local v0, "$i$f$newInstance":I
    const/4 v1, 0x4

    const-string v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-static {p0, v1, p1}, Lorg/koin/core/instance/InstanceBuilderKt;->newInstance(Lorg/koin/core/scope/Scope;Lkotlin/reflect/KClass;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static synthetic newInstance$default(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this$newInstance_u24default"    # Lorg/koin/core/scope/Scope;
    .param p1, "defParams"    # Lorg/koin/core/parameter/ParametersHolder;

    .line 16
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    invoke-static {}, Lorg/koin/core/parameter/ParametersHolderKt;->emptyParametersHolder()Lorg/koin/core/parameter/ParametersHolder;

    move-result-object p1

    :cond_0
    const-string p2, "<this>"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "defParams"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 17
    .local p2, "$i$f$newInstance":I
    const/4 p3, 0x4

    const-string v0, "T"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class p3, Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p3

    invoke-static {p0, p3, p1}, Lorg/koin/core/instance/InstanceBuilderKt;->newInstance(Lorg/koin/core/scope/Scope;Lkotlin/reflect/KClass;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    move-result-object p3

    return-object p3
.end method
