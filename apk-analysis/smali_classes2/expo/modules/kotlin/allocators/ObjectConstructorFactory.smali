.class public final Lexpo/modules/kotlin/allocators/ObjectConstructorFactory;
.super Ljava/lang/Object;
.source "ObjectConstructorFactory.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObjectConstructorFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectConstructorFactory.kt\nexpo/modules/kotlin/allocators/ObjectConstructorFactory\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,44:1\n661#2,4:45\n1726#2,3:49\n665#2,7:52\n*S KotlinDebug\n*F\n+ 1 ObjectConstructorFactory.kt\nexpo/modules/kotlin/allocators/ObjectConstructorFactory\n*L\n30#1:45,4\n30#1:49,3\n30#1:52,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J$\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0008\u0008\u0000\u0010\u0005*\u00020\u00012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0007J$\u0010\u0008\u001a\n\u0012\u0004\u0012\u0002H\u0005\u0018\u00010\u0004\"\u0004\u0008\u0000\u0010\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\tH\u0002J(\u0010\n\u001a\n\u0012\u0004\u0012\u0002H\u0005\u0018\u00010\u0004\"\u0008\u0008\u0000\u0010\u0005*\u00020\u00012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0007H\u0002J\"\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\u0008\u0000\u0010\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\tH\u0002\u00a8\u0006\u000c"
    }
    d2 = {
        "Lexpo/modules/kotlin/allocators/ObjectConstructorFactory;",
        "",
        "()V",
        "get",
        "Lexpo/modules/kotlin/allocators/ObjectConstructor;",
        "T",
        "clazz",
        "Lkotlin/reflect/KClass;",
        "tryToUseDefaultConstructor",
        "Ljava/lang/Class;",
        "tryToUseDefaultKotlinConstructor",
        "useUnsafeAllocator",
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


# direct methods
.method public static synthetic $r8$lambda$B-8cAL8anWAYoqoKVC91EJvwsWA(Ljava/lang/reflect/Constructor;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lexpo/modules/kotlin/allocators/ObjectConstructorFactory;->tryToUseDefaultConstructor$lambda$0(Ljava/lang/reflect/Constructor;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$sdCJmYk9-wwg4JKGvK_gK_8cgNw(Lexpo/modules/kotlin/allocators/UnsafeAllocator;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lexpo/modules/kotlin/allocators/ObjectConstructorFactory;->useUnsafeAllocator$lambda$3(Lexpo/modules/kotlin/allocators/UnsafeAllocator;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yJ86fQT6o-CNKfcrL_z-eOLYEC8(Lkotlin/reflect/KFunction;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lexpo/modules/kotlin/allocators/ObjectConstructorFactory;->tryToUseDefaultKotlinConstructor$lambda$2(Lkotlin/reflect/KFunction;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final tryToUseDefaultConstructor(Ljava/lang/Class;)Lexpo/modules/kotlin/allocators/ObjectConstructor;
    .locals 2
    .param p1, "clazz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lexpo/modules/kotlin/allocators/ObjectConstructor<",
            "TT;>;"
        }
    .end annotation

    .line 15
    nop

    .line 16
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 17
    .local v0, "ctor":Ljava/lang/reflect/Constructor;
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 18
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 21
    :cond_0
    new-instance v1, Lexpo/modules/kotlin/allocators/ObjectConstructorFactory$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lexpo/modules/kotlin/allocators/ObjectConstructorFactory$$ExternalSyntheticLambda1;-><init>(Ljava/lang/reflect/Constructor;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "ctor":Ljava/lang/reflect/Constructor;
    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const/4 v1, 0x0

    .line 15
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    return-object v1
.end method

.method private static final tryToUseDefaultConstructor$lambda$0(Ljava/lang/reflect/Constructor;)Ljava/lang/Object;
    .locals 1
    .param p0, "$ctor"    # Ljava/lang/reflect/Constructor;

    .line 22
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final tryToUseDefaultKotlinConstructor(Lkotlin/reflect/KClass;)Lexpo/modules/kotlin/allocators/ObjectConstructor;
    .locals 16
    .param p1, "clazz"    # Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KClass<",
            "TT;>;)",
            "Lexpo/modules/kotlin/allocators/ObjectConstructor<",
            "TT;>;"
        }
    .end annotation

    .line 30
    invoke-interface/range {p1 .. p1}, Lkotlin/reflect/KClass;->getConstructors()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$singleOrNull$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 45
    .local v1, "$i$f$singleOrNull":I
    const/4 v2, 0x0

    .line 46
    .local v2, "single$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 47
    .local v3, "found$iv":Z
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 48
    .local v5, "element$iv":Ljava/lang/Object;
    move-object v7, v5

    check-cast v7, Lkotlin/reflect/KFunction;

    .local v7, "it":Lkotlin/reflect/KFunction;
    const/4 v8, 0x0

    .line 30
    .local v8, "$i$a$-singleOrNull-ObjectConstructorFactory$tryToUseDefaultKotlinConstructor$noArgsConstructor$1":I
    invoke-interface {v7}, Lkotlin/reflect/KFunction;->getParameters()Ljava/util/List;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    .local v9, "$this$all$iv":Ljava/lang/Iterable;
    const/4 v10, 0x0

    .line 49
    .local v10, "$i$f$all":I
    instance-of v11, v9, Ljava/util/Collection;

    const/4 v12, 0x1

    if-eqz v11, :cond_1

    move-object v11, v9

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_1

    .line 50
    :cond_1
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .local v13, "element$iv":Ljava/lang/Object;
    move-object v14, v13

    check-cast v14, Lkotlin/reflect/KParameter;

    .local v14, "p0":Lkotlin/reflect/KParameter;
    const/4 v15, 0x0

    .line 30
    .local v15, "$i$a$-all-ObjectConstructorFactory$tryToUseDefaultKotlinConstructor$noArgsConstructor$1$1":I
    invoke-interface {v14}, Lkotlin/reflect/KParameter;->isOptional()Z

    move-result v14

    .line 50
    .end local v14    # "p0":Lkotlin/reflect/KParameter;
    .end local v15    # "$i$a$-all-ObjectConstructorFactory$tryToUseDefaultKotlinConstructor$noArgsConstructor$1$1":I
    if-nez v14, :cond_2

    const/4 v12, 0x0

    goto :goto_1

    .line 51
    .end local v13    # "element$iv":Ljava/lang/Object;
    :cond_3
    nop

    .line 30
    .end local v9    # "$this$all$iv":Ljava/lang/Iterable;
    .end local v10    # "$i$f$all":I
    :goto_1
    nop

    .line 48
    .end local v7    # "it":Lkotlin/reflect/KFunction;
    .end local v8    # "$i$a$-singleOrNull-ObjectConstructorFactory$tryToUseDefaultKotlinConstructor$noArgsConstructor$1":I
    if-eqz v12, :cond_0

    .line 52
    if-eqz v3, :cond_4

    move-object v2, v6

    goto :goto_2

    .line 53
    :cond_4
    move-object v2, v5

    .line 54
    const/4 v3, 0x1

    .end local v5    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 57
    :cond_5
    if-nez v3, :cond_6

    move-object v2, v6

    goto :goto_2

    .line 58
    :cond_6
    nop

    .line 30
    .end local v0    # "$this$singleOrNull$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$singleOrNull":I
    .end local v2    # "single$iv":Ljava/lang/Object;
    .end local v3    # "found$iv":Z
    :goto_2
    check-cast v2, Lkotlin/reflect/KFunction;

    if-nez v2, :cond_7

    .line 31
    return-object v6

    .line 30
    :cond_7
    move-object v0, v2

    .line 32
    .local v0, "noArgsConstructor":Lkotlin/reflect/KFunction;
    new-instance v1, Lexpo/modules/kotlin/allocators/ObjectConstructorFactory$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lexpo/modules/kotlin/allocators/ObjectConstructorFactory$$ExternalSyntheticLambda2;-><init>(Lkotlin/reflect/KFunction;)V

    return-object v1
.end method

.method private static final tryToUseDefaultKotlinConstructor$lambda$2(Lkotlin/reflect/KFunction;)Ljava/lang/Object;
    .locals 1
    .param p0, "$noArgsConstructor"    # Lkotlin/reflect/KFunction;

    const-string v0, "$noArgsConstructor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlin/reflect/KFunction;->callBy(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final useUnsafeAllocator(Ljava/lang/Class;)Lexpo/modules/kotlin/allocators/ObjectConstructor;
    .locals 2
    .param p1, "clazz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lexpo/modules/kotlin/allocators/ObjectConstructor<",
            "TT;>;"
        }
    .end annotation

    .line 38
    sget-object v0, Lexpo/modules/kotlin/allocators/UnsafeAllocator;->Companion:Lexpo/modules/kotlin/allocators/UnsafeAllocator$Companion;

    invoke-virtual {v0, p1}, Lexpo/modules/kotlin/allocators/UnsafeAllocator$Companion;->createAllocator(Ljava/lang/Class;)Lexpo/modules/kotlin/allocators/UnsafeAllocator;

    move-result-object v0

    .line 39
    .local v0, "allocator":Lexpo/modules/kotlin/allocators/UnsafeAllocator;
    new-instance v1, Lexpo/modules/kotlin/allocators/ObjectConstructorFactory$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lexpo/modules/kotlin/allocators/ObjectConstructorFactory$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/kotlin/allocators/UnsafeAllocator;)V

    return-object v1
.end method

.method private static final useUnsafeAllocator$lambda$3(Lexpo/modules/kotlin/allocators/UnsafeAllocator;)Ljava/lang/Object;
    .locals 1
    .param p0, "$allocator"    # Lexpo/modules/kotlin/allocators/UnsafeAllocator;

    const-string v0, "$allocator"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-interface {p0}, Lexpo/modules/kotlin/allocators/UnsafeAllocator;->newInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final get(Lkotlin/reflect/KClass;)Lexpo/modules/kotlin/allocators/ObjectConstructor;
    .locals 1
    .param p1, "clazz"    # Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KClass<",
            "TT;>;)",
            "Lexpo/modules/kotlin/allocators/ObjectConstructor<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lexpo/modules/kotlin/allocators/ObjectConstructorFactory;->tryToUseDefaultConstructor(Ljava/lang/Class;)Lexpo/modules/kotlin/allocators/ObjectConstructor;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lexpo/modules/kotlin/allocators/ObjectConstructorFactory;->tryToUseDefaultKotlinConstructor(Lkotlin/reflect/KClass;)Lexpo/modules/kotlin/allocators/ObjectConstructor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 12
    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lexpo/modules/kotlin/allocators/ObjectConstructorFactory;->useUnsafeAllocator(Ljava/lang/Class;)Lexpo/modules/kotlin/allocators/ObjectConstructor;

    move-result-object v0

    :cond_0
    return-object v0
.end method
