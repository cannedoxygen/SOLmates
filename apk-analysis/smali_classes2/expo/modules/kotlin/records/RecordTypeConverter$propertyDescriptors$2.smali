.class final Lexpo/modules/kotlin/records/RecordTypeConverter$propertyDescriptors$2;
.super Lkotlin/jvm/internal/Lambda;
.source "RecordTypeConverter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/kotlin/records/RecordTypeConverter;-><init>(Lexpo/modules/kotlin/types/TypeConverterProvider;Lkotlin/reflect/KType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/Map<",
        "Lkotlin/reflect/KProperty1<",
        "+",
        "Ljava/lang/Object;",
        "*>;+",
        "Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecordTypeConverter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecordTypeConverter.kt\nexpo/modules/kotlin/records/RecordTypeConverter$propertyDescriptors$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 KAnnotatedElements.kt\nkotlin/reflect/full/KAnnotatedElements\n*L\n1#1,135:1\n1549#2:136\n1620#2,2:137\n288#2,2:140\n288#2,2:143\n1622#2:145\n20#3:139\n20#3:142\n*S KotlinDebug\n*F\n+ 1 RecordTypeConverter.kt\nexpo/modules/kotlin/records/RecordTypeConverter$propertyDescriptors$2\n*L\n34#1:136\n34#1:137,2\n35#1:140,2\n41#1:143,2\n34#1:145\n35#1:139\n41#1:142\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0006\u0008\u0001\u0012\u00020\u0003\u0012\u0002\u0008\u00030\u0002\u0012\u0004\u0012\u00020\u00040\u0001\"\u0008\u0008\u0000\u0010\u0005*\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlin/reflect/KProperty1;",
        "",
        "Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;",
        "T",
        "Lexpo/modules/kotlin/records/Record;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lexpo/modules/kotlin/records/RecordTypeConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lexpo/modules/kotlin/records/RecordTypeConverter<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lexpo/modules/kotlin/records/RecordTypeConverter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/records/RecordTypeConverter<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/kotlin/records/RecordTypeConverter$propertyDescriptors$2;->this$0:Lexpo/modules/kotlin/records/RecordTypeConverter;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lexpo/modules/kotlin/records/RecordTypeConverter$propertyDescriptors$2;->invoke()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/Map;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lkotlin/reflect/KProperty1<",
            "+",
            "Ljava/lang/Object;",
            "*>;",
            "Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;",
            ">;"
        }
    .end annotation

    .line 32
    move-object/from16 v0, p0

    iget-object v1, v0, Lexpo/modules/kotlin/records/RecordTypeConverter$propertyDescriptors$2;->this$0:Lexpo/modules/kotlin/records/RecordTypeConverter;

    invoke-virtual {v1}, Lexpo/modules/kotlin/records/RecordTypeConverter;->getType()Lkotlin/reflect/KType;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/KType;->getClassifier()Lkotlin/reflect/KClassifier;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.reflect.KClass<*>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lkotlin/reflect/KClass;

    .line 33
    invoke-static {v1}, Lkotlin/reflect/full/KClasses;->getMemberProperties(Lkotlin/reflect/KClass;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 34
    iget-object v2, v0, Lexpo/modules/kotlin/records/RecordTypeConverter$propertyDescriptors$2;->this$0:Lexpo/modules/kotlin/records/RecordTypeConverter;

    .local v1, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 136
    .local v3, "$i$f$map":I
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v1

    .local v5, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 137
    .local v6, "$i$f$mapTo":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 138
    .local v8, "item$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Lkotlin/reflect/KProperty1;

    .local v9, "property":Lkotlin/reflect/KProperty1;
    const/4 v10, 0x0

    .line 35
    .local v10, "$i$a$-map-RecordTypeConverter$propertyDescriptors$2$1":I
    move-object v11, v9

    check-cast v11, Lkotlin/reflect/KAnnotatedElement;

    .local v11, "$this$findAnnotation$iv":Lkotlin/reflect/KAnnotatedElement;
    const/4 v12, 0x0

    .line 139
    .local v12, "$i$f$findAnnotation":I
    invoke-interface {v11}, Lkotlin/reflect/KAnnotatedElement;->getAnnotations()Ljava/util/List;

    move-result-object v13

    check-cast v13, Ljava/lang/Iterable;

    .local v13, "$this$firstOrNull$iv$iv":Ljava/lang/Iterable;
    const/4 v14, 0x0

    .line 140
    .local v14, "$i$f$firstOrNull":I
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    const/16 v17, 0x0

    if-eqz v16, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    .local v16, "element$iv$iv":Ljava/lang/Object;
    move-object/from16 v0, v16

    check-cast v0, Ljava/lang/annotation/Annotation;

    .local v0, "it$iv":Ljava/lang/annotation/Annotation;
    const/16 v18, 0x0

    .line 139
    .local v18, "$i$a$-firstOrNull-KAnnotatedElements$findAnnotation$1$iv":I
    instance-of v0, v0, Lexpo/modules/kotlin/records/Field;

    .line 140
    .end local v0    # "it$iv":Ljava/lang/annotation/Annotation;
    .end local v18    # "$i$a$-firstOrNull-KAnnotatedElements$findAnnotation$1$iv":I
    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    move-object/from16 v0, p0

    goto :goto_1

    .line 141
    .end local v16    # "element$iv$iv":Ljava/lang/Object;
    :cond_1
    move-object/from16 v16, v17

    .end local v13    # "$this$firstOrNull$iv$iv":Ljava/lang/Iterable;
    .end local v14    # "$i$f$firstOrNull":I
    :goto_2
    check-cast v16, Lexpo/modules/kotlin/records/Field;

    check-cast v16, Ljava/lang/annotation/Annotation;

    .line 139
    nop

    .line 35
    .end local v11    # "$this$findAnnotation$iv":Lkotlin/reflect/KAnnotatedElement;
    .end local v12    # "$i$f$findAnnotation":I
    check-cast v16, Lexpo/modules/kotlin/records/Field;

    if-nez v16, :cond_2

    move-object/from16 v19, v1

    move-object/from16 v0, v17

    goto :goto_6

    :cond_2
    move-object/from16 v0, v16

    .line 36
    .local v0, "fieldAnnotation":Lexpo/modules/kotlin/records/Field;
    invoke-static {v2}, Lexpo/modules/kotlin/records/RecordTypeConverter;->access$getConverterProvider$p(Lexpo/modules/kotlin/records/RecordTypeConverter;)Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v11

    invoke-interface {v9}, Lkotlin/reflect/KProperty1;->getReturnType()Lkotlin/reflect/KType;

    move-result-object v12

    invoke-interface {v11, v12}, Lexpo/modules/kotlin/types/TypeConverterProvider;->obtainTypeConverter(Lkotlin/reflect/KType;)Lexpo/modules/kotlin/types/TypeConverter;

    move-result-object v11

    .line 38
    .local v11, "typeConverter":Lexpo/modules/kotlin/types/TypeConverter;
    nop

    .line 39
    nop

    .line 40
    nop

    .line 41
    move-object v12, v9

    check-cast v12, Lkotlin/reflect/KAnnotatedElement;

    .local v12, "$this$findAnnotation$iv":Lkotlin/reflect/KAnnotatedElement;
    const/4 v13, 0x0

    .line 142
    .local v13, "$i$f$findAnnotation":I
    invoke-interface {v12}, Lkotlin/reflect/KAnnotatedElement;->getAnnotations()Ljava/util/List;

    move-result-object v14

    check-cast v14, Ljava/lang/Iterable;

    .local v14, "$this$firstOrNull$iv$iv":Ljava/lang/Iterable;
    const/4 v15, 0x0

    .line 143
    .local v15, "$i$f$firstOrNull":I
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v1

    .end local v1    # "$this$map$iv":Ljava/lang/Iterable;
    .local v18, "element$iv$iv":Ljava/lang/Object;
    .local v19, "$this$map$iv":Ljava/lang/Iterable;
    move-object/from16 v1, v18

    check-cast v1, Ljava/lang/annotation/Annotation;

    .local v1, "it$iv":Ljava/lang/annotation/Annotation;
    const/16 v20, 0x0

    .line 142
    .local v20, "$i$a$-firstOrNull-KAnnotatedElements$findAnnotation$1$iv":I
    instance-of v1, v1, Lexpo/modules/kotlin/records/Required;

    .line 143
    .end local v1    # "it$iv":Ljava/lang/annotation/Annotation;
    .end local v20    # "$i$a$-firstOrNull-KAnnotatedElements$findAnnotation$1$iv":I
    if-eqz v1, :cond_3

    move-object/from16 v17, v18

    goto :goto_4

    :cond_3
    move-object/from16 v1, v19

    goto :goto_3

    .line 144
    .end local v18    # "element$iv$iv":Ljava/lang/Object;
    .end local v19    # "$this$map$iv":Ljava/lang/Iterable;
    .local v1, "$this$map$iv":Ljava/lang/Iterable;
    :cond_4
    move-object/from16 v19, v1

    .end local v1    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v14    # "$this$firstOrNull$iv$iv":Ljava/lang/Iterable;
    .end local v15    # "$i$f$firstOrNull":I
    .restart local v19    # "$this$map$iv":Ljava/lang/Iterable;
    :goto_4
    check-cast v17, Lexpo/modules/kotlin/records/Required;

    check-cast v17, Ljava/lang/annotation/Annotation;

    .line 142
    nop

    .end local v12    # "$this$findAnnotation$iv":Lkotlin/reflect/KAnnotatedElement;
    .end local v13    # "$i$f$findAnnotation":I
    if-eqz v17, :cond_5

    const/4 v1, 0x1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    .line 42
    :goto_5
    invoke-static {v2, v9}, Lexpo/modules/kotlin/records/RecordTypeConverter;->access$getValidators(Lexpo/modules/kotlin/records/RecordTypeConverter;Lkotlin/reflect/KProperty1;)Ljava/util/List;

    move-result-object v12

    .line 38
    new-instance v13, Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;

    invoke-direct {v13, v11, v0, v1, v12}, Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;-><init>(Lexpo/modules/kotlin/types/TypeConverter;Lexpo/modules/kotlin/records/Field;ZLjava/util/List;)V

    invoke-static {v9, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v17

    move-object/from16 v0, v17

    .line 138
    .end local v0    # "fieldAnnotation":Lexpo/modules/kotlin/records/Field;
    .end local v9    # "property":Lkotlin/reflect/KProperty1;
    .end local v10    # "$i$a$-map-RecordTypeConverter$propertyDescriptors$2$1":I
    .end local v11    # "typeConverter":Lexpo/modules/kotlin/types/TypeConverter;
    :goto_6
    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    goto/16 :goto_0

    .line 145
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    .end local v19    # "$this$map$iv":Ljava/lang/Iterable;
    .restart local v1    # "$this$map$iv":Ljava/lang/Iterable;
    :cond_6
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$mapTo":I
    move-object v0, v4

    check-cast v0, Ljava/util/List;

    .line 136
    nop

    .end local v1    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$map":I
    check-cast v0, Ljava/lang/Iterable;

    .line 45
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 46
    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
