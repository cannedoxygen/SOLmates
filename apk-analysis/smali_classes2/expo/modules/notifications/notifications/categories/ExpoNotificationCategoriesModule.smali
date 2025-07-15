.class public Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;
.super Lexpo/modules/kotlin/modules/Module;
.source "ExpoNotificationCategoriesModule.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExpoNotificationCategoriesModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExpoNotificationCategoriesModule.kt\nexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule\n+ 2 Module.kt\nexpo/modules/kotlin/modules/ModuleKt\n+ 3 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 4 Trace.kt\nandroidx/tracing/TraceKt\n+ 5 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder\n+ 6 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n+ 7 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeProvider\n+ 8 UntypedAsyncFunctionComponent.kt\nexpo/modules/kotlin/functions/UntypedAsyncFunctionComponentKt\n+ 9 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 10 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,150:1\n61#2:151\n14#3:152\n25#3:153\n27#4,3:154\n31#4:279\n243#5,8:157\n251#5,2:211\n322#5:213\n325#5,3:254\n272#5:257\n275#5,3:276\n172#6,6:165\n168#6:171\n158#6,8:174\n194#6,8:214\n168#6:222\n158#6,8:225\n202#6:233\n168#6:234\n158#6,8:235\n203#6:243\n168#6:244\n158#6,8:245\n200#6:253\n172#6,6:258\n168#6:264\n158#6,8:267\n176#6:275\n143#7,2:172\n143#7,2:223\n143#7,2:265\n13#8,6:182\n19#8,19:192\n8#9,4:188\n1549#10:280\n1620#10,3:281\n*S KotlinDebug\n*F\n+ 1 ExpoNotificationCategoriesModule.kt\nexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule\n*L\n62#1:151\n62#1:152\n62#1:153\n62#1:154,3\n62#1:279\n65#1:157,8\n65#1:211,2\n79#1:213\n79#1:254,3\n81#1:257\n81#1:276,3\n65#1:165,6\n65#1:171\n65#1:174,8\n79#1:214,8\n79#1:222\n79#1:225,8\n79#1:233\n79#1:234\n79#1:235,8\n79#1:243\n79#1:244\n79#1:245,8\n79#1:253\n81#1:258,6\n81#1:264\n81#1:267,8\n81#1:275\n65#1:172,2\n79#1:223,2\n81#1:265,2\n65#1:182,6\n65#1:192,19\n65#1:188,4\n147#1:280\n147#1:281,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002JF\u0010\r\u001a\u00020\u000e2<\u0010\u000f\u001a8\u0012\u0013\u0012\u00110\u0011\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(\u0014\u0012\u0015\u0012\u0013\u0018\u00010\u0015\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(\u0016\u0012\u0004\u0012\u00020\u00170\u0010j\u0002`\u0018H\u0002J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016J\u0018\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u001e\u0010 \u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00150!2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020$0#H\u0014J>\u0010%\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u001d2\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\'0!2\u0016\u0010(\u001a\u0012\u0012\u0004\u0012\u00020\u001d\u0012\u0006\u0012\u0004\u0018\u00010*\u0018\u00010)2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016R\u0014\u0010\u0003\u001a\u00020\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u001b\u0010\u0007\u001a\u00020\u00088DX\u0084\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\n\u00a8\u0006+"
    }
    d2 = {
        "Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;",
        "Lexpo/modules/kotlin/modules/Module;",
        "()V",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "serializer",
        "Lexpo/modules/notifications/notifications/categories/serializers/NotificationsCategoriesSerializer;",
        "getSerializer",
        "()Lexpo/modules/notifications/notifications/categories/serializers/NotificationsCategoriesSerializer;",
        "serializer$delegate",
        "Lkotlin/Lazy;",
        "createResultReceiver",
        "Landroid/os/ResultReceiver;",
        "body",
        "Lkotlin/Function2;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "resultCode",
        "Landroid/os/Bundle;",
        "resultData",
        "",
        "Lexpo/modules/notifications/ResultReceiverBody;",
        "definition",
        "Lexpo/modules/kotlin/modules/ModuleDefinitionData;",
        "deleteNotificationCategoryAsync",
        "identifier",
        "",
        "promise",
        "Lexpo/modules/kotlin/Promise;",
        "serializeCategories",
        "",
        "categories",
        "",
        "Lexpo/modules/notifications/notifications/model/NotificationCategory;",
        "setNotificationCategoryAsync",
        "actionArguments",
        "Lexpo/modules/notifications/notifications/categories/NotificationActionRecord;",
        "categoryOptions",
        "",
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
.field private final serializer$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lexpo/modules/kotlin/modules/Module;-><init>()V

    .line 54
    new-instance v0, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$serializer$2;

    invoke-direct {v0, p0}, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$serializer$2;-><init>(Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;->serializer$delegate:Lkotlin/Lazy;

    .line 52
    return-void
.end method

.method public static final synthetic access$createResultReceiver(Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;Lkotlin/jvm/functions/Function2;)Landroid/os/ResultReceiver;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;
    .param p1, "body"    # Lkotlin/jvm/functions/Function2;

    .line 52
    invoke-direct {p0, p1}, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;->createResultReceiver(Lkotlin/jvm/functions/Function2;)Landroid/os/ResultReceiver;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getContext(Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;)Landroid/content/Context;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;

    .line 52
    invoke-direct {p0}, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private final createResultReceiver(Lkotlin/jvm/functions/Function2;)Landroid/os/ResultReceiver;
    .locals 1
    .param p1, "body"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroid/os/Bundle;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroid/os/ResultReceiver;"
        }
    .end annotation

    .line 85
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lexpo/modules/notifications/UtilsKt;->createDefaultResultReceiver(Landroid/os/Handler;Lkotlin/jvm/functions/Function2;)Landroid/os/ResultReceiver;

    move-result-object v0

    return-object v0
.end method

.method private final getContext()Landroid/content/Context;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

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


# virtual methods
.method public definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
    .locals 32

    .line 62
    move-object/from16 v1, p0

    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/modules/Module;

    .local v2, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    const/4 v3, 0x0

    .line 151
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

    .line 152
    .local v5, "$i$f$trace":I
    const-string v6, "ExpoModulesCore"

    .local v6, "tag$iv$iv$iv":Ljava/lang/String;
    const/4 v7, 0x0

    .line 153
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

    .line 154
    .local v9, "$i$f$trace":I
    invoke-static {v8}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 155
    nop

    .line 156
    const/4 v0, 0x0

    .line 151
    .local v0, "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    :try_start_0
    new-instance v10, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    invoke-direct {v10, v2}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    move-object v11, v10

    .local v11, "$this$definition_u24lambda_u242":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    const/4 v12, 0x0

    .line 63
    .local v12, "$i$a$-ModuleDefinition-ExpoNotificationCategoriesModule$definition$1":I
    const-string v13, "ExpoNotificationCategoriesModule"

    invoke-virtual {v11, v13}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Name(Ljava/lang/String;)V

    .line 65
    move-object v13, v11

    check-cast v13, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v14, "getNotificationCategoriesAsync"

    .local v13, "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .local v14, "name$iv":Ljava/lang/String;
    const/4 v15, 0x0

    .line 157
    .local v15, "$i$f$AsyncFunction":I
    move/from16 v16, v0

    .end local v0    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .local v16, "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    const-class v0, Lexpo/modules/kotlin/Promise;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_c

    move-object/from16 v17, v2

    .end local v2    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .local v17, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    :try_start_1
    const-class v2, Lexpo/modules/kotlin/Promise;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_b

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 158
    :try_start_2
    new-instance v0, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move/from16 v19, v3

    .end local v3    # "$i$f$ModuleDefinition":I
    .local v19, "$i$f$ModuleDefinition":I
    :try_start_3
    new-array v3, v2, [Lexpo/modules/kotlin/types/AnyType;

    .line 164
    new-instance v2, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$definition$lambda$2$$inlined$AsyncFunction$1;

    invoke-direct {v2, v1}, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$definition$lambda$2$$inlined$AsyncFunction$1;-><init>(Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 158
    invoke-direct {v0, v14, v3, v2}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    check-cast v0, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v27, v4

    move/from16 v26, v5

    move-object/from16 v28, v6

    move/from16 v24, v7

    goto/16 :goto_2

    .line 279
    .end local v11    # "$this$definition_u24lambda_u242":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v12    # "$i$a$-ModuleDefinition-ExpoNotificationCategoriesModule$definition$1":I
    .end local v13    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v14    # "name$iv":Ljava/lang/String;
    .end local v15    # "$i$f$AsyncFunction":I
    .end local v16    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    :catchall_0
    move-exception v0

    move-object/from16 v27, v4

    move/from16 v26, v5

    move-object/from16 v28, v6

    move/from16 v24, v7

    move-object/from16 v31, v8

    move/from16 v23, v9

    goto/16 :goto_4

    .end local v19    # "$i$f$ModuleDefinition":I
    .restart local v3    # "$i$f$ModuleDefinition":I
    :catchall_1
    move-exception v0

    move/from16 v19, v3

    move-object/from16 v27, v4

    move/from16 v26, v5

    move-object/from16 v28, v6

    move/from16 v24, v7

    move-object/from16 v31, v8

    move/from16 v23, v9

    .end local v3    # "$i$f$ModuleDefinition":I
    .restart local v19    # "$i$f$ModuleDefinition":I
    goto/16 :goto_4

    .line 160
    .end local v19    # "$i$f$ModuleDefinition":I
    .restart local v3    # "$i$f$ModuleDefinition":I
    .restart local v11    # "$this$definition_u24lambda_u242":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .restart local v12    # "$i$a$-ModuleDefinition-ExpoNotificationCategoriesModule$definition$1":I
    .restart local v13    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v14    # "name$iv":Ljava/lang/String;
    .restart local v15    # "$i$f$AsyncFunction":I
    .restart local v16    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    :cond_0
    move/from16 v19, v3

    .end local v3    # "$i$f$ModuleDefinition":I
    .restart local v19    # "$i$f$ModuleDefinition":I
    :try_start_4
    invoke-virtual {v13}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v0

    .line 165
    .local v0, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 166
    const-class v2, Lexpo/modules/kotlin/Promise;

    .line 165
    .local v2, "p0$iv$iv":Ljava/lang/Class;
    const/4 v3, 0x0

    .line 170
    .local v3, "$i$f$toArgsArray":I
    move-object/from16 v21, v2

    move/from16 v22, v3

    const/4 v2, 0x1

    .end local v2    # "p0$iv$iv":Ljava/lang/Class;
    .end local v3    # "$i$f$toArgsArray":I
    .local v21, "p0$iv$iv":Ljava/lang/Class;
    .local v22, "$i$f$toArgsArray":I
    new-array v3, v2, [Lexpo/modules/kotlin/types/AnyType;

    const/4 v2, 0x0

    .line 171
    .local v2, "$i$f$toAnyType":I
    sget-object v23, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v23, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/16 v24, 0x0

    .line 172
    .local v24, "$i$f$cachedAnyType":I
    move/from16 v25, v2

    .end local v2    # "$i$f$toAnyType":I
    .local v25, "$i$f$toAnyType":I
    new-instance v2, Lkotlin/Pair;

    const-class v26, Lexpo/modules/kotlin/Promise;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_a

    move-object/from16 v27, v4

    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .local v27, "blockName$iv$iv":Ljava/lang/String;
    :try_start_5
    invoke-static/range {v26 .. v26}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_9

    move/from16 v26, v5

    const/16 v20, 0x0

    .end local v5    # "$i$f$trace":I
    .local v26, "$i$f$trace":I
    :try_start_6
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 173
    .local v2, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual/range {v23 .. v23}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lexpo/modules/kotlin/types/AnyType;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    .line 171
    .end local v2    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v23    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v24    # "$i$f$cachedAnyType":I
    if-nez v4, :cond_1

    :try_start_7
    sget-object v2, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$definition$lambda$2$$inlined$AsyncFunction$2;->INSTANCE:Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$definition$lambda$2$$inlined$AsyncFunction$2;

    check-cast v2, Lkotlin/jvm/functions/Function0;

    .local v2, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 174
    .local v4, "$i$f$toAnyType":I
    new-instance v5, Lexpo/modules/kotlin/types/AnyType;

    .line 175
    move/from16 v23, v4

    .end local v4    # "$i$f$toAnyType":I
    .local v23, "$i$f$toAnyType":I
    new-instance v4, Lexpo/modules/kotlin/types/LazyKType;

    const-class v24, Lexpo/modules/kotlin/Promise;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-object/from16 v28, v6

    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .local v28, "tag$iv$iv$iv":Ljava/lang/String;
    :try_start_8
    invoke-static/range {v24 .. v24}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 177
    nop

    .line 178
    nop

    .line 175
    move/from16 v24, v7

    const/4 v7, 0x0

    .end local v7    # "$i$f$trace":I
    .local v24, "$i$f$trace":I
    :try_start_9
    invoke-direct {v4, v6, v7, v2}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v4, Lkotlin/reflect/KType;

    .line 180
    nop

    .line 174
    invoke-direct {v5, v4, v0}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 181
    move-object v4, v5

    goto :goto_0

    .line 279
    .end local v0    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v2    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v11    # "$this$definition_u24lambda_u242":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v12    # "$i$a$-ModuleDefinition-ExpoNotificationCategoriesModule$definition$1":I
    .end local v13    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v14    # "name$iv":Ljava/lang/String;
    .end local v15    # "$i$f$AsyncFunction":I
    .end local v16    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .end local v21    # "p0$iv$iv":Ljava/lang/Class;
    .end local v22    # "$i$f$toArgsArray":I
    .end local v23    # "$i$f$toAnyType":I
    .end local v25    # "$i$f$toAnyType":I
    :catchall_2
    move-exception v0

    move-object/from16 v31, v8

    move/from16 v23, v9

    goto/16 :goto_4

    .end local v24    # "$i$f$trace":I
    .restart local v7    # "$i$f$trace":I
    :catchall_3
    move-exception v0

    move/from16 v24, v7

    move-object/from16 v31, v8

    move/from16 v23, v9

    .end local v7    # "$i$f$trace":I
    .restart local v24    # "$i$f$trace":I
    goto/16 :goto_4

    .end local v24    # "$i$f$trace":I
    .end local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    :catchall_4
    move-exception v0

    move-object/from16 v28, v6

    move/from16 v24, v7

    move-object/from16 v31, v8

    move/from16 v23, v9

    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .restart local v24    # "$i$f$trace":I
    .restart local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    goto/16 :goto_4

    .line 171
    .end local v24    # "$i$f$trace":I
    .end local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v0    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v11    # "$this$definition_u24lambda_u242":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .restart local v12    # "$i$a$-ModuleDefinition-ExpoNotificationCategoriesModule$definition$1":I
    .restart local v13    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v14    # "name$iv":Ljava/lang/String;
    .restart local v15    # "$i$f$AsyncFunction":I
    .restart local v16    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .restart local v21    # "p0$iv$iv":Ljava/lang/Class;
    .restart local v22    # "$i$f$toArgsArray":I
    .restart local v25    # "$i$f$toAnyType":I
    :cond_1
    move-object/from16 v28, v6

    move/from16 v24, v7

    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .restart local v24    # "$i$f$trace":I
    .restart local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    .end local v25    # "$i$f$toAnyType":I
    :try_start_a
    aput-object v4, v3, v2

    .line 170
    nop

    .line 169
    nop

    .line 160
    .end local v0    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v21    # "p0$iv$iv":Ljava/lang/Class;
    .end local v22    # "$i$f$toArgsArray":I
    new-instance v0, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$definition$lambda$2$$inlined$AsyncFunction$3;

    invoke-direct {v0, v1}, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$definition$lambda$2$$inlined$AsyncFunction$3;-><init>(Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .local v0, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    move-object v2, v3

    .local v2, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/4 v3, 0x0

    .line 182
    .local v3, "$i$f$createAsyncFunctionComponent":I
    const-class v4, Lkotlin/Unit;

    .line 185
    nop

    .line 186
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    if-eqz v5, :cond_2

    .line 187
    const/4 v4, 0x0

    .line 188
    .local v4, "$i$f$enforceType":I
    nop

    .line 191
    nop

    .line 192
    .end local v4    # "$i$f$enforceType":I
    :try_start_b
    new-instance v4, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v4, v14, v2, v0}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_1

    .line 194
    :cond_2
    :try_start_c
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    if-eqz v5, :cond_3

    .line 195
    const/4 v4, 0x0

    .line 188
    .restart local v4    # "$i$f$enforceType":I
    nop

    .line 191
    nop

    .line 196
    .end local v4    # "$i$f$enforceType":I
    :try_start_d
    new-instance v4, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v4, v14, v2, v0}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_1

    .line 198
    :cond_3
    :try_start_e
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    if-eqz v5, :cond_4

    .line 199
    const/4 v4, 0x0

    .line 188
    .restart local v4    # "$i$f$enforceType":I
    nop

    .line 191
    nop

    .line 200
    .end local v4    # "$i$f$enforceType":I
    :try_start_f
    new-instance v4, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v4, v14, v2, v0}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto :goto_1

    .line 202
    :cond_4
    :try_start_10
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    if-eqz v5, :cond_5

    .line 203
    const/4 v4, 0x0

    .line 188
    .restart local v4    # "$i$f$enforceType":I
    nop

    .line 191
    nop

    .line 204
    .end local v4    # "$i$f$enforceType":I
    :try_start_11
    new-instance v4, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v4, v14, v2, v0}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    goto :goto_1

    .line 206
    :cond_5
    :try_start_12
    const-class v5, Ljava/lang/String;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    if-eqz v4, :cond_6

    .line 207
    const/4 v4, 0x0

    .line 188
    .restart local v4    # "$i$f$enforceType":I
    nop

    .line 191
    nop

    .line 208
    .end local v4    # "$i$f$enforceType":I
    :try_start_13
    new-instance v4, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v4, v14, v2, v0}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    goto :goto_1

    .line 210
    :cond_6
    :try_start_14
    new-instance v4, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v4, v14, v2, v0}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 185
    :goto_1
    move-object v0, v4

    .line 164
    .end local v0    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v2    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v3    # "$i$f$createAsyncFunctionComponent":I
    :goto_2
    nop

    .local v0, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v2, 0x0

    .line 211
    .local v2, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$7$iv":I
    invoke-virtual {v13}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    nop

    .line 164
    .end local v0    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v2    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$7$iv":I
    nop

    .line 157
    nop

    .line 79
    .end local v13    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v14    # "name$iv":Ljava/lang/String;
    .end local v15    # "$i$f$AsyncFunction":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "setNotificationCategoryAsync"

    .local v0, "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .local v2, "name$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 213
    .local v3, "$i$f$AsyncFunctionWithPromise":I
    new-instance v4, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v5

    .line 214
    .local v5, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 215
    const-class v6, Ljava/lang/String;

    .line 214
    .local v6, "p0$iv$iv":Ljava/lang/Class;
    nop

    .line 216
    const-class v7, Ljava/util/List;

    .line 214
    .local v7, "p1$iv$iv":Ljava/lang/Class;
    nop

    .line 217
    const-class v13, Ljava/util/Map;

    .line 214
    .local v13, "p2$iv$iv":Ljava/lang/Class;
    const/4 v14, 0x0

    .line 221
    .local v14, "$i$f$toArgsArray":I
    const/4 v15, 0x3

    new-array v15, v15, [Lexpo/modules/kotlin/types/AnyType;

    const/16 v21, 0x0

    .line 222
    .local v21, "$i$f$toAnyType":I
    sget-object v22, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v22, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/16 v23, 0x0

    .line 223
    .local v23, "$i$f$cachedAnyType":I
    move/from16 v25, v3

    .end local v3    # "$i$f$AsyncFunctionWithPromise":I
    .local v25, "$i$f$AsyncFunctionWithPromise":I
    new-instance v3, Lkotlin/Pair;

    const-class v29, Ljava/lang/String;

    move-object/from16 v30, v6

    .end local v6    # "p0$iv$iv":Ljava/lang/Class;
    .local v30, "p0$iv$iv":Ljava/lang/Class;
    invoke-static/range {v29 .. v29}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    move-object/from16 v29, v7

    const/16 v20, 0x0

    .end local v7    # "p1$iv$iv":Ljava/lang/Class;
    .local v29, "p1$iv$iv":Ljava/lang/Class;
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 224
    .local v3, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual/range {v22 .. v22}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/AnyType;

    .line 222
    .end local v3    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v22    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v23    # "$i$f$cachedAnyType":I
    if-nez v6, :cond_7

    sget-object v3, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$definition$lambda$2$$inlined$AsyncFunctionWithPromise$1;->INSTANCE:Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$definition$lambda$2$$inlined$AsyncFunctionWithPromise$1;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .local v3, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v6, 0x0

    .line 225
    .local v6, "$i$f$toAnyType":I
    new-instance v7, Lexpo/modules/kotlin/types/AnyType;

    .line 226
    move/from16 v22, v6

    .end local v6    # "$i$f$toAnyType":I
    .local v22, "$i$f$toAnyType":I
    new-instance v6, Lexpo/modules/kotlin/types/LazyKType;

    const-class v23, Ljava/lang/String;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    move-object/from16 v31, v8

    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v31, "label$iv$iv$iv$iv":Ljava/lang/String;
    :try_start_15
    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    .line 228
    nop

    .line 229
    nop

    .line 226
    move/from16 v23, v9

    const/4 v9, 0x0

    .end local v9    # "$i$f$trace":I
    .local v23, "$i$f$trace":I
    :try_start_16
    invoke-direct {v6, v8, v9, v3}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v6, Lkotlin/reflect/KType;

    .line 231
    nop

    .line 225
    invoke-direct {v7, v6, v5}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 232
    move-object v6, v7

    goto :goto_3

    .line 279
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v3    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v5    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v11    # "$this$definition_u24lambda_u242":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v12    # "$i$a$-ModuleDefinition-ExpoNotificationCategoriesModule$definition$1":I
    .end local v13    # "p2$iv$iv":Ljava/lang/Class;
    .end local v14    # "$i$f$toArgsArray":I
    .end local v16    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .end local v21    # "$i$f$toAnyType":I
    .end local v22    # "$i$f$toAnyType":I
    .end local v23    # "$i$f$trace":I
    .end local v25    # "$i$f$AsyncFunctionWithPromise":I
    .end local v29    # "p1$iv$iv":Ljava/lang/Class;
    .end local v30    # "p0$iv$iv":Ljava/lang/Class;
    .restart local v9    # "$i$f$trace":I
    :catchall_5
    move-exception v0

    move/from16 v23, v9

    .end local v9    # "$i$f$trace":I
    .restart local v23    # "$i$f$trace":I
    goto/16 :goto_4

    .line 222
    .end local v23    # "$i$f$trace":I
    .end local v31    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v2    # "name$iv":Ljava/lang/String;
    .restart local v5    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    .restart local v11    # "$this$definition_u24lambda_u242":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .restart local v12    # "$i$a$-ModuleDefinition-ExpoNotificationCategoriesModule$definition$1":I
    .restart local v13    # "p2$iv$iv":Ljava/lang/Class;
    .restart local v14    # "$i$f$toArgsArray":I
    .restart local v16    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .restart local v21    # "$i$f$toAnyType":I
    .restart local v25    # "$i$f$AsyncFunctionWithPromise":I
    .restart local v29    # "p1$iv$iv":Ljava/lang/Class;
    .restart local v30    # "p0$iv$iv":Ljava/lang/Class;
    :cond_7
    move-object/from16 v31, v8

    move/from16 v23, v9

    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v23    # "$i$f$trace":I
    .restart local v31    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :goto_3
    const/4 v3, 0x0

    .end local v21    # "$i$f$toAnyType":I
    aput-object v6, v15, v3

    .line 221
    nop

    .line 233
    const/4 v3, 0x0

    .line 234
    .local v3, "$i$f$toAnyType":I
    sget-object v6, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v6, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v7, 0x0

    .line 223
    .local v7, "$i$f$cachedAnyType":I
    new-instance v8, Lkotlin/Pair;

    const-class v9, Ljava/util/List;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    move/from16 v21, v3

    const/16 v20, 0x0

    .end local v3    # "$i$f$toAnyType":I
    .restart local v21    # "$i$f$toAnyType":I
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v8, v9, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v8

    .line 224
    .local v3, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v6}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    .line 234
    .end local v3    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v6    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v7    # "$i$f$cachedAnyType":I
    if-nez v8, :cond_8

    sget-object v3, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$definition$lambda$2$$inlined$AsyncFunctionWithPromise$2;->INSTANCE:Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$definition$lambda$2$$inlined$AsyncFunctionWithPromise$2;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .local v3, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v6, 0x0

    .line 235
    .local v6, "$i$f$toAnyType":I
    new-instance v8, Lexpo/modules/kotlin/types/AnyType;

    .line 236
    new-instance v7, Lexpo/modules/kotlin/types/LazyKType;

    const-class v9, Ljava/util/List;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    .line 238
    nop

    .line 239
    nop

    .line 236
    move/from16 v22, v6

    const/4 v6, 0x0

    .end local v6    # "$i$f$toAnyType":I
    .restart local v22    # "$i$f$toAnyType":I
    invoke-direct {v7, v9, v6, v3}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v7, Lkotlin/reflect/KType;

    .line 241
    nop

    .line 235
    invoke-direct {v8, v7, v5}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 242
    nop

    .line 234
    .end local v3    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v22    # "$i$f$toAnyType":I
    :cond_8
    const/4 v3, 0x1

    .end local v21    # "$i$f$toAnyType":I
    aput-object v8, v15, v3

    .line 221
    nop

    .line 243
    const/4 v3, 0x0

    .line 244
    .local v3, "$i$f$toAnyType":I
    sget-object v6, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v6, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v7, 0x0

    .line 223
    .restart local v7    # "$i$f$cachedAnyType":I
    new-instance v8, Lkotlin/Pair;

    const-class v9, Ljava/util/Map;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    move/from16 v21, v3

    const/16 v18, 0x1

    .end local v3    # "$i$f$toAnyType":I
    .restart local v21    # "$i$f$toAnyType":I
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v8, v9, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v8

    .line 224
    .local v3, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v6}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    .line 244
    .end local v3    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v6    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v7    # "$i$f$cachedAnyType":I
    if-nez v8, :cond_9

    sget-object v3, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$definition$lambda$2$$inlined$AsyncFunctionWithPromise$3;->INSTANCE:Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$definition$lambda$2$$inlined$AsyncFunctionWithPromise$3;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .local v3, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v6, 0x0

    .line 245
    .local v6, "$i$f$toAnyType":I
    new-instance v8, Lexpo/modules/kotlin/types/AnyType;

    .line 246
    new-instance v7, Lexpo/modules/kotlin/types/LazyKType;

    const-class v9, Ljava/util/Map;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    .line 248
    nop

    .line 249
    nop

    .line 246
    move/from16 v22, v6

    const/4 v6, 0x1

    .end local v6    # "$i$f$toAnyType":I
    .restart local v22    # "$i$f$toAnyType":I
    invoke-direct {v7, v9, v6, v3}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v7, Lkotlin/reflect/KType;

    .line 251
    nop

    .line 245
    invoke-direct {v8, v7, v5}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 252
    nop

    .line 244
    .end local v3    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v22    # "$i$f$toAnyType":I
    :cond_9
    nop

    .end local v21    # "$i$f$toAnyType":I
    const/4 v3, 0x2

    aput-object v8, v15, v3

    .line 221
    nop

    .line 253
    nop

    .line 254
    .end local v5    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v13    # "p2$iv$iv":Ljava/lang/Class;
    .end local v14    # "$i$f$toArgsArray":I
    .end local v29    # "p1$iv$iv":Ljava/lang/Class;
    .end local v30    # "p0$iv$iv":Ljava/lang/Class;
    new-instance v3, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$definition$lambda$2$$inlined$AsyncFunctionWithPromise$4;

    invoke-direct {v3, v1}, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$definition$lambda$2$$inlined$AsyncFunctionWithPromise$4;-><init>(Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 213
    invoke-direct {v4, v2, v15, v3}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    .line 254
    move-object v3, v4

    .local v3, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;
    const/4 v5, 0x0

    .line 255
    .local v5, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$19$iv":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    nop

    .line 254
    .end local v3    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;
    .end local v5    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$19$iv":I
    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 213
    nop

    .line 81
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v25    # "$i$f$AsyncFunctionWithPromise":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "deleteNotificationCategoryAsync"

    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v2    # "name$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 257
    .local v3, "$i$f$AsyncFunctionWithPromise":I
    new-instance v4, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v5

    .line 258
    .local v5, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 259
    const-class v6, Ljava/lang/String;

    .line 258
    .local v6, "p0$iv$iv":Ljava/lang/Class;
    const/4 v7, 0x0

    .line 263
    .local v7, "$i$f$toArgsArray":I
    const/4 v8, 0x1

    new-array v8, v8, [Lexpo/modules/kotlin/types/AnyType;

    const/4 v9, 0x0

    .line 264
    .local v9, "$i$f$toAnyType":I
    sget-object v13, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v13, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v14, 0x0

    .line 265
    .local v14, "$i$f$cachedAnyType":I
    new-instance v15, Lkotlin/Pair;

    const-class v18, Ljava/lang/String;

    move/from16 v21, v3

    .end local v3    # "$i$f$AsyncFunctionWithPromise":I
    .local v21, "$i$f$AsyncFunctionWithPromise":I
    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    move-object/from16 v22, v6

    const/16 v18, 0x0

    .end local v6    # "p0$iv$iv":Ljava/lang/Class;
    .local v22, "p0$iv$iv":Ljava/lang/Class;
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v15, v3, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v15

    .line 266
    .local v3, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v13}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/AnyType;

    .line 264
    .end local v3    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v13    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v14    # "$i$f$cachedAnyType":I
    if-nez v6, :cond_a

    sget-object v3, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$definition$lambda$2$$inlined$AsyncFunctionWithPromise$5;->INSTANCE:Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$definition$lambda$2$$inlined$AsyncFunctionWithPromise$5;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .local v3, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v6, 0x0

    .line 267
    .local v6, "$i$f$toAnyType":I
    new-instance v13, Lexpo/modules/kotlin/types/AnyType;

    .line 268
    new-instance v14, Lexpo/modules/kotlin/types/LazyKType;

    const-class v15, Ljava/lang/String;

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    .line 270
    nop

    .line 271
    nop

    .line 268
    move/from16 v18, v6

    const/4 v6, 0x0

    .end local v6    # "$i$f$toAnyType":I
    .local v18, "$i$f$toAnyType":I
    invoke-direct {v14, v15, v6, v3}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v14, Lkotlin/reflect/KType;

    .line 273
    nop

    .line 267
    invoke-direct {v13, v14, v5}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 274
    move-object v6, v13

    .line 264
    .end local v3    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v18    # "$i$f$toAnyType":I
    :cond_a
    const/4 v3, 0x0

    .end local v9    # "$i$f$toAnyType":I
    aput-object v6, v8, v3

    .line 263
    nop

    .line 275
    nop

    .line 276
    .end local v5    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v7    # "$i$f$toArgsArray":I
    .end local v22    # "p0$iv$iv":Ljava/lang/Class;
    new-instance v3, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$definition$lambda$2$$inlined$AsyncFunctionWithPromise$6;

    invoke-direct {v3, v1}, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$definition$lambda$2$$inlined$AsyncFunctionWithPromise$6;-><init>(Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 257
    invoke-direct {v4, v2, v8, v3}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    .line 276
    move-object v3, v4

    .local v3, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;
    const/4 v5, 0x0

    .line 277
    .local v5, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$11$iv":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    nop

    .line 276
    .end local v3    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;
    .end local v5    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$11$iv":I
    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 257
    nop

    .line 82
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v21    # "$i$f$AsyncFunctionWithPromise":I
    nop

    .line 151
    .end local v11    # "$this$definition_u24lambda_u242":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v12    # "$i$a$-ModuleDefinition-ExpoNotificationCategoriesModule$definition$1":I
    invoke-virtual {v10}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->buildModule()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    .line 156
    .end local v16    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    nop

    .line 279
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 156
    nop

    .line 153
    .end local v23    # "$i$f$trace":I
    .end local v31    # "label$iv$iv$iv$iv":Ljava/lang/String;
    nop

    .line 152
    .end local v24    # "$i$f$trace":I
    .end local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    nop

    .line 151
    .end local v26    # "$i$f$trace":I
    .end local v27    # "blockName$iv$iv":Ljava/lang/String;
    nop

    .line 82
    .end local v17    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v19    # "$i$f$ModuleDefinition":I
    return-object v0

    .line 279
    .restart local v17    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v19    # "$i$f$ModuleDefinition":I
    .restart local v23    # "$i$f$trace":I
    .restart local v24    # "$i$f$trace":I
    .restart local v26    # "$i$f$trace":I
    .restart local v27    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v31    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :catchall_6
    move-exception v0

    goto :goto_4

    .end local v23    # "$i$f$trace":I
    .end local v31    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v9, "$i$f$trace":I
    :catchall_7
    move-exception v0

    move-object/from16 v31, v8

    move/from16 v23, v9

    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v23    # "$i$f$trace":I
    .restart local v31    # "label$iv$iv$iv$iv":Ljava/lang/String;
    goto :goto_4

    .end local v23    # "$i$f$trace":I
    .end local v24    # "$i$f$trace":I
    .end local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v31    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v6, "tag$iv$iv$iv":Ljava/lang/String;
    .local v7, "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_8
    move-exception v0

    move-object/from16 v28, v6

    move/from16 v24, v7

    move-object/from16 v31, v8

    move/from16 v23, v9

    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v23    # "$i$f$trace":I
    .restart local v24    # "$i$f$trace":I
    .restart local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v31    # "label$iv$iv$iv$iv":Ljava/lang/String;
    goto :goto_4

    .end local v23    # "$i$f$trace":I
    .end local v24    # "$i$f$trace":I
    .end local v26    # "$i$f$trace":I
    .end local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v31    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v5, "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_9
    move-exception v0

    move/from16 v26, v5

    move-object/from16 v28, v6

    move/from16 v24, v7

    move-object/from16 v31, v8

    move/from16 v23, v9

    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v23    # "$i$f$trace":I
    .restart local v24    # "$i$f$trace":I
    .restart local v26    # "$i$f$trace":I
    .restart local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v31    # "label$iv$iv$iv$iv":Ljava/lang/String;
    goto :goto_4

    .end local v23    # "$i$f$trace":I
    .end local v24    # "$i$f$trace":I
    .end local v26    # "$i$f$trace":I
    .end local v27    # "blockName$iv$iv":Ljava/lang/String;
    .end local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v31    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v4, "blockName$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_a
    move-exception v0

    move-object/from16 v27, v4

    move/from16 v26, v5

    move-object/from16 v28, v6

    move/from16 v24, v7

    move-object/from16 v31, v8

    move/from16 v23, v9

    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v23    # "$i$f$trace":I
    .restart local v24    # "$i$f$trace":I
    .restart local v26    # "$i$f$trace":I
    .restart local v27    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v31    # "label$iv$iv$iv$iv":Ljava/lang/String;
    goto :goto_4

    .end local v19    # "$i$f$ModuleDefinition":I
    .end local v23    # "$i$f$trace":I
    .end local v24    # "$i$f$trace":I
    .end local v26    # "$i$f$trace":I
    .end local v27    # "blockName$iv$iv":Ljava/lang/String;
    .end local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v31    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v3, "$i$f$ModuleDefinition":I
    .restart local v4    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_b
    move-exception v0

    move/from16 v19, v3

    move-object/from16 v27, v4

    move/from16 v26, v5

    move-object/from16 v28, v6

    move/from16 v24, v7

    move-object/from16 v31, v8

    move/from16 v23, v9

    .end local v3    # "$i$f$ModuleDefinition":I
    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v19    # "$i$f$ModuleDefinition":I
    .restart local v23    # "$i$f$trace":I
    .restart local v24    # "$i$f$trace":I
    .restart local v26    # "$i$f$trace":I
    .restart local v27    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v31    # "label$iv$iv$iv$iv":Ljava/lang/String;
    goto :goto_4

    .end local v17    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v19    # "$i$f$ModuleDefinition":I
    .end local v23    # "$i$f$trace":I
    .end local v24    # "$i$f$trace":I
    .end local v26    # "$i$f$trace":I
    .end local v27    # "blockName$iv$iv":Ljava/lang/String;
    .end local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v31    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v2, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v3    # "$i$f$ModuleDefinition":I
    .restart local v4    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_c
    move-exception v0

    move-object/from16 v17, v2

    move/from16 v19, v3

    move-object/from16 v27, v4

    move/from16 v26, v5

    move-object/from16 v28, v6

    move/from16 v24, v7

    move-object/from16 v31, v8

    move/from16 v23, v9

    .end local v2    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v3    # "$i$f$ModuleDefinition":I
    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v17    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v19    # "$i$f$ModuleDefinition":I
    .restart local v23    # "$i$f$trace":I
    .restart local v24    # "$i$f$trace":I
    .restart local v26    # "$i$f$trace":I
    .restart local v27    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v31    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :goto_4
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method

.method public deleteNotificationCategoryAsync(Ljava/lang/String;Lexpo/modules/kotlin/Promise;)V
    .locals 3
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "promise"    # Lexpo/modules/kotlin/Promise;

    const-string v0, "identifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    sget-object v0, Lexpo/modules/notifications/service/NotificationsService;->Companion:Lexpo/modules/notifications/service/NotificationsService$Companion;

    .line 134
    invoke-direct {p0}, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 135
    nop

    .line 136
    new-instance v2, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$deleteNotificationCategoryAsync$1;

    invoke-direct {v2, p2}, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$deleteNotificationCategoryAsync$1;-><init>(Lexpo/modules/kotlin/Promise;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-direct {p0, v2}, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;->createResultReceiver(Lkotlin/jvm/functions/Function2;)Landroid/os/ResultReceiver;

    move-result-object v2

    .line 133
    invoke-virtual {v0, v1, p1, v2}, Lexpo/modules/notifications/service/NotificationsService$Companion;->deleteCategory(Landroid/content/Context;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    .line 144
    return-void
.end method

.method protected final getSerializer()Lexpo/modules/notifications/notifications/categories/serializers/NotificationsCategoriesSerializer;
    .locals 1

    .line 54
    iget-object v0, p0, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;->serializer$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/notifications/notifications/categories/serializers/NotificationsCategoriesSerializer;

    return-object v0
.end method

.method protected serializeCategories(Ljava/util/Collection;)Ljava/util/List;
    .locals 10
    .param p1, "categories"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lexpo/modules/notifications/notifications/model/NotificationCategory;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    const-string v0, "categories"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$map$iv":Ljava/lang/Iterable;
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;->getSerializer()Lexpo/modules/notifications/notifications/categories/serializers/NotificationsCategoriesSerializer;

    move-result-object v1

    const/4 v2, 0x0

    .line 280
    .local v2, "$i$f$map":I
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v0

    .local v4, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 281
    .local v5, "$i$f$mapTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 282
    .local v7, "item$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Lexpo/modules/notifications/notifications/model/NotificationCategory;

    .local v8, "p0":Lexpo/modules/notifications/notifications/model/NotificationCategory;
    const/4 v9, 0x0

    .line 147
    .local v9, "$i$a$-map-ExpoNotificationCategoriesModule$serializeCategories$1":I
    invoke-interface {v1, v8}, Lexpo/modules/notifications/notifications/categories/serializers/NotificationsCategoriesSerializer;->toBundle(Lexpo/modules/notifications/notifications/model/NotificationCategory;)Landroid/os/Bundle;

    move-result-object v8

    .line 282
    .end local v8    # "p0":Lexpo/modules/notifications/notifications/model/NotificationCategory;
    .end local v9    # "$i$a$-map-ExpoNotificationCategoriesModule$serializeCategories$1":I
    invoke-interface {v3, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 283
    .end local v7    # "item$iv$iv":Ljava/lang/Object;
    :cond_0
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$mapTo":I
    move-object v1, v3

    check-cast v1, Ljava/util/List;

    .line 280
    nop

    .line 147
    .end local v0    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$map":I
    return-object v1
.end method

.method public setNotificationCategoryAsync(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Lexpo/modules/kotlin/Promise;)V
    .locals 9
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "actionArguments"    # Ljava/util/List;
    .param p3, "categoryOptions"    # Ljava/util/Map;
    .param p4, "promise"    # Lexpo/modules/kotlin/Promise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lexpo/modules/notifications/notifications/categories/NotificationActionRecord;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lexpo/modules/kotlin/Promise;",
            ")V"
        }
    .end annotation

    const-string v0, "identifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionArguments"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 94
    .local v0, "actions":Ljava/util/List;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/notifications/notifications/categories/NotificationActionRecord;

    .line 95
    .local v2, "actionMap":Lexpo/modules/notifications/notifications/categories/NotificationActionRecord;
    invoke-virtual {v2}, Lexpo/modules/notifications/notifications/categories/NotificationActionRecord;->getTextInput()Lexpo/modules/notifications/notifications/categories/NotificationActionRecord$TextInput;

    move-result-object v3

    .line 96
    .local v3, "textInputOptions":Lexpo/modules/notifications/notifications/categories/NotificationActionRecord$TextInput;
    if-eqz v3, :cond_0

    .line 97
    nop

    .line 98
    new-instance v4, Lexpo/modules/notifications/notifications/model/TextInputNotificationAction;

    .line 99
    invoke-virtual {v2}, Lexpo/modules/notifications/notifications/categories/NotificationActionRecord;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    .line 100
    invoke-virtual {v2}, Lexpo/modules/notifications/notifications/categories/NotificationActionRecord;->getButtonTitle()Ljava/lang/String;

    move-result-object v6

    .line 101
    invoke-virtual {v2}, Lexpo/modules/notifications/notifications/categories/NotificationActionRecord;->getOptions()Lexpo/modules/notifications/notifications/categories/NotificationActionRecord$Options;

    move-result-object v7

    invoke-virtual {v7}, Lexpo/modules/notifications/notifications/categories/NotificationActionRecord$Options;->getOpensAppToForeground()Z

    move-result v7

    .line 102
    invoke-virtual {v3}, Lexpo/modules/notifications/notifications/categories/NotificationActionRecord$TextInput;->getPlaceholder()Ljava/lang/String;

    move-result-object v8

    .line 98
    invoke-direct {v4, v5, v6, v7, v8}, Lexpo/modules/notifications/notifications/model/TextInputNotificationAction;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 97
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 106
    :cond_0
    nop

    .line 107
    new-instance v4, Lexpo/modules/notifications/notifications/model/NotificationAction;

    .line 108
    invoke-virtual {v2}, Lexpo/modules/notifications/notifications/categories/NotificationActionRecord;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    .line 109
    invoke-virtual {v2}, Lexpo/modules/notifications/notifications/categories/NotificationActionRecord;->getButtonTitle()Ljava/lang/String;

    move-result-object v6

    .line 110
    invoke-virtual {v2}, Lexpo/modules/notifications/notifications/categories/NotificationActionRecord;->getOptions()Lexpo/modules/notifications/notifications/categories/NotificationActionRecord$Options;

    move-result-object v7

    invoke-virtual {v7}, Lexpo/modules/notifications/notifications/categories/NotificationActionRecord$Options;->getOpensAppToForeground()Z

    move-result v7

    .line 107
    invoke-direct {v4, v5, v6, v7}, Lexpo/modules/notifications/notifications/model/NotificationAction;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 106
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 115
    .end local v2    # "actionMap":Lexpo/modules/notifications/notifications/categories/NotificationActionRecord;
    .end local v3    # "textInputOptions":Lexpo/modules/notifications/notifications/categories/NotificationActionRecord$TextInput;
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 118
    sget-object v1, Lexpo/modules/notifications/service/NotificationsService;->Companion:Lexpo/modules/notifications/service/NotificationsService$Companion;

    .line 119
    invoke-direct {p0}, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 120
    new-instance v3, Lexpo/modules/notifications/notifications/model/NotificationCategory;

    invoke-direct {v3, p1, v0}, Lexpo/modules/notifications/notifications/model/NotificationCategory;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 121
    new-instance v4, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$setNotificationCategoryAsync$1;

    invoke-direct {v4, p4, p0}, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$setNotificationCategoryAsync$1;-><init>(Lexpo/modules/kotlin/Promise;Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-direct {p0, v4}, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;->createResultReceiver(Lkotlin/jvm/functions/Function2;)Landroid/os/ResultReceiver;

    move-result-object v4

    .line 118
    invoke-virtual {v1, v2, v3, v4}, Lexpo/modules/notifications/service/NotificationsService$Companion;->setCategory(Landroid/content/Context;Lexpo/modules/notifications/notifications/model/NotificationCategory;Landroid/os/ResultReceiver;)V

    .line 130
    return-void

    .line 116
    :cond_2
    new-instance v1, Lexpo/modules/core/errors/InvalidArgumentException;

    const-string v2, "Invalid arguments provided for notification category. Must provide at least one action."

    invoke-direct {v1, v2}, Lexpo/modules/core/errors/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
