.class public final Lexpo/modules/kotlin/types/AnyTypeProvider;
.super Ljava/lang/Object;
.source "AnyType.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnyType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeProvider\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,332:1\n1855#2,2:333\n*S KotlinDebug\n*F\n+ 1 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeProvider\n*L\n136#1:333,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0013\u0010\u000c\u001a\u0004\u0018\u00010\u0008\"\u0006\u0008\u0000\u0010\r\u0018\u0001H\u0086\u0008R8\u0010\u0003\u001a\u001e\u0012\u0014\u0012\u0012\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u0012\u0004\u0012\u00020\u00080\u00048\u0000X\u0081\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\t\u0010\u0002\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000e"
    }
    d2 = {
        "Lexpo/modules/kotlin/types/AnyTypeProvider;",
        "",
        "()V",
        "typesMap",
        "",
        "Lkotlin/Pair;",
        "Lkotlin/reflect/KClass;",
        "",
        "Lexpo/modules/kotlin/types/AnyType;",
        "getTypesMap$annotations",
        "getTypesMap",
        "()Ljava/util/Map;",
        "cachedAnyType",
        "T",
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


# static fields
.field public static final INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

.field private static final typesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/Pair<",
            "Lkotlin/reflect/KClass<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lexpo/modules/kotlin/types/AnyType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lexpo/modules/kotlin/types/AnyTypeProvider;

    invoke-direct {v0}, Lexpo/modules/kotlin/types/AnyTypeProvider;-><init>()V

    sput-object v0, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 91
    invoke-static {}, Lkotlin/collections/MapsKt;->createMapBuilder()Ljava/util/Map;

    move-result-object v0

    move-object v1, v0

    .local v1, "$this$typesMap_u24lambda_u241":Ljava/util/Map;
    const/4 v2, 0x0

    .line 93
    .local v2, "$i$a$-buildMap-AnyTypeProvider$typesMap$1":I
    const/16 v3, 0x23

    new-array v3, v3, [Lkotlin/reflect/KClass;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v8, 0x3

    aput-object v4, v3, v8

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v8, 0x4

    aput-object v4, v3, v8

    const-class v4, Ljava/lang/String;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v8, 0x5

    aput-object v4, v3, v8

    const-class v4, [B

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v8, 0x6

    aput-object v4, v3, v8

    const-class v4, [J

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v8, 0x7

    aput-object v4, v3, v8

    const-class v4, [I

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/16 v8, 0x8

    aput-object v4, v3, v8

    const-class v4, [Z

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/16 v8, 0x9

    aput-object v4, v3, v8

    const-class v4, [F

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/16 v8, 0xa

    aput-object v4, v3, v8

    const-class v4, [D

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/16 v8, 0xb

    aput-object v4, v3, v8

    const-class v4, Lexpo/modules/kotlin/jni/JavaScriptValue;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/16 v8, 0xc

    aput-object v4, v3, v8

    const-class v4, Lexpo/modules/kotlin/jni/JavaScriptObject;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/16 v8, 0xd

    aput-object v4, v3, v8

    const-class v4, Lexpo/modules/kotlin/typedarray/TypedArray;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/16 v8, 0xe

    aput-object v4, v3, v8

    const-class v4, Lexpo/modules/kotlin/typedarray/Int8Array;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/16 v8, 0xf

    aput-object v4, v3, v8

    const-class v4, Lexpo/modules/kotlin/typedarray/Int16Array;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/16 v8, 0x10

    aput-object v4, v3, v8

    const-class v4, Lexpo/modules/kotlin/typedarray/Int32Array;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/16 v8, 0x11

    aput-object v4, v3, v8

    const-class v4, Lexpo/modules/kotlin/typedarray/Uint8Array;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/16 v8, 0x12

    aput-object v4, v3, v8

    const-class v4, Lexpo/modules/kotlin/typedarray/Uint8ClampedArray;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/16 v8, 0x13

    aput-object v4, v3, v8

    const-class v4, Lexpo/modules/kotlin/typedarray/Uint16Array;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/16 v8, 0x14

    aput-object v4, v3, v8

    const-class v4, Lexpo/modules/kotlin/typedarray/Uint32Array;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/16 v8, 0x15

    aput-object v4, v3, v8

    const-class v4, Lexpo/modules/kotlin/typedarray/Float32Array;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/16 v8, 0x16

    aput-object v4, v3, v8

    const-class v4, Lexpo/modules/kotlin/typedarray/Float64Array;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/16 v8, 0x17

    aput-object v4, v3, v8

    const-class v4, Lexpo/modules/kotlin/typedarray/BigInt64Array;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/16 v8, 0x18

    aput-object v4, v3, v8

    const-class v4, Lexpo/modules/kotlin/typedarray/BigUint64Array;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/16 v8, 0x19

    aput-object v4, v3, v8

    const-class v4, Lcom/facebook/react/bridge/ReadableArray;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/16 v8, 0x1a

    aput-object v4, v3, v8

    const-class v4, Lcom/facebook/react/bridge/ReadableMap;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/16 v8, 0x1b

    aput-object v4, v3, v8

    const-class v4, Ljava/net/URL;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/16 v8, 0x1c

    aput-object v4, v3, v8

    const-class v4, Landroid/net/Uri;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/16 v8, 0x1d

    aput-object v4, v3, v8

    const-class v4, Ljava/net/URI;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/16 v8, 0x1e

    aput-object v4, v3, v8

    const-class v4, Ljava/io/File;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/16 v8, 0x1f

    aput-object v4, v3, v8

    const-class v4, Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/16 v8, 0x20

    aput-object v4, v3, v8

    const-class v4, Lkotlin/Unit;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/16 v8, 0x21

    aput-object v4, v3, v8

    const-class v4, Lexpo/modules/core/arguments/ReadableArguments;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/16 v8, 0x22

    aput-object v4, v3, v8

    .line 92
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 136
    nop

    .local v3, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 333
    .local v4, "$i$f$forEach":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .local v9, "element$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Lkotlin/reflect/KClass;

    .local v10, "klass":Lkotlin/reflect/KClass;
    const/4 v11, 0x0

    .line 137
    .local v11, "$i$a$-forEach-AnyTypeProvider$typesMap$1$1":I
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {v10, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v12

    new-instance v13, Lexpo/modules/kotlin/types/AnyType;

    new-instance v14, Lexpo/modules/kotlin/types/EmptyKType;

    invoke-direct {v14, v10, v5}, Lexpo/modules/kotlin/types/EmptyKType;-><init>(Lkotlin/reflect/KClass;Z)V

    check-cast v14, Lkotlin/reflect/KType;

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15, v7, v15}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {v10, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v12

    new-instance v13, Lexpo/modules/kotlin/types/AnyType;

    new-instance v14, Lexpo/modules/kotlin/types/EmptyKType;

    invoke-direct {v14, v10, v6}, Lexpo/modules/kotlin/types/EmptyKType;-><init>(Lkotlin/reflect/KClass;Z)V

    check-cast v14, Lkotlin/reflect/KType;

    invoke-direct {v13, v14, v15, v7, v15}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    nop

    .line 333
    .end local v10    # "klass":Lkotlin/reflect/KClass;
    .end local v11    # "$i$a$-forEach-AnyTypeProvider$typesMap$1$1":I
    nop

    .end local v9    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 334
    :cond_0
    nop

    .line 140
    .end local v3    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$forEach":I
    nop

    .line 91
    .end local v1    # "$this$typesMap_u24lambda_u241":Ljava/util/Map;
    .end local v2    # "$i$a$-buildMap-AnyTypeProvider$typesMap$1":I
    invoke-static {v0}, Lkotlin/collections/MapsKt;->build(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lexpo/modules/kotlin/types/AnyTypeProvider;->typesMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getTypesMap$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final synthetic cachedAnyType()Lexpo/modules/kotlin/types/AnyType;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lexpo/modules/kotlin/types/AnyType;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 143
    .local v0, "$i$f$cachedAnyType":I
    new-instance v1, Lkotlin/Pair;

    const/4 v2, 0x4

    const-string v3, "T"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v2, Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const/4 v4, 0x3

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 144
    .local v1, "key":Lkotlin/Pair;
    invoke-virtual {p0}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/kotlin/types/AnyType;

    return-object v2
.end method

.method public final getTypesMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lkotlin/Pair<",
            "Lkotlin/reflect/KClass<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lexpo/modules/kotlin/types/AnyType;",
            ">;"
        }
    .end annotation

    .line 91
    sget-object v0, Lexpo/modules/kotlin/types/AnyTypeProvider;->typesMap:Ljava/util/Map;

    return-object v0
.end method
