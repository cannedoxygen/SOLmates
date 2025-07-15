.class public final Lexpo/modules/kotlin/traits/SavableTrait$Companion$create$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SavableTrait.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/kotlin/traits/SavableTrait$Companion;->create(Lkotlin/reflect/KClass;)Lexpo/modules/kotlin/traits/SavableTrait;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lexpo/modules/kotlin/AppContext;",
        "Lexpo/modules/kotlin/objects/ObjectDefinitionData;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSavableTrait.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SavableTrait.kt\nexpo/modules/kotlin/traits/SavableTrait$Companion$create$1\n+ 2 SavableTrait.kt\nexpo/modules/kotlin/traits/SavableTrait$Companion\n+ 3 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder\n+ 4 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n+ 5 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeProvider\n+ 6 UntypedAsyncFunctionComponent.kt\nexpo/modules/kotlin/functions/UntypedAsyncFunctionComponentKt\n+ 7 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n*L\n1#1,58:1\n30#2,4:59\n40#2:124\n259#3:63\n262#3,3:121\n182#4,7:64\n168#4:71\n158#4,8:74\n189#4:82\n168#4:83\n158#4,8:84\n143#5,2:72\n13#6,6:92\n19#6,19:102\n8#7,4:98\n*S KotlinDebug\n*F\n+ 1 SavableTrait.kt\nexpo/modules/kotlin/traits/SavableTrait$Companion$create$1\n*L\n46#1:59,4\n46#1:124\n46#1:63\n46#1:121,3\n46#1:64,7\n46#1:71\n46#1:74,8\n46#1:82\n46#1:83\n46#1:84,8\n46#1:72,2\n46#1:92,6\n46#1:102,19\n46#1:98,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0010\u0008\u0000\u0010\u0002\u0018\u0001*\u0008\u0012\u0004\u0012\u00020\u00040\u0003\"\u0004\u0008\u0001\u0010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\n\u00a2\u0006\u0002\u0008\u0008"
    }
    d2 = {
        "<anonymous>",
        "Lexpo/modules/kotlin/objects/ObjectDefinitionData;",
        "T",
        "Lexpo/modules/kotlin/sharedobjects/SharedRef;",
        "Landroid/graphics/Bitmap;",
        "InputType",
        "appContext",
        "Lexpo/modules/kotlin/AppContext;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0xb0
.end annotation


# static fields
.field public static final INSTANCE:Lexpo/modules/kotlin/traits/SavableTrait$Companion$create$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/kotlin/traits/SavableTrait$Companion$create$1;

    invoke-direct {v0}, Lexpo/modules/kotlin/traits/SavableTrait$Companion$create$1;-><init>()V

    sput-object v0, Lexpo/modules/kotlin/traits/SavableTrait$Companion$create$1;->INSTANCE:Lexpo/modules/kotlin/traits/SavableTrait$Companion$create$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lexpo/modules/kotlin/AppContext;)Lexpo/modules/kotlin/objects/ObjectDefinitionData;
    .locals 24
    .param p1, "appContext"    # Lexpo/modules/kotlin/AppContext;

    const-string v0, "appContext"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    sget-object v0, Lexpo/modules/kotlin/traits/SavableTrait;->Companion:Lexpo/modules/kotlin/traits/SavableTrait$Companion;

    .local v0, "this_$iv":Lexpo/modules/kotlin/traits/SavableTrait$Companion;
    const/4 v2, 0x0

    .line 59
    .local v2, "$i$f$createImplementation":I
    invoke-static/range {p1 .. p1}, Lexpo/modules/kotlin/UtilsKt;->weak(Ljava/lang/Object;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    .line 61
    .local v3, "appContextWeakRef$iv":Ljava/lang/ref/WeakReference;
    new-instance v4, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6, v5}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;-><init>(Lexpo/modules/kotlin/types/TypeConverterProvider;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v5, v4

    check-cast v5, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    .local v5, "$this$createImplementation_u24lambda_u241$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    const/4 v7, 0x0

    .line 62
    .local v7, "$i$a$-apply-SavableTrait$Companion$createImplementation$1$iv":I
    const-string v8, "saveAsync"

    .local v8, "name$iv$iv":Ljava/lang/String;
    move-object v9, v5

    .local v9, "this_$iv$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    const/4 v10, 0x0

    .line 63
    .local v10, "$i$f$AsyncFunction":I
    invoke-virtual {v9}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v11

    .line 64
    .local v11, "converterProvider$iv$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 65
    const/4 v12, 0x4

    const-string v13, "T"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v14, Ljava/lang/Object;

    check-cast v14, Ljava/lang/Class;

    .line 64
    .local v14, "p0$iv$iv$iv":Ljava/lang/Class;
    nop

    .line 66
    const-class v15, Lexpo/modules/kotlin/traits/SavableTrait$Companion$SavableBitmapOptions;

    check-cast v15, Ljava/lang/Class;

    .line 64
    .local v15, "p1$iv$iv$iv":Ljava/lang/Class;
    const/16 v16, 0x0

    .line 70
    .local v16, "$i$f$toArgsArray":I
    const/4 v6, 0x2

    new-array v6, v6, [Lexpo/modules/kotlin/types/AnyType;

    const/16 v17, 0x0

    .line 71
    .local v17, "$i$f$toAnyType":I
    sget-object v18, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v18, "this_$iv$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/16 v19, 0x0

    .line 72
    .local v19, "$i$f$cachedAnyType":I
    move-object/from16 v20, v0

    .end local v0    # "this_$iv":Lexpo/modules/kotlin/traits/SavableTrait$Companion;
    .local v20, "this_$iv":Lexpo/modules/kotlin/traits/SavableTrait$Companion;
    new-instance v0, Lkotlin/Pair;

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v21, Ljava/lang/Object;

    invoke-static/range {v21 .. v21}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    const/4 v1, 0x3

    invoke-static {v1, v13}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const/4 v1, 0x0

    move/from16 v23, v2

    .end local v2    # "$i$f$createImplementation":I
    .local v23, "$i$f$createImplementation":I
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v12, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 73
    .local v0, "key$iv$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual/range {v18 .. v18}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/kotlin/types/AnyType;

    .line 71
    .end local v0    # "key$iv$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v18    # "this_$iv$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v19    # "$i$f$cachedAnyType":I
    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v0, Lexpo/modules/kotlin/traits/SavableTrait$Companion$create$1$invoke$$inlined$createImplementation$1;->INSTANCE:Lexpo/modules/kotlin/traits/SavableTrait$Companion$create$1$invoke$$inlined$createImplementation$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    .local v0, "$this$toAnyType$iv$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v2, 0x0

    .line 74
    .local v2, "$i$f$toAnyType":I
    new-instance v12, Lexpo/modules/kotlin/types/AnyType;

    .line 75
    new-instance v1, Lexpo/modules/kotlin/types/LazyKType;

    move/from16 v19, v2

    const/4 v2, 0x4

    .end local v2    # "$i$f$toAnyType":I
    .local v19, "$i$f$toAnyType":I
    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v2, Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 77
    move-object/from16 v22, v5

    const/4 v5, 0x3

    .end local v5    # "$this$createImplementation_u24lambda_u241$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .local v22, "$this$createImplementation_u24lambda_u241$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    invoke-static {v5, v13}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    .line 78
    nop

    .line 75
    const/4 v5, 0x0

    invoke-direct {v1, v2, v5, v0}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v1, Lkotlin/reflect/KType;

    .line 80
    nop

    .line 74
    invoke-direct {v12, v1, v11}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 81
    move-object v2, v12

    goto :goto_0

    .line 71
    .end local v0    # "$this$toAnyType$iv$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v19    # "$i$f$toAnyType":I
    .end local v22    # "$this$createImplementation_u24lambda_u241$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v5    # "$this$createImplementation_u24lambda_u241$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    :cond_0
    move-object/from16 v22, v5

    .end local v5    # "$this$createImplementation_u24lambda_u241$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v22    # "$this$createImplementation_u24lambda_u241$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    :goto_0
    nop

    .end local v17    # "$i$f$toAnyType":I
    const/4 v0, 0x0

    aput-object v2, v6, v0

    .line 70
    nop

    .line 82
    const/4 v1, 0x0

    .line 83
    .local v1, "$i$f$toAnyType":I
    sget-object v2, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v2, "this_$iv$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v5, 0x0

    .line 72
    .local v5, "$i$f$cachedAnyType":I
    new-instance v12, Lkotlin/Pair;

    const-class v13, Lexpo/modules/kotlin/traits/SavableTrait$Companion$SavableBitmapOptions;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    move/from16 v17, v1

    .end local v1    # "$i$f$toAnyType":I
    .restart local v17    # "$i$f$toAnyType":I
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v12, v13, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v12

    .line 73
    .local v1, "key$iv$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v2}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lexpo/modules/kotlin/types/AnyType;

    .line 83
    .end local v1    # "key$iv$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v2    # "this_$iv$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v5    # "$i$f$cachedAnyType":I
    if-nez v12, :cond_1

    sget-object v1, Lexpo/modules/kotlin/traits/SavableTrait$Companion$create$1$invoke$$inlined$createImplementation$2;->INSTANCE:Lexpo/modules/kotlin/traits/SavableTrait$Companion$create$1$invoke$$inlined$createImplementation$2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .local v1, "$this$toAnyType$iv$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v2, 0x0

    .line 84
    .local v2, "$i$f$toAnyType":I
    new-instance v12, Lexpo/modules/kotlin/types/AnyType;

    .line 85
    new-instance v5, Lexpo/modules/kotlin/types/LazyKType;

    const-class v13, Lexpo/modules/kotlin/traits/SavableTrait$Companion$SavableBitmapOptions;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    .line 87
    nop

    .line 88
    nop

    .line 85
    invoke-direct {v5, v13, v0, v1}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v5, Lkotlin/reflect/KType;

    .line 90
    nop

    .line 84
    invoke-direct {v12, v5, v11}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 91
    nop

    .line 83
    .end local v1    # "$this$toAnyType$iv$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "$i$f$toAnyType":I
    :cond_1
    const/4 v0, 0x1

    .end local v17    # "$i$f$toAnyType":I
    aput-object v12, v6, v0

    .line 70
    nop

    .line 69
    nop

    .line 63
    .end local v11    # "converterProvider$iv$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v14    # "p0$iv$iv$iv":Ljava/lang/Class;
    .end local v15    # "p1$iv$iv$iv":Ljava/lang/Class;
    .end local v16    # "$i$f$toArgsArray":I
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lexpo/modules/kotlin/traits/SavableTrait$Companion$create$1$invoke$$inlined$createImplementation$3;

    invoke-direct {v0, v3}, Lexpo/modules/kotlin/traits/SavableTrait$Companion$create$1$invoke$$inlined$createImplementation$3;-><init>(Ljava/lang/ref/WeakReference;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .local v0, "body$iv$iv$iv":Lkotlin/jvm/functions/Function1;
    move-object v1, v6

    .local v1, "desiredArgsTypes$iv$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/4 v2, 0x0

    .line 92
    .local v2, "$i$f$createAsyncFunctionComponent":I
    const-class v5, Lkotlin/Unit;

    .line 95
    move-object v6, v5

    check-cast v6, Ljava/lang/Class;

    .line 96
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 97
    const/4 v5, 0x0

    .line 98
    .local v5, "$i$f$enforceType":I
    nop

    .line 101
    nop

    .line 102
    .end local v5    # "$i$f$enforceType":I
    new-instance v5, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v5, v8, v1, v0}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_1

    .line 104
    :cond_2
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 105
    const/4 v5, 0x0

    .line 98
    .restart local v5    # "$i$f$enforceType":I
    nop

    .line 101
    nop

    .line 106
    .end local v5    # "$i$f$enforceType":I
    new-instance v5, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v5, v8, v1, v0}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_1

    .line 108
    :cond_3
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 109
    const/4 v5, 0x0

    .line 98
    .restart local v5    # "$i$f$enforceType":I
    nop

    .line 101
    nop

    .line 110
    .end local v5    # "$i$f$enforceType":I
    new-instance v5, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v5, v8, v1, v0}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_1

    .line 112
    :cond_4
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 113
    const/4 v5, 0x0

    .line 98
    .restart local v5    # "$i$f$enforceType":I
    nop

    .line 101
    nop

    .line 114
    .end local v5    # "$i$f$enforceType":I
    new-instance v5, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v5, v8, v1, v0}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_1

    .line 116
    :cond_5
    const-class v6, Ljava/lang/String;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 117
    const/4 v5, 0x0

    .line 98
    .restart local v5    # "$i$f$enforceType":I
    nop

    .line 101
    nop

    .line 118
    .end local v5    # "$i$f$enforceType":I
    new-instance v5, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v5, v8, v1, v0}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_1

    .line 120
    :cond_6
    new-instance v5, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v5, v8, v1, v0}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 95
    :goto_1
    nop

    .line 121
    .end local v0    # "body$iv$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v1    # "desiredArgsTypes$iv$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v2    # "$i$f$createAsyncFunctionComponent":I
    move-object v0, v5

    check-cast v0, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .local v0, "it$iv$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v1, 0x0

    .line 122
    .local v1, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$9$iv$iv":I
    invoke-virtual {v9}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    nop

    .line 121
    .end local v0    # "it$iv$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v1    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$9$iv$iv":I
    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 63
    nop

    .line 124
    .end local v8    # "name$iv$iv":Ljava/lang/String;
    .end local v9    # "this_$iv$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v10    # "$i$f$AsyncFunction":I
    nop

    .line 61
    .end local v7    # "$i$a$-apply-SavableTrait$Companion$createImplementation$1$iv":I
    .end local v22    # "$this$createImplementation_u24lambda_u241$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    move-object v0, v4

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    .line 124
    invoke-virtual {v4}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->buildObject()Lexpo/modules/kotlin/objects/ObjectDefinitionData;

    move-result-object v0

    .line 61
    nop

    .line 46
    .end local v3    # "appContextWeakRef$iv":Ljava/lang/ref/WeakReference;
    .end local v20    # "this_$iv":Lexpo/modules/kotlin/traits/SavableTrait$Companion;
    .end local v23    # "$i$f$createImplementation":I
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 45
    move-object v0, p1

    check-cast v0, Lexpo/modules/kotlin/AppContext;

    invoke-virtual {p0, v0}, Lexpo/modules/kotlin/traits/SavableTrait$Companion$create$1;->invoke(Lexpo/modules/kotlin/AppContext;)Lexpo/modules/kotlin/objects/ObjectDefinitionData;

    move-result-object v0

    return-object v0
.end method
