.class public final Lexpo/modules/linking/ExpoLinkingModule;
.super Lexpo/modules/kotlin/modules/Module;
.source "ExpoLinkingModule.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/linking/ExpoLinkingModule$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExpoLinkingModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExpoLinkingModule.kt\nexpo/modules/linking/ExpoLinkingModule\n+ 2 Module.kt\nexpo/modules/kotlin/modules/ModuleKt\n+ 3 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 4 Trace.kt\nandroidx/tracing/TraceKt\n+ 5 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder\n+ 6 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n+ 7 ReturnType.kt\nexpo/modules/kotlin/types/ReturnTypeKt\n+ 8 ReturnType.kt\nexpo/modules/kotlin/types/ReturnTypeProvider\n*L\n1#1,40:1\n61#2:41\n14#3:42\n25#3:43\n27#4,3:44\n31#4:55\n109#5:47\n110#5,2:53\n26#6:48\n20#7:49\n13#8,3:50\n*S KotlinDebug\n*F\n+ 1 ExpoLinkingModule.kt\nexpo/modules/linking/ExpoLinkingModule\n*L\n17#1:41\n17#1:42\n17#1:43\n17#1:44,3\n17#1:55\n22#1:47\n22#1:53,2\n22#1:48\n22#1:49\n22#1:50,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016R\u001e\u0010\u0003\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lexpo/modules/linking/ExpoLinkingModule;",
        "Lexpo/modules/kotlin/modules/Module;",
        "()V",
        "onURLReceivedObserver",
        "Lkotlin/Function1;",
        "Landroid/net/Uri;",
        "",
        "definition",
        "Lexpo/modules/kotlin/modules/ModuleDefinitionData;",
        "Companion",
        "expo-linking_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lexpo/modules/linking/ExpoLinkingModule$Companion;

.field private static initialURL:Landroid/net/Uri;

.field private static onURLReceivedObservers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/net/Uri;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private onURLReceivedObserver:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/net/Uri;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/linking/ExpoLinkingModule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/linking/ExpoLinkingModule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/linking/ExpoLinkingModule;->Companion:Lexpo/modules/linking/ExpoLinkingModule$Companion;

    .line 12
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    sput-object v0, Lexpo/modules/linking/ExpoLinkingModule;->onURLReceivedObservers:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lexpo/modules/kotlin/modules/Module;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInitialURL$cp()Landroid/net/Uri;
    .locals 1

    .line 9
    sget-object v0, Lexpo/modules/linking/ExpoLinkingModule;->initialURL:Landroid/net/Uri;

    return-object v0
.end method

.method public static final synthetic access$getOnURLReceivedObserver$p(Lexpo/modules/linking/ExpoLinkingModule;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/linking/ExpoLinkingModule;

    .line 9
    iget-object v0, p0, Lexpo/modules/linking/ExpoLinkingModule;->onURLReceivedObserver:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final synthetic access$getOnURLReceivedObservers$cp()Ljava/util/Set;
    .locals 1

    .line 9
    sget-object v0, Lexpo/modules/linking/ExpoLinkingModule;->onURLReceivedObservers:Ljava/util/Set;

    return-object v0
.end method

.method public static final synthetic access$setInitialURL$cp(Landroid/net/Uri;)V
    .locals 0
    .param p0, "<set-?>"    # Landroid/net/Uri;

    .line 9
    sput-object p0, Lexpo/modules/linking/ExpoLinkingModule;->initialURL:Landroid/net/Uri;

    return-void
.end method

.method public static final synthetic access$setOnURLReceivedObserver$p(Lexpo/modules/linking/ExpoLinkingModule;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p0, "$this"    # Lexpo/modules/linking/ExpoLinkingModule;
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function1;

    .line 9
    iput-object p1, p0, Lexpo/modules/linking/ExpoLinkingModule;->onURLReceivedObserver:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final synthetic access$setOnURLReceivedObservers$cp(Ljava/util/Set;)V
    .locals 0
    .param p0, "<set-?>"    # Ljava/util/Set;

    .line 9
    sput-object p0, Lexpo/modules/linking/ExpoLinkingModule;->onURLReceivedObservers:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
    .locals 28

    .line 17
    move-object/from16 v1, p0

    const-string v0, "onURLReceived"

    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/modules/Module;

    .local v2, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    const/4 v3, 0x0

    .line 41
    .local v3, "$i$f$ModuleDefinition":I
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".ModuleDefinition"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "blockName$iv$iv":Ljava/lang/String;
    const/4 v5, 0x0

    .line 42
    .local v5, "$i$f$trace":I
    const-string v6, "ExpoModulesCore"

    .local v6, "tag$iv$iv$iv":Ljava/lang/String;
    const/4 v7, 0x0

    .line 43
    .local v7, "$i$f$trace":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .local v8, "label$iv$iv$iv$iv":Ljava/lang/String;
    const/4 v9, 0x0

    .line 44
    .local v9, "$i$f$trace":I
    invoke-static {v8}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 45
    nop

    .line 46
    const/4 v10, 0x0

    .line 41
    .local v10, "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    :try_start_0
    new-instance v11, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    invoke-direct {v11, v2}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    move-object v12, v11

    .local v12, "$this$definition_u24lambda_u241":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    const/4 v13, 0x0

    .line 18
    .local v13, "$i$a$-ModuleDefinition-ExpoLinkingModule$definition$1":I
    const-string v14, "ExpoLinking"

    invoke-virtual {v12, v14}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Name(Ljava/lang/String;)V

    .line 20
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v0, v14, v15

    invoke-virtual {v12, v14}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Events([Ljava/lang/String;)V

    .line 22
    move-object v14, v12

    check-cast v14, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v16, "getLinkingURL"

    move-object/from16 v17, v16

    .local v14, "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .local v17, "name$iv":Ljava/lang/String;
    const/16 v16, 0x0

    .line 47
    .local v16, "$i$f$FunctionWithoutArgs":I
    new-instance v15, Lexpo/modules/kotlin/functions/SyncFunctionComponent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/16 v19, 0x0

    .line 48
    .local v19, "$i$f$emptyArray":I
    move-object/from16 v20, v2

    const/4 v2, 0x0

    .end local v2    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .local v20, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    :try_start_1
    new-array v2, v2, [Lexpo/modules/kotlin/types/AnyType;

    .line 47
    .end local v19    # "$i$f$emptyArray":I
    const/16 v18, 0x0

    .line 49
    .local v18, "$i$f$toReturnType":I
    sget-object v19, Lexpo/modules/kotlin/types/ReturnTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/ReturnTypeProvider;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .local v19, "this_$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnTypeProvider;
    const/16 v21, 0x0

    .line 50
    .local v21, "$i$f$get":I
    move/from16 v22, v3

    .end local v3    # "$i$f$ModuleDefinition":I
    .local v22, "$i$f$ModuleDefinition":I
    :try_start_2
    invoke-virtual/range {v19 .. v19}, Lexpo/modules/kotlin/types/ReturnTypeProvider;->getTypes()Ljava/util/Map;

    move-result-object v3

    const-class v23, Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v24, v4

    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .local v24, "blockName$iv$iv":Ljava/lang/String;
    :try_start_3
    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lexpo/modules/kotlin/types/ReturnType;

    if-nez v3, :cond_0

    new-instance v3, Lexpo/modules/kotlin/types/ReturnType;

    const-class v4, Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-direct {v3, v4}, Lexpo/modules/kotlin/types/ReturnType;-><init>(Lkotlin/reflect/KClass;)V

    move-object v4, v3

    .local v4, "it$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnType;
    const/16 v23, 0x0

    .line 51
    .local v23, "$i$a$-also-ReturnTypeProvider$get$1$iv$iv$iv":I
    sget-object v25, Lexpo/modules/kotlin/types/ReturnTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/ReturnTypeProvider;

    move-object/from16 v26, v3

    invoke-virtual/range {v25 .. v25}, Lexpo/modules/kotlin/types/ReturnTypeProvider;->getTypes()Ljava/util/Map;

    move-result-object v3

    const-class v25, Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move/from16 v27, v5

    .end local v5    # "$i$f$trace":I
    .local v27, "$i$f$trace":I
    :try_start_4
    invoke-static/range {v25 .. v25}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    nop

    .line 50
    .end local v4    # "it$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnType;
    .end local v23    # "$i$a$-also-ReturnTypeProvider$get$1$iv$iv$iv":I
    move-object/from16 v3, v26

    goto :goto_0

    .end local v27    # "$i$f$trace":I
    .restart local v5    # "$i$f$trace":I
    :cond_0
    move/from16 v27, v5

    .line 49
    .end local v5    # "$i$f$trace":I
    .end local v19    # "this_$iv$iv$iv":Lexpo/modules/kotlin/types/ReturnTypeProvider;
    .end local v21    # "$i$f$get":I
    .restart local v27    # "$i$f$trace":I
    :goto_0
    nop

    .line 47
    .end local v18    # "$i$f$toReturnType":I
    new-instance v4, Lexpo/modules/linking/ExpoLinkingModule$definition$lambda$1$$inlined$FunctionWithoutArgs$1;

    invoke-direct {v4}, Lexpo/modules/linking/ExpoLinkingModule$definition$lambda$1$$inlined$FunctionWithoutArgs$1;-><init>()V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    move-object/from16 v5, v17

    .end local v17    # "name$iv":Ljava/lang/String;
    .local v5, "name$iv":Ljava/lang/String;
    invoke-direct {v15, v5, v2, v3, v4}, Lexpo/modules/kotlin/functions/SyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lexpo/modules/kotlin/types/ReturnType;Lkotlin/jvm/functions/Function1;)V

    move-object v2, v15

    .local v2, "it$iv":Lexpo/modules/kotlin/functions/SyncFunctionComponent;
    const/4 v3, 0x0

    .line 53
    .local v3, "$i$a$-also-ObjectDefinitionBuilder$Function$3$iv":I
    invoke-virtual {v14}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getSyncFunctions()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    nop

    .line 47
    .end local v2    # "it$iv":Lexpo/modules/kotlin/functions/SyncFunctionComponent;
    .end local v3    # "$i$a$-also-ObjectDefinitionBuilder$Function$3$iv":I
    nop

    .line 26
    .end local v5    # "name$iv":Ljava/lang/String;
    .end local v14    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v16    # "$i$f$FunctionWithoutArgs":I
    new-instance v2, Lexpo/modules/linking/ExpoLinkingModule$definition$1$2;

    invoke-direct {v2, v1}, Lexpo/modules/linking/ExpoLinkingModule$definition$1$2;-><init>(Lexpo/modules/linking/ExpoLinkingModule;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v12, v0, v2}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->OnStartObserving(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 35
    new-instance v2, Lexpo/modules/linking/ExpoLinkingModule$definition$1$3;

    invoke-direct {v2, v1}, Lexpo/modules/linking/ExpoLinkingModule$definition$1$3;-><init>(Lexpo/modules/linking/ExpoLinkingModule;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v12, v0, v2}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->OnStopObserving(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 38
    nop

    .line 41
    .end local v12    # "$this$definition_u24lambda_u241":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v13    # "$i$a$-ModuleDefinition-ExpoLinkingModule$definition$1":I
    invoke-virtual {v11}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->buildModule()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 46
    .end local v10    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    nop

    .line 55
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 46
    nop

    .line 43
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    nop

    .line 42
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    nop

    .line 41
    .end local v24    # "blockName$iv$iv":Ljava/lang/String;
    .end local v27    # "$i$f$trace":I
    nop

    .line 38
    .end local v20    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v22    # "$i$f$ModuleDefinition":I
    return-object v0

    .line 55
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    .restart local v20    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v22    # "$i$f$ModuleDefinition":I
    .restart local v24    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v27    # "$i$f$trace":I
    :catchall_0
    move-exception v0

    goto :goto_1

    .end local v27    # "$i$f$trace":I
    .local v5, "$i$f$trace":I
    :catchall_1
    move-exception v0

    move/from16 v27, v5

    .end local v5    # "$i$f$trace":I
    .restart local v27    # "$i$f$trace":I
    goto :goto_1

    .end local v24    # "blockName$iv$iv":Ljava/lang/String;
    .end local v27    # "$i$f$trace":I
    .local v4, "blockName$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    :catchall_2
    move-exception v0

    move-object/from16 v24, v4

    move/from16 v27, v5

    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .restart local v24    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v27    # "$i$f$trace":I
    goto :goto_1

    .end local v22    # "$i$f$ModuleDefinition":I
    .end local v24    # "blockName$iv$iv":Ljava/lang/String;
    .end local v27    # "$i$f$trace":I
    .local v3, "$i$f$ModuleDefinition":I
    .restart local v4    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    :catchall_3
    move-exception v0

    move/from16 v22, v3

    move-object/from16 v24, v4

    move/from16 v27, v5

    .end local v3    # "$i$f$ModuleDefinition":I
    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .restart local v22    # "$i$f$ModuleDefinition":I
    .restart local v24    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v27    # "$i$f$trace":I
    goto :goto_1

    .end local v20    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v22    # "$i$f$ModuleDefinition":I
    .end local v24    # "blockName$iv$iv":Ljava/lang/String;
    .end local v27    # "$i$f$trace":I
    .local v2, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v3    # "$i$f$ModuleDefinition":I
    .restart local v4    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    :catchall_4
    move-exception v0

    move-object/from16 v20, v2

    move/from16 v22, v3

    move-object/from16 v24, v4

    move/from16 v27, v5

    .end local v2    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v3    # "$i$f$ModuleDefinition":I
    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .restart local v20    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v22    # "$i$f$ModuleDefinition":I
    .restart local v24    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v27    # "$i$f$trace":I
    :goto_1
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method
