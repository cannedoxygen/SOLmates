.class public final Lexpo/modules/kotlin/jni/JavaScriptFunction;
.super Ljava/lang/Object;
.source "JavaScriptFunction.kt"

# interfaces
.implements Lexpo/modules/kotlin/jni/Destructible;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReturnType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lexpo/modules/kotlin/jni/Destructible;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJavaScriptFunction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JavaScriptFunction.kt\nexpo/modules/kotlin/jni/JavaScriptFunction\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,52:1\n11065#2:53\n11400#2,3:54\n37#3,2:57\n*S KotlinDebug\n*F\n+ 1 JavaScriptFunction.kt\nexpo/modules/kotlin/jni/JavaScriptFunction\n*L\n25#1:53\n25#1:54,3\n26#1:57,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0008\u0007\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\u000f\u0008\u0003\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u000fH\u0004J2\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u000e\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0082 \u00a2\u0006\u0002\u0010\u0019J>\u0010\u0011\u001a\u00028\u00002\u0016\u0010\u0015\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00120\u0016\"\u0004\u0018\u00010\u00122\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0086\u0002\u00a2\u0006\u0002\u0010\u001cJ\u0006\u0010\u001d\u001a\u00020\u001eR\u0010\u0010\u0003\u001a\u00020\u00048\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000R&\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u001f"
    }
    d2 = {
        "Lexpo/modules/kotlin/jni/JavaScriptFunction;",
        "ReturnType",
        "Lexpo/modules/kotlin/jni/Destructible;",
        "mHybridData",
        "Lcom/facebook/jni/HybridData;",
        "(Lcom/facebook/jni/HybridData;)V",
        "returnType",
        "Lkotlin/reflect/KType;",
        "getReturnType$annotations",
        "()V",
        "getReturnType",
        "()Lkotlin/reflect/KType;",
        "setReturnType",
        "(Lkotlin/reflect/KType;)V",
        "deallocate",
        "",
        "finalize",
        "invoke",
        "",
        "thisValue",
        "Lexpo/modules/kotlin/jni/JavaScriptObject;",
        "args",
        "",
        "expectedReturnType",
        "Lexpo/modules/kotlin/jni/ExpectedType;",
        "(Lexpo/modules/kotlin/jni/JavaScriptObject;[Ljava/lang/Object;Lexpo/modules/kotlin/jni/ExpectedType;)Ljava/lang/Object;",
        "appContext",
        "Lexpo/modules/kotlin/AppContext;",
        "([Ljava/lang/Object;Lexpo/modules/kotlin/jni/JavaScriptObject;Lexpo/modules/kotlin/AppContext;)Ljava/lang/Object;",
        "isValid",
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
.field private final mHybridData:Lcom/facebook/jni/HybridData;

.field private returnType:Lkotlin/reflect/KType;


# direct methods
.method private constructor <init>(Lcom/facebook/jni/HybridData;)V
    .locals 0
    .param p1, "mHybridData"    # Lcom/facebook/jni/HybridData;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lexpo/modules/kotlin/jni/JavaScriptFunction;->mHybridData:Lcom/facebook/jni/HybridData;

    return-void
.end method

.method public static synthetic getReturnType$annotations()V
    .locals 0

    return-void
.end method

.method private final native invoke(Lexpo/modules/kotlin/jni/JavaScriptObject;[Ljava/lang/Object;Lexpo/modules/kotlin/jni/ExpectedType;)Ljava/lang/Object;
.end method

.method public static synthetic invoke$default(Lexpo/modules/kotlin/jni/JavaScriptFunction;[Ljava/lang/Object;Lexpo/modules/kotlin/jni/JavaScriptObject;Lexpo/modules/kotlin/AppContext;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 22
    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lexpo/modules/kotlin/jni/JavaScriptFunction;->invoke([Ljava/lang/Object;Lexpo/modules/kotlin/jni/JavaScriptObject;Lexpo/modules/kotlin/AppContext;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public deallocate()V
    .locals 1

    .line 49
    iget-object v0, p0, Lexpo/modules/kotlin/jni/JavaScriptFunction;->mHybridData:Lcom/facebook/jni/HybridData;

    invoke-virtual {v0}, Lcom/facebook/jni/HybridData;->resetNative()V

    .line 50
    return-void
.end method

.method protected final finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Lexpo/modules/kotlin/jni/JavaScriptFunction;->deallocate()V

    .line 46
    return-void
.end method

.method public final getReturnType()Lkotlin/reflect/KType;
    .locals 1

    .line 16
    iget-object v0, p0, Lexpo/modules/kotlin/jni/JavaScriptFunction;->returnType:Lkotlin/reflect/KType;

    return-object v0
.end method

.method public final invoke([Ljava/lang/Object;Lexpo/modules/kotlin/jni/JavaScriptObject;Lexpo/modules/kotlin/AppContext;)Ljava/lang/Object;
    .locals 18
    .param p1, "args"    # [Ljava/lang/Object;
    .param p2, "thisValue"    # Lexpo/modules/kotlin/jni/JavaScriptObject;
    .param p3, "appContext"    # Lexpo/modules/kotlin/AppContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Lexpo/modules/kotlin/jni/JavaScriptObject;",
            "Lexpo/modules/kotlin/AppContext;",
            ")TReturnType;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "args"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    nop

    .line 25
    move-object/from16 v1, p1

    .local v1, "$this$map$iv":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 53
    .local v3, "$i$f$map":I
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v1

    .local v5, "$this$mapTo$iv$iv":[Ljava/lang/Object;
    const/4 v6, 0x0

    .line 54
    .local v6, "$i$f$mapTo":I
    array-length v7, v5

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v7, :cond_0

    aget-object v16, v5, v9

    .line 55
    .local v16, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v11, v16

    .local v11, "it":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 25
    .local v17, "$i$a$-map-JavaScriptFunction$invoke$convertedArgs$1":I
    sget-object v10, Lexpo/modules/kotlin/types/JSTypeConverter;->INSTANCE:Lexpo/modules/kotlin/types/JSTypeConverter;

    const/4 v14, 0x6

    const/4 v15, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lexpo/modules/kotlin/types/JSTypeConverter;->convertToJSValue$default(Lexpo/modules/kotlin/types/JSTypeConverter;Ljava/lang/Object;Lexpo/modules/kotlin/types/JSTypeConverter$ContainerProvider;ZILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 55
    .end local v11    # "it":Ljava/lang/Object;
    .end local v17    # "$i$a$-map-JavaScriptFunction$invoke$convertedArgs$1":I
    invoke-interface {v4, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 54
    .end local v16    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 56
    :cond_0
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    .end local v6    # "$i$f$mapTo":I
    check-cast v4, Ljava/util/List;

    .line 53
    nop

    .end local v1    # "$this$map$iv":[Ljava/lang/Object;
    .end local v3    # "$i$f$map":I
    check-cast v4, Ljava/util/Collection;

    .line 26
    move-object v1, v4

    .local v1, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v3, 0x0

    .line 57
    .local v3, "$i$f$toTypedArray":I
    nop

    .line 58
    .local v4, "thisCollection$iv":Ljava/util/Collection;
    new-array v5, v8, [Ljava/lang/Object;

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 26
    .end local v1    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v3    # "$i$f$toTypedArray":I
    .end local v4    # "thisCollection$iv":Ljava/util/Collection;
    nop

    .line 24
    nop

    .line 28
    .local v1, "convertedArgs":[Ljava/lang/Object;
    sget-object v3, Lexpo/modules/kotlin/types/TypeConverterProviderImpl;->INSTANCE:Lexpo/modules/kotlin/types/TypeConverterProviderImpl;

    .line 30
    iget-object v4, v0, Lexpo/modules/kotlin/jni/JavaScriptFunction;->returnType:Lkotlin/reflect/KType;

    if-nez v4, :cond_1

    new-instance v4, Lexpo/modules/kotlin/types/LazyKType;

    const-class v5, Lkotlin/Unit;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    .line 32
    nop

    .line 29
    sget-object v6, Lexpo/modules/kotlin/jni/JavaScriptFunction$invoke$converter$1;->INSTANCE:Lexpo/modules/kotlin/jni/JavaScriptFunction$invoke$converter$1;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 30
    invoke-direct {v4, v5, v8, v6}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v4, Lkotlin/reflect/KType;

    .line 29
    :cond_1
    invoke-virtual {v3, v4}, Lexpo/modules/kotlin/types/TypeConverterProviderImpl;->obtainTypeConverter(Lkotlin/reflect/KType;)Lexpo/modules/kotlin/types/TypeConverter;

    move-result-object v3

    .line 28
    nop

    .line 37
    .local v3, "converter":Lexpo/modules/kotlin/types/TypeConverter;
    invoke-virtual {v3}, Lexpo/modules/kotlin/types/TypeConverter;->getCppRequiredTypes()Lexpo/modules/kotlin/jni/ExpectedType;

    move-result-object v4

    .line 38
    .local v4, "expectedReturnType":Lexpo/modules/kotlin/jni/ExpectedType;
    move-object/from16 v5, p2

    invoke-direct {v0, v5, v1, v4}, Lexpo/modules/kotlin/jni/JavaScriptFunction;->invoke(Lexpo/modules/kotlin/jni/JavaScriptObject;[Ljava/lang/Object;Lexpo/modules/kotlin/jni/ExpectedType;)Ljava/lang/Object;

    move-result-object v6

    .line 40
    .local v6, "result":Ljava/lang/Object;
    move-object/from16 v7, p3

    invoke-virtual {v3, v6, v7}, Lexpo/modules/kotlin/types/TypeConverter;->convert(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Ljava/lang/Object;

    move-result-object v8

    return-object v8
.end method

.method public final isValid()Z
    .locals 1

    .line 18
    iget-object v0, p0, Lexpo/modules/kotlin/jni/JavaScriptFunction;->mHybridData:Lcom/facebook/jni/HybridData;

    invoke-virtual {v0}, Lcom/facebook/jni/HybridData;->isValid()Z

    move-result v0

    return v0
.end method

.method public final setReturnType(Lkotlin/reflect/KType;)V
    .locals 0
    .param p1, "<set-?>"    # Lkotlin/reflect/KType;

    .line 16
    iput-object p1, p0, Lexpo/modules/kotlin/jni/JavaScriptFunction;->returnType:Lkotlin/reflect/KType;

    return-void
.end method
