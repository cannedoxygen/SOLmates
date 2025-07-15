.class public final Lexpo/modules/kotlin/types/TypeConverterProviderImpl;
.super Ljava/lang/Object;
.source "TypeConverterProvider.kt"

# interfaces
.implements Lexpo/modules/kotlin/types/TypeConverterProvider;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTypeConverterProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TypeConverterProvider.kt\nexpo/modules/kotlin/types/TypeConverterProviderImpl\n+ 2 TypeConverter.kt\nexpo/modules/kotlin/types/TypeConverterKt\n*L\n1#1,331:1\n81#2:332\n81#2:333\n81#2:334\n81#2:335\n81#2:336\n81#2:337\n81#2:338\n81#2:339\n81#2:340\n81#2:341\n81#2:342\n81#2:343\n81#2:344\n76#2,6:345\n76#2,6:351\n*S KotlinDebug\n*F\n+ 1 TypeConverterProvider.kt\nexpo/modules/kotlin/types/TypeConverterProviderImpl\n*L\n169#1:332\n173#1:333\n177#1:334\n181#1:335\n185#1:336\n206#1:337\n210#1:338\n213#1:339\n217#1:340\n225#1:341\n233#1:342\n241#1:343\n249#1:344\n259#1:345,6\n262#1:351,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J$\u0010\u000b\u001a\u0016\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0005\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00060\u00042\u0006\u0010\u000c\u001a\u00020\rH\u0002J\u0016\u0010\u000e\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00062\u0006\u0010\u000f\u001a\u00020\tH\u0002J\"\u0010\u0010\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00062\u0006\u0010\u0011\u001a\u00020\t2\n\u0010\u0012\u001a\u0006\u0012\u0002\u0008\u00030\u0013H\u0002J\u0014\u0010\u0014\u001a\u0006\u0012\u0002\u0008\u00030\u00062\u0006\u0010\u0011\u001a\u00020\tH\u0016R\"\u0010\u0003\u001a\u0016\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0005\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00060\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\t\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00060\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\"\u0010\n\u001a\u0016\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0005\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00060\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lexpo/modules/kotlin/types/TypeConverterProviderImpl;",
        "Lexpo/modules/kotlin/types/TypeConverterProvider;",
        "()V",
        "cachedConverters",
        "",
        "Lkotlin/reflect/KClass;",
        "Lexpo/modules/kotlin/types/TypeConverter;",
        "cachedRecordConverters",
        "",
        "Lkotlin/reflect/KType;",
        "nullableCachedConverters",
        "createCachedConverters",
        "isOptional",
        "",
        "getCachedConverter",
        "inputType",
        "handelEither",
        "type",
        "jClass",
        "Ljava/lang/Class;",
        "obtainTypeConverter",
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
.field public static final INSTANCE:Lexpo/modules/kotlin/types/TypeConverterProviderImpl;

.field private static final cachedConverters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/reflect/KClass<",
            "*>;",
            "Lexpo/modules/kotlin/types/TypeConverter<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final cachedRecordConverters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/reflect/KType;",
            "Lexpo/modules/kotlin/types/TypeConverter<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final nullableCachedConverters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/reflect/KClass<",
            "*>;",
            "Lexpo/modules/kotlin/types/TypeConverter<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/kotlin/types/TypeConverterProviderImpl;

    invoke-direct {v0}, Lexpo/modules/kotlin/types/TypeConverterProviderImpl;-><init>()V

    sput-object v0, Lexpo/modules/kotlin/types/TypeConverterProviderImpl;->INSTANCE:Lexpo/modules/kotlin/types/TypeConverterProviderImpl;

    .line 76
    sget-object v0, Lexpo/modules/kotlin/types/TypeConverterProviderImpl;->INSTANCE:Lexpo/modules/kotlin/types/TypeConverterProviderImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/kotlin/types/TypeConverterProviderImpl;->createCachedConverters(Z)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lexpo/modules/kotlin/types/TypeConverterProviderImpl;->cachedConverters:Ljava/util/Map;

    .line 77
    sget-object v0, Lexpo/modules/kotlin/types/TypeConverterProviderImpl;->INSTANCE:Lexpo/modules/kotlin/types/TypeConverterProviderImpl;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lexpo/modules/kotlin/types/TypeConverterProviderImpl;->createCachedConverters(Z)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lexpo/modules/kotlin/types/TypeConverterProviderImpl;->nullableCachedConverters:Ljava/util/Map;

    .line 79
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lexpo/modules/kotlin/types/TypeConverterProviderImpl;->cachedRecordConverters:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final createCachedConverters(Z)Ljava/util/Map;
    .locals 14
    .param p1, "isOptional"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Lkotlin/reflect/KClass<",
            "*>;",
            "Lexpo/modules/kotlin/types/TypeConverter<",
            "*>;>;"
        }
    .end annotation

    .line 171
    new-instance v0, Lexpo/modules/kotlin/jni/ExpectedType;

    const/4 v1, 0x1

    new-array v2, v1, [Lexpo/modules/kotlin/jni/CppType;

    sget-object v3, Lexpo/modules/kotlin/jni/CppType;->INT:Lexpo/modules/kotlin/jni/CppType;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {v0, v2}, Lexpo/modules/kotlin/jni/ExpectedType;-><init>([Lexpo/modules/kotlin/jni/CppType;)V

    .line 169
    nop

    .local v0, "cppRequireType$iv":Lexpo/modules/kotlin/jni/ExpectedType;
    const/4 v2, 0x0

    .line 332
    .local v2, "$i$f$createTrivialTypeConverter":I
    new-instance v3, Lexpo/modules/kotlin/types/TypeConverterProviderImpl$createCachedConverters$$inlined$createTrivialTypeConverter$1;

    invoke-direct {v3, p1, v0}, Lexpo/modules/kotlin/types/TypeConverterProviderImpl$createCachedConverters$$inlined$createTrivialTypeConverter$1;-><init>(ZLexpo/modules/kotlin/jni/ExpectedType;)V

    check-cast v3, Lexpo/modules/kotlin/types/TypeConverter;

    .line 169
    .end local v0    # "cppRequireType$iv":Lexpo/modules/kotlin/jni/ExpectedType;
    .end local v2    # "$i$f$createTrivialTypeConverter":I
    move-object v0, v3

    .line 175
    .local v0, "intTypeConverter":Lexpo/modules/kotlin/types/TypeConverter;
    new-instance v2, Lexpo/modules/kotlin/jni/ExpectedType;

    new-array v3, v1, [Lexpo/modules/kotlin/jni/CppType;

    sget-object v5, Lexpo/modules/kotlin/jni/CppType;->LONG:Lexpo/modules/kotlin/jni/CppType;

    aput-object v5, v3, v4

    invoke-direct {v2, v3}, Lexpo/modules/kotlin/jni/ExpectedType;-><init>([Lexpo/modules/kotlin/jni/CppType;)V

    .line 173
    nop

    .local v2, "cppRequireType$iv":Lexpo/modules/kotlin/jni/ExpectedType;
    const/4 v3, 0x0

    .line 333
    .local v3, "$i$f$createTrivialTypeConverter":I
    new-instance v5, Lexpo/modules/kotlin/types/TypeConverterProviderImpl$createCachedConverters$$inlined$createTrivialTypeConverter$2;

    invoke-direct {v5, p1, v2}, Lexpo/modules/kotlin/types/TypeConverterProviderImpl$createCachedConverters$$inlined$createTrivialTypeConverter$2;-><init>(ZLexpo/modules/kotlin/jni/ExpectedType;)V

    check-cast v5, Lexpo/modules/kotlin/types/TypeConverter;

    .line 173
    .end local v2    # "cppRequireType$iv":Lexpo/modules/kotlin/jni/ExpectedType;
    .end local v3    # "$i$f$createTrivialTypeConverter":I
    move-object v2, v5

    .line 179
    .local v2, "longTypeConverter":Lexpo/modules/kotlin/types/TypeConverter;
    new-instance v3, Lexpo/modules/kotlin/jni/ExpectedType;

    new-array v5, v1, [Lexpo/modules/kotlin/jni/CppType;

    sget-object v6, Lexpo/modules/kotlin/jni/CppType;->DOUBLE:Lexpo/modules/kotlin/jni/CppType;

    aput-object v6, v5, v4

    invoke-direct {v3, v5}, Lexpo/modules/kotlin/jni/ExpectedType;-><init>([Lexpo/modules/kotlin/jni/CppType;)V

    .line 177
    nop

    .local v3, "cppRequireType$iv":Lexpo/modules/kotlin/jni/ExpectedType;
    const/4 v5, 0x0

    .line 334
    .local v5, "$i$f$createTrivialTypeConverter":I
    new-instance v6, Lexpo/modules/kotlin/types/TypeConverterProviderImpl$createCachedConverters$$inlined$createTrivialTypeConverter$3;

    invoke-direct {v6, p1, v3}, Lexpo/modules/kotlin/types/TypeConverterProviderImpl$createCachedConverters$$inlined$createTrivialTypeConverter$3;-><init>(ZLexpo/modules/kotlin/jni/ExpectedType;)V

    check-cast v6, Lexpo/modules/kotlin/types/TypeConverter;

    .line 177
    .end local v3    # "cppRequireType$iv":Lexpo/modules/kotlin/jni/ExpectedType;
    .end local v5    # "$i$f$createTrivialTypeConverter":I
    move-object v3, v6

    .line 183
    .local v3, "doubleTypeConverter":Lexpo/modules/kotlin/types/TypeConverter;
    new-instance v5, Lexpo/modules/kotlin/jni/ExpectedType;

    new-array v6, v1, [Lexpo/modules/kotlin/jni/CppType;

    sget-object v7, Lexpo/modules/kotlin/jni/CppType;->FLOAT:Lexpo/modules/kotlin/jni/CppType;

    aput-object v7, v6, v4

    invoke-direct {v5, v6}, Lexpo/modules/kotlin/jni/ExpectedType;-><init>([Lexpo/modules/kotlin/jni/CppType;)V

    .line 181
    nop

    .local v5, "cppRequireType$iv":Lexpo/modules/kotlin/jni/ExpectedType;
    const/4 v6, 0x0

    .line 335
    .local v6, "$i$f$createTrivialTypeConverter":I
    new-instance v7, Lexpo/modules/kotlin/types/TypeConverterProviderImpl$createCachedConverters$$inlined$createTrivialTypeConverter$4;

    invoke-direct {v7, p1, v5}, Lexpo/modules/kotlin/types/TypeConverterProviderImpl$createCachedConverters$$inlined$createTrivialTypeConverter$4;-><init>(ZLexpo/modules/kotlin/jni/ExpectedType;)V

    check-cast v7, Lexpo/modules/kotlin/types/TypeConverter;

    .line 181
    .end local v5    # "cppRequireType$iv":Lexpo/modules/kotlin/jni/ExpectedType;
    .end local v6    # "$i$f$createTrivialTypeConverter":I
    move-object v5, v7

    .line 187
    .local v5, "floatTypeConverter":Lexpo/modules/kotlin/types/TypeConverter;
    new-instance v6, Lexpo/modules/kotlin/jni/ExpectedType;

    new-array v7, v1, [Lexpo/modules/kotlin/jni/CppType;

    sget-object v8, Lexpo/modules/kotlin/jni/CppType;->BOOLEAN:Lexpo/modules/kotlin/jni/CppType;

    aput-object v8, v7, v4

    invoke-direct {v6, v7}, Lexpo/modules/kotlin/jni/ExpectedType;-><init>([Lexpo/modules/kotlin/jni/CppType;)V

    .line 185
    nop

    .local v6, "cppRequireType$iv":Lexpo/modules/kotlin/jni/ExpectedType;
    const/4 v7, 0x0

    .line 336
    .local v7, "$i$f$createTrivialTypeConverter":I
    new-instance v8, Lexpo/modules/kotlin/types/TypeConverterProviderImpl$createCachedConverters$$inlined$createTrivialTypeConverter$5;

    invoke-direct {v8, p1, v6}, Lexpo/modules/kotlin/types/TypeConverterProviderImpl$createCachedConverters$$inlined$createTrivialTypeConverter$5;-><init>(ZLexpo/modules/kotlin/jni/ExpectedType;)V

    check-cast v8, Lexpo/modules/kotlin/types/TypeConverter;

    .line 185
    .end local v6    # "cppRequireType$iv":Lexpo/modules/kotlin/jni/ExpectedType;
    .end local v7    # "$i$f$createTrivialTypeConverter":I
    move-object v6, v8

    .line 191
    .local v6, "boolTypeConverter":Lexpo/modules/kotlin/types/TypeConverter;
    const/16 v7, 0x29

    new-array v7, v7, [Lkotlin/Pair;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-static {v8, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    aput-object v8, v7, v4

    const-class v8, Ljava/lang/Integer;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    .line 192
    invoke-static {v8, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    aput-object v8, v7, v1

    .line 191
    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    .line 194
    invoke-static {v8, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    .line 191
    const-class v8, Ljava/lang/Long;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    .line 195
    invoke-static {v8, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/4 v10, 0x3

    aput-object v8, v7, v10

    .line 191
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    .line 197
    invoke-static {v8, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/4 v11, 0x4

    aput-object v8, v7, v11

    .line 191
    const-class v8, Ljava/lang/Double;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    .line 198
    invoke-static {v8, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/4 v11, 0x5

    aput-object v8, v7, v11

    .line 191
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    .line 200
    invoke-static {v8, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/4 v11, 0x6

    aput-object v8, v7, v11

    .line 191
    const-class v8, Ljava/lang/Float;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    .line 201
    invoke-static {v8, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/4 v11, 0x7

    aput-object v8, v7, v11

    .line 191
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    .line 203
    invoke-static {v8, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v11, 0x8

    aput-object v8, v7, v11

    .line 191
    const-class v8, Ljava/lang/Boolean;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    .line 204
    invoke-static {v8, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v11, 0x9

    aput-object v8, v7, v11

    .line 191
    const-class v8, Ljava/lang/String;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    .line 207
    new-instance v11, Lexpo/modules/kotlin/jni/ExpectedType;

    new-array v12, v1, [Lexpo/modules/kotlin/jni/CppType;

    sget-object v13, Lexpo/modules/kotlin/jni/CppType;->STRING:Lexpo/modules/kotlin/jni/CppType;

    aput-object v13, v12, v4

    invoke-direct {v11, v12}, Lexpo/modules/kotlin/jni/ExpectedType;-><init>([Lexpo/modules/kotlin/jni/CppType;)V

    .line 206
    nop

    .local v11, "cppRequireType$iv":Lexpo/modules/kotlin/jni/ExpectedType;
    const/4 v12, 0x0

    .line 337
    .local v12, "$i$f$createTrivialTypeConverter":I
    new-instance v13, Lexpo/modules/kotlin/types/TypeConverterProviderImpl$createCachedConverters$$inlined$createTrivialTypeConverter$6;

    invoke-direct {v13, p1, v11}, Lexpo/modules/kotlin/types/TypeConverterProviderImpl$createCachedConverters$$inlined$createTrivialTypeConverter$6;-><init>(ZLexpo/modules/kotlin/jni/ExpectedType;)V

    check-cast v13, Lexpo/modules/kotlin/types/TypeConverter;

    .line 206
    .end local v11    # "cppRequireType$iv":Lexpo/modules/kotlin/jni/ExpectedType;
    .end local v12    # "$i$f$createTrivialTypeConverter":I
    invoke-static {v8, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v11, 0xa

    aput-object v8, v7, v11

    .line 191
    const-class v8, Lcom/facebook/react/bridge/ReadableArray;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    .line 211
    new-instance v11, Lexpo/modules/kotlin/jni/ExpectedType;

    new-array v12, v1, [Lexpo/modules/kotlin/jni/CppType;

    sget-object v13, Lexpo/modules/kotlin/jni/CppType;->READABLE_ARRAY:Lexpo/modules/kotlin/jni/CppType;

    aput-object v13, v12, v4

    invoke-direct {v11, v12}, Lexpo/modules/kotlin/jni/ExpectedType;-><init>([Lexpo/modules/kotlin/jni/CppType;)V

    .line 210
    nop

    .restart local v11    # "cppRequireType$iv":Lexpo/modules/kotlin/jni/ExpectedType;
    const/4 v12, 0x0

    .line 338
    .restart local v12    # "$i$f$createTrivialTypeConverter":I
    new-instance v13, Lexpo/modules/kotlin/types/TypeConverterProviderImpl$createCachedConverters$$inlined$createTrivialTypeConverter$7;

    invoke-direct {v13, p1, v11}, Lexpo/modules/kotlin/types/TypeConverterProviderImpl$createCachedConverters$$inlined$createTrivialTypeConverter$7;-><init>(ZLexpo/modules/kotlin/jni/ExpectedType;)V

    check-cast v13, Lexpo/modules/kotlin/types/TypeConverter;

    .line 210
    .end local v11    # "cppRequireType$iv":Lexpo/modules/kotlin/jni/ExpectedType;
    .end local v12    # "$i$f$createTrivialTypeConverter":I
    invoke-static {v8, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v11, 0xb

    aput-object v8, v7, v11

    .line 191
    const-class v8, Lcom/facebook/react/bridge/ReadableMap;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    .line 214
    new-instance v11, Lexpo/modules/kotlin/jni/ExpectedType;

    new-array v12, v1, [Lexpo/modules/kotlin/jni/CppType;

    sget-object v13, Lexpo/modules/kotlin/jni/CppType;->READABLE_MAP:Lexpo/modules/kotlin/jni/CppType;

    aput-object v13, v12, v4

    invoke-direct {v11, v12}, Lexpo/modules/kotlin/jni/ExpectedType;-><init>([Lexpo/modules/kotlin/jni/CppType;)V

    .line 213
    nop

    .restart local v11    # "cppRequireType$iv":Lexpo/modules/kotlin/jni/ExpectedType;
    const/4 v12, 0x0

    .line 339
    .restart local v12    # "$i$f$createTrivialTypeConverter":I
    new-instance v13, Lexpo/modules/kotlin/types/TypeConverterProviderImpl$createCachedConverters$$inlined$createTrivialTypeConverter$8;

    invoke-direct {v13, p1, v11}, Lexpo/modules/kotlin/types/TypeConverterProviderImpl$createCachedConverters$$inlined$createTrivialTypeConverter$8;-><init>(ZLexpo/modules/kotlin/jni/ExpectedType;)V

    check-cast v13, Lexpo/modules/kotlin/types/TypeConverter;

    .line 213
    .end local v11    # "cppRequireType$iv":Lexpo/modules/kotlin/jni/ExpectedType;
    .end local v12    # "$i$f$createTrivialTypeConverter":I
    invoke-static {v8, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v11, 0xc

    aput-object v8, v7, v11

    .line 191
    const-class v8, [I

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    .line 218
    sget-object v11, Lexpo/modules/kotlin/jni/ExpectedType;->Companion:Lexpo/modules/kotlin/jni/ExpectedType$Companion;

    sget-object v12, Lexpo/modules/kotlin/jni/CppType;->INT:Lexpo/modules/kotlin/jni/CppType;

    invoke-virtual {v11, v12}, Lexpo/modules/kotlin/jni/ExpectedType$Companion;->forPrimitiveArray(Lexpo/modules/kotlin/jni/CppType;)Lexpo/modules/kotlin/jni/ExpectedType;

    move-result-object v11

    .line 217
    nop

    .restart local v11    # "cppRequireType$iv":Lexpo/modules/kotlin/jni/ExpectedType;
    const/4 v12, 0x0

    .line 340
    .restart local v12    # "$i$f$createTrivialTypeConverter":I
    new-instance v13, Lexpo/modules/kotlin/types/TypeConverterProviderImpl$createCachedConverters$$inlined$createTrivialTypeConverter$9;

    invoke-direct {v13, p1, v11}, Lexpo/modules/kotlin/types/TypeConverterProviderImpl$createCachedConverters$$inlined$createTrivialTypeConverter$9;-><init>(ZLexpo/modules/kotlin/jni/ExpectedType;)V

    check-cast v13, Lexpo/modules/kotlin/types/TypeConverter;

    .line 217
    .end local v11    # "cppRequireType$iv":Lexpo/modules/kotlin/jni/ExpectedType;
    .end local v12    # "$i$f$createTrivialTypeConverter":I
    invoke-static {v8, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v11, 0xd

    aput-object v8, v7, v11

    .line 191
    const-class v8, [J

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    .line 226
    sget-object v11, Lexpo/modules/kotlin/jni/ExpectedType;->Companion:Lexpo/modules/kotlin/jni/ExpectedType$Companion;

    sget-object v12, Lexpo/modules/kotlin/jni/CppType;->LONG:Lexpo/modules/kotlin/jni/CppType;

    invoke-virtual {v11, v12}, Lexpo/modules/kotlin/jni/ExpectedType$Companion;->forPrimitiveArray(Lexpo/modules/kotlin/jni/CppType;)Lexpo/modules/kotlin/jni/ExpectedType;

    move-result-object v11

    .line 225
    nop

    .restart local v11    # "cppRequireType$iv":Lexpo/modules/kotlin/jni/ExpectedType;
    const/4 v12, 0x0

    .line 341
    .restart local v12    # "$i$f$createTrivialTypeConverter":I
    new-instance v13, Lexpo/modules/kotlin/types/TypeConverterProviderImpl$createCachedConverters$$inlined$createTrivialTypeConverter$10;

    invoke-direct {v13, p1, v11}, Lexpo/modules/kotlin/types/TypeConverterProviderImpl$createCachedConverters$$inlined$createTrivialTypeConverter$10;-><init>(ZLexpo/modules/kotlin/jni/ExpectedType;)V

    check-cast v13, Lexpo/modules/kotlin/types/TypeConverter;

    .line 225
    .end local v11    # "cppRequireType$iv":Lexpo/modules/kotlin/jni/ExpectedType;
    .end local v12    # "$i$f$createTrivialTypeConverter":I
    invoke-static {v8, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v11, 0xe

    aput-object v8, v7, v11

    .line 191
    const-class v8, [D

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    .line 234
    sget-object v11, Lexpo/modules/kotlin/jni/ExpectedType;->Companion:Lexpo/modules/kotlin/jni/ExpectedType$Companion;

    sget-object v12, Lexpo/modules/kotlin/jni/CppType;->DOUBLE:Lexpo/modules/kotlin/jni/CppType;

    invoke-virtual {v11, v12}, Lexpo/modules/kotlin/jni/ExpectedType$Companion;->forPrimitiveArray(Lexpo/modules/kotlin/jni/CppType;)Lexpo/modules/kotlin/jni/ExpectedType;

    move-result-object v11

    .line 233
    nop

    .restart local v11    # "cppRequireType$iv":Lexpo/modules/kotlin/jni/ExpectedType;
    const/4 v12, 0x0

    .line 342
    .restart local v12    # "$i$f$createTrivialTypeConverter":I
    new-instance v13, Lexpo/modules/kotlin/types/TypeConverterProviderImpl$createCachedConverters$$inlined$createTrivialTypeConverter$11;

    invoke-direct {v13, p1, v11}, Lexpo/modules/kotlin/types/TypeConverterProviderImpl$createCachedConverters$$inlined$createTrivialTypeConverter$11;-><init>(ZLexpo/modules/kotlin/jni/ExpectedType;)V

    check-cast v13, Lexpo/modules/kotlin/types/TypeConverter;

    .line 233
    .end local v11    # "cppRequireType$iv":Lexpo/modules/kotlin/jni/ExpectedType;
    .end local v12    # "$i$f$createTrivialTypeConverter":I
    invoke-static {v8, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v11, 0xf

    aput-object v8, v7, v11

    .line 191
    const-class v8, [F

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    .line 242
    sget-object v11, Lexpo/modules/kotlin/jni/ExpectedType;->Companion:Lexpo/modules/kotlin/jni/ExpectedType$Companion;

    sget-object v12, Lexpo/modules/kotlin/jni/CppType;->FLOAT:Lexpo/modules/kotlin/jni/CppType;

    invoke-virtual {v11, v12}, Lexpo/modules/kotlin/jni/ExpectedType$Companion;->forPrimitiveArray(Lexpo/modules/kotlin/jni/CppType;)Lexpo/modules/kotlin/jni/ExpectedType;

    move-result-object v11

    .line 241
    nop

    .restart local v11    # "cppRequireType$iv":Lexpo/modules/kotlin/jni/ExpectedType;
    const/4 v12, 0x0

    .line 343
    .restart local v12    # "$i$f$createTrivialTypeConverter":I
    new-instance v13, Lexpo/modules/kotlin/types/TypeConverterProviderImpl$createCachedConverters$$inlined$createTrivialTypeConverter$12;

    invoke-direct {v13, p1, v11}, Lexpo/modules/kotlin/types/TypeConverterProviderImpl$createCachedConverters$$inlined$createTrivialTypeConverter$12;-><init>(ZLexpo/modules/kotlin/jni/ExpectedType;)V

    check-cast v13, Lexpo/modules/kotlin/types/TypeConverter;

    .line 241
    .end local v11    # "cppRequireType$iv":Lexpo/modules/kotlin/jni/ExpectedType;
    .end local v12    # "$i$f$createTrivialTypeConverter":I
    invoke-static {v8, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v11, 0x10

    aput-object v8, v7, v11

    .line 191
    const-class v8, [Z

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    .line 250
    sget-object v11, Lexpo/modules/kotlin/jni/ExpectedType;->Companion:Lexpo/modules/kotlin/jni/ExpectedType$Companion;

    sget-object v12, Lexpo/modules/kotlin/jni/CppType;->BOOLEAN:Lexpo/modules/kotlin/jni/CppType;

    invoke-virtual {v11, v12}, Lexpo/modules/kotlin/jni/ExpectedType$Companion;->forPrimitiveArray(Lexpo/modules/kotlin/jni/CppType;)Lexpo/modules/kotlin/jni/ExpectedType;

    move-result-object v11

    .line 249
    nop

    .restart local v11    # "cppRequireType$iv":Lexpo/modules/kotlin/jni/ExpectedType;
    const/4 v12, 0x0

    .line 344
    .restart local v12    # "$i$f$createTrivialTypeConverter":I
    new-instance v13, Lexpo/modules/kotlin/types/TypeConverterProviderImpl$createCachedConverters$$inlined$createTrivialTypeConverter$13;

    invoke-direct {v13, p1, v11}, Lexpo/modules/kotlin/types/TypeConverterProviderImpl$createCachedConverters$$inlined$createTrivialTypeConverter$13;-><init>(ZLexpo/modules/kotlin/jni/ExpectedType;)V

    check-cast v13, Lexpo/modules/kotlin/types/TypeConverter;

    .line 249
    .end local v11    # "cppRequireType$iv":Lexpo/modules/kotlin/jni/ExpectedType;
    .end local v12    # "$i$f$createTrivialTypeConverter":I
    invoke-static {v8, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v11, 0x11

    aput-object v8, v7, v11

    .line 191
    const-class v8, [B

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    .line 257
    new-instance v11, Lexpo/modules/kotlin/types/ByteArrayTypeConverter;

    invoke-direct {v11, p1}, Lexpo/modules/kotlin/types/ByteArrayTypeConverter;-><init>(Z)V

    invoke-static {v8, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v11, 0x12

    aput-object v8, v7, v11

    .line 191
    const-class v8, Lexpo/modules/kotlin/jni/JavaScriptValue;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    .line 260
    new-instance v11, Lexpo/modules/kotlin/jni/ExpectedType;

    new-array v12, v1, [Lexpo/modules/kotlin/jni/CppType;

    sget-object v13, Lexpo/modules/kotlin/jni/CppType;->JS_VALUE:Lexpo/modules/kotlin/jni/CppType;

    aput-object v13, v12, v4

    invoke-direct {v11, v12}, Lexpo/modules/kotlin/jni/ExpectedType;-><init>([Lexpo/modules/kotlin/jni/CppType;)V

    .line 259
    nop

    .line 345
    .restart local v11    # "cppRequireType$iv":Lexpo/modules/kotlin/jni/ExpectedType;
    nop

    .line 348
    nop

    .line 345
    const/4 v12, 0x0

    .line 350
    .restart local v12    # "$i$f$createTrivialTypeConverter":I
    new-instance v13, Lexpo/modules/kotlin/types/TypeConverterProviderImpl$createCachedConverters$$inlined$createTrivialTypeConverter$default$1;

    invoke-direct {v13, p1, v11}, Lexpo/modules/kotlin/types/TypeConverterProviderImpl$createCachedConverters$$inlined$createTrivialTypeConverter$default$1;-><init>(ZLexpo/modules/kotlin/jni/ExpectedType;)V

    check-cast v13, Lexpo/modules/kotlin/types/TypeConverter;

    .line 259
    .end local v11    # "cppRequireType$iv":Lexpo/modules/kotlin/jni/ExpectedType;
    .end local v12    # "$i$f$createTrivialTypeConverter":I
    invoke-static {v8, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v11, 0x13

    aput-object v8, v7, v11

    .line 191
    const-class v8, Lexpo/modules/kotlin/jni/JavaScriptObject;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    .line 263
    new-instance v11, Lexpo/modules/kotlin/jni/ExpectedType;

    new-array v12, v1, [Lexpo/modules/kotlin/jni/CppType;

    sget-object v13, Lexpo/modules/kotlin/jni/CppType;->JS_OBJECT:Lexpo/modules/kotlin/jni/CppType;

    aput-object v13, v12, v4

    invoke-direct {v11, v12}, Lexpo/modules/kotlin/jni/ExpectedType;-><init>([Lexpo/modules/kotlin/jni/CppType;)V

    .line 262
    nop

    .line 351
    .restart local v11    # "cppRequireType$iv":Lexpo/modules/kotlin/jni/ExpectedType;
    nop

    .line 354
    nop

    .line 351
    const/4 v12, 0x0

    .line 356
    .restart local v12    # "$i$f$createTrivialTypeConverter":I
    new-instance v13, Lexpo/modules/kotlin/types/TypeConverterProviderImpl$createCachedConverters$$inlined$createTrivialTypeConverter$default$2;

    invoke-direct {v13, p1, v11}, Lexpo/modules/kotlin/types/TypeConverterProviderImpl$createCachedConverters$$inlined$createTrivialTypeConverter$default$2;-><init>(ZLexpo/modules/kotlin/jni/ExpectedType;)V

    check-cast v13, Lexpo/modules/kotlin/types/TypeConverter;

    .line 262
    .end local v11    # "cppRequireType$iv":Lexpo/modules/kotlin/jni/ExpectedType;
    .end local v12    # "$i$f$createTrivialTypeConverter":I
    invoke-static {v8, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v11, 0x14

    aput-object v8, v7, v11

    .line 191
    const-class v8, Lexpo/modules/kotlin/typedarray/Int8Array;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    .line 266
    new-instance v11, Lexpo/modules/kotlin/types/Int8ArrayTypeConverter;

    invoke-direct {v11, p1}, Lexpo/modules/kotlin/types/Int8ArrayTypeConverter;-><init>(Z)V

    invoke-static {v8, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v11, 0x15

    aput-object v8, v7, v11

    .line 191
    const-class v8, Lexpo/modules/kotlin/typedarray/Int16Array;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    .line 267
    new-instance v11, Lexpo/modules/kotlin/types/Int16ArrayTypeConverter;

    invoke-direct {v11, p1}, Lexpo/modules/kotlin/types/Int16ArrayTypeConverter;-><init>(Z)V

    invoke-static {v8, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v11, 0x16

    aput-object v8, v7, v11

    .line 191
    const-class v8, Lexpo/modules/kotlin/typedarray/Int32Array;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    .line 268
    new-instance v11, Lexpo/modules/kotlin/types/Int32ArrayTypeConverter;

    invoke-direct {v11, p1}, Lexpo/modules/kotlin/types/Int32ArrayTypeConverter;-><init>(Z)V

    invoke-static {v8, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v11, 0x17

    aput-object v8, v7, v11

    .line 191
    const-class v8, Lexpo/modules/kotlin/typedarray/Uint8Array;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    .line 269
    new-instance v11, Lexpo/modules/kotlin/types/Uint8ArrayTypeConverter;

    invoke-direct {v11, p1}, Lexpo/modules/kotlin/types/Uint8ArrayTypeConverter;-><init>(Z)V

    invoke-static {v8, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v11, 0x18

    aput-object v8, v7, v11

    .line 191
    const-class v8, Lexpo/modules/kotlin/typedarray/Uint8ClampedArray;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    .line 270
    new-instance v11, Lexpo/modules/kotlin/types/Uint8ClampedArrayTypeConverter;

    invoke-direct {v11, p1}, Lexpo/modules/kotlin/types/Uint8ClampedArrayTypeConverter;-><init>(Z)V

    invoke-static {v8, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v11, 0x19

    aput-object v8, v7, v11

    .line 191
    const-class v8, Lexpo/modules/kotlin/typedarray/Uint16Array;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    .line 271
    new-instance v11, Lexpo/modules/kotlin/types/Uint16ArrayTypeConverter;

    invoke-direct {v11, p1}, Lexpo/modules/kotlin/types/Uint16ArrayTypeConverter;-><init>(Z)V

    invoke-static {v8, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v11, 0x1a

    aput-object v8, v7, v11

    .line 191
    const-class v8, Lexpo/modules/kotlin/typedarray/Uint32Array;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    .line 272
    new-instance v12, Lexpo/modules/kotlin/types/Uint32ArrayTypeConverter;

    invoke-direct {v12, p1}, Lexpo/modules/kotlin/types/Uint32ArrayTypeConverter;-><init>(Z)V

    invoke-static {v8, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v12, 0x1b

    aput-object v8, v7, v12

    .line 191
    const-class v8, Lexpo/modules/kotlin/typedarray/Float32Array;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    .line 273
    new-instance v12, Lexpo/modules/kotlin/types/Float32ArrayTypeConverter;

    invoke-direct {v12, p1}, Lexpo/modules/kotlin/types/Float32ArrayTypeConverter;-><init>(Z)V

    invoke-static {v8, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v12, 0x1c

    aput-object v8, v7, v12

    .line 191
    const-class v8, Lexpo/modules/kotlin/typedarray/Float64Array;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    .line 274
    new-instance v12, Lexpo/modules/kotlin/types/Float64ArrayTypeConverter;

    invoke-direct {v12, p1}, Lexpo/modules/kotlin/types/Float64ArrayTypeConverter;-><init>(Z)V

    invoke-static {v8, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v12, 0x1d

    aput-object v8, v7, v12

    .line 191
    const-class v8, Lexpo/modules/kotlin/typedarray/BigInt64Array;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    .line 275
    new-instance v12, Lexpo/modules/kotlin/types/BigInt64ArrayTypeConverter;

    invoke-direct {v12, p1}, Lexpo/modules/kotlin/types/BigInt64ArrayTypeConverter;-><init>(Z)V

    invoke-static {v8, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v12, 0x1e

    aput-object v8, v7, v12

    .line 191
    const-class v8, Lexpo/modules/kotlin/typedarray/BigUint64Array;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    .line 276
    new-instance v12, Lexpo/modules/kotlin/types/BigUint64ArrayTypeConverter;

    invoke-direct {v12, p1}, Lexpo/modules/kotlin/types/BigUint64ArrayTypeConverter;-><init>(Z)V

    invoke-static {v8, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v12, 0x1f

    aput-object v8, v7, v12

    .line 191
    const-class v8, Lexpo/modules/kotlin/typedarray/TypedArray;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    .line 277
    new-instance v12, Lexpo/modules/kotlin/types/TypedArrayTypeConverter;

    invoke-direct {v12, p1}, Lexpo/modules/kotlin/types/TypedArrayTypeConverter;-><init>(Z)V

    invoke-static {v8, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v12, 0x20

    aput-object v8, v7, v12

    .line 191
    const-class v8, Ljava/net/URL;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    .line 279
    new-instance v12, Lexpo/modules/kotlin/types/net/URLTypConverter;

    invoke-direct {v12, p1}, Lexpo/modules/kotlin/types/net/URLTypConverter;-><init>(Z)V

    invoke-static {v8, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v12, 0x21

    aput-object v8, v7, v12

    .line 191
    const-class v8, Landroid/net/Uri;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    .line 280
    new-instance v12, Lexpo/modules/kotlin/types/net/UriTypeConverter;

    invoke-direct {v12, p1}, Lexpo/modules/kotlin/types/net/UriTypeConverter;-><init>(Z)V

    invoke-static {v8, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v12, 0x22

    aput-object v8, v7, v12

    .line 191
    const-class v8, Ljava/net/URI;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    .line 281
    new-instance v12, Lexpo/modules/kotlin/types/net/JavaURITypeConverter;

    invoke-direct {v12, p1}, Lexpo/modules/kotlin/types/net/JavaURITypeConverter;-><init>(Z)V

    invoke-static {v8, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v12, 0x23

    aput-object v8, v7, v12

    .line 191
    const-class v8, Ljava/io/File;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    .line 283
    new-instance v12, Lexpo/modules/kotlin/types/io/FileTypeConverter;

    invoke-direct {v12, p1}, Lexpo/modules/kotlin/types/io/FileTypeConverter;-><init>(Z)V

    invoke-static {v8, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v12, 0x24

    aput-object v8, v7, v12

    .line 191
    const-class v8, Lkotlin/time/Duration;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    .line 285
    new-instance v12, Lexpo/modules/kotlin/types/DurationTypeConverter;

    invoke-direct {v12, p1}, Lexpo/modules/kotlin/types/DurationTypeConverter;-><init>(Z)V

    invoke-static {v8, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v12, 0x25

    aput-object v8, v7, v12

    .line 191
    const-class v8, Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    .line 287
    new-instance v12, Lexpo/modules/kotlin/types/AnyTypeConverter;

    invoke-direct {v12, p1}, Lexpo/modules/kotlin/types/AnyTypeConverter;-><init>(Z)V

    invoke-static {v8, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v12, 0x26

    aput-object v8, v7, v12

    .line 191
    const-class v8, Lkotlin/Unit;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    .line 291
    new-instance v12, Lexpo/modules/kotlin/types/UnitTypeConverter;

    invoke-direct {v12}, Lexpo/modules/kotlin/types/UnitTypeConverter;-><init>()V

    invoke-static {v8, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v12, 0x27

    aput-object v8, v7, v12

    .line 191
    const-class v8, Lexpo/modules/core/arguments/ReadableArguments;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    .line 293
    new-instance v12, Lexpo/modules/kotlin/types/ReadableArgumentsTypeConverter;

    invoke-direct {v12, p1}, Lexpo/modules/kotlin/types/ReadableArgumentsTypeConverter;-><init>(Z)V

    invoke-static {v8, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v12, 0x28

    aput-object v8, v7, v12

    .line 191
    nop

    .line 190
    invoke-static {v7}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v7

    .line 296
    .local v7, "converters":Ljava/util/Map;
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v11, :cond_0

    .line 297
    nop

    .line 298
    new-array v8, v10, [Lkotlin/Pair;

    const-class v10, Ljava/nio/file/Path;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    new-instance v11, Lexpo/modules/kotlin/types/io/PathTypeConverter;

    invoke-direct {v11, p1}, Lexpo/modules/kotlin/types/io/PathTypeConverter;-><init>(Z)V

    invoke-static {v10, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    aput-object v10, v8, v4

    const-class v4, Landroid/graphics/Color;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    .line 299
    new-instance v10, Lexpo/modules/kotlin/types/ColorTypeConverter;

    invoke-direct {v10, p1}, Lexpo/modules/kotlin/types/ColorTypeConverter;-><init>(Z)V

    invoke-static {v4, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v8, v1

    .line 298
    const-class v1, Ljava/time/LocalDate;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 300
    new-instance v4, Lexpo/modules/kotlin/types/DateTypeConverter;

    invoke-direct {v4, p1}, Lexpo/modules/kotlin/types/DateTypeConverter;-><init>(Z)V

    invoke-static {v1, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v8, v9

    .line 298
    nop

    .line 297
    invoke-static {v8}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v7, v1}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1

    .line 304
    :cond_0
    return-object v7
.end method

.method private final getCachedConverter(Lkotlin/reflect/KType;)Lexpo/modules/kotlin/types/TypeConverter;
    .locals 2
    .param p1, "inputType"    # Lkotlin/reflect/KType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KType;",
            ")",
            "Lexpo/modules/kotlin/types/TypeConverter<",
            "*>;"
        }
    .end annotation

    .line 82
    invoke-interface {p1}, Lkotlin/reflect/KType;->isMarkedNullable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    sget-object v0, Lexpo/modules/kotlin/types/TypeConverterProviderImpl;->nullableCachedConverters:Ljava/util/Map;

    invoke-interface {p1}, Lkotlin/reflect/KType;->getClassifier()Lkotlin/reflect/KClassifier;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/types/TypeConverter;

    goto :goto_0

    .line 85
    :cond_0
    sget-object v0, Lexpo/modules/kotlin/types/TypeConverterProviderImpl;->cachedConverters:Ljava/util/Map;

    invoke-interface {p1}, Lkotlin/reflect/KType;->getClassifier()Lkotlin/reflect/KClassifier;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/types/TypeConverter;

    .line 82
    :goto_0
    return-object v0
.end method

.method private final handelEither(Lkotlin/reflect/KType;Ljava/lang/Class;)Lexpo/modules/kotlin/types/TypeConverter;
    .locals 2
    .param p1, "type"    # Lkotlin/reflect/KType;
    .param p2, "jClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KType;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lexpo/modules/kotlin/types/TypeConverter<",
            "*>;"
        }
    .end annotation

    .line 155
    const-class v0, Lexpo/modules/kotlin/types/Either;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    const-class v0, Lexpo/modules/kotlin/types/EitherOfFour;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    new-instance v0, Lexpo/modules/kotlin/types/EitherOfFourTypeConverter;

    move-object v1, p0

    check-cast v1, Lexpo/modules/kotlin/types/TypeConverterProvider;

    invoke-direct {v0, v1, p1}, Lexpo/modules/kotlin/types/EitherOfFourTypeConverter;-><init>(Lexpo/modules/kotlin/types/TypeConverterProvider;Lkotlin/reflect/KType;)V

    check-cast v0, Lexpo/modules/kotlin/types/TypeConverter;

    return-object v0

    .line 159
    :cond_0
    const-class v0, Lexpo/modules/kotlin/types/EitherOfThree;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    new-instance v0, Lexpo/modules/kotlin/types/EitherOfThreeTypeConverter;

    move-object v1, p0

    check-cast v1, Lexpo/modules/kotlin/types/TypeConverterProvider;

    invoke-direct {v0, v1, p1}, Lexpo/modules/kotlin/types/EitherOfThreeTypeConverter;-><init>(Lexpo/modules/kotlin/types/TypeConverterProvider;Lkotlin/reflect/KType;)V

    check-cast v0, Lexpo/modules/kotlin/types/TypeConverter;

    return-object v0

    .line 162
    :cond_1
    new-instance v0, Lexpo/modules/kotlin/types/EitherTypeConverter;

    move-object v1, p0

    check-cast v1, Lexpo/modules/kotlin/types/TypeConverterProvider;

    invoke-direct {v0, v1, p1}, Lexpo/modules/kotlin/types/EitherTypeConverter;-><init>(Lexpo/modules/kotlin/types/TypeConverterProvider;Lkotlin/reflect/KType;)V

    check-cast v0, Lexpo/modules/kotlin/types/TypeConverter;

    return-object v0

    .line 165
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public obtainTypeConverter(Lkotlin/reflect/KType;)Lexpo/modules/kotlin/types/TypeConverter;
    .locals 5
    .param p1, "type"    # Lkotlin/reflect/KType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KType;",
            ")",
            "Lexpo/modules/kotlin/types/TypeConverter<",
            "*>;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-direct {p0, p1}, Lexpo/modules/kotlin/types/TypeConverterProviderImpl;->getCachedConverter(Lkotlin/reflect/KType;)Lexpo/modules/kotlin/types/TypeConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    .local v0, "it":Lexpo/modules/kotlin/types/TypeConverter;
    const/4 v1, 0x0

    .line 91
    .local v1, "$i$a$-let-TypeConverterProviderImpl$obtainTypeConverter$1":I
    return-object v0

    .line 94
    .end local v0    # "it":Lexpo/modules/kotlin/types/TypeConverter;
    .end local v1    # "$i$a$-let-TypeConverterProviderImpl$obtainTypeConverter$1":I
    :cond_0
    invoke-interface {p1}, Lkotlin/reflect/KType;->getClassifier()Lkotlin/reflect/KClassifier;

    move-result-object v0

    instance-of v1, v0, Lkotlin/reflect/KClass;

    if-eqz v1, :cond_1

    check-cast v0, Lkotlin/reflect/KClass;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_10

    .line 95
    .local v0, "kClass":Lkotlin/reflect/KClass;
    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v1

    .line 97
    .local v1, "jClass":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-nez v2, :cond_f

    const-class v2, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_1

    .line 101
    :cond_2
    const-class v2, Ljava/util/List;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 102
    new-instance v2, Lexpo/modules/kotlin/types/ListTypeConverter;

    move-object v3, p0

    check-cast v3, Lexpo/modules/kotlin/types/TypeConverterProvider;

    invoke-direct {v2, v3, p1}, Lexpo/modules/kotlin/types/ListTypeConverter;-><init>(Lexpo/modules/kotlin/types/TypeConverterProvider;Lkotlin/reflect/KType;)V

    check-cast v2, Lexpo/modules/kotlin/types/TypeConverter;

    return-object v2

    .line 105
    :cond_3
    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 106
    new-instance v2, Lexpo/modules/kotlin/types/MapTypeConverter;

    move-object v3, p0

    check-cast v3, Lexpo/modules/kotlin/types/TypeConverterProvider;

    invoke-direct {v2, v3, p1}, Lexpo/modules/kotlin/types/MapTypeConverter;-><init>(Lexpo/modules/kotlin/types/TypeConverterProvider;Lkotlin/reflect/KType;)V

    check-cast v2, Lexpo/modules/kotlin/types/TypeConverter;

    return-object v2

    .line 109
    :cond_4
    const-class v2, Lkotlin/Pair;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 110
    new-instance v2, Lexpo/modules/kotlin/types/PairTypeConverter;

    move-object v3, p0

    check-cast v3, Lexpo/modules/kotlin/types/TypeConverterProvider;

    invoke-direct {v2, v3, p1}, Lexpo/modules/kotlin/types/PairTypeConverter;-><init>(Lexpo/modules/kotlin/types/TypeConverterProvider;Lkotlin/reflect/KType;)V

    check-cast v2, Lexpo/modules/kotlin/types/TypeConverter;

    return-object v2

    .line 113
    :cond_5
    const-class v2, Ljava/util/Set;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 114
    new-instance v2, Lexpo/modules/kotlin/types/SetTypeConverter;

    move-object v3, p0

    check-cast v3, Lexpo/modules/kotlin/types/TypeConverterProvider;

    invoke-direct {v2, v3, p1}, Lexpo/modules/kotlin/types/SetTypeConverter;-><init>(Lexpo/modules/kotlin/types/TypeConverterProvider;Lkotlin/reflect/KType;)V

    check-cast v2, Lexpo/modules/kotlin/types/TypeConverter;

    return-object v2

    .line 117
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 119
    new-instance v2, Lexpo/modules/kotlin/types/EnumTypeConverter;

    invoke-interface {p1}, Lkotlin/reflect/KType;->isMarkedNullable()Z

    move-result v3

    invoke-direct {v2, v0, v3}, Lexpo/modules/kotlin/types/EnumTypeConverter;-><init>(Lkotlin/reflect/KClass;Z)V

    check-cast v2, Lexpo/modules/kotlin/types/TypeConverter;

    return-object v2

    .line 122
    :cond_7
    sget-object v2, Lexpo/modules/kotlin/types/TypeConverterProviderImpl;->cachedRecordConverters:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/kotlin/types/TypeConverter;

    .line 123
    .local v2, "cachedConverter":Lexpo/modules/kotlin/types/TypeConverter;
    if-eqz v2, :cond_8

    .line 124
    return-object v2

    .line 127
    :cond_8
    const-class v3, Lexpo/modules/kotlin/records/Record;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 128
    new-instance v3, Lexpo/modules/kotlin/records/RecordTypeConverter;

    move-object v4, p0

    check-cast v4, Lexpo/modules/kotlin/types/TypeConverterProvider;

    invoke-direct {v3, v4, p1}, Lexpo/modules/kotlin/records/RecordTypeConverter;-><init>(Lexpo/modules/kotlin/types/TypeConverterProvider;Lkotlin/reflect/KType;)V

    .line 129
    .local v3, "converter":Lexpo/modules/kotlin/records/RecordTypeConverter;
    sget-object v4, Lexpo/modules/kotlin/types/TypeConverterProviderImpl;->cachedRecordConverters:Ljava/util/Map;

    invoke-interface {v4, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    move-object v4, v3

    check-cast v4, Lexpo/modules/kotlin/types/TypeConverter;

    return-object v4

    .line 133
    .end local v3    # "converter":Lexpo/modules/kotlin/records/RecordTypeConverter;
    :cond_9
    const-class v3, Landroid/view/View;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 134
    new-instance v3, Lexpo/modules/kotlin/views/ViewTypeConverter;

    invoke-direct {v3, p1}, Lexpo/modules/kotlin/views/ViewTypeConverter;-><init>(Lkotlin/reflect/KType;)V

    check-cast v3, Lexpo/modules/kotlin/types/TypeConverter;

    return-object v3

    .line 137
    :cond_a
    const-class v3, Lexpo/modules/kotlin/sharedobjects/SharedRef;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 138
    new-instance v3, Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter;

    invoke-direct {v3, p1}, Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter;-><init>(Lkotlin/reflect/KType;)V

    check-cast v3, Lexpo/modules/kotlin/types/TypeConverter;

    return-object v3

    .line 141
    :cond_b
    const-class v3, Lexpo/modules/kotlin/sharedobjects/SharedObject;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 142
    new-instance v3, Lexpo/modules/kotlin/sharedobjects/SharedObjectTypeConverter;

    invoke-direct {v3, p1}, Lexpo/modules/kotlin/sharedobjects/SharedObjectTypeConverter;-><init>(Lkotlin/reflect/KType;)V

    check-cast v3, Lexpo/modules/kotlin/types/TypeConverter;

    return-object v3

    .line 145
    :cond_c
    const-class v3, Lexpo/modules/kotlin/jni/JavaScriptFunction;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 146
    new-instance v3, Lexpo/modules/kotlin/types/JavaScriptFunctionTypeConverter;

    invoke-direct {v3, p1}, Lexpo/modules/kotlin/types/JavaScriptFunctionTypeConverter;-><init>(Lkotlin/reflect/KType;)V

    check-cast v3, Lexpo/modules/kotlin/types/TypeConverter;

    return-object v3

    .line 149
    :cond_d
    invoke-direct {p0, p1, v1}, Lexpo/modules/kotlin/types/TypeConverterProviderImpl;->handelEither(Lkotlin/reflect/KType;Ljava/lang/Class;)Lexpo/modules/kotlin/types/TypeConverter;

    move-result-object v3

    if-eqz v3, :cond_e

    return-object v3

    .line 150
    :cond_e
    new-instance v3, Lexpo/modules/kotlin/exception/MissingTypeConverter;

    invoke-direct {v3, p1}, Lexpo/modules/kotlin/exception/MissingTypeConverter;-><init>(Lkotlin/reflect/KType;)V

    throw v3

    .line 98
    .end local v2    # "cachedConverter":Lexpo/modules/kotlin/types/TypeConverter;
    :cond_f
    :goto_1
    new-instance v2, Lexpo/modules/kotlin/types/ArrayTypeConverter;

    move-object v3, p0

    check-cast v3, Lexpo/modules/kotlin/types/TypeConverterProvider;

    invoke-direct {v2, v3, p1}, Lexpo/modules/kotlin/types/ArrayTypeConverter;-><init>(Lexpo/modules/kotlin/types/TypeConverterProvider;Lkotlin/reflect/KType;)V

    check-cast v2, Lexpo/modules/kotlin/types/TypeConverter;

    return-object v2

    .line 94
    .end local v0    # "kClass":Lkotlin/reflect/KClass;
    .end local v1    # "jClass":Ljava/lang/Class;
    :cond_10
    new-instance v0, Lexpo/modules/kotlin/exception/MissingTypeConverter;

    invoke-direct {v0, p1}, Lexpo/modules/kotlin/exception/MissingTypeConverter;-><init>(Lkotlin/reflect/KType;)V

    throw v0
.end method
