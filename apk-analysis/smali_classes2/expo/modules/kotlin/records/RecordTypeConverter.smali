.class public final Lexpo/modules/kotlin/records/RecordTypeConverter;
.super Lexpo/modules/kotlin/types/DynamicAwareTypeConverters;
.source "RecordTypeConverter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lexpo/modules/kotlin/records/Record;",
        ">",
        "Lexpo/modules/kotlin/types/DynamicAwareTypeConverters<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecordTypeConverter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecordTypeConverter.kt\nexpo/modules/kotlin/records/RecordTypeConverter\n+ 2 ExceptionDecorator.kt\nexpo/modules/kotlin/exception/ExceptionDecoratorKt\n+ 3 CodedException.kt\nexpo/modules/kotlin/exception/CodedExceptionKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 DynamicExtenstions.kt\nexpo/modules/kotlin/DynamicExtenstionsKt\n+ 7 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 8 KAnnotatedElements.kt\nkotlin/reflect/full/KAnnotatedElements\n*L\n1#1,135:1\n5#2,4:136\n5#2,4:150\n11#3,6:140\n11#3,6:154\n215#4:146\n216#4:163\n1#5:147\n7#6,2:148\n10#6:162\n1855#7,2:160\n1549#7:164\n1620#7,2:165\n288#7,2:168\n1622#7:170\n1549#7:171\n1620#7,3:172\n20#8:167\n*S KotlinDebug\n*F\n+ 1 RecordTypeConverter.kt\nexpo/modules/kotlin/records/RecordTypeConverter\n*L\n50#1:136,4\n87#1:150,4\n50#1:140,6\n87#1:154,6\n73#1:146\n73#1:163\n84#1:148,2\n84#1:162\n94#1:160,2\n116#1:164\n116#1:165,2\n117#1:168,2\n116#1:170\n122#1:171\n122#1:172,3\n117#1:167\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003:\u0001.B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u001f\u0010\u0016\u001a\u00028\u00002\u0006\u0010\u0017\u001a\u00020\u000e2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016\u00a2\u0006\u0002\u0010\u001aJ\u001f\u0010\u001b\u001a\u00028\u00002\u0006\u0010\u0017\u001a\u00020\u001c2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016\u00a2\u0006\u0002\u0010\u001dJ\u001f\u0010\u001e\u001a\u00028\u00002\u0006\u0010\u001f\u001a\u00020 2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0002\u00a2\u0006\u0002\u0010!J\u0008\u0010\"\u001a\u00020#H\u0016J&\u0010$\u001a\u0008\u0012\u0004\u0012\u0002H\u00010%\"\u0008\u0008\u0001\u0010\u0001*\u00020\u000e2\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\'H\u0002J&\u0010(\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030*0)2\u0012\u0010+\u001a\u000e\u0012\u0006\u0008\u0001\u0012\u00020\u000e\u0012\u0002\u0008\u00030\rH\u0002J\u0008\u0010,\u001a\u00020-H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R3\u0010\u000b\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0006\u0008\u0001\u0012\u00020\u000e\u0012\u0002\u0008\u00030\r\u0012\u0004\u0012\u00020\u000f0\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006/"
    }
    d2 = {
        "Lexpo/modules/kotlin/records/RecordTypeConverter;",
        "T",
        "Lexpo/modules/kotlin/records/Record;",
        "Lexpo/modules/kotlin/types/DynamicAwareTypeConverters;",
        "converterProvider",
        "Lexpo/modules/kotlin/types/TypeConverterProvider;",
        "type",
        "Lkotlin/reflect/KType;",
        "(Lexpo/modules/kotlin/types/TypeConverterProvider;Lkotlin/reflect/KType;)V",
        "objectConstructorFactory",
        "Lexpo/modules/kotlin/allocators/ObjectConstructorFactory;",
        "propertyDescriptors",
        "",
        "Lkotlin/reflect/KProperty1;",
        "",
        "Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;",
        "getPropertyDescriptors",
        "()Ljava/util/Map;",
        "propertyDescriptors$delegate",
        "Lkotlin/Lazy;",
        "getType",
        "()Lkotlin/reflect/KType;",
        "convertFromAny",
        "value",
        "context",
        "Lexpo/modules/kotlin/AppContext;",
        "(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Lexpo/modules/kotlin/records/Record;",
        "convertFromDynamic",
        "Lcom/facebook/react/bridge/Dynamic;",
        "(Lcom/facebook/react/bridge/Dynamic;Lexpo/modules/kotlin/AppContext;)Lexpo/modules/kotlin/records/Record;",
        "convertFromReadableMap",
        "jsMap",
        "Lcom/facebook/react/bridge/ReadableMap;",
        "(Lcom/facebook/react/bridge/ReadableMap;Lexpo/modules/kotlin/AppContext;)Lexpo/modules/kotlin/records/Record;",
        "getCppRequiredTypes",
        "Lexpo/modules/kotlin/jni/ExpectedType;",
        "getObjectConstructor",
        "Lexpo/modules/kotlin/allocators/ObjectConstructor;",
        "clazz",
        "Lkotlin/reflect/KClass;",
        "getValidators",
        "",
        "Lexpo/modules/kotlin/records/FieldValidator;",
        "property",
        "isTrivial",
        "",
        "PropertyDescriptor",
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
.field private final converterProvider:Lexpo/modules/kotlin/types/TypeConverterProvider;

.field private final objectConstructorFactory:Lexpo/modules/kotlin/allocators/ObjectConstructorFactory;

.field private final propertyDescriptors$delegate:Lkotlin/Lazy;

.field private final type:Lkotlin/reflect/KType;


# direct methods
.method public constructor <init>(Lexpo/modules/kotlin/types/TypeConverterProvider;Lkotlin/reflect/KType;)V
    .locals 1
    .param p1, "converterProvider"    # Lexpo/modules/kotlin/types/TypeConverterProvider;
    .param p2, "type"    # Lkotlin/reflect/KType;

    const-string v0, "converterProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-interface {p2}, Lkotlin/reflect/KType;->isMarkedNullable()Z

    move-result v0

    invoke-direct {p0, v0}, Lexpo/modules/kotlin/types/DynamicAwareTypeConverters;-><init>(Z)V

    .line 27
    iput-object p1, p0, Lexpo/modules/kotlin/records/RecordTypeConverter;->converterProvider:Lexpo/modules/kotlin/types/TypeConverterProvider;

    .line 28
    iput-object p2, p0, Lexpo/modules/kotlin/records/RecordTypeConverter;->type:Lkotlin/reflect/KType;

    .line 30
    new-instance v0, Lexpo/modules/kotlin/allocators/ObjectConstructorFactory;

    invoke-direct {v0}, Lexpo/modules/kotlin/allocators/ObjectConstructorFactory;-><init>()V

    iput-object v0, p0, Lexpo/modules/kotlin/records/RecordTypeConverter;->objectConstructorFactory:Lexpo/modules/kotlin/allocators/ObjectConstructorFactory;

    .line 31
    new-instance v0, Lexpo/modules/kotlin/records/RecordTypeConverter$propertyDescriptors$2;

    invoke-direct {v0, p0}, Lexpo/modules/kotlin/records/RecordTypeConverter$propertyDescriptors$2;-><init>(Lexpo/modules/kotlin/records/RecordTypeConverter;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/kotlin/records/RecordTypeConverter;->propertyDescriptors$delegate:Lkotlin/Lazy;

    .line 26
    return-void
.end method

.method public static final synthetic access$getConverterProvider$p(Lexpo/modules/kotlin/records/RecordTypeConverter;)Lexpo/modules/kotlin/types/TypeConverterProvider;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/kotlin/records/RecordTypeConverter;

    .line 26
    iget-object v0, p0, Lexpo/modules/kotlin/records/RecordTypeConverter;->converterProvider:Lexpo/modules/kotlin/types/TypeConverterProvider;

    return-object v0
.end method

.method public static final synthetic access$getValidators(Lexpo/modules/kotlin/records/RecordTypeConverter;Lkotlin/reflect/KProperty1;)Ljava/util/List;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/kotlin/records/RecordTypeConverter;
    .param p1, "property"    # Lkotlin/reflect/KProperty1;

    .line 26
    invoke-direct {p0, p1}, Lexpo/modules/kotlin/records/RecordTypeConverter;->getValidators(Lkotlin/reflect/KProperty1;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final convertFromReadableMap(Lcom/facebook/react/bridge/ReadableMap;Lexpo/modules/kotlin/AppContext;)Lexpo/modules/kotlin/records/Record;
    .locals 24
    .param p1, "jsMap"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p2, "context"    # Lexpo/modules/kotlin/AppContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReadableMap;",
            "Lexpo/modules/kotlin/AppContext;",
            ")TT;"
        }
    .end annotation

    .line 69
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lexpo/modules/kotlin/records/RecordTypeConverter;->type:Lkotlin/reflect/KType;

    invoke-interface {v0}, Lkotlin/reflect/KType;->getClassifier()Lkotlin/reflect/KClassifier;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type kotlin.reflect.KClass<*>"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    check-cast v3, Lkotlin/reflect/KClass;

    .line 70
    .local v3, "kClass":Lkotlin/reflect/KClass;
    invoke-direct {v1, v3}, Lexpo/modules/kotlin/records/RecordTypeConverter;->getObjectConstructor(Lkotlin/reflect/KClass;)Lexpo/modules/kotlin/allocators/ObjectConstructor;

    move-result-object v0

    invoke-interface {v0}, Lexpo/modules/kotlin/allocators/ObjectConstructor;->construct()Ljava/lang/Object;

    move-result-object v4

    .line 72
    .local v4, "instance":Ljava/lang/Object;
    invoke-direct/range {p0 .. p0}, Lexpo/modules/kotlin/records/RecordTypeConverter;->getPropertyDescriptors()Ljava/util/Map;

    move-result-object v0

    .line 73
    move-object v5, v0

    .local v5, "$this$forEach$iv":Ljava/util/Map;
    const/4 v6, 0x0

    .line 146
    .local v6, "$i$f$forEach":I
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .local v7, "element$iv":Ljava/util/Map$Entry;
    const/4 v8, 0x0

    .line 73
    .local v8, "$i$a$-forEach-RecordTypeConverter$convertFromReadableMap$1":I
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlin/reflect/KProperty1;

    .local v9, "property":Lkotlin/reflect/KProperty1;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;

    .line 74
    .local v10, "descriptor":Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;
    invoke-virtual {v10}, Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;->getFieldAnnotation()Lexpo/modules/kotlin/records/Field;

    move-result-object v11

    invoke-interface {v11}, Lexpo/modules/kotlin/records/Field;->key()Ljava/lang/String;

    move-result-object v11

    move-object v12, v11

    .line 147
    .local v12, "it":Ljava/lang/String;
    const/4 v13, 0x0

    .line 74
    .local v13, "$i$a$-takeUnless-RecordTypeConverter$convertFromReadableMap$1$jsKey$1":I
    move-object v14, v12

    check-cast v14, Ljava/lang/CharSequence;

    invoke-static {v14}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v12

    .end local v12    # "it":Ljava/lang/String;
    .end local v13    # "$i$a$-takeUnless-RecordTypeConverter$convertFromReadableMap$1$jsKey$1":I
    if-nez v12, :cond_0

    goto :goto_1

    :cond_0
    const/4 v11, 0x0

    :goto_1
    if-nez v11, :cond_1

    invoke-interface {v9}, Lkotlin/reflect/KProperty1;->getName()Ljava/lang/String;

    move-result-object v11

    .line 76
    .local v11, "jsKey":Ljava/lang/String;
    :cond_1
    invoke-interface {v2, v11}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 77
    invoke-virtual {v10}, Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;->isRequired()Z

    move-result v12

    if-nez v12, :cond_2

    .line 81
    move-object/from16 v19, v0

    goto/16 :goto_3

    .line 78
    :cond_2
    new-instance v0, Lexpo/modules/kotlin/exception/FieldRequiredException;

    invoke-direct {v0, v9}, Lexpo/modules/kotlin/exception/FieldRequiredException;-><init>(Lkotlin/reflect/KProperty1;)V

    throw v0

    .line 84
    :cond_3
    invoke-interface {v2, v11}, Lcom/facebook/react/bridge/ReadableMap;->getDynamic(Ljava/lang/String;)Lcom/facebook/react/bridge/Dynamic;

    move-result-object v12

    .local v12, "$this$recycle$iv":Lcom/facebook/react/bridge/Dynamic;
    const/4 v13, 0x0

    .line 148
    .local v13, "$i$f$recycle":I
    nop

    .line 149
    move-object v14, v12

    .local v14, "$this$convertFromReadableMap_u24lambda_u247_u24lambda_u246":Lcom/facebook/react/bridge/Dynamic;
    const/4 v15, 0x0

    .line 85
    .local v15, "$i$a$-recycle-RecordTypeConverter$convertFromReadableMap$1$1":I
    :try_start_0
    move-object/from16 v16, v9

    check-cast v16, Lkotlin/reflect/KProperty;

    invoke-static/range {v16 .. v16}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaField(Lkotlin/reflect/KProperty;)Ljava/lang/reflect/Field;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-object/from16 v17, v16

    .line 87
    .local v17, "javaField":Ljava/lang/reflect/Field;
    const/16 v16, 0x0

    .line 150
    .local v16, "$i$f$exceptionDecorator":I
    nop

    .line 151
    const/16 v18, 0x0

    .line 88
    .local v18, "$i$a$-exceptionDecorator-RecordTypeConverter$convertFromReadableMap$1$1$casted$2":I
    move-object/from16 v19, v0

    :try_start_1
    invoke-virtual {v10}, Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;->getTypeConverter()Lexpo/modules/kotlin/types/TypeConverter;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-virtual {v0, v14, v1}, Lexpo/modules/kotlin/types/TypeConverter;->convert(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 151
    .end local v18    # "$i$a$-exceptionDecorator-RecordTypeConverter$convertFromReadableMap$1$1$casted$2":I
    nop

    .line 150
    nop

    .line 87
    .end local v16    # "$i$f$exceptionDecorator":I
    nop

    .line 91
    .local v0, "casted":Ljava/lang/Object;
    if-eqz v0, :cond_5

    .line 92
    nop

    .line 93
    :try_start_2
    invoke-virtual {v10}, Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;->getValidators()Ljava/util/List;

    move-result-object v16

    check-cast v16, Ljava/lang/Iterable;

    .line 94
    nop

    .local v16, "$this$forEach$iv":Ljava/lang/Iterable;
    const/16 v18, 0x0

    .line 160
    .local v18, "$i$f$forEach":I
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    .local v21, "element$iv":Ljava/lang/Object;
    move-object/from16 v22, v21

    check-cast v22, Lexpo/modules/kotlin/records/FieldValidator;

    move-object/from16 v23, v22

    .local v23, "validator":Lexpo/modules/kotlin/records/FieldValidator;
    const/16 v22, 0x0

    .line 96
    .local v22, "$i$a$-forEach-RecordTypeConverter$convertFromReadableMap$1$1$1":I
    const-string v1, "null cannot be cast to non-null type expo.modules.kotlin.records.FieldValidator<kotlin.Any>"

    move-object/from16 v2, v23

    .end local v23    # "validator":Lexpo/modules/kotlin/records/FieldValidator;
    .local v2, "validator":Lexpo/modules/kotlin/records/FieldValidator;
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Lexpo/modules/kotlin/records/FieldValidator;->validate(Ljava/lang/Object;)V

    .line 97
    nop

    .line 160
    .end local v2    # "validator":Lexpo/modules/kotlin/records/FieldValidator;
    .end local v22    # "$i$a$-forEach-RecordTypeConverter$convertFromReadableMap$1$1$1":I
    move-object/from16 v2, p1

    move-object/from16 v1, p2

    .end local v21    # "element$iv":Ljava/lang/Object;
    goto :goto_2

    .line 161
    :cond_4
    nop

    .line 100
    .end local v16    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v18    # "$i$f$forEach":I
    :cond_5
    const/4 v1, 0x1

    move-object/from16 v2, v17

    .end local v17    # "javaField":Ljava/lang/reflect/Field;
    .local v2, "javaField":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 101
    invoke-virtual {v2, v4, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 102
    nop

    .end local v0    # "casted":Ljava/lang/Object;
    .end local v2    # "javaField":Ljava/lang/reflect/Field;
    .end local v14    # "$this$convertFromReadableMap_u24lambda_u247_u24lambda_u246":Lcom/facebook/react/bridge/Dynamic;
    .end local v15    # "$i$a$-recycle-RecordTypeConverter$convertFromReadableMap$1$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 149
    nop

    .line 162
    invoke-interface {v12}, Lcom/facebook/react/bridge/Dynamic;->recycle()V

    .line 149
    nop

    .line 103
    .end local v12    # "$this$recycle$iv":Lcom/facebook/react/bridge/Dynamic;
    .end local v13    # "$i$f$recycle":I
    nop

    .line 146
    .end local v8    # "$i$a$-forEach-RecordTypeConverter$convertFromReadableMap$1":I
    .end local v9    # "property":Lkotlin/reflect/KProperty1;
    .end local v10    # "descriptor":Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;
    .end local v11    # "jsKey":Ljava/lang/String;
    :goto_3
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, v19

    .end local v7    # "element$iv":Ljava/util/Map$Entry;
    goto/16 :goto_0

    .line 162
    .restart local v7    # "element$iv":Ljava/util/Map$Entry;
    .restart local v8    # "$i$a$-forEach-RecordTypeConverter$convertFromReadableMap$1":I
    .restart local v9    # "property":Lkotlin/reflect/KProperty1;
    .restart local v10    # "descriptor":Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;
    .restart local v11    # "jsKey":Ljava/lang/String;
    .restart local v12    # "$this$recycle$iv":Lcom/facebook/react/bridge/Dynamic;
    .restart local v13    # "$i$f$recycle":I
    :catchall_0
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v21, v5

    goto/16 :goto_5

    .line 152
    .restart local v14    # "$this$convertFromReadableMap_u24lambda_u247_u24lambda_u246":Lcom/facebook/react/bridge/Dynamic;
    .restart local v15    # "$i$a$-recycle-RecordTypeConverter$convertFromReadableMap$1$1":I
    .local v16, "$i$f$exceptionDecorator":I
    .restart local v17    # "javaField":Ljava/lang/reflect/Field;
    :catchall_1
    move-exception v0

    move-object/from16 v2, v17

    .line 153
    .end local v17    # "javaField":Ljava/lang/reflect/Field;
    .local v0, "e$iv":Ljava/lang/Throwable;
    .restart local v2    # "javaField":Ljava/lang/reflect/Field;
    move-object v1, v0

    .local v1, "$this$toCodedException$iv$iv":Ljava/lang/Throwable;
    const/16 v17, 0x0

    .line 154
    .local v17, "$i$f$toCodedException":I
    nop

    .line 155
    nop

    .line 156
    move-object/from16 v18, v0

    .end local v0    # "e$iv":Ljava/lang/Throwable;
    .local v18, "e$iv":Ljava/lang/Throwable;
    :try_start_3
    instance-of v0, v1, Lexpo/modules/kotlin/exception/CodedException;

    if-nez v0, :cond_7

    .line 157
    instance-of v0, v1, Lexpo/modules/core/errors/CodedException;

    if-eqz v0, :cond_6

    new-instance v0, Lexpo/modules/kotlin/exception/CodedException;

    move-object/from16 v19, v1

    check-cast v19, Lexpo/modules/core/errors/CodedException;

    move-object/from16 v20, v2

    .end local v2    # "javaField":Ljava/lang/reflect/Field;
    .local v20, "javaField":Ljava/lang/reflect/Field;
    invoke-virtual/range {v19 .. v19}, Lexpo/modules/core/errors/CodedException;->getCode()Ljava/lang/String;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-object/from16 v19, v3

    .end local v3    # "kClass":Lkotlin/reflect/KClass;
    .local v19, "kClass":Lkotlin/reflect/KClass;
    :try_start_4
    const-string v3, "getCode(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v21, v5

    .end local v5    # "$this$forEach$iv":Ljava/util/Map;
    .local v21, "$this$forEach$iv":Ljava/util/Map;
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v0, v2, v3, v5}, Lexpo/modules/kotlin/exception/CodedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 162
    .end local v1    # "$this$toCodedException$iv$iv":Ljava/lang/Throwable;
    .end local v14    # "$this$convertFromReadableMap_u24lambda_u247_u24lambda_u246":Lcom/facebook/react/bridge/Dynamic;
    .end local v15    # "$i$a$-recycle-RecordTypeConverter$convertFromReadableMap$1$1":I
    .end local v16    # "$i$f$exceptionDecorator":I
    .end local v17    # "$i$f$toCodedException":I
    .end local v18    # "e$iv":Ljava/lang/Throwable;
    .end local v20    # "javaField":Ljava/lang/reflect/Field;
    .end local v21    # "$this$forEach$iv":Ljava/util/Map;
    .restart local v5    # "$this$forEach$iv":Ljava/util/Map;
    :catchall_2
    move-exception v0

    move-object/from16 v21, v5

    .end local v5    # "$this$forEach$iv":Ljava/util/Map;
    .restart local v21    # "$this$forEach$iv":Ljava/util/Map;
    goto :goto_5

    .line 158
    .end local v19    # "kClass":Lkotlin/reflect/KClass;
    .end local v21    # "$this$forEach$iv":Ljava/util/Map;
    .restart local v1    # "$this$toCodedException$iv$iv":Ljava/lang/Throwable;
    .restart local v2    # "javaField":Ljava/lang/reflect/Field;
    .restart local v3    # "kClass":Lkotlin/reflect/KClass;
    .restart local v5    # "$this$forEach$iv":Ljava/util/Map;
    .restart local v14    # "$this$convertFromReadableMap_u24lambda_u247_u24lambda_u246":Lcom/facebook/react/bridge/Dynamic;
    .restart local v15    # "$i$a$-recycle-RecordTypeConverter$convertFromReadableMap$1$1":I
    .restart local v16    # "$i$f$exceptionDecorator":I
    .restart local v17    # "$i$f$toCodedException":I
    .restart local v18    # "e$iv":Ljava/lang/Throwable;
    :cond_6
    move-object/from16 v20, v2

    move-object/from16 v19, v3

    move-object/from16 v21, v5

    .end local v2    # "javaField":Ljava/lang/reflect/Field;
    .end local v3    # "kClass":Lkotlin/reflect/KClass;
    .end local v5    # "$this$forEach$iv":Ljava/util/Map;
    .restart local v19    # "kClass":Lkotlin/reflect/KClass;
    .restart local v20    # "javaField":Ljava/lang/reflect/Field;
    .restart local v21    # "$this$forEach$iv":Ljava/util/Map;
    new-instance v0, Lexpo/modules/kotlin/exception/UnexpectedException;

    invoke-direct {v0, v1}, Lexpo/modules/kotlin/exception/UnexpectedException;-><init>(Ljava/lang/Throwable;)V

    check-cast v0, Lexpo/modules/kotlin/exception/CodedException;

    goto :goto_4

    .line 156
    .end local v19    # "kClass":Lkotlin/reflect/KClass;
    .end local v20    # "javaField":Ljava/lang/reflect/Field;
    .end local v21    # "$this$forEach$iv":Ljava/util/Map;
    .restart local v2    # "javaField":Ljava/lang/reflect/Field;
    .restart local v3    # "kClass":Lkotlin/reflect/KClass;
    .restart local v5    # "$this$forEach$iv":Ljava/util/Map;
    :cond_7
    move-object/from16 v20, v2

    move-object/from16 v19, v3

    move-object/from16 v21, v5

    .end local v2    # "javaField":Ljava/lang/reflect/Field;
    .end local v3    # "kClass":Lkotlin/reflect/KClass;
    .end local v5    # "$this$forEach$iv":Ljava/util/Map;
    .restart local v19    # "kClass":Lkotlin/reflect/KClass;
    .restart local v20    # "javaField":Ljava/lang/reflect/Field;
    .restart local v21    # "$this$forEach$iv":Ljava/util/Map;
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/exception/CodedException;

    .line 159
    :goto_4
    nop

    .line 153
    .end local v1    # "$this$toCodedException$iv$iv":Ljava/lang/Throwable;
    .end local v17    # "$i$f$toCodedException":I
    nop

    .local v0, "cause":Lexpo/modules/kotlin/exception/CodedException;
    const/4 v1, 0x0

    .line 87
    .local v1, "$i$a$-exceptionDecorator-RecordTypeConverter$convertFromReadableMap$1$1$casted$1":I
    new-instance v2, Lexpo/modules/kotlin/exception/FieldCastException;

    invoke-interface {v9}, Lkotlin/reflect/KProperty1;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9}, Lkotlin/reflect/KProperty1;->getReturnType()Lkotlin/reflect/KType;

    move-result-object v5

    move/from16 v17, v1

    .end local v1    # "$i$a$-exceptionDecorator-RecordTypeConverter$convertFromReadableMap$1$1$casted$1":I
    .local v17, "$i$a$-exceptionDecorator-RecordTypeConverter$convertFromReadableMap$1$1$casted$1":I
    invoke-interface {v14}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v1

    invoke-direct {v2, v3, v5, v1, v0}, Lexpo/modules/kotlin/exception/FieldCastException;-><init>(Ljava/lang/String;Lkotlin/reflect/KType;Lcom/facebook/react/bridge/ReadableType;Lexpo/modules/kotlin/exception/CodedException;)V

    check-cast v2, Ljava/lang/Throwable;

    .line 153
    .end local v0    # "cause":Lexpo/modules/kotlin/exception/CodedException;
    .end local v17    # "$i$a$-exceptionDecorator-RecordTypeConverter$convertFromReadableMap$1$1$casted$1":I
    nop

    .end local v4    # "instance":Ljava/lang/Object;
    .end local v6    # "$i$f$forEach":I
    .end local v7    # "element$iv":Ljava/util/Map$Entry;
    .end local v8    # "$i$a$-forEach-RecordTypeConverter$convertFromReadableMap$1":I
    .end local v9    # "property":Lkotlin/reflect/KProperty1;
    .end local v10    # "descriptor":Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;
    .end local v11    # "jsKey":Ljava/lang/String;
    .end local v12    # "$this$recycle$iv":Lcom/facebook/react/bridge/Dynamic;
    .end local v13    # "$i$f$recycle":I
    .end local v19    # "kClass":Lkotlin/reflect/KClass;
    .end local v21    # "$this$forEach$iv":Ljava/util/Map;
    .end local p1    # "jsMap":Lcom/facebook/react/bridge/ReadableMap;
    .end local p2    # "context":Lexpo/modules/kotlin/AppContext;
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 162
    .end local v14    # "$this$convertFromReadableMap_u24lambda_u247_u24lambda_u246":Lcom/facebook/react/bridge/Dynamic;
    .end local v15    # "$i$a$-recycle-RecordTypeConverter$convertFromReadableMap$1$1":I
    .end local v16    # "$i$f$exceptionDecorator":I
    .end local v18    # "e$iv":Ljava/lang/Throwable;
    .end local v20    # "javaField":Ljava/lang/reflect/Field;
    .restart local v4    # "instance":Ljava/lang/Object;
    .restart local v6    # "$i$f$forEach":I
    .restart local v7    # "element$iv":Ljava/util/Map$Entry;
    .restart local v8    # "$i$a$-forEach-RecordTypeConverter$convertFromReadableMap$1":I
    .restart local v9    # "property":Lkotlin/reflect/KProperty1;
    .restart local v10    # "descriptor":Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;
    .restart local v11    # "jsKey":Ljava/lang/String;
    .restart local v12    # "$this$recycle$iv":Lcom/facebook/react/bridge/Dynamic;
    .restart local v13    # "$i$f$recycle":I
    .restart local v19    # "kClass":Lkotlin/reflect/KClass;
    .restart local v21    # "$this$forEach$iv":Ljava/util/Map;
    .restart local p1    # "jsMap":Lcom/facebook/react/bridge/ReadableMap;
    .restart local p2    # "context":Lexpo/modules/kotlin/AppContext;
    :catchall_3
    move-exception v0

    goto :goto_5

    .end local v19    # "kClass":Lkotlin/reflect/KClass;
    .end local v21    # "$this$forEach$iv":Ljava/util/Map;
    .restart local v3    # "kClass":Lkotlin/reflect/KClass;
    .restart local v5    # "$this$forEach$iv":Ljava/util/Map;
    :catchall_4
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v21, v5

    .end local v3    # "kClass":Lkotlin/reflect/KClass;
    .end local v5    # "$this$forEach$iv":Ljava/util/Map;
    .restart local v19    # "kClass":Lkotlin/reflect/KClass;
    .restart local v21    # "$this$forEach$iv":Ljava/util/Map;
    :goto_5
    invoke-interface {v12}, Lcom/facebook/react/bridge/Dynamic;->recycle()V

    throw v0

    .line 163
    .end local v7    # "element$iv":Ljava/util/Map$Entry;
    .end local v8    # "$i$a$-forEach-RecordTypeConverter$convertFromReadableMap$1":I
    .end local v9    # "property":Lkotlin/reflect/KProperty1;
    .end local v10    # "descriptor":Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;
    .end local v11    # "jsKey":Ljava/lang/String;
    .end local v12    # "$this$recycle$iv":Lcom/facebook/react/bridge/Dynamic;
    .end local v13    # "$i$f$recycle":I
    .end local v19    # "kClass":Lkotlin/reflect/KClass;
    .end local v21    # "$this$forEach$iv":Ljava/util/Map;
    .restart local v3    # "kClass":Lkotlin/reflect/KClass;
    .restart local v5    # "$this$forEach$iv":Ljava/util/Map;
    :cond_8
    nop

    .line 106
    .end local v5    # "$this$forEach$iv":Ljava/util/Map;
    .end local v6    # "$i$f$forEach":I
    const-string v0, "null cannot be cast to non-null type T of expo.modules.kotlin.records.RecordTypeConverter"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v4

    check-cast v0, Lexpo/modules/kotlin/records/Record;

    return-object v0
.end method

.method private final getObjectConstructor(Lkotlin/reflect/KClass;)Lexpo/modules/kotlin/allocators/ObjectConstructor;
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

    .line 110
    iget-object v0, p0, Lexpo/modules/kotlin/records/RecordTypeConverter;->objectConstructorFactory:Lexpo/modules/kotlin/allocators/ObjectConstructorFactory;

    invoke-virtual {v0, p1}, Lexpo/modules/kotlin/allocators/ObjectConstructorFactory;->get(Lkotlin/reflect/KClass;)Lexpo/modules/kotlin/allocators/ObjectConstructor;

    move-result-object v0

    return-object v0
.end method

.method private final getPropertyDescriptors()Ljava/util/Map;
    .locals 1
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

    .line 31
    iget-object v0, p0, Lexpo/modules/kotlin/records/RecordTypeConverter;->propertyDescriptors$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method private final getValidators(Lkotlin/reflect/KProperty1;)Ljava/util/List;
    .locals 18
    .param p1, "property"    # Lkotlin/reflect/KProperty1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KProperty1<",
            "+",
            "Ljava/lang/Object;",
            "*>;)",
            "Ljava/util/List<",
            "Lexpo/modules/kotlin/records/FieldValidator<",
            "*>;>;"
        }
    .end annotation

    .line 114
    nop

    .line 115
    invoke-interface/range {p1 .. p1}, Lkotlin/reflect/KProperty1;->getAnnotations()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 116
    nop

    .local v0, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 164
    .local v1, "$i$f$map":I
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v0

    .local v4, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 165
    .local v5, "$i$f$mapTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 166
    .local v7, "item$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Ljava/lang/annotation/Annotation;

    .local v8, "annotation":Ljava/lang/annotation/Annotation;
    const/4 v9, 0x0

    .line 117
    .local v9, "$i$a$-map-RecordTypeConverter$getValidators$1":I
    invoke-static {v8}, Lkotlin/jvm/JvmClassMappingKt;->getAnnotationClass(Ljava/lang/annotation/Annotation;)Lkotlin/reflect/KClass;

    move-result-object v10

    check-cast v10, Lkotlin/reflect/KAnnotatedElement;

    .local v10, "$this$findAnnotation$iv":Lkotlin/reflect/KAnnotatedElement;
    const/4 v11, 0x0

    .line 167
    .local v11, "$i$f$findAnnotation":I
    invoke-interface {v10}, Lkotlin/reflect/KAnnotatedElement;->getAnnotations()Ljava/util/List;

    move-result-object v12

    check-cast v12, Ljava/lang/Iterable;

    .local v12, "$this$firstOrNull$iv$iv":Ljava/lang/Iterable;
    const/4 v13, 0x0

    .line 168
    .local v13, "$i$f$firstOrNull":I
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    const/16 v16, 0x0

    if-eqz v15, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .local v15, "element$iv$iv":Ljava/lang/Object;
    move-object v3, v15

    check-cast v3, Ljava/lang/annotation/Annotation;

    .local v3, "it$iv":Ljava/lang/annotation/Annotation;
    const/16 v17, 0x0

    .line 167
    .local v17, "$i$a$-firstOrNull-KAnnotatedElements$findAnnotation$1$iv":I
    instance-of v3, v3, Lexpo/modules/kotlin/records/BindUsing;

    .line 168
    .end local v3    # "it$iv":Ljava/lang/annotation/Annotation;
    .end local v17    # "$i$a$-firstOrNull-KAnnotatedElements$findAnnotation$1$iv":I
    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    const/16 v3, 0xa

    goto :goto_1

    .line 169
    .end local v15    # "element$iv$iv":Ljava/lang/Object;
    :cond_1
    move-object/from16 v15, v16

    .end local v12    # "$this$firstOrNull$iv$iv":Ljava/lang/Iterable;
    .end local v13    # "$i$f$firstOrNull":I
    :goto_2
    check-cast v15, Lexpo/modules/kotlin/records/BindUsing;

    check-cast v15, Ljava/lang/annotation/Annotation;

    .line 167
    nop

    .line 117
    .end local v10    # "$this$findAnnotation$iv":Lkotlin/reflect/KAnnotatedElement;
    .end local v11    # "$i$f$findAnnotation":I
    check-cast v15, Lexpo/modules/kotlin/records/BindUsing;

    if-nez v15, :cond_2

    .line 118
    move-object/from16 v3, v16

    goto :goto_3

    .line 117
    :cond_2
    move-object v3, v15

    .line 119
    .local v3, "binderAnnotation":Lexpo/modules/kotlin/records/BindUsing;
    invoke-static {v8, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v16

    move-object/from16 v3, v16

    .line 166
    .end local v3    # "binderAnnotation":Lexpo/modules/kotlin/records/BindUsing;
    .end local v8    # "annotation":Ljava/lang/annotation/Annotation;
    .end local v9    # "$i$a$-map-RecordTypeConverter$getValidators$1":I
    :goto_3
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/16 v3, 0xa

    goto :goto_0

    .line 170
    .end local v7    # "item$iv$iv":Ljava/lang/Object;
    :cond_3
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$mapTo":I
    check-cast v2, Ljava/util/List;

    .line 164
    nop

    .end local v0    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$map":I
    check-cast v2, Ljava/lang/Iterable;

    .line 121
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 122
    nop

    .restart local v0    # "$this$map$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 171
    .restart local v1    # "$i$f$map":I
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .restart local v2    # "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 172
    .local v4, "$i$f$mapTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 173
    .local v6, "item$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lkotlin/Pair;

    const/4 v8, 0x0

    .line 122
    .local v8, "$i$a$-map-RecordTypeConverter$getValidators$2":I
    invoke-virtual {v7}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/annotation/Annotation;

    .local v9, "annotation":Ljava/lang/annotation/Annotation;
    invoke-virtual {v7}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lexpo/modules/kotlin/records/BindUsing;

    .line 123
    .local v7, "binderAnnotation":Lexpo/modules/kotlin/records/BindUsing;
    invoke-interface {v7}, Lexpo/modules/kotlin/records/BindUsing;->binder()Ljava/lang/Class;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-static {v10}, Lkotlin/reflect/full/KClasses;->createInstance(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v10

    const-string v11, "null cannot be cast to non-null type expo.modules.kotlin.records.ValidationBinder"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Lexpo/modules/kotlin/records/ValidationBinder;

    .line 124
    .local v10, "binderInstance":Lexpo/modules/kotlin/records/ValidationBinder;
    invoke-interface/range {p1 .. p1}, Lkotlin/reflect/KProperty1;->getReturnType()Lkotlin/reflect/KType;

    move-result-object v11

    invoke-interface {v10, v9, v11}, Lexpo/modules/kotlin/records/ValidationBinder;->bind(Ljava/lang/annotation/Annotation;Lkotlin/reflect/KType;)Lexpo/modules/kotlin/records/FieldValidator;

    move-result-object v7

    .line 173
    .end local v7    # "binderAnnotation":Lexpo/modules/kotlin/records/BindUsing;
    .end local v8    # "$i$a$-map-RecordTypeConverter$getValidators$2":I
    .end local v9    # "annotation":Ljava/lang/annotation/Annotation;
    .end local v10    # "binderInstance":Lexpo/modules/kotlin/records/ValidationBinder;
    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 174
    .end local v6    # "item$iv$iv":Ljava/lang/Object;
    :cond_4
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$mapTo":I
    check-cast v2, Ljava/util/List;

    .line 171
    nop

    .line 114
    .end local v0    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$map":I
    return-object v2
.end method


# virtual methods
.method public convertFromAny(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Lexpo/modules/kotlin/records/Record;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "context"    # Lexpo/modules/kotlin/AppContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lexpo/modules/kotlin/AppContext;",
            ")TT;"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    instance-of v0, p1, Lcom/facebook/react/bridge/ReadableMap;

    if-eqz v0, :cond_0

    .line 57
    move-object v0, p1

    check-cast v0, Lcom/facebook/react/bridge/ReadableMap;

    invoke-direct {p0, v0, p2}, Lexpo/modules/kotlin/records/RecordTypeConverter;->convertFromReadableMap(Lcom/facebook/react/bridge/ReadableMap;Lexpo/modules/kotlin/AppContext;)Lexpo/modules/kotlin/records/Record;

    move-result-object v0

    return-object v0

    .line 61
    :cond_0
    move-object v0, p1

    check-cast v0, Lexpo/modules/kotlin/records/Record;

    return-object v0
.end method

.method public bridge synthetic convertFromAny(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "context"    # Lexpo/modules/kotlin/AppContext;

    .line 26
    invoke-virtual {p0, p1, p2}, Lexpo/modules/kotlin/records/RecordTypeConverter;->convertFromAny(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Lexpo/modules/kotlin/records/Record;

    move-result-object v0

    return-object v0
.end method

.method public convertFromDynamic(Lcom/facebook/react/bridge/Dynamic;Lexpo/modules/kotlin/AppContext;)Lexpo/modules/kotlin/records/Record;
    .locals 8
    .param p1, "value"    # Lcom/facebook/react/bridge/Dynamic;
    .param p2, "context"    # Lexpo/modules/kotlin/AppContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/Dynamic;",
            "Lexpo/modules/kotlin/AppContext;",
            ")TT;"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    const/4 v0, 0x0

    .line 136
    .local v0, "$i$f$exceptionDecorator":I
    nop

    .line 137
    const/4 v1, 0x0

    .line 51
    .local v1, "$i$a$-exceptionDecorator-RecordTypeConverter$convertFromDynamic$2":I
    :try_start_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->asMap()Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v2

    .line 52
    .local v2, "jsMap":Lcom/facebook/react/bridge/ReadableMap;
    invoke-direct {p0, v2, p2}, Lexpo/modules/kotlin/records/RecordTypeConverter;->convertFromReadableMap(Lcom/facebook/react/bridge/ReadableMap;Lexpo/modules/kotlin/AppContext;)Lexpo/modules/kotlin/records/Record;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    .line 138
    .end local v1    # "$i$a$-exceptionDecorator-RecordTypeConverter$convertFromDynamic$2":I
    .end local v2    # "jsMap":Lcom/facebook/react/bridge/ReadableMap;
    :catchall_0
    move-exception v1

    .line 139
    .local v1, "e$iv":Ljava/lang/Throwable;
    move-object v2, v1

    .local v2, "$this$toCodedException$iv$iv":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 140
    .local v3, "$i$f$toCodedException":I
    nop

    .line 141
    nop

    .line 142
    instance-of v4, v2, Lexpo/modules/kotlin/exception/CodedException;

    if-nez v4, :cond_1

    .line 143
    instance-of v4, v2, Lexpo/modules/core/errors/CodedException;

    if-eqz v4, :cond_0

    new-instance v4, Lexpo/modules/kotlin/exception/CodedException;

    move-object v5, v2

    check-cast v5, Lexpo/modules/core/errors/CodedException;

    invoke-virtual {v5}, Lexpo/modules/core/errors/CodedException;->getCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "getCode(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lexpo/modules/kotlin/exception/CodedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 144
    :cond_0
    new-instance v4, Lexpo/modules/kotlin/exception/UnexpectedException;

    invoke-direct {v4, v2}, Lexpo/modules/kotlin/exception/UnexpectedException;-><init>(Ljava/lang/Throwable;)V

    check-cast v4, Lexpo/modules/kotlin/exception/CodedException;

    goto :goto_0

    .line 142
    :cond_1
    move-object v4, v2

    check-cast v4, Lexpo/modules/kotlin/exception/CodedException;

    .line 145
    :goto_0
    nop

    .line 139
    .end local v2    # "$this$toCodedException$iv$iv":Ljava/lang/Throwable;
    .end local v3    # "$i$f$toCodedException":I
    move-object v2, v4

    .local v2, "cause":Lexpo/modules/kotlin/exception/CodedException;
    const/4 v3, 0x0

    .line 50
    .local v3, "$i$a$-exceptionDecorator-RecordTypeConverter$convertFromDynamic$1":I
    new-instance v4, Lexpo/modules/kotlin/exception/RecordCastException;

    iget-object v5, p0, Lexpo/modules/kotlin/records/RecordTypeConverter;->type:Lkotlin/reflect/KType;

    invoke-direct {v4, v5, v2}, Lexpo/modules/kotlin/exception/RecordCastException;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/exception/CodedException;)V

    check-cast v4, Ljava/lang/Throwable;

    .line 139
    .end local v2    # "cause":Lexpo/modules/kotlin/exception/CodedException;
    .end local v3    # "$i$a$-exceptionDecorator-RecordTypeConverter$convertFromDynamic$1":I
    throw v4
.end method

.method public bridge synthetic convertFromDynamic(Lcom/facebook/react/bridge/Dynamic;Lexpo/modules/kotlin/AppContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Lcom/facebook/react/bridge/Dynamic;
    .param p2, "context"    # Lexpo/modules/kotlin/AppContext;

    .line 26
    invoke-virtual {p0, p1, p2}, Lexpo/modules/kotlin/records/RecordTypeConverter;->convertFromDynamic(Lcom/facebook/react/bridge/Dynamic;Lexpo/modules/kotlin/AppContext;)Lexpo/modules/kotlin/records/Record;

    move-result-object v0

    return-object v0
.end method

.method public getCppRequiredTypes()Lexpo/modules/kotlin/jni/ExpectedType;
    .locals 4

    .line 64
    new-instance v0, Lexpo/modules/kotlin/jni/ExpectedType;

    const/4 v1, 0x1

    new-array v1, v1, [Lexpo/modules/kotlin/jni/CppType;

    const/4 v2, 0x0

    sget-object v3, Lexpo/modules/kotlin/jni/CppType;->READABLE_MAP:Lexpo/modules/kotlin/jni/CppType;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lexpo/modules/kotlin/jni/ExpectedType;-><init>([Lexpo/modules/kotlin/jni/CppType;)V

    return-object v0
.end method

.method public final getType()Lkotlin/reflect/KType;
    .locals 1

    .line 28
    iget-object v0, p0, Lexpo/modules/kotlin/records/RecordTypeConverter;->type:Lkotlin/reflect/KType;

    return-object v0
.end method

.method public isTrivial()Z
    .locals 1

    .line 66
    const/4 v0, 0x0

    return v0
.end method
