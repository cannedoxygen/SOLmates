.class public final Lexpo/modules/splashscreen/SplashScreenModule;
.super Lexpo/modules/kotlin/modules/Module;
.source "SplashScreenModule.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSplashScreenModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SplashScreenModule.kt\nexpo/modules/splashscreen/SplashScreenModule\n+ 2 Module.kt\nexpo/modules/kotlin/modules/ModuleKt\n+ 3 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 4 Trace.kt\nandroidx/tracing/TraceKt\n+ 5 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder\n+ 6 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n+ 7 UntypedAsyncFunctionComponent.kt\nexpo/modules/kotlin/functions/UntypedAsyncFunctionComponentKt\n+ 8 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 9 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n+ 10 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeProvider\n+ 11 ReturnType.kt\nexpo/modules/kotlin/types/ReturnTypeKt\n+ 12 ReturnType.kt\nexpo/modules/kotlin/types/ReturnTypeProvider\n+ 13 ModuleDefinitionBuilder.kt\nexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder\n*L\n1#1,63:1\n61#2:64\n14#3:65\n25#3:66\n27#4,3:67\n31#4:183\n233#5:70\n234#5,2:101\n233#5:103\n234#5,2:134\n127#5:136\n130#5,3:158\n109#5:161\n110#5,2:167\n224#5:169\n225#5,2:173\n224#5:175\n225#5,2:179\n26#6:71\n26#6:104\n26#6:162\n26#6:170\n26#6:176\n13#7,6:72\n19#7,19:82\n13#7,6:105\n19#7,19:115\n13#7,2:171\n13#7,2:177\n8#8,4:78\n8#8,4:111\n172#9,6:137\n168#9:143\n158#9,8:146\n143#10,2:144\n20#11:154\n20#11:163\n13#12,3:155\n13#12,3:164\n124#13,2:181\n*S KotlinDebug\n*F\n+ 1 SplashScreenModule.kt\nexpo/modules/splashscreen/SplashScreenModule\n*L\n20#1:64\n20#1:65\n20#1:66\n20#1:67,3\n20#1:183\n23#1:70\n23#1:101,2\n32#1:103\n32#1:134,2\n36#1:136\n36#1:158,3\n43#1:161\n43#1:167,2\n48#1:169\n48#1:173,2\n52#1:175\n52#1:179,2\n23#1:71\n32#1:104\n43#1:162\n48#1:170\n52#1:176\n23#1:72,6\n23#1:82,19\n32#1:105,6\n32#1:115,19\n48#1:171,2\n52#1:177,2\n23#1:78,4\n32#1:111,4\n36#1:137,6\n36#1:143\n36#1:146,8\n36#1:144,2\n36#1:154\n43#1:163\n36#1:155,3\n43#1:164,3\n58#1:181,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lexpo/modules/splashscreen/SplashScreenModule;",
        "Lexpo/modules/kotlin/modules/Module;",
        "()V",
        "userControlledAutoHideEnabled",
        "",
        "definition",
        "Lexpo/modules/kotlin/modules/ModuleDefinitionData;",
        "expo-splash-screen_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private userControlledAutoHideEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lexpo/modules/kotlin/modules/Module;-><init>()V

    return-void
.end method

.method public static final synthetic access$getUserControlledAutoHideEnabled$p(Lexpo/modules/splashscreen/SplashScreenModule;)Z
    .locals 1
    .param p0, "$this"    # Lexpo/modules/splashscreen/SplashScreenModule;

    .line 17
    iget-boolean v0, p0, Lexpo/modules/splashscreen/SplashScreenModule;->userControlledAutoHideEnabled:Z

    return v0
.end method

.method public static final synthetic access$setUserControlledAutoHideEnabled$p(Lexpo/modules/splashscreen/SplashScreenModule;Z)V
    .locals 0
    .param p0, "$this"    # Lexpo/modules/splashscreen/SplashScreenModule;
    .param p1, "<set-?>"    # Z

    .line 17
    iput-boolean p1, p0, Lexpo/modules/splashscreen/SplashScreenModule;->userControlledAutoHideEnabled:Z

    return-void
.end method


# virtual methods
.method public definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
    .locals 29

    .line 20
    move-object/from16 v1, p0

    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/modules/Module;

    .local v2, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    const/4 v3, 0x0

    .line 64
    .local v3, "$i$f$ModuleDefinition":I
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ".ModuleDefinition"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "blockName$iv$iv":Ljava/lang/String;
    const/4 v5, 0x0

    .line 65
    .local v5, "$i$f$trace":I
    const-string v6, "ExpoModulesCore"

    .local v6, "tag$iv$iv$iv":Ljava/lang/String;
    const/4 v7, 0x0

    .line 66
    .local v7, "$i$f$trace":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "] "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .local v8, "label$iv$iv$iv$iv":Ljava/lang/String;
    const/4 v9, 0x0

    .line 67
    .local v9, "$i$f$trace":I
    invoke-static {v8}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 68
    nop

    .line 69
    const/4 v0, 0x0

    .line 64
    .local v0, "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    :try_start_0
    new-instance v10, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    invoke-direct {v10, v2}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    move-object v11, v10

    .local v11, "$this$definition_u24lambda_u247":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    const/4 v12, 0x0

    .line 21
    .local v12, "$i$a$-ModuleDefinition-SplashScreenModule$definition$1":I
    const-string v13, "ExpoSplashScreen"

    invoke-virtual {v11, v13}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Name(Ljava/lang/String;)V

    .line 23
    move-object v13, v11

    check-cast v13, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v14, "preventAutoHideAsync"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .local v13, "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .local v14, "name$iv":Ljava/lang/String;
    const/4 v15, 0x0

    .line 70
    .local v15, "$i$f$AsyncFunction":I
    const/16 v16, 0x0

    .line 71
    .local v16, "$i$f$emptyArray":I
    move/from16 v17, v0

    .end local v0    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .local v17, "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    const/4 v0, 0x0

    move-object/from16 v18, v2

    .end local v2    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .local v18, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    :try_start_1
    new-array v2, v0, [Lexpo/modules/kotlin/types/AnyType;

    .line 70
    .end local v16    # "$i$f$emptyArray":I
    new-instance v0, Lexpo/modules/splashscreen/SplashScreenModule$definition$lambda$7$$inlined$AsyncFunction$1;

    invoke-direct {v0, v1}, Lexpo/modules/splashscreen/SplashScreenModule$definition$lambda$7$$inlined$AsyncFunction$1;-><init>(Lexpo/modules/splashscreen/SplashScreenModule;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .local v0, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .local v2, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/16 v19, 0x0

    .line 72
    .local v19, "$i$f$createAsyncFunctionComponent":I
    move/from16 v20, v3

    .end local v3    # "$i$f$ModuleDefinition":I
    .local v20, "$i$f$ModuleDefinition":I
    :try_start_2
    const-class v3, Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    .line 75
    nop

    .line 76
    move-object/from16 v21, v4

    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .local v21, "blockName$iv$iv":Ljava/lang/String;
    :try_start_3
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    if-eqz v4, :cond_0

    .line 77
    const/4 v3, 0x0

    .line 78
    .local v3, "$i$f$enforceType":I
    nop

    .line 81
    nop

    .line 82
    .end local v3    # "$i$f$enforceType":I
    :try_start_4
    new-instance v3, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v3, v14, v2, v0}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 183
    .end local v0    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v2    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v11    # "$this$definition_u24lambda_u247":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v12    # "$i$a$-ModuleDefinition-SplashScreenModule$definition$1":I
    .end local v13    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v14    # "name$iv":Ljava/lang/String;
    .end local v15    # "$i$f$AsyncFunction":I
    .end local v17    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .end local v19    # "$i$f$createAsyncFunctionComponent":I
    :catchall_0
    move-exception v0

    move/from16 v25, v5

    move-object/from16 v27, v6

    move/from16 v26, v7

    move-object/from16 v28, v8

    move/from16 v24, v9

    goto/16 :goto_4

    .line 84
    .restart local v0    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .restart local v2    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .restart local v11    # "$this$definition_u24lambda_u247":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .restart local v12    # "$i$a$-ModuleDefinition-SplashScreenModule$definition$1":I
    .restart local v13    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v14    # "name$iv":Ljava/lang/String;
    .restart local v15    # "$i$f$AsyncFunction":I
    .restart local v17    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .restart local v19    # "$i$f$createAsyncFunctionComponent":I
    :cond_0
    :try_start_5
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    if-eqz v4, :cond_1

    .line 85
    const/4 v3, 0x0

    .line 78
    .restart local v3    # "$i$f$enforceType":I
    nop

    .line 81
    nop

    .line 86
    .end local v3    # "$i$f$enforceType":I
    :try_start_6
    new-instance v3, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v3, v14, v2, v0}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 88
    :cond_1
    :try_start_7
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    if-eqz v4, :cond_2

    .line 89
    const/4 v3, 0x0

    .line 78
    .restart local v3    # "$i$f$enforceType":I
    nop

    .line 81
    nop

    .line 90
    .end local v3    # "$i$f$enforceType":I
    :try_start_8
    new-instance v3, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v3, v14, v2, v0}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    .line 92
    :cond_2
    :try_start_9
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    if-eqz v4, :cond_3

    .line 93
    const/4 v3, 0x0

    .line 78
    .restart local v3    # "$i$f$enforceType":I
    nop

    .line 81
    nop

    .line 94
    .end local v3    # "$i$f$enforceType":I
    :try_start_a
    new-instance v3, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v3, v14, v2, v0}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_0

    .line 96
    :cond_3
    :try_start_b
    const-class v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    if-eqz v3, :cond_4

    .line 97
    const/4 v3, 0x0

    .line 78
    .restart local v3    # "$i$f$enforceType":I
    nop

    .line 81
    nop

    .line 98
    .end local v3    # "$i$f$enforceType":I
    :try_start_c
    new-instance v3, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v3, v14, v2, v0}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_0

    .line 100
    :cond_4
    :try_start_d
    new-instance v3, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v3, v14, v2, v0}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 75
    :goto_0
    nop

    .line 70
    .end local v0    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v2    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v19    # "$i$f$createAsyncFunctionComponent":I
    move-object v0, v3

    .local v0, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v2, 0x0

    .line 101
    .local v2, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$4$iv":I
    invoke-virtual {v13}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    nop

    .line 70
    .end local v0    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v2    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$4$iv":I
    nop

    .line 32
    .end local v13    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v14    # "name$iv":Ljava/lang/String;
    .end local v15    # "$i$f$AsyncFunction":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "internalPreventAutoHideAsync"

    .local v0, "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .local v2, "name$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 103
    .local v3, "$i$f$AsyncFunction":I
    const/4 v4, 0x0

    .line 104
    .local v4, "$i$f$emptyArray":I
    const/4 v13, 0x0

    new-array v14, v13, [Lexpo/modules/kotlin/types/AnyType;

    .line 103
    .end local v4    # "$i$f$emptyArray":I
    new-instance v4, Lexpo/modules/splashscreen/SplashScreenModule$definition$lambda$7$$inlined$AsyncFunction$2;

    invoke-direct {v4}, Lexpo/modules/splashscreen/SplashScreenModule$definition$lambda$7$$inlined$AsyncFunction$2;-><init>()V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .local v4, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    move-object v13, v14

    .local v13, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/4 v14, 0x0

    .line 105
    .local v14, "$i$f$createAsyncFunctionComponent":I
    const-class v15, Lkotlin/Unit;

    .line 108
    nop

    .line 109
    move/from16 v19, v3

    .end local v3    # "$i$f$AsyncFunction":I
    .local v19, "$i$f$AsyncFunction":I
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    if-eqz v3, :cond_5

    .line 110
    const/4 v3, 0x0

    .line 111
    .local v3, "$i$f$enforceType":I
    nop

    .line 114
    nop

    .line 115
    .end local v3    # "$i$f$enforceType":I
    :try_start_e
    new-instance v3, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v3, v2, v13, v4}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_1

    .line 117
    :cond_5
    :try_start_f
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    if-eqz v3, :cond_6

    .line 118
    const/4 v3, 0x0

    .line 111
    .restart local v3    # "$i$f$enforceType":I
    nop

    .line 114
    nop

    .line 119
    .end local v3    # "$i$f$enforceType":I
    :try_start_10
    new-instance v3, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v3, v2, v13, v4}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_1

    .line 121
    :cond_6
    :try_start_11
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    if-eqz v3, :cond_7

    .line 122
    const/4 v3, 0x0

    .line 111
    .restart local v3    # "$i$f$enforceType":I
    nop

    .line 114
    nop

    .line 123
    .end local v3    # "$i$f$enforceType":I
    :try_start_12
    new-instance v3, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v3, v2, v13, v4}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto :goto_1

    .line 125
    :cond_7
    :try_start_13
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    if-eqz v3, :cond_8

    .line 126
    const/4 v3, 0x0

    .line 111
    .restart local v3    # "$i$f$enforceType":I
    nop

    .line 114
    nop

    .line 127
    .end local v3    # "$i$f$enforceType":I
    :try_start_14
    new-instance v3, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v3, v2, v13, v4}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto :goto_1

    .line 129
    :cond_8
    :try_start_15
    const-class v3, Ljava/lang/String;

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    if-eqz v3, :cond_9

    .line 130
    const/4 v3, 0x0

    .line 111
    .restart local v3    # "$i$f$enforceType":I
    nop

    .line 114
    nop

    .line 131
    .end local v3    # "$i$f$enforceType":I
    :try_start_16
    new-instance v3, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v3, v2, v13, v4}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto :goto_1

    .line 133
    :cond_9
    :try_start_17
    new-instance v3, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v3, v2, v13, v4}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 108
    :goto_1
    nop

    .line 103
    .end local v4    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v13    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v14    # "$i$f$createAsyncFunctionComponent":I
    nop

    .local v3, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v4, 0x0

    .line 134
    .local v4, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$4$iv":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    nop

    .line 103
    .end local v3    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v4    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$4$iv":I
    nop

    .line 36
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v19    # "$i$f$AsyncFunction":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "setOptions"

    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v2    # "name$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 136
    .local v3, "$i$f$Function":I
    new-instance v4, Lexpo/modules/kotlin/functions/SyncFunctionComponent;

    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v13

    .line 137
    .local v13, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 138
    const-class v14, Lexpo/modules/splashscreen/SplashScreenOptions;

    .line 137
    .local v14, "p0$iv$iv":Ljava/lang/Class;
    const/4 v15, 0x0

    .line 142
    .local v15, "$i$f$toArgsArray":I
    move/from16 v19, v3

    .end local v3    # "$i$f$Function":I
    .local v19, "$i$f$Function":I
    const/4 v3, 0x1

    new-array v3, v3, [Lexpo/modules/kotlin/types/AnyType;

    const/16 v22, 0x0

    .line 143
    .local v22, "$i$f$toAnyType":I
    sget-object v23, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    .local v23, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/16 v24, 0x0

    .line 144
    .local v24, "$i$f$cachedAnyType":I
    move/from16 v25, v5

    .end local v5    # "$i$f$trace":I
    .local v25, "$i$f$trace":I
    :try_start_18
    new-instance v5, Lkotlin/Pair;

    const-class v26, Lexpo/modules/splashscreen/SplashScreenOptions;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    move-object/from16 v27, v6

    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .local v27, "tag$iv$iv$iv":Ljava/lang/String;
    :try_start_19
    invoke-static/range {v26 .. v26}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    move/from16 v26, v7

    const/16 v16, 0x0

    .end local v7    # "$i$f$trace":I
    .local v26, "$i$f$trace":I
    :try_start_1a
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 145
    .local v5, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual/range {v23 .. v23}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/AnyType;

    .line 143
    .end local v5    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v23    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v24    # "$i$f$cachedAnyType":I
    if-nez v6, :cond_a

    sget-object v5, Lexpo/modules/splashscreen/SplashScreenModule$definition$lambda$7$$inlined$Function$1;->INSTANCE:Lexpo/modules/splashscreen/SplashScreenModule$definition$lambda$7$$inlined$Function$1;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    .local v5, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v6, 0x0

    .line 146
    .local v6, "$i$f$toAnyType":I
    new-instance v7, Lexpo/modules/kotlin/types/AnyType;

    .line 147
    move/from16 v23, v6

    .end local v6    # "$i$f$toAnyType":I
    .local v23, "$i$f$toAnyType":I
    new-instance v6, Lexpo/modules/kotlin/types/LazyKType;

    const-class v24, Lexpo/modules/splashscreen/SplashScreenOptions;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    move-object/from16 v28, v8

    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v28, "label$iv$iv$iv$iv":Ljava/lang/String;
    :try_start_1b
    invoke-static/range {v24 .. v24}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    .line 149
    nop

    .line 150
    nop

    .line 147
    move/from16 v24, v9

    const/4 v9, 0x0

    .end local v9    # "$i$f$trace":I
    .local v24, "$i$f$trace":I
    :try_start_1c
    invoke-direct {v6, v8, v9, v5}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v6, Lkotlin/reflect/KType;

    .line 152
    nop

    .line 146
    invoke-direct {v7, v6, v13}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 153
    move-object v6, v7

    goto :goto_2

    .line 183
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v5    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v11    # "$this$definition_u24lambda_u247":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v12    # "$i$a$-ModuleDefinition-SplashScreenModule$definition$1":I
    .end local v13    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v14    # "p0$iv$iv":Ljava/lang/Class;
    .end local v15    # "$i$f$toArgsArray":I
    .end local v17    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .end local v19    # "$i$f$Function":I
    .end local v22    # "$i$f$toAnyType":I
    .end local v23    # "$i$f$toAnyType":I
    .end local v24    # "$i$f$trace":I
    .restart local v9    # "$i$f$trace":I
    :catchall_1
    move-exception v0

    move/from16 v24, v9

    .end local v9    # "$i$f$trace":I
    .restart local v24    # "$i$f$trace":I
    goto/16 :goto_4

    .line 143
    .end local v24    # "$i$f$trace":I
    .end local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v2    # "name$iv":Ljava/lang/String;
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    .restart local v11    # "$this$definition_u24lambda_u247":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .restart local v12    # "$i$a$-ModuleDefinition-SplashScreenModule$definition$1":I
    .restart local v13    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .restart local v14    # "p0$iv$iv":Ljava/lang/Class;
    .restart local v15    # "$i$f$toArgsArray":I
    .restart local v17    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .restart local v19    # "$i$f$Function":I
    .restart local v22    # "$i$f$toAnyType":I
    :cond_a
    move-object/from16 v28, v8

    move/from16 v24, v9

    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v24    # "$i$f$trace":I
    .restart local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :goto_2
    const/4 v5, 0x0

    .end local v22    # "$i$f$toAnyType":I
    aput-object v6, v3, v5

    .line 142
    nop

    .line 141
    nop

    .line 136
    .end local v13    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v14    # "p0$iv$iv":Ljava/lang/Class;
    .end local v15    # "$i$f$toArgsArray":I
    const/4 v5, 0x0

    .line 154
    .local v5, "$i$f$toReturnType":I
    sget-object v6, Lexpo/modules/kotlin/types/ReturnTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/ReturnTypeProvider;

    .local v6, "this_$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnTypeProvider;
    const/4 v7, 0x0

    .line 155
    .local v7, "$i$f$get":I
    invoke-virtual {v6}, Lexpo/modules/kotlin/types/ReturnTypeProvider;->getTypes()Ljava/util/Map;

    move-result-object v8

    const-class v9, Lkotlinx/coroutines/Job;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/ReturnType;

    if-nez v8, :cond_b

    new-instance v8, Lexpo/modules/kotlin/types/ReturnType;

    const-class v9, Lkotlinx/coroutines/Job;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-direct {v8, v9}, Lexpo/modules/kotlin/types/ReturnType;-><init>(Lkotlin/reflect/KClass;)V

    move-object v9, v8

    .local v9, "it$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnType;
    const/4 v13, 0x0

    .line 156
    .local v13, "$i$a$-also-ReturnTypeProvider$get$1$iv$iv$iv":I
    sget-object v14, Lexpo/modules/kotlin/types/ReturnTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/ReturnTypeProvider;

    invoke-virtual {v14}, Lexpo/modules/kotlin/types/ReturnTypeProvider;->getTypes()Ljava/util/Map;

    move-result-object v14

    const-class v15, Lkotlinx/coroutines/Job;

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    invoke-interface {v14, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    nop

    .line 155
    .end local v9    # "it$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnType;
    .end local v13    # "$i$a$-also-ReturnTypeProvider$get$1$iv$iv$iv":I
    :cond_b
    nop

    .line 154
    .end local v6    # "this_$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnTypeProvider;
    .end local v7    # "$i$f$get":I
    nop

    .line 158
    .end local v5    # "$i$f$toReturnType":I
    new-instance v5, Lexpo/modules/splashscreen/SplashScreenModule$definition$lambda$7$$inlined$Function$2;

    invoke-direct {v5, v1}, Lexpo/modules/splashscreen/SplashScreenModule$definition$lambda$7$$inlined$Function$2;-><init>(Lexpo/modules/splashscreen/SplashScreenModule;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 136
    invoke-direct {v4, v2, v3, v8, v5}, Lexpo/modules/kotlin/functions/SyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lexpo/modules/kotlin/types/ReturnType;Lkotlin/jvm/functions/Function1;)V

    .line 158
    move-object v3, v4

    .local v3, "it$iv":Lexpo/modules/kotlin/functions/SyncFunctionComponent;
    const/4 v4, 0x0

    .line 159
    .local v4, "$i$a$-also-ObjectDefinitionBuilder$Function$7$iv":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getSyncFunctions()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    nop

    .line 158
    .end local v3    # "it$iv":Lexpo/modules/kotlin/functions/SyncFunctionComponent;
    .end local v4    # "$i$a$-also-ObjectDefinitionBuilder$Function$7$iv":I
    nop

    .line 136
    nop

    .line 43
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v19    # "$i$f$Function":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "hide"

    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v2    # "name$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 161
    .local v3, "$i$f$FunctionWithoutArgs":I
    new-instance v4, Lexpo/modules/kotlin/functions/SyncFunctionComponent;

    const/4 v5, 0x0

    .line 162
    .local v5, "$i$f$emptyArray":I
    const/4 v6, 0x0

    new-array v7, v6, [Lexpo/modules/kotlin/types/AnyType;

    .line 161
    .end local v5    # "$i$f$emptyArray":I
    const/4 v5, 0x0

    .line 163
    .local v5, "$i$f$toReturnType":I
    sget-object v6, Lexpo/modules/kotlin/types/ReturnTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/ReturnTypeProvider;

    .restart local v6    # "this_$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnTypeProvider;
    const/4 v8, 0x0

    .line 164
    .local v8, "$i$f$get":I
    invoke-virtual {v6}, Lexpo/modules/kotlin/types/ReturnTypeProvider;->getTypes()Ljava/util/Map;

    move-result-object v9

    const-class v13, Ljava/lang/Object;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lexpo/modules/kotlin/types/ReturnType;

    if-nez v9, :cond_c

    new-instance v9, Lexpo/modules/kotlin/types/ReturnType;

    const-class v13, Ljava/lang/Object;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    invoke-direct {v9, v13}, Lexpo/modules/kotlin/types/ReturnType;-><init>(Lkotlin/reflect/KClass;)V

    move-object v13, v9

    .local v13, "it$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnType;
    const/4 v14, 0x0

    .line 165
    .local v14, "$i$a$-also-ReturnTypeProvider$get$1$iv$iv$iv":I
    sget-object v15, Lexpo/modules/kotlin/types/ReturnTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/ReturnTypeProvider;

    invoke-virtual {v15}, Lexpo/modules/kotlin/types/ReturnTypeProvider;->getTypes()Ljava/util/Map;

    move-result-object v15

    const-class v19, Ljava/lang/Object;

    move/from16 v22, v3

    .end local v3    # "$i$f$FunctionWithoutArgs":I
    .local v22, "$i$f$FunctionWithoutArgs":I
    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-interface {v15, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    nop

    .end local v13    # "it$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnType;
    .end local v14    # "$i$a$-also-ReturnTypeProvider$get$1$iv$iv$iv":I
    goto :goto_3

    .line 164
    .end local v22    # "$i$f$FunctionWithoutArgs":I
    .restart local v3    # "$i$f$FunctionWithoutArgs":I
    :cond_c
    move/from16 v22, v3

    .end local v3    # "$i$f$FunctionWithoutArgs":I
    .restart local v22    # "$i$f$FunctionWithoutArgs":I
    :goto_3
    nop

    .line 163
    .end local v6    # "this_$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnTypeProvider;
    .end local v8    # "$i$f$get":I
    nop

    .line 161
    .end local v5    # "$i$f$toReturnType":I
    new-instance v3, Lexpo/modules/splashscreen/SplashScreenModule$definition$lambda$7$$inlined$FunctionWithoutArgs$1;

    invoke-direct {v3}, Lexpo/modules/splashscreen/SplashScreenModule$definition$lambda$7$$inlined$FunctionWithoutArgs$1;-><init>()V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-direct {v4, v2, v7, v9, v3}, Lexpo/modules/kotlin/functions/SyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lexpo/modules/kotlin/types/ReturnType;Lkotlin/jvm/functions/Function1;)V

    move-object v3, v4

    .local v3, "it$iv":Lexpo/modules/kotlin/functions/SyncFunctionComponent;
    const/4 v4, 0x0

    .line 167
    .local v4, "$i$a$-also-ObjectDefinitionBuilder$Function$3$iv":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getSyncFunctions()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    nop

    .line 161
    .end local v3    # "it$iv":Lexpo/modules/kotlin/functions/SyncFunctionComponent;
    .end local v4    # "$i$a$-also-ObjectDefinitionBuilder$Function$3$iv":I
    nop

    .line 48
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v22    # "$i$f$FunctionWithoutArgs":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "hideAsync"

    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v2    # "name$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 169
    .local v3, "$i$f$AsyncFunctionWithoutArgs":I
    const/4 v4, 0x0

    .line 170
    .local v4, "$i$f$emptyArray":I
    const/4 v5, 0x0

    new-array v6, v5, [Lexpo/modules/kotlin/types/AnyType;

    .line 169
    .end local v4    # "$i$f$emptyArray":I
    new-instance v4, Lexpo/modules/splashscreen/SplashScreenModule$definition$lambda$7$$inlined$AsyncFunctionWithoutArgs$1;

    invoke-direct {v4}, Lexpo/modules/splashscreen/SplashScreenModule$definition$lambda$7$$inlined$AsyncFunctionWithoutArgs$1;-><init>()V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .local v4, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    move-object v5, v6

    .local v5, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/4 v6, 0x0

    .line 171
    .local v6, "$i$f$createAsyncFunctionComponent":I
    nop

    .line 172
    new-instance v7, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v7, v2, v5, v4}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 169
    .end local v4    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v5    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v6    # "$i$f$createAsyncFunctionComponent":I
    move-object v4, v7

    .local v4, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v5, 0x0

    .line 173
    .local v5, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$2$iv":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    nop

    .line 169
    .end local v4    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v5    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$2$iv":I
    nop

    .line 52
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v3    # "$i$f$AsyncFunctionWithoutArgs":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "internalMaybeHideAsync"

    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v2    # "name$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 175
    .restart local v3    # "$i$f$AsyncFunctionWithoutArgs":I
    const/4 v4, 0x0

    .line 176
    .local v4, "$i$f$emptyArray":I
    const/4 v5, 0x0

    new-array v5, v5, [Lexpo/modules/kotlin/types/AnyType;

    .line 175
    .end local v4    # "$i$f$emptyArray":I
    new-instance v4, Lexpo/modules/splashscreen/SplashScreenModule$definition$lambda$7$$inlined$AsyncFunctionWithoutArgs$2;

    invoke-direct {v4, v1}, Lexpo/modules/splashscreen/SplashScreenModule$definition$lambda$7$$inlined$AsyncFunctionWithoutArgs$2;-><init>(Lexpo/modules/splashscreen/SplashScreenModule;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .local v4, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .local v5, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/4 v6, 0x0

    .line 177
    .restart local v6    # "$i$f$createAsyncFunctionComponent":I
    nop

    .line 178
    new-instance v7, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v7, v2, v5, v4}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 175
    .end local v4    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v5    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v6    # "$i$f$createAsyncFunctionComponent":I
    move-object v4, v7

    .local v4, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v5, 0x0

    .line 179
    .local v5, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$2$iv":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    nop

    .line 175
    .end local v4    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v5    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$2$iv":I
    nop

    .line 58
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v3    # "$i$f$AsyncFunctionWithoutArgs":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;

    .local v0, "this_$iv":Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;
    const/4 v2, 0x0

    .line 181
    .local v2, "$i$f$OnDestroy":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;->getEventListeners()Ljava/util/Map;

    move-result-object v3

    sget-object v4, Lexpo/modules/kotlin/events/EventName;->MODULE_DESTROY:Lexpo/modules/kotlin/events/EventName;

    new-instance v5, Lexpo/modules/kotlin/events/BasicEventListener;

    sget-object v6, Lexpo/modules/kotlin/events/EventName;->MODULE_DESTROY:Lexpo/modules/kotlin/events/EventName;

    new-instance v7, Lexpo/modules/splashscreen/SplashScreenModule$definition$lambda$7$$inlined$OnDestroy$1;

    invoke-direct {v7}, Lexpo/modules/splashscreen/SplashScreenModule$definition$lambda$7$$inlined$OnDestroy$1;-><init>()V

    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-direct {v5, v6, v7}, Lexpo/modules/kotlin/events/BasicEventListener;-><init>(Lexpo/modules/kotlin/events/EventName;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    nop

    .line 61
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;
    .end local v2    # "$i$f$OnDestroy":I
    nop

    .line 64
    .end local v11    # "$this$definition_u24lambda_u247":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v12    # "$i$a$-ModuleDefinition-SplashScreenModule$definition$1":I
    invoke-virtual {v10}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->buildModule()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    .line 69
    .end local v17    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    nop

    .line 183
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 69
    nop

    .line 66
    .end local v24    # "$i$f$trace":I
    .end local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    nop

    .line 65
    .end local v26    # "$i$f$trace":I
    .end local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    nop

    .line 64
    .end local v21    # "blockName$iv$iv":Ljava/lang/String;
    .end local v25    # "$i$f$trace":I
    nop

    .line 61
    .end local v18    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v20    # "$i$f$ModuleDefinition":I
    return-object v0

    .line 183
    .restart local v18    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v20    # "$i$f$ModuleDefinition":I
    .restart local v21    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v24    # "$i$f$trace":I
    .restart local v25    # "$i$f$trace":I
    .restart local v26    # "$i$f$trace":I
    .restart local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :catchall_2
    move-exception v0

    goto/16 :goto_4

    .end local v24    # "$i$f$trace":I
    .end local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v8, "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v9, "$i$f$trace":I
    :catchall_3
    move-exception v0

    move-object/from16 v28, v8

    move/from16 v24, v9

    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v24    # "$i$f$trace":I
    .restart local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    goto :goto_4

    .end local v24    # "$i$f$trace":I
    .end local v26    # "$i$f$trace":I
    .end local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v7, "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_4
    move-exception v0

    move/from16 v26, v7

    move-object/from16 v28, v8

    move/from16 v24, v9

    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v24    # "$i$f$trace":I
    .restart local v26    # "$i$f$trace":I
    .restart local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    goto :goto_4

    .end local v24    # "$i$f$trace":I
    .end local v26    # "$i$f$trace":I
    .end local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v6, "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_5
    move-exception v0

    move-object/from16 v27, v6

    move/from16 v26, v7

    move-object/from16 v28, v8

    move/from16 v24, v9

    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v24    # "$i$f$trace":I
    .restart local v26    # "$i$f$trace":I
    .restart local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    goto :goto_4

    .end local v24    # "$i$f$trace":I
    .end local v25    # "$i$f$trace":I
    .end local v26    # "$i$f$trace":I
    .end local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v5, "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_6
    move-exception v0

    move/from16 v25, v5

    move-object/from16 v27, v6

    move/from16 v26, v7

    move-object/from16 v28, v8

    move/from16 v24, v9

    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v24    # "$i$f$trace":I
    .restart local v25    # "$i$f$trace":I
    .restart local v26    # "$i$f$trace":I
    .restart local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    goto :goto_4

    .end local v21    # "blockName$iv$iv":Ljava/lang/String;
    .end local v24    # "$i$f$trace":I
    .end local v25    # "$i$f$trace":I
    .end local v26    # "$i$f$trace":I
    .end local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v4, "blockName$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_7
    move-exception v0

    move-object/from16 v21, v4

    move/from16 v25, v5

    move-object/from16 v27, v6

    move/from16 v26, v7

    move-object/from16 v28, v8

    move/from16 v24, v9

    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v21    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v24    # "$i$f$trace":I
    .restart local v25    # "$i$f$trace":I
    .restart local v26    # "$i$f$trace":I
    .restart local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    goto :goto_4

    .end local v20    # "$i$f$ModuleDefinition":I
    .end local v21    # "blockName$iv$iv":Ljava/lang/String;
    .end local v24    # "$i$f$trace":I
    .end local v25    # "$i$f$trace":I
    .end local v26    # "$i$f$trace":I
    .end local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v3, "$i$f$ModuleDefinition":I
    .restart local v4    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_8
    move-exception v0

    move/from16 v20, v3

    move-object/from16 v21, v4

    move/from16 v25, v5

    move-object/from16 v27, v6

    move/from16 v26, v7

    move-object/from16 v28, v8

    move/from16 v24, v9

    .end local v3    # "$i$f$ModuleDefinition":I
    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v20    # "$i$f$ModuleDefinition":I
    .restart local v21    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v24    # "$i$f$trace":I
    .restart local v25    # "$i$f$trace":I
    .restart local v26    # "$i$f$trace":I
    .restart local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    goto :goto_4

    .end local v18    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v20    # "$i$f$ModuleDefinition":I
    .end local v21    # "blockName$iv$iv":Ljava/lang/String;
    .end local v24    # "$i$f$trace":I
    .end local v25    # "$i$f$trace":I
    .end local v26    # "$i$f$trace":I
    .end local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v2, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v3    # "$i$f$ModuleDefinition":I
    .restart local v4    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_9
    move-exception v0

    move-object/from16 v18, v2

    move/from16 v20, v3

    move-object/from16 v21, v4

    move/from16 v25, v5

    move-object/from16 v27, v6

    move/from16 v26, v7

    move-object/from16 v28, v8

    move/from16 v24, v9

    .end local v2    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v3    # "$i$f$ModuleDefinition":I
    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v18    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v20    # "$i$f$ModuleDefinition":I
    .restart local v21    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v24    # "$i$f$trace":I
    .restart local v25    # "$i$f$trace":I
    .restart local v26    # "$i$f$trace":I
    .restart local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :goto_4
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method
