.class final Lkotlin/reflect/full/Java8RepeatableContainerLoader;
.super Ljava/lang/Object;
.source "KAnnotatedElements.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/full/Java8RepeatableContainerLoader$Cache;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKAnnotatedElements.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KAnnotatedElements.kt\nkotlin/reflect/full/Java8RepeatableContainerLoader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,102:1\n1#2:103\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0002\u0008\u0003\u0008\u00c2\u0002\u0018\u00002\u00020\u0001:\u0001\u000eB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\t\u001a\u00020\u0004H\u0002J \u0010\n\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u000c\u0018\u00010\u000b2\u000e\u0010\r\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000c0\u000bR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000f"
    }
    d2 = {
        "Lkotlin/reflect/full/Java8RepeatableContainerLoader;",
        "",
        "()V",
        "cache",
        "Lkotlin/reflect/full/Java8RepeatableContainerLoader$Cache;",
        "getCache",
        "()Lkotlin/reflect/full/Java8RepeatableContainerLoader$Cache;",
        "setCache",
        "(Lkotlin/reflect/full/Java8RepeatableContainerLoader$Cache;)V",
        "buildCache",
        "loadRepeatableContainer",
        "Ljava/lang/Class;",
        "",
        "klass",
        "Cache",
        "kotlin-reflection"
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
.field public static final INSTANCE:Lkotlin/reflect/full/Java8RepeatableContainerLoader;

.field private static cache:Lkotlin/reflect/full/Java8RepeatableContainerLoader$Cache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/full/Java8RepeatableContainerLoader;

    invoke-direct {v0}, Lkotlin/reflect/full/Java8RepeatableContainerLoader;-><init>()V

    sput-object v0, Lkotlin/reflect/full/Java8RepeatableContainerLoader;->INSTANCE:Lkotlin/reflect/full/Java8RepeatableContainerLoader;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final buildCache()Lkotlin/reflect/full/Java8RepeatableContainerLoader$Cache;
    .locals 4

    .line 81
    nop

    .line 82
    :try_start_0
    const-string v0, "java.lang.annotation.Repeatable"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type java.lang.Class<out kotlin.Annotation>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    nop

    .line 87
    .local v0, "repeatableClass":Ljava/lang/Class;
    new-instance v1, Lkotlin/reflect/full/Java8RepeatableContainerLoader$Cache;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    const-string/jumbo v3, "value"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lkotlin/reflect/full/Java8RepeatableContainerLoader$Cache;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    return-object v1

    .line 83
    .end local v0    # "repeatableClass":Ljava/lang/Class;
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Lkotlin/reflect/full/Java8RepeatableContainerLoader$Cache;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lkotlin/reflect/full/Java8RepeatableContainerLoader$Cache;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    return-object v1
.end method


# virtual methods
.method public final loadRepeatableContainer(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 6
    .param p1, "klass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    const-string v0, "klass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    sget-object v0, Lkotlin/reflect/full/Java8RepeatableContainerLoader;->cache:Lkotlin/reflect/full/Java8RepeatableContainerLoader$Cache;

    if-nez v0, :cond_1

    monitor-enter p0

    const/4 v0, 0x0

    .line 92
    .local v0, "$i$a$-synchronized-Java8RepeatableContainerLoader$loadRepeatableContainer$cache$1":I
    :try_start_0
    sget-object v1, Lkotlin/reflect/full/Java8RepeatableContainerLoader;->cache:Lkotlin/reflect/full/Java8RepeatableContainerLoader$Cache;

    if-nez v1, :cond_0

    sget-object v1, Lkotlin/reflect/full/Java8RepeatableContainerLoader;->INSTANCE:Lkotlin/reflect/full/Java8RepeatableContainerLoader;

    invoke-direct {v1}, Lkotlin/reflect/full/Java8RepeatableContainerLoader;->buildCache()Lkotlin/reflect/full/Java8RepeatableContainerLoader$Cache;

    move-result-object v1

    move-object v2, v1

    .line 103
    .local v2, "it":Lkotlin/reflect/full/Java8RepeatableContainerLoader$Cache;
    const/4 v3, 0x0

    .line 92
    .local v3, "$i$a$-also-Java8RepeatableContainerLoader$loadRepeatableContainer$cache$1$1":I
    sput-object v2, Lkotlin/reflect/full/Java8RepeatableContainerLoader;->cache:Lkotlin/reflect/full/Java8RepeatableContainerLoader$Cache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .end local v0    # "$i$a$-synchronized-Java8RepeatableContainerLoader$loadRepeatableContainer$cache$1":I
    .end local v2    # "it":Lkotlin/reflect/full/Java8RepeatableContainerLoader$Cache;
    .end local v3    # "$i$a$-also-Java8RepeatableContainerLoader$loadRepeatableContainer$cache$1$1":I
    :cond_0
    monitor-exit p0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 95
    .local v0, "cache":Lkotlin/reflect/full/Java8RepeatableContainerLoader$Cache;
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lkotlin/reflect/full/Java8RepeatableContainerLoader$Cache;->getRepeatableClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return-object v2

    .line 96
    .local v1, "repeatableClass":Ljava/lang/Class;
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    if-nez v3, :cond_3

    return-object v2

    .line 97
    .local v3, "repeatable":Ljava/lang/annotation/Annotation;
    :cond_3
    invoke-virtual {v0}, Lkotlin/reflect/full/Java8RepeatableContainerLoader$Cache;->getValueMethod()Ljava/lang/reflect/Method;

    move-result-object v4

    if-nez v4, :cond_4

    return-object v2

    :cond_4
    move-object v2, v4

    .line 99
    .local v2, "valueMethod":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type java.lang.Class<out kotlin.Annotation>"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Class;

    return-object v4
.end method
