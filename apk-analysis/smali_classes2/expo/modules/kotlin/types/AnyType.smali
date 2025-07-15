.class public final Lexpo/modules/kotlin/types/AnyType;
.super Ljava/lang/Object;
.source "AnyType.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u001e\u0010\u0011\u001a\u0004\u0018\u00010\u00012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014J\u0006\u0010\u0015\u001a\u00020\u0016J\u0016\u0010\u0017\u001a\u00020\u0018\"\u0006\u0008\u0000\u0010\u0019\u0018\u0001H\u0080\u0008\u00a2\u0006\u0002\u0008\u001aR\u001f\u0010\u0007\u001a\u0006\u0012\u0002\u0008\u00030\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001b"
    }
    d2 = {
        "Lexpo/modules/kotlin/types/AnyType;",
        "",
        "kType",
        "Lkotlin/reflect/KType;",
        "converterProvider",
        "Lexpo/modules/kotlin/types/TypeConverterProvider;",
        "(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V",
        "converter",
        "Lexpo/modules/kotlin/types/TypeConverter;",
        "getConverter",
        "()Lexpo/modules/kotlin/types/TypeConverter;",
        "converter$delegate",
        "Lkotlin/Lazy;",
        "getConverterProvider",
        "()Lexpo/modules/kotlin/types/TypeConverterProvider;",
        "getKType",
        "()Lkotlin/reflect/KType;",
        "convert",
        "value",
        "appContext",
        "Lexpo/modules/kotlin/AppContext;",
        "getCppRequiredTypes",
        "Lexpo/modules/kotlin/jni/ExpectedType;",
        "inheritFrom",
        "",
        "T",
        "inheritFrom$expo_modules_core_debug",
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
.field private final converter$delegate:Lkotlin/Lazy;

.field private final converterProvider:Lexpo/modules/kotlin/types/TypeConverterProvider;

.field private final kType:Lkotlin/reflect/KType;


# direct methods
.method public constructor <init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V
    .locals 1
    .param p1, "kType"    # Lkotlin/reflect/KType;
    .param p2, "converterProvider"    # Lexpo/modules/kotlin/types/TypeConverterProvider;

    const-string v0, "kType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    iput-object p1, p0, Lexpo/modules/kotlin/types/AnyType;->kType:Lkotlin/reflect/KType;

    .line 309
    iput-object p2, p0, Lexpo/modules/kotlin/types/AnyType;->converterProvider:Lexpo/modules/kotlin/types/TypeConverterProvider;

    .line 312
    new-instance v0, Lexpo/modules/kotlin/types/AnyType$converter$2;

    invoke-direct {v0, p0}, Lexpo/modules/kotlin/types/AnyType$converter$2;-><init>(Lexpo/modules/kotlin/types/AnyType;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/kotlin/types/AnyType;->converter$delegate:Lkotlin/Lazy;

    .line 307
    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 307
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 309
    const/4 p2, 0x0

    .line 307
    :cond_0
    invoke-direct {p0, p1, p2}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 331
    return-void
.end method

.method public static synthetic convert$default(Lexpo/modules/kotlin/types/AnyType;Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 320
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lexpo/modules/kotlin/types/AnyType;->convert(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final getConverter()Lexpo/modules/kotlin/types/TypeConverter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lexpo/modules/kotlin/types/TypeConverter<",
            "*>;"
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lexpo/modules/kotlin/types/AnyType;->converter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/types/TypeConverter;

    return-object v0
.end method


# virtual methods
.method public final convert(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "appContext"    # Lexpo/modules/kotlin/AppContext;

    .line 321
    invoke-direct {p0}, Lexpo/modules/kotlin/types/AnyType;->getConverter()Lexpo/modules/kotlin/types/TypeConverter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lexpo/modules/kotlin/types/TypeConverter;->convert(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getConverterProvider()Lexpo/modules/kotlin/types/TypeConverterProvider;
    .locals 1

    .line 309
    iget-object v0, p0, Lexpo/modules/kotlin/types/AnyType;->converterProvider:Lexpo/modules/kotlin/types/TypeConverterProvider;

    return-object v0
.end method

.method public final getCppRequiredTypes()Lexpo/modules/kotlin/jni/ExpectedType;
    .locals 1

    .line 323
    invoke-direct {p0}, Lexpo/modules/kotlin/types/AnyType;->getConverter()Lexpo/modules/kotlin/types/TypeConverter;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/types/TypeConverter;->getCppRequiredTypes()Lexpo/modules/kotlin/jni/ExpectedType;

    move-result-object v0

    return-object v0
.end method

.method public final getKType()Lkotlin/reflect/KType;
    .locals 1

    .line 308
    iget-object v0, p0, Lexpo/modules/kotlin/types/AnyType;->kType:Lkotlin/reflect/KType;

    return-object v0
.end method

.method public final synthetic inheritFrom$expo_modules_core_debug()Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 326
    .local v0, "$i$f$inheritFrom$expo_modules_core_debug":I
    invoke-virtual {p0}, Lexpo/modules/kotlin/types/AnyType;->getKType()Lkotlin/reflect/KType;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/KType;->getClassifier()Lkotlin/reflect/KClassifier;

    move-result-object v1

    instance-of v2, v1, Lkotlin/reflect/KClass;

    if-eqz v2, :cond_0

    check-cast v1, Lkotlin/reflect/KClass;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    const/4 v1, 0x0

    return v1

    .line 327
    .local v1, "kClass":Lkotlin/reflect/KClass;
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v2

    .local v2, "jClass":Ljava/lang/Class;
    const/4 v3, 0x4

    const-string v4, "T"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v3, Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Ljava/lang/Class;

    .line 329
    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    return v3
.end method
