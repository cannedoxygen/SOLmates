.class public final Lexpo/modules/kotlin/records/SizeBinder;
.super Ljava/lang/Object;
.source "ValidationBinder.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/ValidationBinder;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u0006\u0012\u0002\u0008\u00030\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lexpo/modules/kotlin/records/SizeBinder;",
        "Lexpo/modules/kotlin/records/ValidationBinder;",
        "()V",
        "bind",
        "Lexpo/modules/kotlin/records/FieldValidator;",
        "annotation",
        "",
        "fieldType",
        "Lkotlin/reflect/KType;",
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
.method public constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/annotation/Annotation;Lkotlin/reflect/KType;)Lexpo/modules/kotlin/records/FieldValidator;
    .locals 8
    .param p1, "annotation"    # Ljava/lang/annotation/Annotation;
    .param p2, "fieldType"    # Lkotlin/reflect/KType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/annotation/Annotation;",
            "Lkotlin/reflect/KType;",
            ")",
            "Lexpo/modules/kotlin/records/FieldValidator<",
            "*>;"
        }
    .end annotation

    const-string v0, "annotation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fieldType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    move-object v0, p1

    check-cast v0, Lexpo/modules/kotlin/records/Size;

    .line 87
    .local v0, "sizeAnnotation":Lexpo/modules/kotlin/records/Size;
    nop

    .line 88
    const-class v1, [I

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lkotlin/reflect/KClassifier;

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/reflect/full/KClassifiers;->createType$default(Lkotlin/reflect/KClassifier;Ljava/util/List;ZLjava/util/List;ILjava/lang/Object;)Lkotlin/reflect/KType;

    move-result-object v1

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lexpo/modules/kotlin/records/IntArraySizeValidator;

    invoke-interface {v0}, Lexpo/modules/kotlin/records/Size;->min()I

    move-result v2

    invoke-interface {v0}, Lexpo/modules/kotlin/records/Size;->max()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lexpo/modules/kotlin/records/IntArraySizeValidator;-><init>(II)V

    check-cast v1, Lexpo/modules/kotlin/records/FieldValidator;

    return-object v1

    .line 89
    :cond_0
    const-class v1, [D

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lkotlin/reflect/KClassifier;

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/reflect/full/KClassifiers;->createType$default(Lkotlin/reflect/KClassifier;Ljava/util/List;ZLjava/util/List;ILjava/lang/Object;)Lkotlin/reflect/KType;

    move-result-object v1

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lexpo/modules/kotlin/records/DoubleArraySizeValidator;

    invoke-interface {v0}, Lexpo/modules/kotlin/records/Size;->min()I

    move-result v2

    invoke-interface {v0}, Lexpo/modules/kotlin/records/Size;->max()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lexpo/modules/kotlin/records/DoubleArraySizeValidator;-><init>(II)V

    check-cast v1, Lexpo/modules/kotlin/records/FieldValidator;

    return-object v1

    .line 90
    :cond_1
    const-class v1, [F

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lkotlin/reflect/KClassifier;

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/reflect/full/KClassifiers;->createType$default(Lkotlin/reflect/KClassifier;Ljava/util/List;ZLjava/util/List;ILjava/lang/Object;)Lkotlin/reflect/KType;

    move-result-object v1

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lexpo/modules/kotlin/records/FloatArraySizeValidator;

    invoke-interface {v0}, Lexpo/modules/kotlin/records/Size;->min()I

    move-result v2

    invoke-interface {v0}, Lexpo/modules/kotlin/records/Size;->max()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lexpo/modules/kotlin/records/FloatArraySizeValidator;-><init>(II)V

    check-cast v1, Lexpo/modules/kotlin/records/FieldValidator;

    return-object v1

    .line 93
    :cond_2
    invoke-interface {p2}, Lkotlin/reflect/KType;->getClassifier()Lkotlin/reflect/KClassifier;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.reflect.KClass<*>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lkotlin/reflect/KClass;

    .line 95
    .local v1, "kClass":Lkotlin/reflect/KClass;
    const-class v2, Ljava/lang/String;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/reflect/full/KClasses;->isSubclassOf(Lkotlin/reflect/KClass;Lkotlin/reflect/KClass;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 96
    new-instance v2, Lexpo/modules/kotlin/records/StringSizeValidator;

    invoke-interface {v0}, Lexpo/modules/kotlin/records/Size;->min()I

    move-result v3

    invoke-interface {v0}, Lexpo/modules/kotlin/records/Size;->max()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lexpo/modules/kotlin/records/StringSizeValidator;-><init>(II)V

    check-cast v2, Lexpo/modules/kotlin/records/FieldValidator;

    return-object v2

    .line 97
    :cond_3
    const-class v2, [Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/reflect/full/KClasses;->isSubclassOf(Lkotlin/reflect/KClass;Lkotlin/reflect/KClass;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    .line 101
    :cond_4
    new-instance v2, Lexpo/modules/kotlin/records/CollectionSizeValidator;

    invoke-interface {v0}, Lexpo/modules/kotlin/records/Size;->min()I

    move-result v3

    invoke-interface {v0}, Lexpo/modules/kotlin/records/Size;->max()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lexpo/modules/kotlin/records/CollectionSizeValidator;-><init>(II)V

    check-cast v2, Lexpo/modules/kotlin/records/FieldValidator;

    return-object v2

    .line 98
    :cond_5
    :goto_0
    new-instance v2, Lexpo/modules/kotlin/records/ArraySizeValidator;

    invoke-interface {v0}, Lexpo/modules/kotlin/records/Size;->min()I

    move-result v3

    invoke-interface {v0}, Lexpo/modules/kotlin/records/Size;->max()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lexpo/modules/kotlin/records/ArraySizeValidator;-><init>(II)V

    check-cast v2, Lexpo/modules/kotlin/records/FieldValidator;

    return-object v2
.end method
