.class public final Lexpo/modules/kotlin/ModuleRegistry;
.super Ljava/lang/Object;
.source "ModuleRegistry.kt"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lexpo/modules/kotlin/ModuleHolder<",
        "*>;>;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModuleRegistry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModuleRegistry.kt\nexpo/modules/kotlin/ModuleRegistry\n+ 2 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 3 Trace.kt\nandroidx/tracing/TraceKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 6 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,186:1\n14#2:187\n25#2:188\n27#3,3:189\n31#3:193\n1#4:192\n13309#5,2:194\n1855#6,2:196\n1855#6,2:198\n1855#6,2:200\n1855#6,2:202\n1855#6,2:204\n1855#6,2:206\n1855#6:208\n1855#6,2:209\n1856#6:211\n*S KotlinDebug\n*F\n+ 1 ModuleRegistry.kt\nexpo/modules/kotlin/ModuleRegistry\n*L\n24#1:187\n24#1:188\n24#1:189,3\n24#1:193\n41#1:194,2\n45#1:196,2\n79#1:198,2\n92#1:200,2\n102#1:202,2\n112#1:204,2\n125#1:206,2\n138#1:208\n139#1:209,2\n138#1:211\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010(\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0005\u0018\u00002\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00020\u0001:\u0001=B\u0013\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0002\u0010\u0006J(\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u00152\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0002J\u0006\u0010\u0019\u001a\u00020\u001aJ\u0008\u0010\u001b\u001a\u00020\u001aH\u0002J\u0018\u0010\u001c\u001a\u0004\u0018\u0001H\u001d\"\u0006\u0008\u0000\u0010\u001d\u0018\u0001H\u0086\u0008\u00a2\u0006\u0002\u0010\u001eJ\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u001f2\u0006\u0010 \u001a\u00020\u000eJ%\u0010!\u001a\n\u0012\u0004\u0012\u0002H\u001d\u0018\u00010\u0002\"\u0008\u0008\u0000\u0010\u001d*\u00020\u001f2\u0006\u0010\"\u001a\u0002H\u001d\u00a2\u0006\u0002\u0010#J$\u0010!\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0002\"\u0008\u0008\u0000\u0010\u001d*\u00020$2\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u0002H\u001d0&J\u0014\u0010!\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00022\u0006\u0010 \u001a\u00020\u000eJ,\u0010\'\u001a\u0004\u0018\u00010(\"\u0008\u0008\u0000\u0010\u001d*\u00020$2\n\u0010)\u001a\u0006\u0012\u0002\u0008\u00030\u00022\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u0002H\u001d0&J\u000e\u0010*\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u000eJ\u0013\u0010+\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00020,H\u0096\u0002J\u000e\u0010-\u001a\u00020\u001a2\u0006\u0010\u0014\u001a\u00020\u0015J!\u0010-\u001a\u00020\u001a\"\u0004\u0008\u0000\u0010.2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u0002H.\u00a2\u0006\u0002\u0010/J/\u0010-\u001a\u00020\u001a\"\u0004\u0008\u0000\u0010.\"\u0004\u0008\u0001\u001002\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u0002H.2\u0006\u0010\u0018\u001a\u0002H0\u00a2\u0006\u0002\u00101J\u0006\u00102\u001a\u00020\u001aJ\u0008\u00103\u001a\u00020\u001aH\u0002J\u001d\u00104\u001a\u00020\u001a\"\u0008\u0008\u0000\u0010\u001d*\u00020\u001f2\u0006\u0010\"\u001a\u0002H\u001d\u00a2\u0006\u0002\u00105J\u000e\u00104\u001a\u00020\u00002\u0006\u00106\u001a\u000207J\u001f\u00104\u001a\u00020\u001a2\u0012\u00108\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u001f09\"\u00020\u001f\u00a2\u0006\u0002\u0010:J\r\u0010;\u001a\u00020\u001aH\u0000\u00a2\u0006\u0002\u0008<R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R,\u0010\u000c\u001a\u0012\u0012\u0004\u0012\u00020\u000e\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00020\r8\u0000X\u0081\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006>"
    }
    d2 = {
        "Lexpo/modules/kotlin/ModuleRegistry;",
        "",
        "Lexpo/modules/kotlin/ModuleHolder;",
        "runtimeContext",
        "Ljava/lang/ref/WeakReference;",
        "Lexpo/modules/kotlin/RuntimeContext;",
        "(Ljava/lang/ref/WeakReference;)V",
        "eventQueue",
        "",
        "Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;",
        "isReadyForPostingEvents",
        "",
        "registry",
        "",
        "",
        "getRegistry$annotations",
        "()V",
        "getRegistry",
        "()Ljava/util/Map;",
        "addToQueueIfNeeded",
        "eventName",
        "Lexpo/modules/kotlin/events/EventName;",
        "sender",
        "",
        "payload",
        "cleanUp",
        "",
        "flushTheEventQueue",
        "getModule",
        "T",
        "()Ljava/lang/Object;",
        "Lexpo/modules/kotlin/modules/Module;",
        "name",
        "getModuleHolder",
        "module",
        "(Lexpo/modules/kotlin/modules/Module;)Lexpo/modules/kotlin/ModuleHolder;",
        "Landroid/view/View;",
        "viewClass",
        "Ljava/lang/Class;",
        "getViewDefinition",
        "Lexpo/modules/kotlin/views/ViewManagerDefinition;",
        "holder",
        "hasModule",
        "iterator",
        "",
        "post",
        "Sender",
        "(Lexpo/modules/kotlin/events/EventName;Ljava/lang/Object;)V",
        "Payload",
        "(Lexpo/modules/kotlin/events/EventName;Ljava/lang/Object;Ljava/lang/Object;)V",
        "postOnCreate",
        "readyForPostingEvents",
        "register",
        "(Lexpo/modules/kotlin/modules/Module;)V",
        "provider",
        "Lexpo/modules/kotlin/ModulesProvider;",
        "modules",
        "",
        "([Lexpo/modules/kotlin/modules/Module;)V",
        "registerActivityContracts",
        "registerActivityContracts$expo_modules_core_debug",
        "PostponedEvent",
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


# instance fields
.field private final eventQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private isReadyForPostingEvents:Z

.field private final registry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lexpo/modules/kotlin/ModuleHolder<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final runtimeContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/kotlin/RuntimeContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .param p1, "runtimeContext"    # Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/kotlin/RuntimeContext;",
            ">;)V"
        }
    .end annotation

    const-string v0, "runtimeContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lexpo/modules/kotlin/ModuleRegistry;->runtimeContext:Ljava/lang/ref/WeakReference;

    .line 18
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lexpo/modules/kotlin/ModuleRegistry;->registry:Ljava/util/Map;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lexpo/modules/kotlin/ModuleRegistry;->eventQueue:Ljava/util/List;

    .line 14
    return-void
.end method

.method public static final synthetic access$getRuntimeContext$p(Lexpo/modules/kotlin/ModuleRegistry;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/kotlin/ModuleRegistry;

    .line 14
    iget-object v0, p0, Lexpo/modules/kotlin/ModuleRegistry;->runtimeContext:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private final addToQueueIfNeeded(Lexpo/modules/kotlin/events/EventName;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "eventName"    # Lexpo/modules/kotlin/events/EventName;
    .param p2, "sender"    # Ljava/lang/Object;
    .param p3, "payload"    # Ljava/lang/Object;

    .line 157
    monitor-enter p0

    const/4 v0, 0x0

    .line 158
    .local v0, "$i$a$-synchronized-ModuleRegistry$addToQueueIfNeeded$1":I
    :try_start_0
    iget-boolean v1, p0, Lexpo/modules/kotlin/ModuleRegistry;->isReadyForPostingEvents:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 159
    nop

    .end local v0    # "$i$a$-synchronized-ModuleRegistry$addToQueueIfNeeded$1":I
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 162
    .restart local v0    # "$i$a$-synchronized-ModuleRegistry$addToQueueIfNeeded$1":I
    :cond_0
    :try_start_1
    iget-object v1, p0, Lexpo/modules/kotlin/ModuleRegistry;->eventQueue:Ljava/util/List;

    new-instance v2, Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;

    invoke-direct {v2, p1, p2, p3}, Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;-><init>(Lexpo/modules/kotlin/events/EventName;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    nop

    .end local v0    # "$i$a$-synchronized-ModuleRegistry$addToQueueIfNeeded$1":I
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic addToQueueIfNeeded$default(Lexpo/modules/kotlin/ModuleRegistry;Lexpo/modules/kotlin/events/EventName;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 1

    .line 153
    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 155
    move-object p2, v0

    .line 153
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 156
    move-object p3, v0

    .line 153
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lexpo/modules/kotlin/ModuleRegistry;->addToQueueIfNeeded(Lexpo/modules/kotlin/events/EventName;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final flushTheEventQueue()V
    .locals 13

    .line 137
    monitor-enter p0

    const/4 v0, 0x0

    .line 138
    .local v0, "$i$a$-synchronized-ModuleRegistry$flushTheEventQueue$1":I
    :try_start_0
    iget-object v1, p0, Lexpo/modules/kotlin/ModuleRegistry;->eventQueue:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 208
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;

    .local v5, "event":Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;
    const/4 v6, 0x0

    .line 139
    .local v6, "$i$a$-forEach-ModuleRegistry$flushTheEventQueue$1$1":I
    move-object v7, p0

    check-cast v7, Ljava/lang/Iterable;

    .local v7, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 209
    .local v8, "$i$f$forEach":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .local v10, "element$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Lexpo/modules/kotlin/ModuleHolder;

    .local v11, "it":Lexpo/modules/kotlin/ModuleHolder;
    const/4 v12, 0x0

    .line 140
    .local v12, "$i$a$-forEach-ModuleRegistry$flushTheEventQueue$1$1$1":I
    invoke-virtual {v5, v11}, Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;->post(Lexpo/modules/kotlin/ModuleHolder;)V

    .line 141
    nop

    .line 209
    .end local v11    # "it":Lexpo/modules/kotlin/ModuleHolder;
    .end local v12    # "$i$a$-forEach-ModuleRegistry$flushTheEventQueue$1$1$1":I
    nop

    .end local v10    # "element$iv":Ljava/lang/Object;
    goto :goto_1

    .line 210
    :cond_0
    nop

    .line 142
    .end local v7    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$forEach":I
    nop

    .line 208
    .end local v5    # "event":Lexpo/modules/kotlin/ModuleRegistry$PostponedEvent;
    .end local v6    # "$i$a$-forEach-ModuleRegistry$flushTheEventQueue$1$1":I
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 211
    :cond_1
    nop

    .line 143
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    iget-object v1, p0, Lexpo/modules/kotlin/ModuleRegistry;->eventQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 144
    nop

    .end local v0    # "$i$a$-synchronized-ModuleRegistry$flushTheEventQueue$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit p0

    .line 144
    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static synthetic getRegistry$annotations()V
    .locals 0

    return-void
.end method

.method private final readyForPostingEvents()V
    .locals 2

    .line 133
    monitor-enter p0

    const/4 v0, 0x0

    .line 134
    .local v0, "$i$a$-synchronized-ModuleRegistry$readyForPostingEvents$1":I
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lexpo/modules/kotlin/ModuleRegistry;->isReadyForPostingEvents:Z

    .line 135
    nop

    .end local v0    # "$i$a$-synchronized-ModuleRegistry$readyForPostingEvents$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit p0

    .line 135
    return-void

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final cleanUp()V
    .locals 2

    .line 120
    iget-object v0, p0, Lexpo/modules/kotlin/ModuleRegistry;->registry:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 121
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v0

    const-string v1, "\u2705 ModuleRegistry was destroyed"

    invoke-virtual {v0, v1}, Lexpo/modules/core/logging/Logger;->info(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public final getModule(Ljava/lang/String;)Lexpo/modules/kotlin/modules/Module;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lexpo/modules/kotlin/ModuleRegistry;->registry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/ModuleHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lexpo/modules/kotlin/ModuleHolder;->getModule()Lexpo/modules/kotlin/modules/Module;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final synthetic getModule()Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 56
    .local v0, "$i$f$getModule":I
    invoke-virtual {p0}, Lexpo/modules/kotlin/ModuleRegistry;->getRegistry()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "T"

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lexpo/modules/kotlin/ModuleHolder;

    .line 192
    .local v5, "it":Lexpo/modules/kotlin/ModuleHolder;
    const/4 v6, 0x0

    .line 56
    .local v6, "$i$a$-find-ModuleRegistry$getModule$1":I
    invoke-virtual {v5}, Lexpo/modules/kotlin/ModuleHolder;->getModule()Lexpo/modules/kotlin/modules/Module;

    move-result-object v7

    const/4 v8, 0x3

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v5, v7, Ljava/lang/Object;

    .end local v5    # "it":Lexpo/modules/kotlin/ModuleHolder;
    .end local v6    # "$i$a$-find-ModuleRegistry$getModule$1":I
    if-eqz v5, :cond_0

    goto :goto_0

    :cond_1
    move-object v2, v4

    :goto_0
    check-cast v2, Lexpo/modules/kotlin/ModuleHolder;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lexpo/modules/kotlin/ModuleHolder;->getModule()Lexpo/modules/kotlin/modules/Module;

    move-result-object v4

    :cond_2
    const/4 v1, 0x2

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    check-cast v4, Ljava/lang/Object;

    return-object v4
.end method

.method public final getModuleHolder(Lexpo/modules/kotlin/modules/Module;)Lexpo/modules/kotlin/ModuleHolder;
    .locals 6
    .param p1, "module"    # Lexpo/modules/kotlin/modules/Module;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lexpo/modules/kotlin/modules/Module;",
            ">(TT;)",
            "Lexpo/modules/kotlin/ModuleHolder<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lexpo/modules/kotlin/ModuleRegistry;->registry:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lexpo/modules/kotlin/ModuleHolder;

    .line 192
    .local v3, "it":Lexpo/modules/kotlin/ModuleHolder;
    const/4 v4, 0x0

    .line 63
    .local v4, "$i$a$-find-ModuleRegistry$getModuleHolder$1":I
    invoke-virtual {v3}, Lexpo/modules/kotlin/ModuleHolder;->getModule()Lexpo/modules/kotlin/modules/Module;

    move-result-object v5

    if-ne v5, p1, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .end local v3    # "it":Lexpo/modules/kotlin/ModuleHolder;
    .end local v4    # "$i$a$-find-ModuleRegistry$getModuleHolder$1":I
    :goto_0
    if-eqz v5, :cond_0

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    instance-of v0, v1, Lexpo/modules/kotlin/ModuleHolder;

    if-eqz v0, :cond_3

    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/ModuleHolder;

    :cond_3
    return-object v2
.end method

.method public final getModuleHolder(Ljava/lang/Class;)Lexpo/modules/kotlin/ModuleHolder;
    .locals 7
    .param p1, "viewClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lexpo/modules/kotlin/ModuleHolder<",
            "*>;"
        }
    .end annotation

    const-string v0, "viewClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lexpo/modules/kotlin/ModuleRegistry;->registry:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 192
    const/4 v3, 0x0

    .line 66
    .local v3, "$i$a$-firstNotNullOfOrNull-ModuleRegistry$getModuleHolder$2":I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexpo/modules/kotlin/ModuleHolder;

    .line 67
    .local v1, "holder":Lexpo/modules/kotlin/ModuleHolder;
    move-object v4, v1

    .line 192
    .local v4, "it":Lexpo/modules/kotlin/ModuleHolder;
    const/4 v5, 0x0

    .line 67
    .local v5, "$i$a$-takeIf-ModuleRegistry$getModuleHolder$2$1":I
    invoke-virtual {p0, v1, p1}, Lexpo/modules/kotlin/ModuleRegistry;->getViewDefinition(Lexpo/modules/kotlin/ModuleHolder;Ljava/lang/Class;)Lexpo/modules/kotlin/views/ViewManagerDefinition;

    move-result-object v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .end local v4    # "it":Lexpo/modules/kotlin/ModuleHolder;
    .end local v5    # "$i$a$-takeIf-ModuleRegistry$getModuleHolder$2$1":I
    :goto_0
    if-eqz v6, :cond_2

    move-object v2, v1

    .line 66
    .end local v1    # "holder":Lexpo/modules/kotlin/ModuleHolder;
    .end local v3    # "$i$a$-firstNotNullOfOrNull-ModuleRegistry$getModuleHolder$2":I
    :cond_2
    if-eqz v2, :cond_0

    :cond_3
    return-object v2
.end method

.method public final getModuleHolder(Ljava/lang/String;)Lexpo/modules/kotlin/ModuleHolder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lexpo/modules/kotlin/ModuleHolder<",
            "*>;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lexpo/modules/kotlin/ModuleRegistry;->registry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/ModuleHolder;

    return-object v0
.end method

.method public final getRegistry()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lexpo/modules/kotlin/ModuleHolder<",
            "*>;>;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lexpo/modules/kotlin/ModuleRegistry;->registry:Ljava/util/Map;

    return-object v0
.end method

.method public final getViewDefinition(Lexpo/modules/kotlin/ModuleHolder;Ljava/lang/Class;)Lexpo/modules/kotlin/views/ViewManagerDefinition;
    .locals 5
    .param p1, "holder"    # Lexpo/modules/kotlin/ModuleHolder;
    .param p2, "viewClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Lexpo/modules/kotlin/ModuleHolder<",
            "*>;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lexpo/modules/kotlin/views/ViewManagerDefinition;"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p1}, Lexpo/modules/kotlin/ModuleHolder;->getDefinition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionData;->getViewManagerDefinitions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/views/ViewManagerDefinition;

    .line 192
    .local v2, "it":Lexpo/modules/kotlin/views/ViewManagerDefinition;
    const/4 v3, 0x0

    .line 72
    .local v3, "$i$a$-find-ModuleRegistry$getViewDefinition$1":I
    invoke-virtual {v2}, Lexpo/modules/kotlin/views/ViewManagerDefinition;->getViewType$expo_modules_core_debug()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .end local v2    # "it":Lexpo/modules/kotlin/views/ViewManagerDefinition;
    .end local v3    # "$i$a$-find-ModuleRegistry$getViewDefinition$1":I
    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lexpo/modules/kotlin/views/ViewManagerDefinition;

    return-object v1
.end method

.method public final hasModule(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lexpo/modules/kotlin/ModuleRegistry;->registry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lexpo/modules/kotlin/ModuleHolder<",
            "*>;>;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lexpo/modules/kotlin/ModuleRegistry;->registry:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final post(Lexpo/modules/kotlin/events/EventName;)V
    .locals 7
    .param p1, "eventName"    # Lexpo/modules/kotlin/events/EventName;

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lexpo/modules/kotlin/ModuleRegistry;->addToQueueIfNeeded$default(Lexpo/modules/kotlin/ModuleRegistry;Lexpo/modules/kotlin/events/EventName;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    return-void

    .line 92
    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 200
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lexpo/modules/kotlin/ModuleHolder;

    .local v4, "it":Lexpo/modules/kotlin/ModuleHolder;
    const/4 v5, 0x0

    .line 93
    .local v5, "$i$a$-forEach-ModuleRegistry$post$1":I
    invoke-virtual {v4, p1}, Lexpo/modules/kotlin/ModuleHolder;->post(Lexpo/modules/kotlin/events/EventName;)V

    .line 94
    nop

    .line 200
    .end local v4    # "it":Lexpo/modules/kotlin/ModuleHolder;
    .end local v5    # "$i$a$-forEach-ModuleRegistry$post$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 201
    :cond_1
    nop

    .line 95
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method public final post(Lexpo/modules/kotlin/events/EventName;Ljava/lang/Object;)V
    .locals 7
    .param p1, "eventName"    # Lexpo/modules/kotlin/events/EventName;
    .param p2, "sender"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Sender:",
            "Ljava/lang/Object;",
            ">(",
            "Lexpo/modules/kotlin/events/EventName;",
            "TSender;)V"
        }
    .end annotation

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lexpo/modules/kotlin/ModuleRegistry;->addToQueueIfNeeded$default(Lexpo/modules/kotlin/ModuleRegistry;Lexpo/modules/kotlin/events/EventName;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    return-void

    .line 102
    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 202
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lexpo/modules/kotlin/ModuleHolder;

    .local v4, "it":Lexpo/modules/kotlin/ModuleHolder;
    const/4 v5, 0x0

    .line 103
    .local v5, "$i$a$-forEach-ModuleRegistry$post$2":I
    invoke-virtual {v4, p1, p2}, Lexpo/modules/kotlin/ModuleHolder;->post(Lexpo/modules/kotlin/events/EventName;Ljava/lang/Object;)V

    .line 104
    nop

    .line 202
    .end local v4    # "it":Lexpo/modules/kotlin/ModuleHolder;
    .end local v5    # "$i$a$-forEach-ModuleRegistry$post$2":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 203
    :cond_1
    nop

    .line 105
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method public final post(Lexpo/modules/kotlin/events/EventName;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .param p1, "eventName"    # Lexpo/modules/kotlin/events/EventName;
    .param p2, "sender"    # Ljava/lang/Object;
    .param p3, "payload"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Sender:",
            "Ljava/lang/Object;",
            "Payload:",
            "Ljava/lang/Object;",
            ">(",
            "Lexpo/modules/kotlin/events/EventName;",
            "TSender;TPayload;)V"
        }
    .end annotation

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-direct {p0, p1, p2, p3}, Lexpo/modules/kotlin/ModuleRegistry;->addToQueueIfNeeded(Lexpo/modules/kotlin/events/EventName;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    return-void

    .line 112
    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 204
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lexpo/modules/kotlin/ModuleHolder;

    .local v4, "it":Lexpo/modules/kotlin/ModuleHolder;
    const/4 v5, 0x0

    .line 113
    .local v5, "$i$a$-forEach-ModuleRegistry$post$3":I
    invoke-virtual {v4, p1, p2, p3}, Lexpo/modules/kotlin/ModuleHolder;->post(Lexpo/modules/kotlin/events/EventName;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 114
    nop

    .line 204
    .end local v4    # "it":Lexpo/modules/kotlin/ModuleHolder;
    .end local v5    # "$i$a$-forEach-ModuleRegistry$post$3":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 205
    :cond_1
    nop

    .line 115
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method public final postOnCreate()V
    .locals 7

    .line 79
    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 198
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lexpo/modules/kotlin/ModuleHolder;

    .local v4, "it":Lexpo/modules/kotlin/ModuleHolder;
    const/4 v5, 0x0

    .line 80
    .local v5, "$i$a$-forEach-ModuleRegistry$postOnCreate$1":I
    sget-object v6, Lexpo/modules/kotlin/events/EventName;->MODULE_CREATE:Lexpo/modules/kotlin/events/EventName;

    invoke-virtual {v4, v6}, Lexpo/modules/kotlin/ModuleHolder;->post(Lexpo/modules/kotlin/events/EventName;)V

    .line 81
    nop

    .line 198
    .end local v4    # "it":Lexpo/modules/kotlin/ModuleHolder;
    .end local v5    # "$i$a$-forEach-ModuleRegistry$postOnCreate$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 199
    :cond_0
    nop

    .line 82
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    invoke-virtual {p0}, Lexpo/modules/kotlin/ModuleRegistry;->registerActivityContracts$expo_modules_core_debug()V

    .line 83
    invoke-direct {p0}, Lexpo/modules/kotlin/ModuleRegistry;->readyForPostingEvents()V

    .line 84
    invoke-direct {p0}, Lexpo/modules/kotlin/ModuleRegistry;->flushTheEventQueue()V

    .line 85
    return-void
.end method

.method public final register(Lexpo/modules/kotlin/ModulesProvider;)Lexpo/modules/kotlin/ModuleRegistry;
    .locals 10
    .param p1, "provider"    # Lexpo/modules/kotlin/ModulesProvider;

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    move-object v0, p0

    check-cast v0, Lexpo/modules/kotlin/ModuleRegistry;

    .local v0, "$this$register_u24lambda_u244":Lexpo/modules/kotlin/ModuleRegistry;
    const/4 v1, 0x0

    .line 45
    .local v1, "$i$a$-apply-ModuleRegistry$register$3":I
    invoke-interface {p1}, Lexpo/modules/kotlin/ModulesProvider;->getModulesList()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 196
    .local v3, "$i$f$forEach":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Ljava/lang/Class;

    .local v6, "type":Ljava/lang/Class;
    const/4 v7, 0x0

    .line 46
    .local v7, "$i$a$-forEach-ModuleRegistry$register$3$1":I
    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v9, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/modules/Module;

    .line 47
    .local v8, "module":Lexpo/modules/kotlin/modules/Module;
    invoke-virtual {v0, v8}, Lexpo/modules/kotlin/ModuleRegistry;->register(Lexpo/modules/kotlin/modules/Module;)V

    .line 48
    nop

    .line 196
    .end local v6    # "type":Ljava/lang/Class;
    .end local v7    # "$i$a$-forEach-ModuleRegistry$register$3$1":I
    .end local v8    # "module":Lexpo/modules/kotlin/modules/Module;
    nop

    .end local v5    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 197
    :cond_0
    nop

    .line 49
    .end local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$forEach":I
    nop

    .line 44
    .end local v0    # "$this$register_u24lambda_u244":Lexpo/modules/kotlin/ModuleRegistry;
    .end local v1    # "$i$a$-apply-ModuleRegistry$register$3":I
    move-object v0, p0

    check-cast v0, Lexpo/modules/kotlin/ModuleRegistry;

    .line 49
    return-object v0
.end method

.method public final register(Lexpo/modules/kotlin/modules/Module;)V
    .locals 10
    .param p1, "module"    # Lexpo/modules/kotlin/modules/Module;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lexpo/modules/kotlin/modules/Module;",
            ">(TT;)V"
        }
    .end annotation

    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ModuleRegistry.register("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "blockName$iv":Ljava/lang/String;
    const/4 v1, 0x0

    .line 187
    .local v1, "$i$f$trace":I
    const-string v2, "ExpoModulesCore"

    .local v2, "tag$iv$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 188
    .local v3, "$i$f$trace":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "label$iv$iv$iv":Ljava/lang/String;
    const/4 v5, 0x0

    .line 189
    .local v5, "$i$f$trace":I
    invoke-static {v4}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 190
    nop

    .line 191
    const/4 v6, 0x0

    .line 25
    .local v6, "$i$a$-trace-ModuleRegistry$register$1":I
    :try_start_0
    invoke-static {p0}, Lexpo/modules/kotlin/ModuleRegistry;->access$getRuntimeContext$p(Lexpo/modules/kotlin/ModuleRegistry;)Ljava/lang/ref/WeakReference;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    check-cast v7, Lexpo/modules/kotlin/RuntimeContext;

    invoke-virtual {p1, v7}, Lexpo/modules/kotlin/modules/Module;->set_runtimeContext$expo_modules_core_debug(Lexpo/modules/kotlin/RuntimeContext;)V

    .line 27
    new-instance v7, Lexpo/modules/kotlin/ModuleHolder;

    invoke-direct {v7, p1}, Lexpo/modules/kotlin/ModuleHolder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    .line 29
    .local v7, "holder":Lexpo/modules/kotlin/ModuleHolder;
    new-instance v8, Lexpo/modules/kotlin/ModuleRegistry$register$1$2;

    invoke-direct {v8, v7}, Lexpo/modules/kotlin/ModuleRegistry$register$1$2;-><init>(Lexpo/modules/kotlin/ModuleHolder;)V

    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-static {v8}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v8

    invoke-virtual {p1, v8}, Lexpo/modules/kotlin/modules/Module;->setCoroutineScopeDelegate(Lkotlin/Lazy;)V

    .line 37
    invoke-virtual {p0}, Lexpo/modules/kotlin/ModuleRegistry;->getRegistry()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v7}, Lexpo/modules/kotlin/ModuleHolder;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    nop

    .end local v6    # "$i$a$-trace-ModuleRegistry$register$1":I
    .end local v7    # "holder":Lexpo/modules/kotlin/ModuleHolder;
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    nop

    .line 193
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 191
    nop

    .line 188
    .end local v4    # "label$iv$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    nop

    .line 187
    .end local v2    # "tag$iv$iv":Ljava/lang/String;
    .end local v3    # "$i$f$trace":I
    nop

    .line 38
    .end local v0    # "blockName$iv":Ljava/lang/String;
    .end local v1    # "$i$f$trace":I
    return-void

    .line 192
    .restart local v0    # "blockName$iv":Ljava/lang/String;
    .restart local v1    # "$i$f$trace":I
    .restart local v2    # "tag$iv$iv":Ljava/lang/String;
    .restart local v3    # "$i$f$trace":I
    .restart local v4    # "label$iv$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "$i$a$-trace-ModuleRegistry$register$1":I
    :cond_0
    const/4 v7, 0x0

    .line 25
    .local v7, "$i$a$-requireNotNull-ModuleRegistry$register$1$1":I
    :try_start_1
    const-string v8, "Cannot create a module for invalid runtime context."

    .end local v7    # "$i$a$-requireNotNull-ModuleRegistry$register$1$1":I
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "blockName$iv":Ljava/lang/String;
    .end local v1    # "$i$f$trace":I
    .end local v2    # "tag$iv$iv":Ljava/lang/String;
    .end local v3    # "$i$f$trace":I
    .end local v4    # "label$iv$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local p1    # "module":Lexpo/modules/kotlin/modules/Module;
    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    .end local v6    # "$i$a$-trace-ModuleRegistry$register$1":I
    .restart local v0    # "blockName$iv":Ljava/lang/String;
    .restart local v1    # "$i$f$trace":I
    .restart local v2    # "tag$iv$iv":Ljava/lang/String;
    .restart local v3    # "$i$f$trace":I
    .restart local v4    # "label$iv$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local p1    # "module":Lexpo/modules/kotlin/modules/Module;
    :catchall_0
    move-exception v6

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v6
.end method

.method public final varargs register([Lexpo/modules/kotlin/modules/Module;)V
    .locals 7
    .param p1, "modules"    # [Lexpo/modules/kotlin/modules/Module;

    const-string v0, "modules"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    move-object v0, p1

    .local v0, "$this$forEach$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 194
    .local v1, "$i$f$forEach":I
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    .local v5, "it":Lexpo/modules/kotlin/modules/Module;
    const/4 v6, 0x0

    .line 41
    .local v6, "$i$a$-forEach-ModuleRegistry$register$2":I
    invoke-virtual {p0, v5}, Lexpo/modules/kotlin/ModuleRegistry;->register(Lexpo/modules/kotlin/modules/Module;)V

    .line 194
    .end local v5    # "it":Lexpo/modules/kotlin/modules/Module;
    .end local v6    # "$i$a$-forEach-ModuleRegistry$register$2":I
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 195
    :cond_0
    nop

    .line 42
    .end local v0    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method public final registerActivityContracts$expo_modules_core_debug()V
    .locals 6

    .line 125
    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 206
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lexpo/modules/kotlin/ModuleHolder;

    .local v4, "holder":Lexpo/modules/kotlin/ModuleHolder;
    const/4 v5, 0x0

    .line 126
    .local v5, "$i$a$-forEach-ModuleRegistry$registerActivityContracts$1":I
    invoke-virtual {v4}, Lexpo/modules/kotlin/ModuleHolder;->registerContracts()V

    .line 127
    nop

    .line 206
    .end local v4    # "holder":Lexpo/modules/kotlin/ModuleHolder;
    .end local v5    # "$i$a$-forEach-ModuleRegistry$registerActivityContracts$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 207
    :cond_0
    nop

    .line 128
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method
