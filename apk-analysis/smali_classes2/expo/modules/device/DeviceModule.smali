.class public final Lexpo/modules/device/DeviceModule;
.super Lexpo/modules/kotlin/modules/Module;
.source "DeviceModule.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/device/DeviceModule$Companion;,
        Lexpo/modules/device/DeviceModule$DeviceType;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeviceModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeviceModule.kt\nexpo/modules/device/DeviceModule\n+ 2 Module.kt\nexpo/modules/kotlin/modules/ModuleKt\n+ 3 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 4 Trace.kt\nandroidx/tracing/TraceKt\n+ 5 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder\n+ 6 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n+ 7 UntypedAsyncFunctionComponent.kt\nexpo/modules/kotlin/functions/UntypedAsyncFunctionComponentKt\n+ 8 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 9 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n+ 10 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeProvider\n+ 11 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,207:1\n61#2:208\n14#3:209\n25#3:210\n27#4,3:211\n31#4:468\n233#5:214\n234#5,2:245\n233#5:247\n234#5,2:278\n233#5:280\n234#5,2:311\n233#5:313\n234#5,2:344\n233#5:346\n234#5,2:377\n233#5:379\n234#5,2:410\n243#5,8:412\n251#5,2:466\n26#6:215\n26#6:248\n26#6:281\n26#6:314\n26#6:347\n26#6:380\n13#7,6:216\n19#7,19:226\n13#7,6:249\n19#7,19:259\n13#7,6:282\n19#7,19:292\n13#7,6:315\n19#7,19:325\n13#7,6:348\n19#7,19:358\n13#7,6:381\n19#7,19:391\n13#7,6:437\n19#7,19:447\n8#8,4:222\n8#8,4:255\n8#8,4:288\n8#8,4:321\n8#8,4:354\n8#8,4:387\n8#8,4:443\n172#9,6:420\n168#9:426\n158#9,8:429\n143#10,2:427\n1#11:469\n*S KotlinDebug\n*F\n+ 1 DeviceModule.kt\nexpo/modules/device/DeviceModule\n*L\n34#1:208\n34#1:209\n34#1:210\n34#1:211,3\n34#1:468\n69#1:214\n69#1:245,2\n73#1:247\n73#1:278,2\n77#1:280\n77#1:311,2\n82#1:313\n82#1:344,2\n100#1:346\n100#1:377,2\n113#1:379\n113#1:410,2\n118#1:412,8\n118#1:466,2\n69#1:215\n73#1:248\n77#1:281\n82#1:314\n100#1:347\n113#1:380\n69#1:216,6\n69#1:226,19\n73#1:249,6\n73#1:259,19\n77#1:282,6\n77#1:292,19\n82#1:315,6\n82#1:325,19\n100#1:348,6\n100#1:358,19\n113#1:381,6\n113#1:391,19\n118#1:437,6\n118#1:447,19\n69#1:222,4\n73#1:255,4\n77#1:288,4\n82#1:321,4\n100#1:354,4\n113#1:387,4\n118#1:443,4\n118#1:420,6\n118#1:426\n118#1:429,8\n118#1:427,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00112\u00020\u0001:\u0002\u0011\u0012B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016R\u0014\u0010\u0003\u001a\u00020\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u00088BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u000c8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0013"
    }
    d2 = {
        "Lexpo/modules/device/DeviceModule;",
        "Lexpo/modules/kotlin/modules/Module;",
        "()V",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "deviceYearClass",
        "",
        "getDeviceYearClass",
        "()I",
        "systemName",
        "",
        "getSystemName",
        "()Ljava/lang/String;",
        "definition",
        "Lexpo/modules/kotlin/modules/ModuleDefinitionData;",
        "Companion",
        "DeviceType",
        "expo-device_debug"
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
.field public static final Companion:Lexpo/modules/device/DeviceModule$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/device/DeviceModule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/device/DeviceModule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/device/DeviceModule;->Companion:Lexpo/modules/device/DeviceModule$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lexpo/modules/kotlin/modules/Module;-><init>()V

    return-void
.end method

.method public static final synthetic access$getContext(Lexpo/modules/device/DeviceModule;)Landroid/content/Context;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/device/DeviceModule;

    .line 21
    invoke-direct {p0}, Lexpo/modules/device/DeviceModule;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getDeviceYearClass(Lexpo/modules/device/DeviceModule;)I
    .locals 1
    .param p0, "$this"    # Lexpo/modules/device/DeviceModule;

    .line 21
    invoke-direct {p0}, Lexpo/modules/device/DeviceModule;->getDeviceYearClass()I

    move-result v0

    return v0
.end method

.method public static final synthetic access$getSystemName(Lexpo/modules/device/DeviceModule;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/device/DeviceModule;

    .line 21
    invoke-direct {p0}, Lexpo/modules/device/DeviceModule;->getSystemName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getContext()Landroid/content/Context;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lexpo/modules/device/DeviceModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

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

.method private final getDeviceYearClass()I
    .locals 1

    .line 124
    invoke-direct {p0}, Lexpo/modules/device/DeviceModule;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/device/yearclass/YearClass;->get(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method private final getSystemName()Ljava/lang/String;
    .locals 4

    .line 128
    sget-object v0, Landroid/os/Build$VERSION;->BASE_OS:Ljava/lang/String;

    move-object v1, v0

    .line 469
    .local v1, "it":Ljava/lang/String;
    const/4 v2, 0x0

    .line 128
    .local v2, "$i$a$-takeIf-DeviceModule$systemName$1":I
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .end local v1    # "it":Ljava/lang/String;
    .end local v2    # "$i$a$-takeIf-DeviceModule$systemName$1":I
    :goto_0
    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    const-string v0, "Android"

    :cond_2
    return-object v0
.end method


# virtual methods
.method public definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
    .locals 28

    .line 34
    move-object/from16 v1, p0

    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/modules/Module;

    .local v2, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    const/4 v3, 0x0

    .line 208
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

    .line 209
    .local v5, "$i$f$trace":I
    const-string v6, "ExpoModulesCore"

    .local v6, "tag$iv$iv$iv":Ljava/lang/String;
    const/4 v7, 0x0

    .line 210
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

    .line 211
    .local v9, "$i$f$trace":I
    invoke-static {v8}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 212
    nop

    .line 213
    const/4 v0, 0x0

    .line 208
    .local v0, "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    :try_start_0
    new-instance v10, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    invoke-direct {v10, v2}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    move-object v11, v10

    .local v11, "$this$definition_u24lambda_u248":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    const/4 v12, 0x0

    .line 35
    .local v12, "$i$a$-ModuleDefinition-DeviceModule$definition$1":I
    const-string v13, "ExpoDevice"

    invoke-virtual {v11, v13}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Name(Ljava/lang/String;)V

    .line 37
    new-instance v13, Lexpo/modules/device/DeviceModule$definition$1$1;

    invoke-direct {v13, v1, v11}, Lexpo/modules/device/DeviceModule$definition$1$1;-><init>(Lexpo/modules/device/DeviceModule;Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;)V

    check-cast v13, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v11, v13}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Constants(Lkotlin/jvm/functions/Function0;)V

    .line 69
    move-object v13, v11

    check-cast v13, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v14, "getDeviceTypeAsync"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .local v13, "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .local v14, "name$iv":Ljava/lang/String;
    const/4 v15, 0x0

    .line 214
    .local v15, "$i$f$AsyncFunction":I
    const/16 v16, 0x0

    .line 215
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

    .line 214
    .end local v16    # "$i$f$emptyArray":I
    new-instance v0, Lexpo/modules/device/DeviceModule$definition$lambda$8$$inlined$AsyncFunction$1;

    invoke-direct {v0, v1}, Lexpo/modules/device/DeviceModule$definition$lambda$8$$inlined$AsyncFunction$1;-><init>(Lexpo/modules/device/DeviceModule;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .local v0, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .local v2, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/16 v19, 0x0

    .line 216
    .local v19, "$i$f$createAsyncFunctionComponent":I
    move/from16 v20, v3

    .end local v3    # "$i$f$ModuleDefinition":I
    .local v20, "$i$f$ModuleDefinition":I
    :try_start_2
    const-class v3, Ljava/lang/Integer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 219
    nop

    .line 220
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

    .line 221
    const/4 v3, 0x0

    .line 222
    .local v3, "$i$f$enforceType":I
    nop

    .line 225
    nop

    .line 226
    .end local v3    # "$i$f$enforceType":I
    :try_start_4
    new-instance v3, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v3, v14, v2, v0}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 468
    .end local v0    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v2    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v11    # "$this$definition_u24lambda_u248":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v12    # "$i$a$-ModuleDefinition-DeviceModule$definition$1":I
    .end local v13    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v14    # "name$iv":Ljava/lang/String;
    .end local v15    # "$i$f$AsyncFunction":I
    .end local v17    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .end local v19    # "$i$f$createAsyncFunctionComponent":I
    :catchall_0
    move-exception v0

    move/from16 v26, v5

    move-object/from16 v25, v6

    move/from16 v27, v7

    move-object/from16 v23, v8

    goto/16 :goto_9

    .line 228
    .restart local v0    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .restart local v2    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .restart local v11    # "$this$definition_u24lambda_u248":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .restart local v12    # "$i$a$-ModuleDefinition-DeviceModule$definition$1":I
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

    .line 229
    const/4 v3, 0x0

    .line 222
    .restart local v3    # "$i$f$enforceType":I
    nop

    .line 225
    nop

    .line 230
    .end local v3    # "$i$f$enforceType":I
    :try_start_6
    new-instance v3, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v3, v14, v2, v0}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 232
    :cond_1
    :try_start_7
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    if-eqz v4, :cond_2

    .line 233
    const/4 v3, 0x0

    .line 222
    .restart local v3    # "$i$f$enforceType":I
    nop

    .line 225
    nop

    .line 234
    .end local v3    # "$i$f$enforceType":I
    :try_start_8
    new-instance v3, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v3, v14, v2, v0}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    .line 236
    :cond_2
    :try_start_9
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    if-eqz v4, :cond_3

    .line 237
    const/4 v3, 0x0

    .line 222
    .restart local v3    # "$i$f$enforceType":I
    nop

    .line 225
    nop

    .line 238
    .end local v3    # "$i$f$enforceType":I
    :try_start_a
    new-instance v3, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v3, v14, v2, v0}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_0

    .line 240
    :cond_3
    :try_start_b
    const-class v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    if-eqz v3, :cond_4

    .line 241
    const/4 v3, 0x0

    .line 222
    .restart local v3    # "$i$f$enforceType":I
    nop

    .line 225
    nop

    .line 242
    .end local v3    # "$i$f$enforceType":I
    :try_start_c
    new-instance v3, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v3, v14, v2, v0}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_0

    .line 244
    :cond_4
    :try_start_d
    new-instance v3, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v3, v14, v2, v0}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 219
    :goto_0
    nop

    .line 214
    .end local v0    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v2    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v19    # "$i$f$createAsyncFunctionComponent":I
    move-object v0, v3

    .local v0, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v2, 0x0

    .line 245
    .local v2, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$4$iv":I
    invoke-virtual {v13}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    nop

    .line 214
    .end local v0    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v2    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$4$iv":I
    nop

    .line 73
    .end local v13    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v14    # "name$iv":Ljava/lang/String;
    .end local v15    # "$i$f$AsyncFunction":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "getUptimeAsync"

    .local v0, "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .local v2, "name$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 247
    .local v3, "$i$f$AsyncFunction":I
    const/4 v4, 0x0

    .line 248
    .local v4, "$i$f$emptyArray":I
    const/4 v13, 0x0

    new-array v14, v13, [Lexpo/modules/kotlin/types/AnyType;

    .line 247
    .end local v4    # "$i$f$emptyArray":I
    new-instance v4, Lexpo/modules/device/DeviceModule$definition$lambda$8$$inlined$AsyncFunction$2;

    invoke-direct {v4}, Lexpo/modules/device/DeviceModule$definition$lambda$8$$inlined$AsyncFunction$2;-><init>()V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .local v4, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    move-object v13, v14

    .local v13, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/4 v14, 0x0

    .line 249
    .local v14, "$i$f$createAsyncFunctionComponent":I
    const-class v15, Ljava/lang/Double;

    .line 252
    nop

    .line 253
    move/from16 v19, v3

    .end local v3    # "$i$f$AsyncFunction":I
    .local v19, "$i$f$AsyncFunction":I
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    if-eqz v3, :cond_5

    .line 254
    const/4 v3, 0x0

    .line 255
    .local v3, "$i$f$enforceType":I
    nop

    .line 258
    nop

    .line 259
    .end local v3    # "$i$f$enforceType":I
    :try_start_e
    new-instance v3, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v3, v2, v13, v4}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_1

    .line 261
    :cond_5
    :try_start_f
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    if-eqz v3, :cond_6

    .line 262
    const/4 v3, 0x0

    .line 255
    .restart local v3    # "$i$f$enforceType":I
    nop

    .line 258
    nop

    .line 263
    .end local v3    # "$i$f$enforceType":I
    :try_start_10
    new-instance v3, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v3, v2, v13, v4}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_1

    .line 265
    :cond_6
    :try_start_11
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    if-eqz v3, :cond_7

    .line 266
    const/4 v3, 0x0

    .line 255
    .restart local v3    # "$i$f$enforceType":I
    nop

    .line 258
    nop

    .line 267
    .end local v3    # "$i$f$enforceType":I
    :try_start_12
    new-instance v3, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v3, v2, v13, v4}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto :goto_1

    .line 269
    :cond_7
    :try_start_13
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    if-eqz v3, :cond_8

    .line 270
    const/4 v3, 0x0

    .line 255
    .restart local v3    # "$i$f$enforceType":I
    nop

    .line 258
    nop

    .line 271
    .end local v3    # "$i$f$enforceType":I
    :try_start_14
    new-instance v3, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v3, v2, v13, v4}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto :goto_1

    .line 273
    :cond_8
    :try_start_15
    const-class v3, Ljava/lang/String;

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    if-eqz v3, :cond_9

    .line 274
    const/4 v3, 0x0

    .line 255
    .restart local v3    # "$i$f$enforceType":I
    nop

    .line 258
    nop

    .line 275
    .end local v3    # "$i$f$enforceType":I
    :try_start_16
    new-instance v3, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v3, v2, v13, v4}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto :goto_1

    .line 277
    :cond_9
    :try_start_17
    new-instance v3, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v3, v2, v13, v4}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 252
    :goto_1
    nop

    .line 247
    .end local v4    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v13    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v14    # "$i$f$createAsyncFunctionComponent":I
    nop

    .local v3, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v4, 0x0

    .line 278
    .local v4, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$4$iv":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    nop

    .line 247
    .end local v3    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v4    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$4$iv":I
    nop

    .line 77
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v19    # "$i$f$AsyncFunction":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "getMaxMemoryAsync"

    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v2    # "name$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 280
    .local v3, "$i$f$AsyncFunction":I
    const/4 v4, 0x0

    .line 281
    .local v4, "$i$f$emptyArray":I
    const/4 v13, 0x0

    new-array v14, v13, [Lexpo/modules/kotlin/types/AnyType;

    .line 280
    .end local v4    # "$i$f$emptyArray":I
    new-instance v4, Lexpo/modules/device/DeviceModule$definition$lambda$8$$inlined$AsyncFunction$3;

    invoke-direct {v4}, Lexpo/modules/device/DeviceModule$definition$lambda$8$$inlined$AsyncFunction$3;-><init>()V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .local v4, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    move-object v13, v14

    .restart local v13    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/4 v14, 0x0

    .line 282
    .restart local v14    # "$i$f$createAsyncFunctionComponent":I
    const-class v15, Ljava/lang/Double;

    .line 285
    nop

    .line 286
    move/from16 v19, v3

    .end local v3    # "$i$f$AsyncFunction":I
    .restart local v19    # "$i$f$AsyncFunction":I
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    if-eqz v3, :cond_a

    .line 287
    const/4 v3, 0x0

    .line 288
    .local v3, "$i$f$enforceType":I
    nop

    .line 291
    nop

    .line 292
    .end local v3    # "$i$f$enforceType":I
    :try_start_18
    new-instance v3, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v3, v2, v13, v4}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    goto :goto_2

    .line 294
    :cond_a
    :try_start_19
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    if-eqz v3, :cond_b

    .line 295
    const/4 v3, 0x0

    .line 288
    .restart local v3    # "$i$f$enforceType":I
    nop

    .line 291
    nop

    .line 296
    .end local v3    # "$i$f$enforceType":I
    :try_start_1a
    new-instance v3, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v3, v2, v13, v4}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    goto :goto_2

    .line 298
    :cond_b
    :try_start_1b
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    if-eqz v3, :cond_c

    .line 299
    const/4 v3, 0x0

    .line 288
    .restart local v3    # "$i$f$enforceType":I
    nop

    .line 291
    nop

    .line 300
    .end local v3    # "$i$f$enforceType":I
    :try_start_1c
    new-instance v3, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v3, v2, v13, v4}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    goto :goto_2

    .line 302
    :cond_c
    :try_start_1d
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    if-eqz v3, :cond_d

    .line 303
    const/4 v3, 0x0

    .line 288
    .restart local v3    # "$i$f$enforceType":I
    nop

    .line 291
    nop

    .line 304
    .end local v3    # "$i$f$enforceType":I
    :try_start_1e
    new-instance v3, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v3, v2, v13, v4}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    goto :goto_2

    .line 306
    :cond_d
    :try_start_1f
    const-class v3, Ljava/lang/String;

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5

    if-eqz v3, :cond_e

    .line 307
    const/4 v3, 0x0

    .line 288
    .restart local v3    # "$i$f$enforceType":I
    nop

    .line 291
    nop

    .line 308
    .end local v3    # "$i$f$enforceType":I
    :try_start_20
    new-instance v3, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v3, v2, v13, v4}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    goto :goto_2

    .line 310
    :cond_e
    :try_start_21
    new-instance v3, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v3, v2, v13, v4}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 285
    :goto_2
    nop

    .line 280
    .end local v4    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v13    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v14    # "$i$f$createAsyncFunctionComponent":I
    nop

    .local v3, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v4, 0x0

    .line 311
    .local v4, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$4$iv":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    nop

    .line 280
    .end local v3    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v4    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$4$iv":I
    nop

    .line 82
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v19    # "$i$f$AsyncFunction":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "isRootedExperimentalAsync"

    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v2    # "name$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 313
    .local v3, "$i$f$AsyncFunction":I
    const/4 v4, 0x0

    .line 314
    .local v4, "$i$f$emptyArray":I
    const/4 v13, 0x0

    new-array v14, v13, [Lexpo/modules/kotlin/types/AnyType;

    .line 313
    .end local v4    # "$i$f$emptyArray":I
    new-instance v4, Lexpo/modules/device/DeviceModule$definition$lambda$8$$inlined$AsyncFunction$4;

    invoke-direct {v4}, Lexpo/modules/device/DeviceModule$definition$lambda$8$$inlined$AsyncFunction$4;-><init>()V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .local v4, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    move-object v13, v14

    .restart local v13    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/4 v14, 0x0

    .line 315
    .restart local v14    # "$i$f$createAsyncFunctionComponent":I
    const-class v15, Ljava/lang/Boolean;

    .line 318
    nop

    .line 319
    move/from16 v19, v3

    .end local v3    # "$i$f$AsyncFunction":I
    .restart local v19    # "$i$f$AsyncFunction":I
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_5

    if-eqz v3, :cond_f

    .line 320
    const/4 v3, 0x0

    .line 321
    .local v3, "$i$f$enforceType":I
    nop

    .line 324
    nop

    .line 325
    .end local v3    # "$i$f$enforceType":I
    :try_start_22
    new-instance v3, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v3, v2, v13, v4}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    goto :goto_3

    .line 327
    :cond_f
    :try_start_23
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_5

    if-eqz v3, :cond_10

    .line 328
    const/4 v3, 0x0

    .line 321
    .restart local v3    # "$i$f$enforceType":I
    nop

    .line 324
    nop

    .line 329
    .end local v3    # "$i$f$enforceType":I
    :try_start_24
    new-instance v3, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v3, v2, v13, v4}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    goto :goto_3

    .line 331
    :cond_10
    :try_start_25
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_5

    if-eqz v3, :cond_11

    .line 332
    const/4 v3, 0x0

    .line 321
    .restart local v3    # "$i$f$enforceType":I
    nop

    .line 324
    nop

    .line 333
    .end local v3    # "$i$f$enforceType":I
    :try_start_26
    new-instance v3, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v3, v2, v13, v4}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_0

    goto :goto_3

    .line 335
    :cond_11
    :try_start_27
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_5

    if-eqz v3, :cond_12

    .line 336
    const/4 v3, 0x0

    .line 321
    .restart local v3    # "$i$f$enforceType":I
    nop

    .line 324
    nop

    .line 337
    .end local v3    # "$i$f$enforceType":I
    :try_start_28
    new-instance v3, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v3, v2, v13, v4}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    goto :goto_3

    .line 339
    :cond_12
    :try_start_29
    const-class v3, Ljava/lang/String;

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_5

    if-eqz v3, :cond_13

    .line 340
    const/4 v3, 0x0

    .line 321
    .restart local v3    # "$i$f$enforceType":I
    nop

    .line 324
    nop

    .line 341
    .end local v3    # "$i$f$enforceType":I
    :try_start_2a
    new-instance v3, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v3, v2, v13, v4}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0

    goto :goto_3

    .line 343
    :cond_13
    :try_start_2b
    new-instance v3, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v3, v2, v13, v4}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 318
    :goto_3
    nop

    .line 313
    .end local v4    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v13    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v14    # "$i$f$createAsyncFunctionComponent":I
    nop

    .local v3, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v4, 0x0

    .line 344
    .local v4, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$4$iv":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    nop

    .line 313
    .end local v3    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v4    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$4$iv":I
    nop

    .line 100
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v19    # "$i$f$AsyncFunction":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "isSideLoadingEnabledAsync"

    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v2    # "name$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 346
    .local v3, "$i$f$AsyncFunction":I
    const/4 v4, 0x0

    .line 347
    .local v4, "$i$f$emptyArray":I
    const/4 v13, 0x0

    new-array v14, v13, [Lexpo/modules/kotlin/types/AnyType;

    .line 346
    .end local v4    # "$i$f$emptyArray":I
    new-instance v4, Lexpo/modules/device/DeviceModule$definition$lambda$8$$inlined$AsyncFunction$5;

    invoke-direct {v4, v1}, Lexpo/modules/device/DeviceModule$definition$lambda$8$$inlined$AsyncFunction$5;-><init>(Lexpo/modules/device/DeviceModule;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .local v4, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    move-object v13, v14

    .restart local v13    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/4 v14, 0x0

    .line 348
    .restart local v14    # "$i$f$createAsyncFunctionComponent":I
    const-class v15, Ljava/lang/Boolean;

    .line 351
    nop

    .line 352
    move/from16 v19, v3

    .end local v3    # "$i$f$AsyncFunction":I
    .restart local v19    # "$i$f$AsyncFunction":I
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_5

    if-eqz v3, :cond_14

    .line 353
    const/4 v3, 0x0

    .line 354
    .local v3, "$i$f$enforceType":I
    nop

    .line 357
    nop

    .line 358
    .end local v3    # "$i$f$enforceType":I
    :try_start_2c
    new-instance v3, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v3, v2, v13, v4}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0

    goto :goto_4

    .line 360
    :cond_14
    :try_start_2d
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_5

    if-eqz v3, :cond_15

    .line 361
    const/4 v3, 0x0

    .line 354
    .restart local v3    # "$i$f$enforceType":I
    nop

    .line 357
    nop

    .line 362
    .end local v3    # "$i$f$enforceType":I
    :try_start_2e
    new-instance v3, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v3, v2, v13, v4}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_0

    goto :goto_4

    .line 364
    :cond_15
    :try_start_2f
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_5

    if-eqz v3, :cond_16

    .line 365
    const/4 v3, 0x0

    .line 354
    .restart local v3    # "$i$f$enforceType":I
    nop

    .line 357
    nop

    .line 366
    .end local v3    # "$i$f$enforceType":I
    :try_start_30
    new-instance v3, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v3, v2, v13, v4}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_0

    goto :goto_4

    .line 368
    :cond_16
    :try_start_31
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_5

    if-eqz v3, :cond_17

    .line 369
    const/4 v3, 0x0

    .line 354
    .restart local v3    # "$i$f$enforceType":I
    nop

    .line 357
    nop

    .line 370
    .end local v3    # "$i$f$enforceType":I
    :try_start_32
    new-instance v3, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v3, v2, v13, v4}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_0

    goto :goto_4

    .line 372
    :cond_17
    :try_start_33
    const-class v3, Ljava/lang/String;

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_5

    if-eqz v3, :cond_18

    .line 373
    const/4 v3, 0x0

    .line 354
    .restart local v3    # "$i$f$enforceType":I
    nop

    .line 357
    nop

    .line 374
    .end local v3    # "$i$f$enforceType":I
    :try_start_34
    new-instance v3, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v3, v2, v13, v4}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_0

    goto :goto_4

    .line 376
    :cond_18
    :try_start_35
    new-instance v3, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v3, v2, v13, v4}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 351
    :goto_4
    nop

    .line 346
    .end local v4    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v13    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v14    # "$i$f$createAsyncFunctionComponent":I
    nop

    .local v3, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v4, 0x0

    .line 377
    .local v4, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$4$iv":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    nop

    .line 346
    .end local v3    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v4    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$4$iv":I
    nop

    .line 113
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v19    # "$i$f$AsyncFunction":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "getPlatformFeaturesAsync"

    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v2    # "name$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 379
    .local v3, "$i$f$AsyncFunction":I
    const/4 v4, 0x0

    .line 380
    .local v4, "$i$f$emptyArray":I
    const/4 v13, 0x0

    new-array v14, v13, [Lexpo/modules/kotlin/types/AnyType;

    .line 379
    .end local v4    # "$i$f$emptyArray":I
    new-instance v4, Lexpo/modules/device/DeviceModule$definition$lambda$8$$inlined$AsyncFunction$6;

    invoke-direct {v4, v1}, Lexpo/modules/device/DeviceModule$definition$lambda$8$$inlined$AsyncFunction$6;-><init>(Lexpo/modules/device/DeviceModule;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .local v4, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    move-object v13, v14

    .restart local v13    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/4 v14, 0x0

    .line 381
    .restart local v14    # "$i$f$createAsyncFunctionComponent":I
    const-class v15, Ljava/util/List;

    .line 384
    nop

    .line 385
    move/from16 v19, v3

    .end local v3    # "$i$f$AsyncFunction":I
    .restart local v19    # "$i$f$AsyncFunction":I
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_5

    if-eqz v3, :cond_19

    .line 386
    const/4 v3, 0x0

    .line 387
    .local v3, "$i$f$enforceType":I
    nop

    .line 390
    nop

    .line 391
    .end local v3    # "$i$f$enforceType":I
    :try_start_36
    new-instance v3, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v3, v2, v13, v4}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_0

    goto :goto_5

    .line 393
    :cond_19
    :try_start_37
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_5

    if-eqz v3, :cond_1a

    .line 394
    const/4 v3, 0x0

    .line 387
    .restart local v3    # "$i$f$enforceType":I
    nop

    .line 390
    nop

    .line 395
    .end local v3    # "$i$f$enforceType":I
    :try_start_38
    new-instance v3, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v3, v2, v13, v4}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_0

    goto :goto_5

    .line 397
    :cond_1a
    :try_start_39
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_5

    if-eqz v3, :cond_1b

    .line 398
    const/4 v3, 0x0

    .line 387
    .restart local v3    # "$i$f$enforceType":I
    nop

    .line 390
    nop

    .line 399
    .end local v3    # "$i$f$enforceType":I
    :try_start_3a
    new-instance v3, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v3, v2, v13, v4}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_0

    goto :goto_5

    .line 401
    :cond_1b
    :try_start_3b
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_5

    if-eqz v3, :cond_1c

    .line 402
    const/4 v3, 0x0

    .line 387
    .restart local v3    # "$i$f$enforceType":I
    nop

    .line 390
    nop

    .line 403
    .end local v3    # "$i$f$enforceType":I
    :try_start_3c
    new-instance v3, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v3, v2, v13, v4}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_0

    goto :goto_5

    .line 405
    :cond_1c
    :try_start_3d
    const-class v3, Ljava/lang/String;

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_5

    if-eqz v3, :cond_1d

    .line 406
    const/4 v3, 0x0

    .line 387
    .restart local v3    # "$i$f$enforceType":I
    nop

    .line 390
    nop

    .line 407
    .end local v3    # "$i$f$enforceType":I
    :try_start_3e
    new-instance v3, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v3, v2, v13, v4}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_0

    goto :goto_5

    .line 409
    :cond_1d
    :try_start_3f
    new-instance v3, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v3, v2, v13, v4}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 384
    :goto_5
    nop

    .line 379
    .end local v4    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v13    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v14    # "$i$f$createAsyncFunctionComponent":I
    nop

    .local v3, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v4, 0x0

    .line 410
    .local v4, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$4$iv":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    nop

    .line 379
    .end local v3    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v4    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$4$iv":I
    nop

    .line 118
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v19    # "$i$f$AsyncFunction":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "hasPlatformFeatureAsync"

    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v2    # "name$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 412
    .local v3, "$i$f$AsyncFunction":I
    const-class v4, Ljava/lang/String;

    const-class v13, Lexpo/modules/kotlin/Promise;

    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_5

    if-eqz v4, :cond_1e

    .line 413
    :try_start_40
    new-instance v4, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    const/4 v13, 0x0

    new-array v13, v13, [Lexpo/modules/kotlin/types/AnyType;

    .line 419
    new-instance v14, Lexpo/modules/device/DeviceModule$definition$lambda$8$$inlined$AsyncFunction$7;

    invoke-direct {v14, v1}, Lexpo/modules/device/DeviceModule$definition$lambda$8$$inlined$AsyncFunction$7;-><init>(Lexpo/modules/device/DeviceModule;)V

    check-cast v14, Lkotlin/jvm/functions/Function2;

    .line 413
    invoke-direct {v4, v2, v13, v14}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_0

    move/from16 v24, v3

    move/from16 v26, v5

    move-object/from16 v25, v6

    move/from16 v27, v7

    move-object/from16 v23, v8

    goto/16 :goto_8

    .line 415
    :cond_1e
    :try_start_41
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v4

    .line 420
    .local v4, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 421
    const-class v13, Ljava/lang/String;

    .line 420
    .local v13, "p0$iv$iv":Ljava/lang/Class;
    const/4 v14, 0x0

    .line 425
    .local v14, "$i$f$toArgsArray":I
    const/4 v15, 0x1

    new-array v15, v15, [Lexpo/modules/kotlin/types/AnyType;

    const/16 v19, 0x0

    .line 426
    .local v19, "$i$f$toAnyType":I
    sget-object v22, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v22, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/16 v23, 0x0

    .line 427
    .local v23, "$i$f$cachedAnyType":I
    move/from16 v24, v3

    .end local v3    # "$i$f$AsyncFunction":I
    .local v24, "$i$f$AsyncFunction":I
    new-instance v3, Lkotlin/Pair;

    const-class v25, Ljava/lang/String;
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_5

    move/from16 v26, v5

    .end local v5    # "$i$f$trace":I
    .local v26, "$i$f$trace":I
    :try_start_42
    invoke-static/range {v25 .. v25}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_4

    move-object/from16 v25, v6

    const/16 v16, 0x0

    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .local v25, "tag$iv$iv$iv":Ljava/lang/String;
    :try_start_43
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 428
    .local v3, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual/range {v22 .. v22}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lexpo/modules/kotlin/types/AnyType;

    .line 426
    .end local v3    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v22    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v23    # "$i$f$cachedAnyType":I
    if-nez v5, :cond_1f

    sget-object v3, Lexpo/modules/device/DeviceModule$definition$lambda$8$$inlined$AsyncFunction$8;->INSTANCE:Lexpo/modules/device/DeviceModule$definition$lambda$8$$inlined$AsyncFunction$8;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .local v3, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v5, 0x0

    .line 429
    .local v5, "$i$f$toAnyType":I
    new-instance v6, Lexpo/modules/kotlin/types/AnyType;

    .line 430
    move/from16 v22, v5

    .end local v5    # "$i$f$toAnyType":I
    .local v22, "$i$f$toAnyType":I
    new-instance v5, Lexpo/modules/kotlin/types/LazyKType;

    const-class v23, Ljava/lang/String;
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_3

    move/from16 v27, v7

    .end local v7    # "$i$f$trace":I
    .local v27, "$i$f$trace":I
    :try_start_44
    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_1

    .line 432
    nop

    .line 433
    nop

    .line 430
    move-object/from16 v23, v8

    const/4 v8, 0x0

    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v23, "label$iv$iv$iv$iv":Ljava/lang/String;
    :try_start_45
    invoke-direct {v5, v7, v8, v3}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v5, Lkotlin/reflect/KType;

    .line 435
    nop

    .line 429
    invoke-direct {v6, v5, v4}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 436
    move-object v5, v6

    goto :goto_6

    .line 468
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v3    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v4    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v11    # "$this$definition_u24lambda_u248":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v12    # "$i$a$-ModuleDefinition-DeviceModule$definition$1":I
    .end local v13    # "p0$iv$iv":Ljava/lang/Class;
    .end local v14    # "$i$f$toArgsArray":I
    .end local v17    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .end local v19    # "$i$f$toAnyType":I
    .end local v22    # "$i$f$toAnyType":I
    .end local v23    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v24    # "$i$f$AsyncFunction":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v23, v8

    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v23    # "label$iv$iv$iv$iv":Ljava/lang/String;
    goto/16 :goto_9

    .line 426
    .end local v23    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v27    # "$i$f$trace":I
    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v2    # "name$iv":Ljava/lang/String;
    .restart local v4    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v11    # "$this$definition_u24lambda_u248":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .restart local v12    # "$i$a$-ModuleDefinition-DeviceModule$definition$1":I
    .restart local v13    # "p0$iv$iv":Ljava/lang/Class;
    .restart local v14    # "$i$f$toArgsArray":I
    .restart local v17    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .restart local v19    # "$i$f$toAnyType":I
    .restart local v24    # "$i$f$AsyncFunction":I
    :cond_1f
    move/from16 v27, v7

    move-object/from16 v23, v8

    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v23    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v27    # "$i$f$trace":I
    :goto_6
    const/4 v3, 0x0

    .end local v19    # "$i$f$toAnyType":I
    aput-object v5, v15, v3

    .line 425
    nop

    .line 424
    nop

    .line 415
    .end local v4    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v13    # "p0$iv$iv":Ljava/lang/Class;
    .end local v14    # "$i$f$toArgsArray":I
    new-instance v3, Lexpo/modules/device/DeviceModule$definition$lambda$8$$inlined$AsyncFunction$9;

    invoke-direct {v3, v1}, Lexpo/modules/device/DeviceModule$definition$lambda$8$$inlined$AsyncFunction$9;-><init>(Lexpo/modules/device/DeviceModule;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .local v3, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    move-object v4, v15

    .local v4, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/4 v5, 0x0

    .line 437
    .local v5, "$i$f$createAsyncFunctionComponent":I
    const-class v6, Ljava/lang/Boolean;

    .line 440
    nop

    .line 441
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 442
    const/4 v6, 0x0

    .line 443
    .local v6, "$i$f$enforceType":I
    nop

    .line 446
    nop

    .line 447
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_7

    .line 449
    :cond_20
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 450
    const/4 v6, 0x0

    .line 443
    .restart local v6    # "$i$f$enforceType":I
    nop

    .line 446
    nop

    .line 451
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_7

    .line 453
    :cond_21
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 454
    const/4 v6, 0x0

    .line 443
    .restart local v6    # "$i$f$enforceType":I
    nop

    .line 446
    nop

    .line 455
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_7

    .line 457
    :cond_22
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 458
    const/4 v6, 0x0

    .line 443
    .restart local v6    # "$i$f$enforceType":I
    nop

    .line 446
    nop

    .line 459
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_7

    .line 461
    :cond_23
    const-class v7, Ljava/lang/String;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 462
    const/4 v6, 0x0

    .line 443
    .restart local v6    # "$i$f$enforceType":I
    nop

    .line 446
    nop

    .line 463
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_7

    .line 465
    :cond_24
    new-instance v6, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 440
    :goto_7
    move-object v4, v6

    .line 419
    .end local v3    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v4    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v5    # "$i$f$createAsyncFunctionComponent":I
    :goto_8
    move-object v3, v4

    .local v3, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v4, 0x0

    .line 466
    .local v4, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$7$iv":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    nop

    .line 419
    .end local v3    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v4    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$7$iv":I
    nop

    .line 412
    nop

    .line 121
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v24    # "$i$f$AsyncFunction":I
    nop

    .line 208
    .end local v11    # "$this$definition_u24lambda_u248":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v12    # "$i$a$-ModuleDefinition-DeviceModule$definition$1":I
    invoke-virtual {v10}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->buildModule()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v0
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_2

    .line 213
    .end local v17    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    nop

    .line 468
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 213
    nop

    .line 210
    .end local v9    # "$i$f$trace":I
    .end local v23    # "label$iv$iv$iv$iv":Ljava/lang/String;
    nop

    .line 209
    .end local v25    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v27    # "$i$f$trace":I
    nop

    .line 208
    .end local v21    # "blockName$iv$iv":Ljava/lang/String;
    .end local v26    # "$i$f$trace":I
    nop

    .line 121
    .end local v18    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v20    # "$i$f$ModuleDefinition":I
    return-object v0

    .line 468
    .restart local v9    # "$i$f$trace":I
    .restart local v18    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v20    # "$i$f$ModuleDefinition":I
    .restart local v21    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v23    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v25    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v26    # "$i$f$trace":I
    .restart local v27    # "$i$f$trace":I
    :catchall_2
    move-exception v0

    goto :goto_9

    .end local v23    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v27    # "$i$f$trace":I
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move/from16 v27, v7

    move-object/from16 v23, v8

    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v23    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v27    # "$i$f$trace":I
    goto :goto_9

    .end local v23    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v25    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v27    # "$i$f$trace":I
    .local v6, "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :catchall_4
    move-exception v0

    move-object/from16 v25, v6

    move/from16 v27, v7

    move-object/from16 v23, v8

    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v23    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v25    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v27    # "$i$f$trace":I
    goto :goto_9

    .end local v23    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v25    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v26    # "$i$f$trace":I
    .end local v27    # "$i$f$trace":I
    .local v5, "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :catchall_5
    move-exception v0

    move/from16 v26, v5

    move-object/from16 v25, v6

    move/from16 v27, v7

    move-object/from16 v23, v8

    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v23    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v25    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v26    # "$i$f$trace":I
    .restart local v27    # "$i$f$trace":I
    goto :goto_9

    .end local v21    # "blockName$iv$iv":Ljava/lang/String;
    .end local v23    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v25    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v26    # "$i$f$trace":I
    .end local v27    # "$i$f$trace":I
    .local v4, "blockName$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :catchall_6
    move-exception v0

    move-object/from16 v21, v4

    move/from16 v26, v5

    move-object/from16 v25, v6

    move/from16 v27, v7

    move-object/from16 v23, v8

    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v21    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v23    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v25    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v26    # "$i$f$trace":I
    .restart local v27    # "$i$f$trace":I
    goto :goto_9

    .end local v20    # "$i$f$ModuleDefinition":I
    .end local v21    # "blockName$iv$iv":Ljava/lang/String;
    .end local v23    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v25    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v26    # "$i$f$trace":I
    .end local v27    # "$i$f$trace":I
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

    move/from16 v26, v5

    move-object/from16 v25, v6

    move/from16 v27, v7

    move-object/from16 v23, v8

    .end local v3    # "$i$f$ModuleDefinition":I
    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v20    # "$i$f$ModuleDefinition":I
    .restart local v21    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v23    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v25    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v26    # "$i$f$trace":I
    .restart local v27    # "$i$f$trace":I
    goto :goto_9

    .end local v18    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v20    # "$i$f$ModuleDefinition":I
    .end local v21    # "blockName$iv$iv":Ljava/lang/String;
    .end local v23    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v25    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v26    # "$i$f$trace":I
    .end local v27    # "$i$f$trace":I
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

    move/from16 v26, v5

    move-object/from16 v25, v6

    move/from16 v27, v7

    move-object/from16 v23, v8

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
    .restart local v23    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v25    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v26    # "$i$f$trace":I
    .restart local v27    # "$i$f$trace":I
    :goto_9
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method
