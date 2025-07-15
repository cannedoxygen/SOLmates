.class public Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule;
.super Lexpo/modules/kotlin/modules/Module;
.source "ExpoNotificationPresentationModule.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExpoNotificationPresentationModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExpoNotificationPresentationModule.kt\nexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule\n+ 2 Module.kt\nexpo/modules/kotlin/modules/ModuleKt\n+ 3 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 4 Trace.kt\nandroidx/tracing/TraceKt\n+ 5 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder\n+ 6 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n+ 7 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeProvider\n+ 8 UntypedAsyncFunctionComponent.kt\nexpo/modules/kotlin/functions/UntypedAsyncFunctionComponentKt\n+ 9 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 10 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,114:1\n61#2:115\n14#3:116\n25#3:117\n27#4,3:118\n31#4:289\n297#5:121\n300#5,3:150\n243#5,8:153\n251#5,2:208\n272#5:210\n275#5,3:229\n243#5,8:232\n251#5,2:287\n182#6,7:122\n168#6:129\n158#6,8:132\n189#6:140\n168#6:141\n158#6,8:142\n172#6,6:161\n168#6:167\n158#6,8:170\n176#6:178\n172#6,6:211\n168#6:217\n158#6,8:220\n176#6:228\n172#6,6:240\n168#6:246\n158#6,8:249\n176#6:257\n143#7,2:130\n143#7,2:168\n143#7,2:218\n143#7,2:247\n13#8,6:179\n19#8,19:189\n13#8,6:258\n19#8,19:268\n8#9,4:185\n8#9,4:264\n1549#10:290\n1620#10,3:291\n*S KotlinDebug\n*F\n+ 1 ExpoNotificationPresentationModule.kt\nexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule\n*L\n31#1:115\n31#1:116\n31#1:117\n31#1:118,3\n31#1:289\n34#1:121\n34#1:150,3\n53#1:153,8\n53#1:208,2\n68#1:210\n68#1:229,3\n70#1:232,8\n70#1:287,2\n34#1:122,7\n34#1:129\n34#1:132,8\n34#1:140\n34#1:141\n34#1:142,8\n53#1:161,6\n53#1:167\n53#1:170,8\n53#1:178\n68#1:211,6\n68#1:217\n68#1:220,8\n68#1:228\n70#1:240,6\n70#1:246\n70#1:249,8\n70#1:257\n34#1:130,2\n53#1:168,2\n68#1:218,2\n70#1:247,2\n53#1:179,6\n53#1:189,19\n70#1:258,6\n70#1:268,19\n53#1:185,4\n70#1:264,4\n111#1:290\n111#1:291,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\"\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0014JF\u0010\u000f\u001a\u00020\u00102<\u0010\u0011\u001a8\u0012\u0013\u0012\u00110\u0013\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0016\u0012\u0015\u0012\u0013\u0018\u00010\u0017\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0018\u0012\u0004\u0012\u00020\u00190\u0012j\u0002`\u001aH\u0004J\u0008\u0010\u001b\u001a\u00020\u001cH\u0016J\u0010\u0010\u001d\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u001fH\u0014J\u0018\u0010 \u001a\u00020\u00192\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u001e\u001a\u00020\u001fH\u0014J\u001c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00170\"2\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020%0$H\u0014R\u0014\u0010\u0003\u001a\u00020\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006&"
    }
    d2 = {
        "Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule;",
        "Lexpo/modules/kotlin/modules/Module;",
        "()V",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "createNotificationRequest",
        "Lexpo/modules/notifications/notifications/model/NotificationRequest;",
        "identifier",
        "",
        "content",
        "Lexpo/modules/notifications/notifications/interfaces/INotificationContent;",
        "trigger",
        "Lexpo/modules/notifications/notifications/interfaces/NotificationTrigger;",
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
        "dismissAllNotificationsAsync",
        "promise",
        "Lexpo/modules/kotlin/Promise;",
        "dismissNotificationAsync",
        "serializeNotifications",
        "",
        "notifications",
        "",
        "Lexpo/modules/notifications/notifications/model/Notification;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lexpo/modules/kotlin/modules/Module;-><init>()V

    return-void
.end method

.method public static final synthetic access$getContext(Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule;)Landroid/content/Context;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule;

    .line 24
    invoke-direct {p0}, Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private final getContext()Landroid/content/Context;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

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
.method protected createNotificationRequest(Ljava/lang/String;Lexpo/modules/notifications/notifications/interfaces/INotificationContent;Lexpo/modules/notifications/notifications/interfaces/NotificationTrigger;)Lexpo/modules/notifications/notifications/model/NotificationRequest;
    .locals 2
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "content"    # Lexpo/modules/notifications/notifications/interfaces/INotificationContent;
    .param p3, "trigger"    # Lexpo/modules/notifications/notifications/interfaces/NotificationTrigger;

    const-string v0, "identifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    new-instance v0, Lexpo/modules/notifications/notifications/model/NotificationRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lexpo/modules/notifications/notifications/model/NotificationRequest;-><init>(Ljava/lang/String;Lexpo/modules/notifications/notifications/interfaces/INotificationContent;Lexpo/modules/notifications/notifications/interfaces/NotificationTrigger;)V

    return-object v0
.end method

.method protected final createResultReceiver(Lkotlin/jvm/functions/Function2;)Landroid/os/ResultReceiver;
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

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lexpo/modules/notifications/UtilsKt;->createDefaultResultReceiver(Landroid/os/Handler;Lkotlin/jvm/functions/Function2;)Landroid/os/ResultReceiver;

    move-result-object v0

    return-object v0
.end method

.method public definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
    .locals 30

    .line 31
    move-object/from16 v1, p0

    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/modules/Module;

    .local v2, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    const/4 v3, 0x0

    .line 115
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

    .line 116
    .local v5, "$i$f$trace":I
    const-string v6, "ExpoModulesCore"

    .local v6, "tag$iv$iv$iv":Ljava/lang/String;
    const/4 v7, 0x0

    .line 117
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

    .line 118
    .local v9, "$i$f$trace":I
    invoke-static {v8}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 119
    nop

    .line 120
    const/4 v0, 0x0

    .line 115
    .local v0, "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    :try_start_0
    new-instance v10, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    invoke-direct {v10, v2}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    move-object v11, v10

    .local v11, "$this$definition_u24lambda_u243":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    const/4 v12, 0x0

    .line 32
    .local v12, "$i$a$-ModuleDefinition-ExpoNotificationPresentationModule$definition$1":I
    const-string v13, "ExpoNotificationPresenter"

    invoke-virtual {v11, v13}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Name(Ljava/lang/String;)V

    .line 34
    move-object v13, v11

    check-cast v13, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v14, "presentNotificationAsync"

    .local v13, "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .local v14, "name$iv":Ljava/lang/String;
    const/4 v15, 0x0

    .line 121
    .local v15, "$i$f$AsyncFunctionWithPromise":I
    move/from16 v16, v0

    .end local v0    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .local v16, "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    new-instance v0, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    invoke-virtual {v13}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v17

    move-object/from16 v18, v17

    .line 122
    .local v18, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 123
    const-class v17, Ljava/lang/String;

    .line 122
    .local v17, "p0$iv$iv":Ljava/lang/Class;
    nop

    .line 124
    const-class v19, Lexpo/modules/core/arguments/ReadableArguments;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 122
    .local v19, "p1$iv$iv":Ljava/lang/Class;
    const/16 v20, 0x0

    .line 128
    .local v20, "$i$f$toArgsArray":I
    move-object/from16 v21, v2

    .end local v2    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .local v21, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    const/4 v2, 0x2

    :try_start_1
    new-array v2, v2, [Lexpo/modules/kotlin/types/AnyType;

    const/16 v22, 0x0

    .line 129
    .local v22, "$i$f$toAnyType":I
    sget-object v23, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .local v23, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/16 v24, 0x0

    .line 130
    .local v24, "$i$f$cachedAnyType":I
    move/from16 v25, v3

    .end local v3    # "$i$f$ModuleDefinition":I
    .local v25, "$i$f$ModuleDefinition":I
    :try_start_2
    new-instance v3, Lkotlin/Pair;

    const-class v26, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    move-object/from16 v27, v4

    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .local v27, "blockName$iv$iv":Ljava/lang/String;
    :try_start_3
    invoke-static/range {v26 .. v26}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    move/from16 v26, v5

    .end local v5    # "$i$f$trace":I
    .local v26, "$i$f$trace":I
    const/4 v5, 0x0

    move-object/from16 v28, v6

    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .local v28, "tag$iv$iv$iv":Ljava/lang/String;
    :try_start_4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v3, v4, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 131
    .local v3, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual/range {v23 .. v23}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lexpo/modules/kotlin/types/AnyType;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 129
    .end local v3    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v23    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v24    # "$i$f$cachedAnyType":I
    if-nez v4, :cond_0

    :try_start_5
    sget-object v3, Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$1;->INSTANCE:Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$1;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .local v3, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 132
    .local v4, "$i$f$toAnyType":I
    new-instance v6, Lexpo/modules/kotlin/types/AnyType;

    .line 133
    new-instance v5, Lexpo/modules/kotlin/types/LazyKType;

    const-class v24, Ljava/lang/String;

    move/from16 v29, v4

    .end local v4    # "$i$f$toAnyType":I
    .local v29, "$i$f$toAnyType":I
    invoke-static/range {v24 .. v24}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 135
    nop

    .line 136
    nop

    .line 133
    move/from16 v24, v7

    const/4 v7, 0x0

    .end local v7    # "$i$f$trace":I
    .local v24, "$i$f$trace":I
    :try_start_6
    invoke-direct {v5, v4, v7, v3}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v5, Lkotlin/reflect/KType;

    .line 138
    nop

    .line 132
    move-object/from16 v7, v18

    .end local v18    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .local v7, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    invoke-direct {v6, v5, v7}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 139
    move-object v4, v6

    goto :goto_0

    .line 289
    .end local v3    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v7    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v11    # "$this$definition_u24lambda_u243":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v12    # "$i$a$-ModuleDefinition-ExpoNotificationPresentationModule$definition$1":I
    .end local v13    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v14    # "name$iv":Ljava/lang/String;
    .end local v15    # "$i$f$AsyncFunctionWithPromise":I
    .end local v16    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .end local v17    # "p0$iv$iv":Ljava/lang/Class;
    .end local v19    # "p1$iv$iv":Ljava/lang/Class;
    .end local v20    # "$i$f$toArgsArray":I
    .end local v22    # "$i$f$toAnyType":I
    .end local v29    # "$i$f$toAnyType":I
    :catchall_0
    move-exception v0

    move-object/from16 v18, v8

    goto/16 :goto_6

    .end local v24    # "$i$f$trace":I
    .local v7, "$i$f$trace":I
    :catchall_1
    move-exception v0

    move/from16 v24, v7

    move-object/from16 v18, v8

    .end local v7    # "$i$f$trace":I
    .restart local v24    # "$i$f$trace":I
    goto/16 :goto_6

    .line 129
    .end local v24    # "$i$f$trace":I
    .restart local v7    # "$i$f$trace":I
    .restart local v11    # "$this$definition_u24lambda_u243":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .restart local v12    # "$i$a$-ModuleDefinition-ExpoNotificationPresentationModule$definition$1":I
    .restart local v13    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v14    # "name$iv":Ljava/lang/String;
    .restart local v15    # "$i$f$AsyncFunctionWithPromise":I
    .restart local v16    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .restart local v17    # "p0$iv$iv":Ljava/lang/Class;
    .restart local v18    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .restart local v19    # "p1$iv$iv":Ljava/lang/Class;
    .restart local v20    # "$i$f$toArgsArray":I
    .restart local v22    # "$i$f$toAnyType":I
    :cond_0
    move/from16 v24, v7

    move-object/from16 v7, v18

    .end local v18    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .local v7, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .restart local v24    # "$i$f$trace":I
    :goto_0
    const/4 v3, 0x0

    .end local v22    # "$i$f$toAnyType":I
    :try_start_7
    aput-object v4, v2, v3

    .line 128
    nop

    .line 140
    const/4 v3, 0x0

    .line 141
    .local v3, "$i$f$toAnyType":I
    sget-object v4, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v4, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v5, 0x0

    .line 130
    .local v5, "$i$f$cachedAnyType":I
    new-instance v6, Lkotlin/Pair;

    const-class v18, Lexpo/modules/core/arguments/ReadableArguments;

    move/from16 v22, v3

    .end local v3    # "$i$f$toAnyType":I
    .restart local v22    # "$i$f$toAnyType":I
    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    move/from16 v29, v5

    const/16 v18, 0x0

    .end local v5    # "$i$f$cachedAnyType":I
    .local v29, "$i$f$cachedAnyType":I
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v6, v3, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v6

    .line 131
    .local v3, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v4}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lexpo/modules/kotlin/types/AnyType;

    .line 141
    .end local v3    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v4    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v29    # "$i$f$cachedAnyType":I
    if-nez v5, :cond_1

    sget-object v3, Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$2;->INSTANCE:Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$2;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .local v3, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 142
    .local v4, "$i$f$toAnyType":I
    new-instance v5, Lexpo/modules/kotlin/types/AnyType;

    .line 143
    new-instance v6, Lexpo/modules/kotlin/types/LazyKType;

    const-class v18, Lexpo/modules/core/arguments/ReadableArguments;

    move/from16 v29, v4

    .end local v4    # "$i$f$toAnyType":I
    .local v29, "$i$f$toAnyType":I
    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 145
    nop

    .line 146
    nop

    .line 143
    move-object/from16 v18, v8

    const/4 v8, 0x0

    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v18, "label$iv$iv$iv$iv":Ljava/lang/String;
    :try_start_8
    invoke-direct {v6, v4, v8, v3}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v6, Lkotlin/reflect/KType;

    .line 148
    nop

    .line 142
    invoke-direct {v5, v6, v7}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 149
    goto :goto_1

    .line 141
    .end local v3    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v18    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v29    # "$i$f$toAnyType":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :cond_1
    move-object/from16 v18, v8

    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v18    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :goto_1
    nop

    .end local v22    # "$i$f$toAnyType":I
    const/4 v3, 0x1

    aput-object v5, v2, v3

    .line 128
    nop

    .line 127
    nop

    .line 150
    .end local v7    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v17    # "p0$iv$iv":Ljava/lang/Class;
    .end local v19    # "p1$iv$iv":Ljava/lang/Class;
    .end local v20    # "$i$f$toArgsArray":I
    new-instance v4, Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$3;

    invoke-direct {v4, v1}, Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$3;-><init>(Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 121
    invoke-direct {v0, v14, v2, v4}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    .line 150
    move-object v2, v0

    .local v2, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;
    const/4 v4, 0x0

    .line 151
    .local v4, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$15$iv":I
    invoke-virtual {v13}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    nop

    .line 150
    .end local v2    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;
    .end local v4    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$15$iv":I
    check-cast v0, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 121
    nop

    .line 53
    .end local v13    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v14    # "name$iv":Ljava/lang/String;
    .end local v15    # "$i$f$AsyncFunctionWithPromise":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "getPresentedNotificationsAsync"

    .local v0, "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .local v2, "name$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 153
    .local v4, "$i$f$AsyncFunction":I
    const-class v5, Lexpo/modules/kotlin/Promise;

    const-class v6, Lexpo/modules/kotlin/Promise;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 154
    new-instance v5, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    const/4 v6, 0x0

    new-array v7, v6, [Lexpo/modules/kotlin/types/AnyType;

    .line 160
    new-instance v6, Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule$definition$lambda$3$$inlined$AsyncFunction$1;

    invoke-direct {v6, v1}, Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule$definition$lambda$3$$inlined$AsyncFunction$1;-><init>(Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 154
    invoke-direct {v5, v2, v7, v6}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    move/from16 v20, v4

    goto/16 :goto_3

    .line 156
    :cond_2
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v5

    .line 161
    .local v5, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 162
    const-class v6, Lexpo/modules/kotlin/Promise;

    .line 161
    .local v6, "p0$iv$iv":Ljava/lang/Class;
    const/4 v7, 0x0

    .line 166
    .local v7, "$i$f$toArgsArray":I
    new-array v8, v3, [Lexpo/modules/kotlin/types/AnyType;

    const/4 v13, 0x0

    .line 167
    .local v13, "$i$f$toAnyType":I
    sget-object v14, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v14, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v15, 0x0

    .line 168
    .local v15, "$i$f$cachedAnyType":I
    new-instance v3, Lkotlin/Pair;

    const-class v19, Lexpo/modules/kotlin/Promise;

    move/from16 v20, v4

    .end local v4    # "$i$f$AsyncFunction":I
    .local v20, "$i$f$AsyncFunction":I
    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    move-object/from16 v22, v6

    const/16 v19, 0x0

    .end local v6    # "p0$iv$iv":Ljava/lang/Class;
    .local v22, "p0$iv$iv":Ljava/lang/Class;
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v3, v4, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 169
    .local v3, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v14}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lexpo/modules/kotlin/types/AnyType;

    .line 167
    .end local v3    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v14    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v15    # "$i$f$cachedAnyType":I
    if-nez v4, :cond_3

    sget-object v3, Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule$definition$lambda$3$$inlined$AsyncFunction$2;->INSTANCE:Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule$definition$lambda$3$$inlined$AsyncFunction$2;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .local v3, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 170
    .local v4, "$i$f$toAnyType":I
    new-instance v6, Lexpo/modules/kotlin/types/AnyType;

    .line 171
    new-instance v14, Lexpo/modules/kotlin/types/LazyKType;

    const-class v15, Lexpo/modules/kotlin/Promise;

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    .line 173
    nop

    .line 174
    nop

    .line 171
    move/from16 v19, v4

    const/4 v4, 0x0

    .end local v4    # "$i$f$toAnyType":I
    .local v19, "$i$f$toAnyType":I
    invoke-direct {v14, v15, v4, v3}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v14, Lkotlin/reflect/KType;

    .line 176
    nop

    .line 170
    invoke-direct {v6, v14, v5}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 177
    move-object v4, v6

    .line 167
    .end local v3    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v19    # "$i$f$toAnyType":I
    :cond_3
    const/4 v3, 0x0

    .end local v13    # "$i$f$toAnyType":I
    aput-object v4, v8, v3

    .line 166
    nop

    .line 178
    nop

    .line 156
    .end local v5    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v7    # "$i$f$toArgsArray":I
    .end local v22    # "p0$iv$iv":Ljava/lang/Class;
    new-instance v3, Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule$definition$lambda$3$$inlined$AsyncFunction$3;

    invoke-direct {v3, v1}, Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule$definition$lambda$3$$inlined$AsyncFunction$3;-><init>(Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .local v3, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    move-object v4, v8

    .local v4, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/4 v5, 0x0

    .line 179
    .local v5, "$i$f$createAsyncFunctionComponent":I
    const-class v6, Lkotlin/Unit;

    .line 182
    nop

    .line 183
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 184
    const/4 v6, 0x0

    .line 185
    .local v6, "$i$f$enforceType":I
    nop

    .line 188
    nop

    .line 189
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 191
    :cond_4
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 192
    const/4 v6, 0x0

    .line 185
    .restart local v6    # "$i$f$enforceType":I
    nop

    .line 188
    nop

    .line 193
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 195
    :cond_5
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 196
    const/4 v6, 0x0

    .line 185
    .restart local v6    # "$i$f$enforceType":I
    nop

    .line 188
    nop

    .line 197
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 199
    :cond_6
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 200
    const/4 v6, 0x0

    .line 185
    .restart local v6    # "$i$f$enforceType":I
    nop

    .line 188
    nop

    .line 201
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 203
    :cond_7
    const-class v7, Ljava/lang/String;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 204
    const/4 v6, 0x0

    .line 185
    .restart local v6    # "$i$f$enforceType":I
    nop

    .line 188
    nop

    .line 205
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 207
    :cond_8
    new-instance v6, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 182
    :goto_2
    move-object v5, v6

    .line 160
    .end local v3    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v4    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v5    # "$i$f$createAsyncFunctionComponent":I
    :goto_3
    move-object v3, v5

    .local v3, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v4, 0x0

    .line 208
    .local v4, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$7$iv":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    nop

    .line 160
    .end local v3    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v4    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$7$iv":I
    nop

    .line 153
    nop

    .line 68
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v20    # "$i$f$AsyncFunction":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "dismissNotificationAsync"

    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v2    # "name$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 210
    .local v3, "$i$f$AsyncFunctionWithPromise":I
    new-instance v4, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v5

    .line 211
    .local v5, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 212
    const-class v6, Ljava/lang/String;

    .line 211
    .local v6, "p0$iv$iv":Ljava/lang/Class;
    const/4 v7, 0x0

    .line 216
    .restart local v7    # "$i$f$toArgsArray":I
    const/4 v8, 0x1

    new-array v13, v8, [Lexpo/modules/kotlin/types/AnyType;

    const/4 v8, 0x0

    .line 217
    .local v8, "$i$f$toAnyType":I
    sget-object v14, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .restart local v14    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v15, 0x0

    .line 218
    .restart local v15    # "$i$f$cachedAnyType":I
    move/from16 v19, v3

    .end local v3    # "$i$f$AsyncFunctionWithPromise":I
    .local v19, "$i$f$AsyncFunctionWithPromise":I
    new-instance v3, Lkotlin/Pair;

    const-class v20, Ljava/lang/String;

    move-object/from16 v22, v6

    .end local v6    # "p0$iv$iv":Ljava/lang/Class;
    .restart local v22    # "p0$iv$iv":Ljava/lang/Class;
    invoke-static/range {v20 .. v20}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    move/from16 v29, v7

    const/16 v20, 0x0

    .end local v7    # "$i$f$toArgsArray":I
    .local v29, "$i$f$toArgsArray":I
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 219
    .local v3, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v14}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/AnyType;

    .line 217
    .end local v3    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v14    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v15    # "$i$f$cachedAnyType":I
    if-nez v6, :cond_9

    sget-object v3, Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$4;->INSTANCE:Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$4;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .local v3, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v6, 0x0

    .line 220
    .local v6, "$i$f$toAnyType":I
    new-instance v7, Lexpo/modules/kotlin/types/AnyType;

    .line 221
    new-instance v14, Lexpo/modules/kotlin/types/LazyKType;

    const-class v15, Ljava/lang/String;

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    .line 223
    nop

    .line 224
    nop

    .line 221
    move/from16 v20, v6

    const/4 v6, 0x0

    .end local v6    # "$i$f$toAnyType":I
    .local v20, "$i$f$toAnyType":I
    invoke-direct {v14, v15, v6, v3}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v14, Lkotlin/reflect/KType;

    .line 226
    nop

    .line 220
    invoke-direct {v7, v14, v5}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 227
    move-object v6, v7

    .line 217
    .end local v3    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v20    # "$i$f$toAnyType":I
    :cond_9
    const/4 v3, 0x0

    .end local v8    # "$i$f$toAnyType":I
    aput-object v6, v13, v3

    .line 216
    nop

    .line 228
    nop

    .line 229
    .end local v5    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v22    # "p0$iv$iv":Ljava/lang/Class;
    .end local v29    # "$i$f$toArgsArray":I
    new-instance v3, Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$5;

    invoke-direct {v3, v1}, Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$5;-><init>(Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 210
    invoke-direct {v4, v2, v13, v3}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    .line 229
    move-object v3, v4

    .local v3, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;
    const/4 v5, 0x0

    .line 230
    .local v5, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$11$iv":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    nop

    .line 229
    .end local v3    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;
    .end local v5    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$11$iv":I
    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 210
    nop

    .line 70
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v19    # "$i$f$AsyncFunctionWithPromise":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "dismissAllNotificationsAsync"

    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v2    # "name$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 232
    .local v3, "$i$f$AsyncFunction":I
    const-class v4, Lexpo/modules/kotlin/Promise;

    const-class v5, Lexpo/modules/kotlin/Promise;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 233
    new-instance v4, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    const/4 v5, 0x0

    new-array v5, v5, [Lexpo/modules/kotlin/types/AnyType;

    .line 239
    new-instance v6, Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule$definition$lambda$3$$inlined$AsyncFunction$4;

    invoke-direct {v6, v1}, Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule$definition$lambda$3$$inlined$AsyncFunction$4;-><init>(Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 233
    invoke-direct {v4, v2, v5, v6}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    move/from16 v19, v3

    goto/16 :goto_5

    .line 235
    :cond_a
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v4

    .line 240
    .local v4, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 241
    const-class v5, Lexpo/modules/kotlin/Promise;

    .line 240
    .local v5, "p0$iv$iv":Ljava/lang/Class;
    const/4 v6, 0x0

    .line 245
    .local v6, "$i$f$toArgsArray":I
    const/4 v7, 0x1

    new-array v7, v7, [Lexpo/modules/kotlin/types/AnyType;

    const/4 v8, 0x0

    .line 246
    .restart local v8    # "$i$f$toAnyType":I
    sget-object v13, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v13, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v14, 0x0

    .line 247
    .local v14, "$i$f$cachedAnyType":I
    new-instance v15, Lkotlin/Pair;

    const-class v17, Lexpo/modules/kotlin/Promise;

    move/from16 v19, v3

    .end local v3    # "$i$f$AsyncFunction":I
    .local v19, "$i$f$AsyncFunction":I
    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    move-object/from16 v20, v5

    const/16 v17, 0x0

    .end local v5    # "p0$iv$iv":Ljava/lang/Class;
    .local v20, "p0$iv$iv":Ljava/lang/Class;
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v15, v3, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v15

    .line 248
    .local v3, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v13}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lexpo/modules/kotlin/types/AnyType;

    .line 246
    .end local v3    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v13    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v14    # "$i$f$cachedAnyType":I
    if-nez v5, :cond_b

    sget-object v3, Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule$definition$lambda$3$$inlined$AsyncFunction$5;->INSTANCE:Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule$definition$lambda$3$$inlined$AsyncFunction$5;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .local v3, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v5, 0x0

    .line 249
    .local v5, "$i$f$toAnyType":I
    new-instance v13, Lexpo/modules/kotlin/types/AnyType;

    .line 250
    new-instance v14, Lexpo/modules/kotlin/types/LazyKType;

    const-class v15, Lexpo/modules/kotlin/Promise;

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    .line 252
    nop

    .line 253
    nop

    .line 250
    move/from16 v17, v5

    const/4 v5, 0x0

    .end local v5    # "$i$f$toAnyType":I
    .local v17, "$i$f$toAnyType":I
    invoke-direct {v14, v15, v5, v3}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v14, Lkotlin/reflect/KType;

    .line 255
    nop

    .line 249
    invoke-direct {v13, v14, v4}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 256
    move-object v5, v13

    .line 246
    .end local v3    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v17    # "$i$f$toAnyType":I
    :cond_b
    const/4 v3, 0x0

    .end local v8    # "$i$f$toAnyType":I
    aput-object v5, v7, v3

    .line 245
    nop

    .line 257
    nop

    .line 235
    .end local v4    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v6    # "$i$f$toArgsArray":I
    .end local v20    # "p0$iv$iv":Ljava/lang/Class;
    new-instance v3, Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule$definition$lambda$3$$inlined$AsyncFunction$6;

    invoke-direct {v3, v1}, Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule$definition$lambda$3$$inlined$AsyncFunction$6;-><init>(Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .local v3, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    move-object v4, v7

    .local v4, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/4 v5, 0x0

    .line 258
    .local v5, "$i$f$createAsyncFunctionComponent":I
    const-class v6, Lkotlin/Unit;

    .line 261
    nop

    .line 262
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 263
    const/4 v6, 0x0

    .line 264
    .local v6, "$i$f$enforceType":I
    nop

    .line 267
    nop

    .line 268
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_4

    .line 270
    :cond_c
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 271
    const/4 v6, 0x0

    .line 264
    .restart local v6    # "$i$f$enforceType":I
    nop

    .line 267
    nop

    .line 272
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_4

    .line 274
    :cond_d
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 275
    const/4 v6, 0x0

    .line 264
    .restart local v6    # "$i$f$enforceType":I
    nop

    .line 267
    nop

    .line 276
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_4

    .line 278
    :cond_e
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 279
    const/4 v6, 0x0

    .line 264
    .restart local v6    # "$i$f$enforceType":I
    nop

    .line 267
    nop

    .line 280
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_4

    .line 282
    :cond_f
    const-class v7, Ljava/lang/String;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 283
    const/4 v6, 0x0

    .line 264
    .restart local v6    # "$i$f$enforceType":I
    nop

    .line 267
    nop

    .line 284
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_4

    .line 286
    :cond_10
    new-instance v6, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v6, v2, v4, v3}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 261
    :goto_4
    move-object v4, v6

    .line 239
    .end local v3    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v4    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v5    # "$i$f$createAsyncFunctionComponent":I
    :goto_5
    move-object v3, v4

    .local v3, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v4, 0x0

    .line 287
    .local v4, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$7$iv":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    nop

    .line 239
    .end local v3    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v4    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$7$iv":I
    nop

    .line 232
    nop

    .line 71
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v19    # "$i$f$AsyncFunction":I
    nop

    .line 115
    .end local v11    # "$this$definition_u24lambda_u243":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v12    # "$i$a$-ModuleDefinition-ExpoNotificationPresentationModule$definition$1":I
    invoke-virtual {v10}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->buildModule()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 120
    .end local v16    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    nop

    .line 289
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 120
    nop

    .line 117
    .end local v9    # "$i$f$trace":I
    .end local v18    # "label$iv$iv$iv$iv":Ljava/lang/String;
    nop

    .line 116
    .end local v24    # "$i$f$trace":I
    .end local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    nop

    .line 115
    .end local v26    # "$i$f$trace":I
    .end local v27    # "blockName$iv$iv":Ljava/lang/String;
    nop

    .line 71
    .end local v21    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v25    # "$i$f$ModuleDefinition":I
    return-object v0

    .line 289
    .restart local v9    # "$i$f$trace":I
    .restart local v18    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v21    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v24    # "$i$f$trace":I
    .restart local v25    # "$i$f$ModuleDefinition":I
    .restart local v26    # "$i$f$trace":I
    .restart local v27    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    :catchall_2
    move-exception v0

    goto :goto_6

    .end local v18    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v8, "label$iv$iv$iv$iv":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move-object/from16 v18, v8

    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v18    # "label$iv$iv$iv$iv":Ljava/lang/String;
    goto :goto_6

    .end local v18    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v24    # "$i$f$trace":I
    .local v7, "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :catchall_4
    move-exception v0

    move/from16 v24, v7

    move-object/from16 v18, v8

    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v18    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v24    # "$i$f$trace":I
    goto :goto_6

    .end local v18    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v24    # "$i$f$trace":I
    .end local v26    # "$i$f$trace":I
    .end local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    .local v5, "$i$f$trace":I
    .local v6, "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :catchall_5
    move-exception v0

    move/from16 v26, v5

    move-object/from16 v28, v6

    move/from16 v24, v7

    move-object/from16 v18, v8

    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v18    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v24    # "$i$f$trace":I
    .restart local v26    # "$i$f$trace":I
    .restart local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    goto :goto_6

    .end local v18    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v24    # "$i$f$trace":I
    .end local v26    # "$i$f$trace":I
    .end local v27    # "blockName$iv$iv":Ljava/lang/String;
    .end local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    .local v4, "blockName$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :catchall_6
    move-exception v0

    move-object/from16 v27, v4

    move/from16 v26, v5

    move-object/from16 v28, v6

    move/from16 v24, v7

    move-object/from16 v18, v8

    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v18    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v24    # "$i$f$trace":I
    .restart local v26    # "$i$f$trace":I
    .restart local v27    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    goto :goto_6

    .end local v18    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v24    # "$i$f$trace":I
    .end local v25    # "$i$f$ModuleDefinition":I
    .end local v26    # "$i$f$trace":I
    .end local v27    # "blockName$iv$iv":Ljava/lang/String;
    .end local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    .local v3, "$i$f$ModuleDefinition":I
    .restart local v4    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :catchall_7
    move-exception v0

    move/from16 v25, v3

    move-object/from16 v27, v4

    move/from16 v26, v5

    move-object/from16 v28, v6

    move/from16 v24, v7

    move-object/from16 v18, v8

    .end local v3    # "$i$f$ModuleDefinition":I
    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v18    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v24    # "$i$f$trace":I
    .restart local v25    # "$i$f$ModuleDefinition":I
    .restart local v26    # "$i$f$trace":I
    .restart local v27    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    goto :goto_6

    .end local v18    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v21    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v24    # "$i$f$trace":I
    .end local v25    # "$i$f$ModuleDefinition":I
    .end local v26    # "$i$f$trace":I
    .end local v27    # "blockName$iv$iv":Ljava/lang/String;
    .end local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    .local v2, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v3    # "$i$f$ModuleDefinition":I
    .restart local v4    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :catchall_8
    move-exception v0

    move-object/from16 v21, v2

    move/from16 v25, v3

    move-object/from16 v27, v4

    move/from16 v26, v5

    move-object/from16 v28, v6

    move/from16 v24, v7

    move-object/from16 v18, v8

    .end local v2    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v3    # "$i$f$ModuleDefinition":I
    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v18    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v21    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v24    # "$i$f$trace":I
    .restart local v25    # "$i$f$ModuleDefinition":I
    .restart local v26    # "$i$f$trace":I
    .restart local v27    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v28    # "tag$iv$iv$iv":Ljava/lang/String;
    :goto_6
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method

.method protected dismissAllNotificationsAsync(Lexpo/modules/kotlin/Promise;)V
    .locals 3
    .param p1, "promise"    # Lexpo/modules/kotlin/Promise;

    const-string v0, "promise"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    sget-object v0, Lexpo/modules/notifications/service/NotificationsService;->Companion:Lexpo/modules/notifications/service/NotificationsService$Companion;

    .line 90
    invoke-direct {p0}, Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 91
    new-instance v2, Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule$dismissAllNotificationsAsync$1;

    invoke-direct {v2, p1}, Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule$dismissAllNotificationsAsync$1;-><init>(Lexpo/modules/kotlin/Promise;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0, v2}, Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule;->createResultReceiver(Lkotlin/jvm/functions/Function2;)Landroid/os/ResultReceiver;

    move-result-object v2

    .line 89
    invoke-virtual {v0, v1, v2}, Lexpo/modules/notifications/service/NotificationsService$Companion;->dismissAll(Landroid/content/Context;Landroid/os/ResultReceiver;)V

    .line 100
    return-void
.end method

.method protected dismissNotificationAsync(Ljava/lang/String;Lexpo/modules/kotlin/Promise;)V
    .locals 4
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "promise"    # Lexpo/modules/kotlin/Promise;

    const-string v0, "identifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    sget-object v0, Lexpo/modules/notifications/service/NotificationsService;->Companion:Lexpo/modules/notifications/service/NotificationsService$Companion;

    .line 75
    invoke-direct {p0}, Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 76
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 77
    new-instance v3, Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule$dismissNotificationAsync$1;

    invoke-direct {v3, p2}, Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule$dismissNotificationAsync$1;-><init>(Lexpo/modules/kotlin/Promise;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0, v3}, Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule;->createResultReceiver(Lkotlin/jvm/functions/Function2;)Landroid/os/ResultReceiver;

    move-result-object v3

    .line 74
    invoke-virtual {v0, v1, v2, v3}, Lexpo/modules/notifications/service/NotificationsService$Companion;->dismiss(Landroid/content/Context;[Ljava/lang/String;Landroid/os/ResultReceiver;)V

    .line 86
    return-void
.end method

.method protected serializeNotifications(Ljava/util/Collection;)Ljava/util/List;
    .locals 9
    .param p1, "notifications"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lexpo/modules/notifications/notifications/model/Notification;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    const-string v0, "notifications"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 290
    .local v1, "$i$f$map":I
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 291
    .local v4, "$i$f$mapTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 292
    .local v6, "item$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lexpo/modules/notifications/notifications/model/Notification;

    .local v7, "p0":Lexpo/modules/notifications/notifications/model/Notification;
    const/4 v8, 0x0

    .line 111
    .local v8, "$i$a$-map-ExpoNotificationPresentationModule$serializeNotifications$1":I
    invoke-static {v7}, Lexpo/modules/notifications/notifications/NotificationSerializer;->toBundle(Lexpo/modules/notifications/notifications/model/Notification;)Landroid/os/Bundle;

    move-result-object v7

    .line 292
    .end local v7    # "p0":Lexpo/modules/notifications/notifications/model/Notification;
    .end local v8    # "$i$a$-map-ExpoNotificationPresentationModule$serializeNotifications$1":I
    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 293
    .end local v6    # "item$iv$iv":Ljava/lang/Object;
    :cond_0
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$mapTo":I
    check-cast v2, Ljava/util/List;

    .line 290
    nop

    .line 111
    .end local v0    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$map":I
    return-object v2
.end method
