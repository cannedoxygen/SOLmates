.class public Lexpo/modules/notifications/serverregistration/ServerRegistrationModule;
.super Lexpo/modules/kotlin/modules/Module;
.source "ServerRegistrationModule.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nServerRegistrationModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ServerRegistrationModule.kt\nexpo/modules/notifications/serverregistration/ServerRegistrationModule\n+ 2 Module.kt\nexpo/modules/kotlin/modules/ModuleKt\n+ 3 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 4 Trace.kt\nandroidx/tracing/TraceKt\n+ 5 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder\n+ 6 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n+ 7 UntypedAsyncFunctionComponent.kt\nexpo/modules/kotlin/functions/UntypedAsyncFunctionComponentKt\n+ 8 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 9 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n+ 10 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeProvider\n*L\n1#1,33:1\n61#2:34\n14#3:35\n25#3:36\n27#4,3:37\n31#4:162\n233#5:40\n234#5,2:71\n233#5:73\n234#5,2:104\n243#5,8:106\n251#5,2:160\n26#6:41\n26#6:74\n13#7,6:42\n19#7,19:52\n13#7,6:75\n19#7,19:85\n13#7,6:131\n19#7,19:141\n8#8,4:48\n8#8,4:81\n8#8,4:137\n172#9,6:114\n168#9:120\n158#9,8:123\n143#10,2:121\n*S KotlinDebug\n*F\n+ 1 ServerRegistrationModule.kt\nexpo/modules/notifications/serverregistration/ServerRegistrationModule\n*L\n15#1:34\n15#1:35\n15#1:36\n15#1:37,3\n15#1:162\n18#1:40\n18#1:71,2\n20#1:73\n20#1:104,2\n24#1:106,8\n24#1:160,2\n18#1:41\n20#1:74\n18#1:42,6\n18#1:52,19\n20#1:75,6\n20#1:85,19\n24#1:131,6\n24#1:141,19\n18#1:48,4\n20#1:81,4\n24#1:137,4\n24#1:114,6\n24#1:120\n24#1:123,8\n24#1:121,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0008\u0010\t\u001a\u00020\u0014H\u0016R\u0011\u0010\u0003\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u001b\u0010\u0007\u001a\u00020\u00088DX\u0084\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR\u001b\u0010\r\u001a\u00020\u000e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u000c\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0015"
    }
    d2 = {
        "Lexpo/modules/notifications/serverregistration/ServerRegistrationModule;",
        "Lexpo/modules/kotlin/modules/Module;",
        "()V",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "installationId",
        "Lexpo/modules/notifications/serverregistration/InstallationId;",
        "getInstallationId",
        "()Lexpo/modules/notifications/serverregistration/InstallationId;",
        "installationId$delegate",
        "Lkotlin/Lazy;",
        "mRegistrationInfo",
        "Lexpo/modules/notifications/serverregistration/RegistrationInfo;",
        "getMRegistrationInfo",
        "()Lexpo/modules/notifications/serverregistration/RegistrationInfo;",
        "mRegistrationInfo$delegate",
        "definition",
        "Lexpo/modules/kotlin/modules/ModuleDefinitionData;",
        "",
        "expo-notifications_debug"
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
.field private final installationId$delegate:Lkotlin/Lazy;

.field private final mRegistrationInfo$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Lexpo/modules/kotlin/modules/Module;-><init>()V

    .line 12
    new-instance v0, Lexpo/modules/notifications/serverregistration/ServerRegistrationModule$installationId$2;

    invoke-direct {v0, p0}, Lexpo/modules/notifications/serverregistration/ServerRegistrationModule$installationId$2;-><init>(Lexpo/modules/notifications/serverregistration/ServerRegistrationModule;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/notifications/serverregistration/ServerRegistrationModule;->installationId$delegate:Lkotlin/Lazy;

    .line 13
    new-instance v0, Lexpo/modules/notifications/serverregistration/ServerRegistrationModule$mRegistrationInfo$2;

    invoke-direct {v0, p0}, Lexpo/modules/notifications/serverregistration/ServerRegistrationModule$mRegistrationInfo$2;-><init>(Lexpo/modules/notifications/serverregistration/ServerRegistrationModule;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/notifications/serverregistration/ServerRegistrationModule;->mRegistrationInfo$delegate:Lkotlin/Lazy;

    .line 8
    return-void
.end method

.method public static final synthetic access$getMRegistrationInfo(Lexpo/modules/notifications/serverregistration/ServerRegistrationModule;)Lexpo/modules/notifications/serverregistration/RegistrationInfo;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/notifications/serverregistration/ServerRegistrationModule;

    .line 8
    invoke-direct {p0}, Lexpo/modules/notifications/serverregistration/ServerRegistrationModule;->getMRegistrationInfo()Lexpo/modules/notifications/serverregistration/RegistrationInfo;

    move-result-object v0

    return-object v0
.end method

.method private final getMRegistrationInfo()Lexpo/modules/notifications/serverregistration/RegistrationInfo;
    .locals 1

    .line 13
    iget-object v0, p0, Lexpo/modules/notifications/serverregistration/ServerRegistrationModule;->mRegistrationInfo$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/notifications/serverregistration/RegistrationInfo;

    return-object v0
.end method


# virtual methods
.method public definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
    .locals 29

    .line 15
    move-object/from16 v1, p0

    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/modules/Module;

    .local v2, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    const/4 v3, 0x0

    .line 34
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

    .line 35
    .local v5, "$i$f$trace":I
    const-string v6, "ExpoModulesCore"

    .local v6, "tag$iv$iv$iv":Ljava/lang/String;
    const/4 v7, 0x0

    .line 36
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

    .line 37
    .local v9, "$i$f$trace":I
    invoke-static {v8}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 38
    nop

    .line 39
    const/4 v0, 0x0

    .line 34
    .local v0, "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    :try_start_0
    new-instance v10, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    invoke-direct {v10, v2}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    move-object v11, v10

    .local v11, "$this$definition_u24lambda_u242":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    const/4 v12, 0x0

    .line 16
    .local v12, "$i$a$-ModuleDefinition-ServerRegistrationModule$definition$1":I
    const-string v13, "NotificationsServerRegistrationModule"

    invoke-virtual {v11, v13}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Name(Ljava/lang/String;)V

    .line 18
    move-object v13, v11

    check-cast v13, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v14, "getInstallationIdAsync"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .local v13, "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .local v14, "name$iv":Ljava/lang/String;
    const/4 v15, 0x0

    .line 40
    .local v15, "$i$f$AsyncFunction":I
    const/16 v16, 0x0

    .line 41
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

    .line 40
    .end local v16    # "$i$f$emptyArray":I
    new-instance v0, Lexpo/modules/notifications/serverregistration/ServerRegistrationModule$definition$lambda$2$$inlined$AsyncFunction$1;

    invoke-direct {v0, v1}, Lexpo/modules/notifications/serverregistration/ServerRegistrationModule$definition$lambda$2$$inlined$AsyncFunction$1;-><init>(Lexpo/modules/notifications/serverregistration/ServerRegistrationModule;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .local v0, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .local v2, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/16 v19, 0x0

    .line 42
    .local v19, "$i$f$createAsyncFunctionComponent":I
    move/from16 v20, v3

    .end local v3    # "$i$f$ModuleDefinition":I
    .local v20, "$i$f$ModuleDefinition":I
    :try_start_2
    const-class v3, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 45
    nop

    .line 46
    move-object/from16 v21, v4

    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .local v21, "blockName$iv$iv":Ljava/lang/String;
    :try_start_3
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-eqz v4, :cond_0

    .line 47
    const/4 v3, 0x0

    .line 48
    .local v3, "$i$f$enforceType":I
    nop

    .line 51
    nop

    .line 52
    .end local v3    # "$i$f$enforceType":I
    :try_start_4
    new-instance v3, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v3, v14, v2, v0}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 162
    .end local v0    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v2    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v11    # "$this$definition_u24lambda_u242":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v12    # "$i$a$-ModuleDefinition-ServerRegistrationModule$definition$1":I
    .end local v13    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v14    # "name$iv":Ljava/lang/String;
    .end local v15    # "$i$f$AsyncFunction":I
    .end local v17    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .end local v19    # "$i$f$createAsyncFunctionComponent":I
    :catchall_0
    move-exception v0

    move/from16 v27, v5

    move-object/from16 v26, v6

    move/from16 v28, v7

    move-object/from16 v24, v8

    goto/16 :goto_4

    .line 54
    .restart local v0    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .restart local v2    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .restart local v11    # "$this$definition_u24lambda_u242":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .restart local v12    # "$i$a$-ModuleDefinition-ServerRegistrationModule$definition$1":I
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
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-eqz v4, :cond_1

    .line 55
    const/4 v3, 0x0

    .line 48
    .restart local v3    # "$i$f$enforceType":I
    nop

    .line 51
    nop

    .line 56
    .end local v3    # "$i$f$enforceType":I
    :try_start_6
    new-instance v3, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v3, v14, v2, v0}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 58
    :cond_1
    :try_start_7
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    if-eqz v4, :cond_2

    .line 59
    const/4 v3, 0x0

    .line 48
    .restart local v3    # "$i$f$enforceType":I
    nop

    .line 51
    nop

    .line 60
    .end local v3    # "$i$f$enforceType":I
    :try_start_8
    new-instance v3, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v3, v14, v2, v0}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    .line 62
    :cond_2
    :try_start_9
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    if-eqz v4, :cond_3

    .line 63
    const/4 v3, 0x0

    .line 48
    .restart local v3    # "$i$f$enforceType":I
    nop

    .line 51
    nop

    .line 64
    .end local v3    # "$i$f$enforceType":I
    :try_start_a
    new-instance v3, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v3, v14, v2, v0}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_0

    .line 66
    :cond_3
    :try_start_b
    const-class v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    if-eqz v3, :cond_4

    .line 67
    const/4 v3, 0x0

    .line 48
    .restart local v3    # "$i$f$enforceType":I
    nop

    .line 51
    nop

    .line 68
    .end local v3    # "$i$f$enforceType":I
    :try_start_c
    new-instance v3, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v3, v14, v2, v0}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_0

    .line 70
    :cond_4
    :try_start_d
    new-instance v3, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v3, v14, v2, v0}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 45
    :goto_0
    nop

    .line 40
    .end local v0    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v2    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v19    # "$i$f$createAsyncFunctionComponent":I
    move-object v0, v3

    .local v0, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v2, 0x0

    .line 71
    .local v2, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$4$iv":I
    invoke-virtual {v13}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    nop

    .line 40
    .end local v0    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v2    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$4$iv":I
    nop

    .line 20
    .end local v13    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v14    # "name$iv":Ljava/lang/String;
    .end local v15    # "$i$f$AsyncFunction":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "getRegistrationInfoAsync"

    .local v0, "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .local v2, "name$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 73
    .local v3, "$i$f$AsyncFunction":I
    const/4 v4, 0x0

    .line 74
    .local v4, "$i$f$emptyArray":I
    const/4 v13, 0x0

    new-array v14, v13, [Lexpo/modules/kotlin/types/AnyType;

    .line 73
    .end local v4    # "$i$f$emptyArray":I
    new-instance v4, Lexpo/modules/notifications/serverregistration/ServerRegistrationModule$definition$lambda$2$$inlined$AsyncFunction$2;

    invoke-direct {v4, v1}, Lexpo/modules/notifications/serverregistration/ServerRegistrationModule$definition$lambda$2$$inlined$AsyncFunction$2;-><init>(Lexpo/modules/notifications/serverregistration/ServerRegistrationModule;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .local v4, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    move-object v13, v14

    .local v13, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/4 v14, 0x0

    .line 75
    .local v14, "$i$f$createAsyncFunctionComponent":I
    nop

    .line 76
    new-instance v15, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v15, v2, v13, v4}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v15, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 73
    .end local v4    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v13    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v14    # "$i$f$createAsyncFunctionComponent":I
    move-object v4, v15

    .local v4, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v13, 0x0

    .line 104
    .local v13, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$4$iv":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    nop

    .line 73
    .end local v4    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v13    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$4$iv":I
    nop

    .line 24
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v3    # "$i$f$AsyncFunction":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "setRegistrationInfoAsync"

    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v2    # "name$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 106
    .restart local v3    # "$i$f$AsyncFunction":I
    const-class v4, Ljava/lang/String;

    const-class v13, Lexpo/modules/kotlin/Promise;

    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    if-eqz v4, :cond_5

    .line 107
    :try_start_e
    new-instance v4, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    const/4 v13, 0x0

    new-array v13, v13, [Lexpo/modules/kotlin/types/AnyType;

    .line 113
    new-instance v14, Lexpo/modules/notifications/serverregistration/ServerRegistrationModule$definition$lambda$2$$inlined$AsyncFunction$3;

    invoke-direct {v14, v1}, Lexpo/modules/notifications/serverregistration/ServerRegistrationModule$definition$lambda$2$$inlined$AsyncFunction$3;-><init>(Lexpo/modules/notifications/serverregistration/ServerRegistrationModule;)V

    check-cast v14, Lkotlin/jvm/functions/Function2;

    .line 107
    invoke-direct {v4, v2, v13, v14}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move/from16 v19, v3

    move/from16 v27, v5

    move-object/from16 v26, v6

    move/from16 v28, v7

    move-object/from16 v24, v8

    goto/16 :goto_3

    .line 109
    :cond_5
    :try_start_f
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v4

    .line 114
    .local v4, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 115
    const-class v13, Ljava/lang/String;

    .line 114
    .local v13, "p0$iv$iv":Ljava/lang/Class;
    const/4 v14, 0x0

    .line 119
    .local v14, "$i$f$toArgsArray":I
    const/4 v15, 0x1

    move/from16 v19, v3

    .end local v3    # "$i$f$AsyncFunction":I
    .local v19, "$i$f$AsyncFunction":I
    new-array v3, v15, [Lexpo/modules/kotlin/types/AnyType;

    const/16 v22, 0x0

    .line 120
    .local v22, "$i$f$toAnyType":I
    sget-object v23, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v23, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/16 v24, 0x0

    .line 121
    .local v24, "$i$f$cachedAnyType":I
    new-instance v15, Lkotlin/Pair;

    const-class v26, Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    move/from16 v27, v5

    .end local v5    # "$i$f$trace":I
    .local v27, "$i$f$trace":I
    :try_start_10
    invoke-static/range {v26 .. v26}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    move-object/from16 v26, v6

    const/16 v25, 0x1

    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .local v26, "tag$iv$iv$iv":Ljava/lang/String;
    :try_start_11
    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v15, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v5, v15

    .line 122
    .local v5, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual/range {v23 .. v23}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/AnyType;

    .line 120
    .end local v5    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v23    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v24    # "$i$f$cachedAnyType":I
    if-nez v6, :cond_6

    sget-object v5, Lexpo/modules/notifications/serverregistration/ServerRegistrationModule$definition$lambda$2$$inlined$AsyncFunction$4;->INSTANCE:Lexpo/modules/notifications/serverregistration/ServerRegistrationModule$definition$lambda$2$$inlined$AsyncFunction$4;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    .local v5, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v6, 0x0

    .line 123
    .local v6, "$i$f$toAnyType":I
    new-instance v15, Lexpo/modules/kotlin/types/AnyType;

    .line 124
    move/from16 v23, v6

    .end local v6    # "$i$f$toAnyType":I
    .local v23, "$i$f$toAnyType":I
    new-instance v6, Lexpo/modules/kotlin/types/LazyKType;

    const-class v24, Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    move/from16 v28, v7

    .end local v7    # "$i$f$trace":I
    .local v28, "$i$f$trace":I
    :try_start_12
    invoke-static/range {v24 .. v24}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 126
    nop

    .line 127
    nop

    .line 124
    move-object/from16 v24, v8

    const/4 v8, 0x1

    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v24, "label$iv$iv$iv$iv":Ljava/lang/String;
    :try_start_13
    invoke-direct {v6, v7, v8, v5}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v6, Lkotlin/reflect/KType;

    .line 129
    nop

    .line 123
    invoke-direct {v15, v6, v4}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 130
    move-object v6, v15

    goto :goto_1

    .line 162
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v4    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v5    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v11    # "$this$definition_u24lambda_u242":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v12    # "$i$a$-ModuleDefinition-ServerRegistrationModule$definition$1":I
    .end local v13    # "p0$iv$iv":Ljava/lang/Class;
    .end local v14    # "$i$f$toArgsArray":I
    .end local v17    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .end local v19    # "$i$f$AsyncFunction":I
    .end local v22    # "$i$f$toAnyType":I
    .end local v23    # "$i$f$toAnyType":I
    .end local v24    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v24, v8

    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v24    # "label$iv$iv$iv$iv":Ljava/lang/String;
    goto/16 :goto_4

    .line 120
    .end local v24    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v28    # "$i$f$trace":I
    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v2    # "name$iv":Ljava/lang/String;
    .restart local v4    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v11    # "$this$definition_u24lambda_u242":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .restart local v12    # "$i$a$-ModuleDefinition-ServerRegistrationModule$definition$1":I
    .restart local v13    # "p0$iv$iv":Ljava/lang/Class;
    .restart local v14    # "$i$f$toArgsArray":I
    .restart local v17    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .restart local v19    # "$i$f$AsyncFunction":I
    .restart local v22    # "$i$f$toAnyType":I
    :cond_6
    move/from16 v28, v7

    move-object/from16 v24, v8

    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v24    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v28    # "$i$f$trace":I
    :goto_1
    const/4 v5, 0x0

    .end local v22    # "$i$f$toAnyType":I
    aput-object v6, v3, v5

    .line 119
    nop

    .line 118
    nop

    .line 109
    .end local v4    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v13    # "p0$iv$iv":Ljava/lang/Class;
    .end local v14    # "$i$f$toArgsArray":I
    new-instance v4, Lexpo/modules/notifications/serverregistration/ServerRegistrationModule$definition$lambda$2$$inlined$AsyncFunction$5;

    invoke-direct {v4, v1}, Lexpo/modules/notifications/serverregistration/ServerRegistrationModule$definition$lambda$2$$inlined$AsyncFunction$5;-><init>(Lexpo/modules/notifications/serverregistration/ServerRegistrationModule;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .local v3, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .local v4, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    const/4 v5, 0x0

    .line 131
    .local v5, "$i$f$createAsyncFunctionComponent":I
    const-class v6, Lkotlin/Unit;

    .line 134
    nop

    .line 135
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 136
    const/4 v6, 0x0

    .line 137
    .local v6, "$i$f$enforceType":I
    nop

    .line 140
    nop

    .line 141
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v6, v2, v3, v4}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 143
    :cond_7
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 144
    const/4 v6, 0x0

    .line 137
    .restart local v6    # "$i$f$enforceType":I
    nop

    .line 140
    nop

    .line 145
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v6, v2, v3, v4}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 147
    :cond_8
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 148
    const/4 v6, 0x0

    .line 137
    .restart local v6    # "$i$f$enforceType":I
    nop

    .line 140
    nop

    .line 149
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v6, v2, v3, v4}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 151
    :cond_9
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 152
    const/4 v6, 0x0

    .line 137
    .restart local v6    # "$i$f$enforceType":I
    nop

    .line 140
    nop

    .line 153
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v6, v2, v3, v4}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 155
    :cond_a
    const-class v7, Ljava/lang/String;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 156
    const/4 v6, 0x0

    .line 137
    .restart local v6    # "$i$f$enforceType":I
    nop

    .line 140
    nop

    .line 157
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v6, v2, v3, v4}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 159
    :cond_b
    new-instance v6, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v6, v2, v3, v4}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 134
    :goto_2
    move-object v4, v6

    .line 113
    .end local v3    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v4    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v5    # "$i$f$createAsyncFunctionComponent":I
    :goto_3
    move-object v3, v4

    .local v3, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v4, 0x0

    .line 160
    .local v4, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$7$iv":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    nop

    .line 113
    .end local v3    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v4    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$7$iv":I
    nop

    .line 106
    nop

    .line 27
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v19    # "$i$f$AsyncFunction":I
    nop

    .line 34
    .end local v11    # "$this$definition_u24lambda_u242":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v12    # "$i$a$-ModuleDefinition-ServerRegistrationModule$definition$1":I
    invoke-virtual {v10}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->buildModule()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 39
    .end local v17    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    nop

    .line 162
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 39
    nop

    .line 36
    .end local v9    # "$i$f$trace":I
    .end local v24    # "label$iv$iv$iv$iv":Ljava/lang/String;
    nop

    .line 35
    .end local v26    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v28    # "$i$f$trace":I
    nop

    .line 34
    .end local v21    # "blockName$iv$iv":Ljava/lang/String;
    .end local v27    # "$i$f$trace":I
    nop

    .line 27
    .end local v18    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v20    # "$i$f$ModuleDefinition":I
    return-object v0

    .line 162
    .restart local v9    # "$i$f$trace":I
    .restart local v18    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v20    # "$i$f$ModuleDefinition":I
    .restart local v21    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v24    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v26    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v27    # "$i$f$trace":I
    .restart local v28    # "$i$f$trace":I
    :catchall_2
    move-exception v0

    goto :goto_4

    .end local v24    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v28    # "$i$f$trace":I
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move/from16 v28, v7

    move-object/from16 v24, v8

    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v24    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v28    # "$i$f$trace":I
    goto :goto_4

    .end local v24    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v26    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v28    # "$i$f$trace":I
    .local v6, "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :catchall_4
    move-exception v0

    move-object/from16 v26, v6

    move/from16 v28, v7

    move-object/from16 v24, v8

    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v24    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v26    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v28    # "$i$f$trace":I
    goto :goto_4

    .end local v24    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v26    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v27    # "$i$f$trace":I
    .end local v28    # "$i$f$trace":I
    .local v5, "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :catchall_5
    move-exception v0

    move/from16 v27, v5

    move-object/from16 v26, v6

    move/from16 v28, v7

    move-object/from16 v24, v8

    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v24    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v26    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v27    # "$i$f$trace":I
    .restart local v28    # "$i$f$trace":I
    goto :goto_4

    .end local v21    # "blockName$iv$iv":Ljava/lang/String;
    .end local v24    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v26    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v27    # "$i$f$trace":I
    .end local v28    # "$i$f$trace":I
    .local v4, "blockName$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :catchall_6
    move-exception v0

    move-object/from16 v21, v4

    move/from16 v27, v5

    move-object/from16 v26, v6

    move/from16 v28, v7

    move-object/from16 v24, v8

    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v21    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v24    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v26    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v27    # "$i$f$trace":I
    .restart local v28    # "$i$f$trace":I
    goto :goto_4

    .end local v20    # "$i$f$ModuleDefinition":I
    .end local v21    # "blockName$iv$iv":Ljava/lang/String;
    .end local v24    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v26    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v27    # "$i$f$trace":I
    .end local v28    # "$i$f$trace":I
    .local v3, "$i$f$ModuleDefinition":I
    .restart local v4    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :catchall_7
    move-exception v0

    move/from16 v20, v3

    move-object/from16 v21, v4

    move/from16 v27, v5

    move-object/from16 v26, v6

    move/from16 v28, v7

    move-object/from16 v24, v8

    .end local v3    # "$i$f$ModuleDefinition":I
    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v20    # "$i$f$ModuleDefinition":I
    .restart local v21    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v24    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v26    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v27    # "$i$f$trace":I
    .restart local v28    # "$i$f$trace":I
    goto :goto_4

    .end local v18    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v20    # "$i$f$ModuleDefinition":I
    .end local v21    # "blockName$iv$iv":Ljava/lang/String;
    .end local v24    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v26    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v27    # "$i$f$trace":I
    .end local v28    # "$i$f$trace":I
    .local v2, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v3    # "$i$f$ModuleDefinition":I
    .restart local v4    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :catchall_8
    move-exception v0

    move-object/from16 v18, v2

    move/from16 v20, v3

    move-object/from16 v21, v4

    move/from16 v27, v5

    move-object/from16 v26, v6

    move/from16 v28, v7

    move-object/from16 v24, v8

    .end local v2    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v3    # "$i$f$ModuleDefinition":I
    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v18    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v20    # "$i$f$ModuleDefinition":I
    .restart local v21    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v24    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v26    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v27    # "$i$f$trace":I
    .restart local v28    # "$i$f$trace":I
    :goto_4
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lexpo/modules/notifications/serverregistration/ServerRegistrationModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getReactContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lexpo/modules/kotlin/exception/Exceptions$ReactContextLost;

    invoke-direct {v0}, Lexpo/modules/kotlin/exception/Exceptions$ReactContextLost;-><init>()V

    throw v0
.end method

.method protected final getInstallationId()Lexpo/modules/notifications/serverregistration/InstallationId;
    .locals 1

    .line 12
    iget-object v0, p0, Lexpo/modules/notifications/serverregistration/ServerRegistrationModule;->installationId$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/notifications/serverregistration/InstallationId;

    return-object v0
.end method

.method public getInstallationId()Ljava/lang/String;
    .locals 2

    .line 30
    invoke-virtual {p0}, Lexpo/modules/notifications/serverregistration/ServerRegistrationModule;->getInstallationId()Lexpo/modules/notifications/serverregistration/InstallationId;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/notifications/serverregistration/InstallationId;->getOrCreateUUID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getOrCreateUUID(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
