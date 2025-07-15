.class public final Lexpo/modules/kotlin/jni/JNIDeallocator;
.super Ljava/lang/Object;
.source "JNIDeallocator.kt"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJNIDeallocator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JNIDeallocator.kt\nexpo/modules/kotlin/jni/JNIDeallocator\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,87:1\n1855#2,2:88\n1603#2,9:90\n1855#2:99\n1856#2:101\n1612#2:102\n1#3:100\n*S KotlinDebug\n*F\n+ 1 JNIDeallocator.kt\nexpo/modules/kotlin/jni/JNIDeallocator\n*L\n68#1:88,2\n80#1:90,9\n80#1:99\n80#1:101\n80#1:102\n80#1:100\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000?\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0000*\u0001\u000b\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0008H\u0007J\u0008\u0010\u0012\u001a\u00020\u0010H\u0016J\u0011\u0010\u0013\u001a\u0004\u0018\u00010\u0010H\u0000\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0017R&\u0010\u0005\u001a\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\t0\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000cR\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lexpo/modules/kotlin/jni/JNIDeallocator;",
        "Ljava/lang/AutoCloseable;",
        "shouldCreateDestructorThread",
        "",
        "(Z)V",
        "destructorMap",
        "",
        "Ljava/lang/ref/PhantomReference;",
        "Lexpo/modules/kotlin/jni/Destructible;",
        "Ljava/lang/ref/WeakReference;",
        "destructorThread",
        "expo/modules/kotlin/jni/JNIDeallocator$destructorThread$1",
        "Lexpo/modules/kotlin/jni/JNIDeallocator$destructorThread$1;",
        "referenceQueue",
        "Ljava/lang/ref/ReferenceQueue;",
        "addReference",
        "",
        "destructible",
        "close",
        "deallocate",
        "deallocate$expo_modules_core_debug",
        "()Lkotlin/Unit;",
        "inspectMemory",
        "",
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
.field private final destructorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/ref/PhantomReference<",
            "Lexpo/modules/kotlin/jni/Destructible;",
            ">;",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/kotlin/jni/Destructible;",
            ">;>;"
        }
    .end annotation
.end field

.field private final destructorThread:Lexpo/modules/kotlin/jni/JNIDeallocator$destructorThread$1;

.field private final referenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lexpo/modules/kotlin/jni/Destructible;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lexpo/modules/kotlin/jni/JNIDeallocator;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3
    .param p1, "shouldCreateDestructorThread"    # Z

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lexpo/modules/kotlin/jni/JNIDeallocator;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 23
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lexpo/modules/kotlin/jni/JNIDeallocator;->destructorMap:Ljava/util/Map;

    .line 29
    if-eqz p1, :cond_0

    .line 30
    new-instance v0, Lexpo/modules/kotlin/jni/JNIDeallocator$destructorThread$1;

    invoke-direct {v0, p0}, Lexpo/modules/kotlin/jni/JNIDeallocator$destructorThread$1;-><init>(Lexpo/modules/kotlin/jni/JNIDeallocator;)V

    .line 45
    move-object v1, v0

    .local v1, "it":Lexpo/modules/kotlin/jni/JNIDeallocator$destructorThread$1;
    const/4 v2, 0x0

    .line 46
    .local v2, "$i$a$-also-JNIDeallocator$destructorThread$2":I
    invoke-virtual {v1}, Lexpo/modules/kotlin/jni/JNIDeallocator$destructorThread$1;->start()V

    .line 47
    nop

    .line 45
    .end local v1    # "it":Lexpo/modules/kotlin/jni/JNIDeallocator$destructorThread$1;
    .end local v2    # "$i$a$-also-JNIDeallocator$destructorThread$2":I
    goto :goto_0

    .line 49
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    iput-object v0, p0, Lexpo/modules/kotlin/jni/JNIDeallocator;->destructorThread:Lexpo/modules/kotlin/jni/JNIDeallocator$destructorThread$1;

    .line 14
    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 14
    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-direct {p0, p1}, Lexpo/modules/kotlin/jni/JNIDeallocator;-><init>(Z)V

    .line 86
    return-void
.end method

.method public static final synthetic access$getDestructorMap$p(Lexpo/modules/kotlin/jni/JNIDeallocator;)Ljava/util/Map;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/kotlin/jni/JNIDeallocator;

    .line 13
    iget-object v0, p0, Lexpo/modules/kotlin/jni/JNIDeallocator;->destructorMap:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic access$getReferenceQueue$p(Lexpo/modules/kotlin/jni/JNIDeallocator;)Ljava/lang/ref/ReferenceQueue;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/kotlin/jni/JNIDeallocator;

    .line 13
    iget-object v0, p0, Lexpo/modules/kotlin/jni/JNIDeallocator;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method


# virtual methods
.method public final addReference(Lexpo/modules/kotlin/jni/Destructible;)V
    .locals 4
    .param p1, "destructible"    # Lexpo/modules/kotlin/jni/Destructible;

    const-string v0, "destructible"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    monitor-enter p0

    const/4 v0, 0x0

    .line 59
    .local v0, "$i$a$-synchronized-JNIDeallocator$addReference$1":I
    :try_start_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 60
    .local v1, "weakRef":Ljava/lang/ref/WeakReference;
    new-instance v2, Ljava/lang/ref/PhantomReference;

    iget-object v3, p0, Lexpo/modules/kotlin/jni/JNIDeallocator;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2, p1, v3}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 61
    .local v2, "phantomRef":Ljava/lang/ref/PhantomReference;
    iget-object v3, p0, Lexpo/modules/kotlin/jni/JNIDeallocator;->destructorMap:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    nop

    .end local v0    # "$i$a$-synchronized-JNIDeallocator$addReference$1":I
    .end local v1    # "weakRef":Ljava/lang/ref/WeakReference;
    .end local v2    # "phantomRef":Ljava/lang/ref/PhantomReference;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    .line 62
    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .locals 0

    .line 84
    invoke-virtual {p0}, Lexpo/modules/kotlin/jni/JNIDeallocator;->deallocate$expo_modules_core_debug()Lkotlin/Unit;

    .line 85
    return-void
.end method

.method public final deallocate$expo_modules_core_debug()Lkotlin/Unit;
    .locals 8

    .line 67
    monitor-enter p0

    const/4 v0, 0x0

    .line 68
    .local v0, "$i$a$-synchronized-JNIDeallocator$deallocate$1":I
    :try_start_0
    iget-object v1, p0, Lexpo/modules/kotlin/jni/JNIDeallocator;->destructorMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 88
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

    check-cast v5, Ljava/lang/ref/WeakReference;

    .local v5, "it":Ljava/lang/ref/WeakReference;
    const/4 v6, 0x0

    .line 69
    .local v6, "$i$a$-forEach-JNIDeallocator$deallocate$1$1":I
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lexpo/modules/kotlin/jni/Destructible;

    if-eqz v7, :cond_0

    invoke-interface {v7}, Lexpo/modules/kotlin/jni/Destructible;->deallocate()V

    .line 70
    :cond_0
    nop

    .line 88
    .end local v5    # "it":Ljava/lang/ref/WeakReference;
    .end local v6    # "$i$a$-forEach-JNIDeallocator$deallocate$1$1":I
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 89
    :cond_1
    nop

    .line 71
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    iget-object v1, p0, Lexpo/modules/kotlin/jni/JNIDeallocator;->destructorMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 72
    iget-object v1, p0, Lexpo/modules/kotlin/jni/JNIDeallocator;->destructorThread:Lexpo/modules/kotlin/jni/JNIDeallocator$destructorThread$1;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lexpo/modules/kotlin/jni/JNIDeallocator$destructorThread$1;->interrupt()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 67
    .end local v0    # "$i$a$-synchronized-JNIDeallocator$deallocate$1":I
    :goto_1
    monitor-exit p0

    .line 73
    return-object v1

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final inspectMemory()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lexpo/modules/kotlin/jni/Destructible;",
            ">;"
        }
    .end annotation

    .line 79
    monitor-enter p0

    const/4 v0, 0x0

    .line 80
    .local v0, "$i$a$-synchronized-JNIDeallocator$inspectMemory$1":I
    :try_start_0
    iget-object v1, p0, Lexpo/modules/kotlin/jni/JNIDeallocator;->destructorMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 90
    .local v2, "$i$f$mapNotNull":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v1

    .local v4, "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 98
    .local v5, "$i$f$mapNotNullTo":I
    move-object v6, v4

    .local v6, "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 99
    .local v7, "$i$f$forEach":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .local v9, "element$iv$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    .local v10, "element$iv$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 98
    .local v11, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    move-object v12, v10

    check-cast v12, Ljava/lang/ref/WeakReference;

    .local v12, "it":Ljava/lang/ref/WeakReference;
    const/4 v13, 0x0

    .line 80
    .local v13, "$i$a$-mapNotNull-JNIDeallocator$inspectMemory$1$1":I
    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lexpo/modules/kotlin/jni/Destructible;

    .line 98
    .end local v12    # "it":Ljava/lang/ref/WeakReference;
    .end local v13    # "$i$a$-mapNotNull-JNIDeallocator$inspectMemory$1$1":I
    if-eqz v14, :cond_0

    move-object v12, v14

    .line 100
    .local v12, "it$iv$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 98
    .local v13, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v3, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 99
    .end local v10    # "element$iv$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    .end local v12    # "it$iv$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    :cond_0
    nop

    .end local v9    # "element$iv$iv$iv":Ljava/lang/Object;
    goto :goto_0

    .line 101
    :cond_1
    nop

    .line 102
    .end local v6    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$forEach":I
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$mapNotNullTo":I
    check-cast v3, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    nop

    .line 80
    .end local v1    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$mapNotNull":I
    nop

    .line 79
    .end local v0    # "$i$a$-synchronized-JNIDeallocator$inspectMemory$1":I
    monitor-exit p0

    .line 81
    return-object v3

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
