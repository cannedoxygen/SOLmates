.class public Lexpo/modules/notifications/notifications/handling/NotificationsHandler;
.super Lexpo/modules/kotlin/modules/Module;
.source "NotificationsHandler.kt"

# interfaces
.implements Lexpo/modules/notifications/notifications/interfaces/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationsHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationsHandler.kt\nexpo/modules/notifications/notifications/handling/NotificationsHandler\n+ 2 Module.kt\nexpo/modules/kotlin/modules/ModuleKt\n+ 3 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 4 Trace.kt\nandroidx/tracing/TraceKt\n+ 5 ModuleDefinitionBuilder.kt\nexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder\n+ 6 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder\n+ 7 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n+ 8 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeProvider\n*L\n1#1,140:1\n61#2:141\n14#3:142\n25#3:143\n27#4,3:144\n31#4:183\n110#5,2:147\n124#5,2:149\n297#6:151\n300#6,3:180\n182#7,7:152\n168#7:159\n158#7,8:162\n189#7:170\n168#7:171\n158#7,8:172\n143#8,2:160\n*S KotlinDebug\n*F\n+ 1 NotificationsHandler.kt\nexpo/modules/notifications/notifications/handling/NotificationsHandler\n*L\n56#1:141\n56#1:142\n56#1:143\n56#1:144,3\n56#1:183\n64#1:147,2\n76#1:149,2\n85#1:151\n85#1:180,3\n85#1:152,7\n85#1:159\n85#1:162,8\n85#1:170\n85#1:171\n85#1:172,8\n85#1:160,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0016\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J \u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\u0010\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u000e\u0010\u001c\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\u000fR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lexpo/modules/notifications/notifications/handling/NotificationsHandler;",
        "Lexpo/modules/kotlin/modules/Module;",
        "Lexpo/modules/notifications/notifications/interfaces/NotificationListener;",
        "()V",
        "handler",
        "Landroid/os/Handler;",
        "moduleRegistry",
        "Lexpo/modules/core/ModuleRegistry;",
        "notificationManager",
        "Lexpo/modules/notifications/notifications/interfaces/NotificationManager;",
        "notificationsHandlerThread",
        "Landroid/os/HandlerThread;",
        "tasksMap",
        "",
        "",
        "Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;",
        "definition",
        "Lexpo/modules/kotlin/modules/ModuleDefinitionData;",
        "handleNotificationAsync",
        "",
        "identifier",
        "behavior",
        "Lexpo/modules/notifications/notifications/handling/NotificationBehaviourRecord;",
        "promise",
        "Lexpo/modules/kotlin/Promise;",
        "onNotificationReceived",
        "notification",
        "Lexpo/modules/notifications/notifications/model/Notification;",
        "onTaskFinished",
        "task",
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
.field private handler:Landroid/os/Handler;

.field private moduleRegistry:Lexpo/modules/core/ModuleRegistry;

.field private notificationManager:Lexpo/modules/notifications/notifications/interfaces/NotificationManager;

.field private notificationsHandlerThread:Landroid/os/HandlerThread;

.field private final tasksMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lexpo/modules/kotlin/modules/Module;-><init>()V

    .line 54
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lexpo/modules/notifications/notifications/handling/NotificationsHandler;->tasksMap:Ljava/util/Map;

    .line 40
    return-void
.end method

.method public static final synthetic access$getModuleRegistry$p(Lexpo/modules/notifications/notifications/handling/NotificationsHandler;)Lexpo/modules/core/ModuleRegistry;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/notifications/notifications/handling/NotificationsHandler;

    .line 40
    iget-object v0, p0, Lexpo/modules/notifications/notifications/handling/NotificationsHandler;->moduleRegistry:Lexpo/modules/core/ModuleRegistry;

    return-object v0
.end method

.method public static final synthetic access$getNotificationManager$p(Lexpo/modules/notifications/notifications/handling/NotificationsHandler;)Lexpo/modules/notifications/notifications/interfaces/NotificationManager;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/notifications/notifications/handling/NotificationsHandler;

    .line 40
    iget-object v0, p0, Lexpo/modules/notifications/notifications/handling/NotificationsHandler;->notificationManager:Lexpo/modules/notifications/notifications/interfaces/NotificationManager;

    return-object v0
.end method

.method public static final synthetic access$getNotificationsHandlerThread$p(Lexpo/modules/notifications/notifications/handling/NotificationsHandler;)Landroid/os/HandlerThread;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/notifications/notifications/handling/NotificationsHandler;

    .line 40
    iget-object v0, p0, Lexpo/modules/notifications/notifications/handling/NotificationsHandler;->notificationsHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method public static final synthetic access$getTasksMap$p(Lexpo/modules/notifications/notifications/handling/NotificationsHandler;)Ljava/util/Map;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/notifications/notifications/handling/NotificationsHandler;

    .line 40
    iget-object v0, p0, Lexpo/modules/notifications/notifications/handling/NotificationsHandler;->tasksMap:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic access$handleNotificationAsync(Lexpo/modules/notifications/notifications/handling/NotificationsHandler;Ljava/lang/String;Lexpo/modules/notifications/notifications/handling/NotificationBehaviourRecord;Lexpo/modules/kotlin/Promise;)V
    .locals 0
    .param p0, "$this"    # Lexpo/modules/notifications/notifications/handling/NotificationsHandler;
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "behavior"    # Lexpo/modules/notifications/notifications/handling/NotificationBehaviourRecord;
    .param p3, "promise"    # Lexpo/modules/kotlin/Promise;

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lexpo/modules/notifications/notifications/handling/NotificationsHandler;->handleNotificationAsync(Ljava/lang/String;Lexpo/modules/notifications/notifications/handling/NotificationBehaviourRecord;Lexpo/modules/kotlin/Promise;)V

    return-void
.end method

.method public static final synthetic access$setHandler$p(Lexpo/modules/notifications/notifications/handling/NotificationsHandler;Landroid/os/Handler;)V
    .locals 0
    .param p0, "$this"    # Lexpo/modules/notifications/notifications/handling/NotificationsHandler;
    .param p1, "<set-?>"    # Landroid/os/Handler;

    .line 40
    iput-object p1, p0, Lexpo/modules/notifications/notifications/handling/NotificationsHandler;->handler:Landroid/os/Handler;

    return-void
.end method

.method public static final synthetic access$setModuleRegistry$p(Lexpo/modules/notifications/notifications/handling/NotificationsHandler;Lexpo/modules/core/ModuleRegistry;)V
    .locals 0
    .param p0, "$this"    # Lexpo/modules/notifications/notifications/handling/NotificationsHandler;
    .param p1, "<set-?>"    # Lexpo/modules/core/ModuleRegistry;

    .line 40
    iput-object p1, p0, Lexpo/modules/notifications/notifications/handling/NotificationsHandler;->moduleRegistry:Lexpo/modules/core/ModuleRegistry;

    return-void
.end method

.method public static final synthetic access$setNotificationManager$p(Lexpo/modules/notifications/notifications/handling/NotificationsHandler;Lexpo/modules/notifications/notifications/interfaces/NotificationManager;)V
    .locals 0
    .param p0, "$this"    # Lexpo/modules/notifications/notifications/handling/NotificationsHandler;
    .param p1, "<set-?>"    # Lexpo/modules/notifications/notifications/interfaces/NotificationManager;

    .line 40
    iput-object p1, p0, Lexpo/modules/notifications/notifications/handling/NotificationsHandler;->notificationManager:Lexpo/modules/notifications/notifications/interfaces/NotificationManager;

    return-void
.end method

.method public static final synthetic access$setNotificationsHandlerThread$p(Lexpo/modules/notifications/notifications/handling/NotificationsHandler;Landroid/os/HandlerThread;)V
    .locals 0
    .param p0, "$this"    # Lexpo/modules/notifications/notifications/handling/NotificationsHandler;
    .param p1, "<set-?>"    # Landroid/os/HandlerThread;

    .line 40
    iput-object p1, p0, Lexpo/modules/notifications/notifications/handling/NotificationsHandler;->notificationsHandlerThread:Landroid/os/HandlerThread;

    return-void
.end method

.method private final handleNotificationAsync(Ljava/lang/String;Lexpo/modules/notifications/notifications/handling/NotificationBehaviourRecord;Lexpo/modules/kotlin/Promise;)V
    .locals 8
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "behavior"    # Lexpo/modules/notifications/notifications/handling/NotificationBehaviourRecord;
    .param p3, "promise"    # Lexpo/modules/kotlin/Promise;

    .line 98
    iget-object v0, p0, Lexpo/modules/notifications/notifications/handling/NotificationsHandler;->tasksMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;

    if-eqz v0, :cond_0

    .line 101
    .local v0, "task":Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;
    move-object v1, p2

    .local v1, "$this$handleNotificationAsync_u24lambda_u244":Lexpo/modules/notifications/notifications/handling/NotificationBehaviourRecord;
    const/4 v2, 0x0

    .line 102
    .local v2, "$i$a$-with-NotificationsHandler$handleNotificationAsync$1":I
    nop

    .line 103
    new-instance v3, Lexpo/modules/notifications/notifications/model/NotificationBehavior;

    invoke-virtual {v1}, Lexpo/modules/notifications/notifications/handling/NotificationBehaviourRecord;->getShouldShowAlert()Z

    move-result v4

    invoke-virtual {v1}, Lexpo/modules/notifications/notifications/handling/NotificationBehaviourRecord;->getShouldPlaySound()Z

    move-result v5

    invoke-virtual {v1}, Lexpo/modules/notifications/notifications/handling/NotificationBehaviourRecord;->getShouldSetBadge()Z

    move-result v6

    invoke-virtual {v1}, Lexpo/modules/notifications/notifications/handling/NotificationBehaviourRecord;->getPriority()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lexpo/modules/notifications/notifications/model/NotificationBehavior;-><init>(ZZZLjava/lang/String;)V

    .line 104
    nop

    .line 102
    invoke-virtual {v0, v3, p3}, Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;->processNotificationWithBehavior(Lexpo/modules/notifications/notifications/model/NotificationBehavior;Lexpo/modules/kotlin/Promise;)V

    .line 106
    nop

    .line 101
    .end local v1    # "$this$handleNotificationAsync_u24lambda_u244":Lexpo/modules/notifications/notifications/handling/NotificationBehaviourRecord;
    .end local v2    # "$i$a$-with-NotificationsHandler$handleNotificationAsync$1":I
    nop

    .line 107
    return-void

    .line 99
    .end local v0    # "task":Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;
    :cond_0
    new-instance v0, Lexpo/modules/notifications/NotificationWasAlreadyHandledException;

    invoke-direct {v0, p1}, Lexpo/modules/notifications/NotificationWasAlreadyHandledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
    .locals 31

    .line 56
    move-object/from16 v1, p0

    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/modules/Module;

    .local v2, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    const/4 v3, 0x0

    .line 141
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

    .line 142
    .local v5, "$i$f$trace":I
    const-string v6, "ExpoModulesCore"

    .local v6, "tag$iv$iv$iv":Ljava/lang/String;
    const/4 v7, 0x0

    .line 143
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

    .line 144
    .local v9, "$i$f$trace":I
    invoke-static {v8}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 145
    nop

    .line 146
    const/4 v0, 0x0

    .line 141
    .local v0, "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    :try_start_0
    new-instance v10, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    invoke-direct {v10, v2}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    move-object v11, v10

    .local v11, "$this$definition_u24lambda_u243":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    const/4 v12, 0x0

    .line 57
    .local v12, "$i$a$-ModuleDefinition-NotificationsHandler$definition$1":I
    const-string v13, "ExpoNotificationsHandlerModule"

    invoke-virtual {v11, v13}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Name(Ljava/lang/String;)V

    .line 59
    nop

    .line 60
    const/4 v13, 0x2

    new-array v14, v13, [Ljava/lang/String;

    const-string v15, "onHandleNotification"

    const/4 v13, 0x0

    aput-object v15, v14, v13

    .line 61
    const-string v15, "onHandleNotificationTimeout"

    const/16 v17, 0x1

    aput-object v15, v14, v17

    .line 60
    nop

    .line 59
    invoke-virtual {v11, v14}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Events([Ljava/lang/String;)V

    .line 64
    move-object v14, v11

    check-cast v14, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;

    .local v14, "this_$iv":Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;
    const/4 v15, 0x0

    .line 147
    .local v15, "$i$f$OnCreate":I
    invoke-virtual {v14}, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;->getEventListeners()Ljava/util/Map;

    move-result-object v13

    move/from16 v19, v0

    .end local v0    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .local v19, "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    sget-object v0, Lexpo/modules/kotlin/events/EventName;->MODULE_CREATE:Lexpo/modules/kotlin/events/EventName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    move-object/from16 v20, v2

    .end local v2    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .local v20, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    :try_start_1
    new-instance v2, Lexpo/modules/kotlin/events/BasicEventListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    move/from16 v21, v3

    .end local v3    # "$i$f$ModuleDefinition":I
    .local v21, "$i$f$ModuleDefinition":I
    :try_start_2
    sget-object v3, Lexpo/modules/kotlin/events/EventName;->MODULE_CREATE:Lexpo/modules/kotlin/events/EventName;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    move-object/from16 v22, v4

    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .local v22, "blockName$iv$iv":Ljava/lang/String;
    :try_start_3
    new-instance v4, Lexpo/modules/notifications/notifications/handling/NotificationsHandler$definition$lambda$3$$inlined$OnCreate$1;

    invoke-direct {v4, v1, v11}, Lexpo/modules/notifications/notifications/handling/NotificationsHandler$definition$lambda$3$$inlined$OnCreate$1;-><init>(Lexpo/modules/notifications/notifications/handling/NotificationsHandler;Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-direct {v2, v3, v4}, Lexpo/modules/kotlin/events/BasicEventListener;-><init>(Lexpo/modules/kotlin/events/EventName;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v13, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    nop

    .line 76
    .end local v14    # "this_$iv":Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;
    .end local v15    # "$i$f$OnCreate":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;

    .local v0, "this_$iv":Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;
    const/4 v2, 0x0

    .line 149
    .local v2, "$i$f$OnDestroy":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;->getEventListeners()Ljava/util/Map;

    move-result-object v3

    sget-object v4, Lexpo/modules/kotlin/events/EventName;->MODULE_DESTROY:Lexpo/modules/kotlin/events/EventName;

    new-instance v13, Lexpo/modules/kotlin/events/BasicEventListener;

    sget-object v14, Lexpo/modules/kotlin/events/EventName;->MODULE_DESTROY:Lexpo/modules/kotlin/events/EventName;

    new-instance v15, Lexpo/modules/notifications/notifications/handling/NotificationsHandler$definition$lambda$3$$inlined$OnDestroy$1;

    invoke-direct {v15, v1}, Lexpo/modules/notifications/notifications/handling/NotificationsHandler$definition$lambda$3$$inlined$OnDestroy$1;-><init>(Lexpo/modules/notifications/notifications/handling/NotificationsHandler;)V

    check-cast v15, Lkotlin/jvm/functions/Function0;

    invoke-direct {v13, v14, v15}, Lexpo/modules/kotlin/events/BasicEventListener;-><init>(Lexpo/modules/kotlin/events/EventName;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v3, v4, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    nop

    .line 85
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;
    .end local v2    # "$i$f$OnDestroy":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "handleNotificationAsync"

    .local v0, "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .local v2, "name$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 151
    .local v3, "$i$f$AsyncFunctionWithPromise":I
    new-instance v4, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v13

    .line 152
    .local v13, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 153
    const-class v14, Ljava/lang/String;

    .line 152
    .local v14, "p0$iv$iv":Ljava/lang/Class;
    nop

    .line 154
    const-class v15, Lexpo/modules/notifications/notifications/handling/NotificationBehaviourRecord;

    .line 152
    .local v15, "p1$iv$iv":Ljava/lang/Class;
    const/16 v23, 0x0

    .line 158
    .local v23, "$i$f$toArgsArray":I
    move/from16 v24, v3

    const/4 v3, 0x2

    .end local v3    # "$i$f$AsyncFunctionWithPromise":I
    .local v24, "$i$f$AsyncFunctionWithPromise":I
    new-array v3, v3, [Lexpo/modules/kotlin/types/AnyType;

    const/16 v16, 0x0

    .line 159
    .local v16, "$i$f$toAnyType":I
    sget-object v25, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .local v25, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/16 v26, 0x0

    .line 160
    .local v26, "$i$f$cachedAnyType":I
    move/from16 v27, v5

    .end local v5    # "$i$f$trace":I
    .local v27, "$i$f$trace":I
    :try_start_4
    new-instance v5, Lkotlin/Pair;

    const-class v28, Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object/from16 v29, v6

    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .local v29, "tag$iv$iv$iv":Ljava/lang/String;
    :try_start_5
    invoke-static/range {v28 .. v28}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move/from16 v28, v7

    const/16 v18, 0x0

    .end local v7    # "$i$f$trace":I
    .local v28, "$i$f$trace":I
    :try_start_6
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 161
    .local v5, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual/range {v25 .. v25}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/AnyType;

    .line 159
    .end local v5    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v25    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v26    # "$i$f$cachedAnyType":I
    if-nez v6, :cond_0

    sget-object v5, Lexpo/modules/notifications/notifications/handling/NotificationsHandler$definition$lambda$3$$inlined$AsyncFunctionWithPromise$1;->INSTANCE:Lexpo/modules/notifications/notifications/handling/NotificationsHandler$definition$lambda$3$$inlined$AsyncFunctionWithPromise$1;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    .local v5, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v6, 0x0

    .line 162
    .local v6, "$i$f$toAnyType":I
    new-instance v7, Lexpo/modules/kotlin/types/AnyType;

    .line 163
    move/from16 v25, v6

    .end local v6    # "$i$f$toAnyType":I
    .local v25, "$i$f$toAnyType":I
    new-instance v6, Lexpo/modules/kotlin/types/LazyKType;

    const-class v26, Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object/from16 v30, v8

    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v30, "label$iv$iv$iv$iv":Ljava/lang/String;
    :try_start_7
    invoke-static/range {v26 .. v26}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 165
    nop

    .line 166
    nop

    .line 163
    move/from16 v26, v9

    const/4 v9, 0x0

    .end local v9    # "$i$f$trace":I
    .local v26, "$i$f$trace":I
    :try_start_8
    invoke-direct {v6, v8, v9, v5}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v6, Lkotlin/reflect/KType;

    .line 168
    nop

    .line 162
    invoke-direct {v7, v6, v13}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 169
    move-object v6, v7

    goto :goto_0

    .line 183
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v5    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v11    # "$this$definition_u24lambda_u243":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v12    # "$i$a$-ModuleDefinition-NotificationsHandler$definition$1":I
    .end local v13    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v14    # "p0$iv$iv":Ljava/lang/Class;
    .end local v15    # "p1$iv$iv":Ljava/lang/Class;
    .end local v16    # "$i$f$toAnyType":I
    .end local v19    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .end local v23    # "$i$f$toArgsArray":I
    .end local v24    # "$i$f$AsyncFunctionWithPromise":I
    .end local v25    # "$i$f$toAnyType":I
    .end local v26    # "$i$f$trace":I
    .restart local v9    # "$i$f$trace":I
    :catchall_0
    move-exception v0

    move/from16 v26, v9

    .end local v9    # "$i$f$trace":I
    .restart local v26    # "$i$f$trace":I
    goto/16 :goto_1

    .line 159
    .end local v26    # "$i$f$trace":I
    .end local v30    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v2    # "name$iv":Ljava/lang/String;
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    .restart local v11    # "$this$definition_u24lambda_u243":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .restart local v12    # "$i$a$-ModuleDefinition-NotificationsHandler$definition$1":I
    .restart local v13    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .restart local v14    # "p0$iv$iv":Ljava/lang/Class;
    .restart local v15    # "p1$iv$iv":Ljava/lang/Class;
    .restart local v16    # "$i$f$toAnyType":I
    .restart local v19    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .restart local v23    # "$i$f$toArgsArray":I
    .restart local v24    # "$i$f$AsyncFunctionWithPromise":I
    :cond_0
    move-object/from16 v30, v8

    move/from16 v26, v9

    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v26    # "$i$f$trace":I
    .restart local v30    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :goto_0
    const/4 v5, 0x0

    .end local v16    # "$i$f$toAnyType":I
    aput-object v6, v3, v5

    .line 158
    nop

    .line 170
    const/4 v5, 0x0

    .line 171
    .local v5, "$i$f$toAnyType":I
    sget-object v6, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v6, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v7, 0x0

    .line 160
    .local v7, "$i$f$cachedAnyType":I
    new-instance v8, Lkotlin/Pair;

    const-class v9, Lexpo/modules/notifications/notifications/handling/NotificationBehaviourRecord;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    move/from16 v25, v5

    const/16 v16, 0x0

    .end local v5    # "$i$f$toAnyType":I
    .restart local v25    # "$i$f$toAnyType":I
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v8, v9, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v5, v8

    .line 161
    .local v5, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v6}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    .line 171
    .end local v5    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v6    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v7    # "$i$f$cachedAnyType":I
    if-nez v8, :cond_1

    sget-object v5, Lexpo/modules/notifications/notifications/handling/NotificationsHandler$definition$lambda$3$$inlined$AsyncFunctionWithPromise$2;->INSTANCE:Lexpo/modules/notifications/notifications/handling/NotificationsHandler$definition$lambda$3$$inlined$AsyncFunctionWithPromise$2;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    .local v5, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v6, 0x0

    .line 172
    .local v6, "$i$f$toAnyType":I
    new-instance v8, Lexpo/modules/kotlin/types/AnyType;

    .line 173
    new-instance v7, Lexpo/modules/kotlin/types/LazyKType;

    const-class v9, Lexpo/modules/notifications/notifications/handling/NotificationBehaviourRecord;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    .line 175
    nop

    .line 176
    nop

    .line 173
    move/from16 v16, v6

    const/4 v6, 0x0

    .end local v6    # "$i$f$toAnyType":I
    .restart local v16    # "$i$f$toAnyType":I
    invoke-direct {v7, v9, v6, v5}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v7, Lkotlin/reflect/KType;

    .line 178
    nop

    .line 172
    invoke-direct {v8, v7, v13}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 179
    nop

    .line 171
    .end local v5    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v16    # "$i$f$toAnyType":I
    :cond_1
    nop

    .end local v25    # "$i$f$toAnyType":I
    aput-object v8, v3, v17

    .line 158
    nop

    .line 157
    nop

    .line 180
    .end local v13    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v14    # "p0$iv$iv":Ljava/lang/Class;
    .end local v15    # "p1$iv$iv":Ljava/lang/Class;
    .end local v23    # "$i$f$toArgsArray":I
    new-instance v5, Lexpo/modules/notifications/notifications/handling/NotificationsHandler$definition$lambda$3$$inlined$AsyncFunctionWithPromise$3;

    invoke-direct {v5, v1}, Lexpo/modules/notifications/notifications/handling/NotificationsHandler$definition$lambda$3$$inlined$AsyncFunctionWithPromise$3;-><init>(Lexpo/modules/notifications/notifications/handling/NotificationsHandler;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 151
    invoke-direct {v4, v2, v3, v5}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    .line 180
    move-object v3, v4

    .local v3, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;
    const/4 v5, 0x0

    .line 181
    .local v5, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$15$iv":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    nop

    .line 180
    .end local v3    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;
    .end local v5    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$15$iv":I
    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 151
    nop

    .line 86
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v24    # "$i$f$AsyncFunctionWithPromise":I
    nop

    .line 141
    .end local v11    # "$this$definition_u24lambda_u243":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v12    # "$i$a$-ModuleDefinition-NotificationsHandler$definition$1":I
    invoke-virtual {v10}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->buildModule()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 146
    .end local v19    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    nop

    .line 183
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 146
    nop

    .line 143
    .end local v26    # "$i$f$trace":I
    .end local v30    # "label$iv$iv$iv$iv":Ljava/lang/String;
    nop

    .line 142
    .end local v28    # "$i$f$trace":I
    .end local v29    # "tag$iv$iv$iv":Ljava/lang/String;
    nop

    .line 141
    .end local v22    # "blockName$iv$iv":Ljava/lang/String;
    .end local v27    # "$i$f$trace":I
    nop

    .line 86
    .end local v20    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v21    # "$i$f$ModuleDefinition":I
    return-object v0

    .line 183
    .restart local v20    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v21    # "$i$f$ModuleDefinition":I
    .restart local v22    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v26    # "$i$f$trace":I
    .restart local v27    # "$i$f$trace":I
    .restart local v28    # "$i$f$trace":I
    .restart local v29    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v30    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :catchall_1
    move-exception v0

    goto/16 :goto_1

    .end local v26    # "$i$f$trace":I
    .end local v30    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_2
    move-exception v0

    move-object/from16 v30, v8

    move/from16 v26, v9

    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v26    # "$i$f$trace":I
    .restart local v30    # "label$iv$iv$iv$iv":Ljava/lang/String;
    goto :goto_1

    .end local v26    # "$i$f$trace":I
    .end local v28    # "$i$f$trace":I
    .end local v30    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v7, "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_3
    move-exception v0

    move/from16 v28, v7

    move-object/from16 v30, v8

    move/from16 v26, v9

    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v26    # "$i$f$trace":I
    .restart local v28    # "$i$f$trace":I
    .restart local v30    # "label$iv$iv$iv$iv":Ljava/lang/String;
    goto :goto_1

    .end local v26    # "$i$f$trace":I
    .end local v28    # "$i$f$trace":I
    .end local v29    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v30    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v6, "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_4
    move-exception v0

    move-object/from16 v29, v6

    move/from16 v28, v7

    move-object/from16 v30, v8

    move/from16 v26, v9

    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v26    # "$i$f$trace":I
    .restart local v28    # "$i$f$trace":I
    .restart local v29    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v30    # "label$iv$iv$iv$iv":Ljava/lang/String;
    goto :goto_1

    .end local v26    # "$i$f$trace":I
    .end local v27    # "$i$f$trace":I
    .end local v28    # "$i$f$trace":I
    .end local v29    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v30    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v5, "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_5
    move-exception v0

    move/from16 v27, v5

    move-object/from16 v29, v6

    move/from16 v28, v7

    move-object/from16 v30, v8

    move/from16 v26, v9

    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v26    # "$i$f$trace":I
    .restart local v27    # "$i$f$trace":I
    .restart local v28    # "$i$f$trace":I
    .restart local v29    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v30    # "label$iv$iv$iv$iv":Ljava/lang/String;
    goto :goto_1

    .end local v22    # "blockName$iv$iv":Ljava/lang/String;
    .end local v26    # "$i$f$trace":I
    .end local v27    # "$i$f$trace":I
    .end local v28    # "$i$f$trace":I
    .end local v29    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v30    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v4    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_6
    move-exception v0

    move-object/from16 v22, v4

    move/from16 v27, v5

    move-object/from16 v29, v6

    move/from16 v28, v7

    move-object/from16 v30, v8

    move/from16 v26, v9

    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v22    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v26    # "$i$f$trace":I
    .restart local v27    # "$i$f$trace":I
    .restart local v28    # "$i$f$trace":I
    .restart local v29    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v30    # "label$iv$iv$iv$iv":Ljava/lang/String;
    goto :goto_1

    .end local v21    # "$i$f$ModuleDefinition":I
    .end local v22    # "blockName$iv$iv":Ljava/lang/String;
    .end local v26    # "$i$f$trace":I
    .end local v27    # "$i$f$trace":I
    .end local v28    # "$i$f$trace":I
    .end local v29    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v30    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v3, "$i$f$ModuleDefinition":I
    .restart local v4    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_7
    move-exception v0

    move/from16 v21, v3

    move-object/from16 v22, v4

    move/from16 v27, v5

    move-object/from16 v29, v6

    move/from16 v28, v7

    move-object/from16 v30, v8

    move/from16 v26, v9

    .end local v3    # "$i$f$ModuleDefinition":I
    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v21    # "$i$f$ModuleDefinition":I
    .restart local v22    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v26    # "$i$f$trace":I
    .restart local v27    # "$i$f$trace":I
    .restart local v28    # "$i$f$trace":I
    .restart local v29    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v30    # "label$iv$iv$iv$iv":Ljava/lang/String;
    goto :goto_1

    .end local v20    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v21    # "$i$f$ModuleDefinition":I
    .end local v22    # "blockName$iv$iv":Ljava/lang/String;
    .end local v26    # "$i$f$trace":I
    .end local v27    # "$i$f$trace":I
    .end local v28    # "$i$f$trace":I
    .end local v29    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v30    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v2, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v3    # "$i$f$ModuleDefinition":I
    .restart local v4    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_8
    move-exception v0

    move-object/from16 v20, v2

    move/from16 v21, v3

    move-object/from16 v22, v4

    move/from16 v27, v5

    move-object/from16 v29, v6

    move/from16 v28, v7

    move-object/from16 v30, v8

    move/from16 v26, v9

    .end local v2    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v3    # "$i$f$ModuleDefinition":I
    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v20    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v21    # "$i$f$ModuleDefinition":I
    .restart local v22    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v26    # "$i$f$trace":I
    .restart local v27    # "$i$f$trace":I
    .restart local v28    # "$i$f$trace":I
    .restart local v29    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v30    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :goto_1
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method

.method public onNotificationReceived(Lexpo/modules/notifications/notifications/model/Notification;)V
    .locals 7
    .param p1, "notification"    # Lexpo/modules/notifications/notifications/model/Notification;

    const-string v0, "notification"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/handling/NotificationsHandler;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getReactContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 119
    .local v2, "context":Landroid/content/Context;
    :cond_0
    new-instance v0, Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;

    .line 120
    nop

    .line 121
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/handling/NotificationsHandler;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v1

    move-object v3, p0

    check-cast v3, Lexpo/modules/kotlin/modules/Module;

    invoke-virtual {v1, v3}, Lexpo/modules/kotlin/AppContext;->eventEmitter(Lexpo/modules/kotlin/modules/Module;)Lexpo/modules/kotlin/events/EventEmitter;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lexpo/modules/core/interfaces/services/EventEmitter;

    .line 122
    iget-object v1, p0, Lexpo/modules/notifications/notifications/handling/NotificationsHandler;->handler:Landroid/os/Handler;

    if-nez v1, :cond_1

    const-string v1, "handler"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_1
    move-object v4, v1

    .line 123
    nop

    .line 124
    nop

    .line 119
    move-object v1, v0

    move-object v5, p1

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;-><init>(Landroid/content/Context;Lexpo/modules/core/interfaces/services/EventEmitter;Landroid/os/Handler;Lexpo/modules/notifications/notifications/model/Notification;Lexpo/modules/notifications/notifications/handling/NotificationsHandler;)V

    .line 126
    .local v0, "task":Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;
    iget-object v1, p0, Lexpo/modules/notifications/notifications/handling/NotificationsHandler;->tasksMap:Ljava/util/Map;

    invoke-virtual {v0}, Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getIdentifier(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-virtual {v0}, Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;->start()V

    .line 128
    return-void
.end method

.method public final onTaskFinished(Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;)V
    .locals 2
    .param p1, "task"    # Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lexpo/modules/notifications/notifications/handling/NotificationsHandler;->tasksMap:Ljava/util/Map;

    invoke-virtual {p1}, Lexpo/modules/notifications/notifications/handling/SingleNotificationHandlerTask;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    return-void
.end method
