.class public final Lexpo/modules/kotlin/traits/SavableTrait$Companion;
.super Ljava/lang/Object;
.source "SavableTrait.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/kotlin/traits/SavableTrait;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/kotlin/traits/SavableTrait$Companion$SavableBitmapOptions;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSavableTrait.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SavableTrait.kt\nexpo/modules/kotlin/traits/SavableTrait$Companion\n+ 2 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder\n+ 3 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n+ 4 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeProvider\n+ 5 UntypedAsyncFunctionComponent.kt\nexpo/modules/kotlin/functions/UntypedAsyncFunctionComponentKt\n+ 6 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n*L\n1#1,58:1\n259#2:59\n262#2,3:117\n182#3,7:60\n168#3:67\n158#3,8:70\n189#3:78\n168#3:79\n158#3,8:80\n143#4,2:68\n13#5,6:88\n19#5,19:98\n8#6,4:94\n*S KotlinDebug\n*F\n+ 1 SavableTrait.kt\nexpo/modules/kotlin/traits/SavableTrait$Companion\n*L\n33#1:59\n33#1:117,3\n33#1:60,7\n33#1:67\n33#1:70,8\n33#1:78\n33#1:79\n33#1:80,8\n33#1:68,2\n33#1:88,6\n33#1:98,19\n33#1:94,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001:\u0001\u0019B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J1\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0010\u0008\u0001\u0010\u0005\u0018\u0001*\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\tH\u0086\u0008Js\u0010\n\u001a\u00020\u000b\"\u0006\u0008\u0001\u0010\u000c\u0018\u0001\"\u0006\u0008\u0002\u0010\r\u0018\u00012\u0006\u0010\u000e\u001a\u00020\u000f2M\u0008\u0004\u0010\u0010\u001aG\u0012\u0013\u0012\u00110\u0012\u00a2\u0006\u000c\u0008\u0013\u0012\u0008\u0008\u0014\u0012\u0004\u0008\u0008(\u0015\u0012\u0013\u0012\u0011H\u000c\u00a2\u0006\u000c\u0008\u0013\u0012\u0008\u0008\u0014\u0012\u0004\u0008\u0008(\u0016\u0012\u0013\u0012\u0011H\r\u00a2\u0006\u000c\u0008\u0013\u0012\u0008\u0008\u0014\u0012\u0004\u0008\u0008(\u0017\u0012\u0004\u0012\u00020\u00180\u0011H\u0081\u0008\u00f8\u0001\u0000\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u001a"
    }
    d2 = {
        "Lexpo/modules/kotlin/traits/SavableTrait$Companion;",
        "",
        "()V",
        "create",
        "Lexpo/modules/kotlin/traits/SavableTrait;",
        "T",
        "Lexpo/modules/kotlin/sharedobjects/SharedRef;",
        "Landroid/graphics/Bitmap;",
        "klass",
        "Lkotlin/reflect/KClass;",
        "createImplementation",
        "Lexpo/modules/kotlin/objects/ObjectDefinitionData;",
        "InputType",
        "OptionType",
        "appContext",
        "Lexpo/modules/kotlin/AppContext;",
        "saveToFile",
        "Lkotlin/Function3;",
        "Ljava/io/File;",
        "Lkotlin/ParameterName;",
        "name",
        "file",
        "input",
        "options",
        "",
        "SavableBitmapOptions",
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
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lexpo/modules/kotlin/traits/SavableTrait$Companion;-><init>()V

    return-void
.end method

.method public static synthetic create$default(Lexpo/modules/kotlin/traits/SavableTrait$Companion;Lkotlin/reflect/KClass;ILjava/lang/Object;)Lexpo/modules/kotlin/traits/SavableTrait;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/kotlin/traits/SavableTrait$Companion;
    .param p1, "klass"    # Lkotlin/reflect/KClass;

    .line 43
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    const-string p3, "T"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class p2, Lexpo/modules/kotlin/sharedobjects/SharedRef;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    :cond_0
    const-string p2, "klass"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 44
    .local p2, "$i$f$create":I
    new-instance p3, Lexpo/modules/kotlin/traits/SavableTrait;

    .line 45
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v0, Lexpo/modules/kotlin/traits/SavableTrait$Companion$create$1;->INSTANCE:Lexpo/modules/kotlin/traits/SavableTrait$Companion$create$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 44
    invoke-direct {p3, v0}, Lexpo/modules/kotlin/traits/SavableTrait;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 55
    return-object p3
.end method


# virtual methods
.method public final synthetic create(Lkotlin/reflect/KClass;)Lexpo/modules/kotlin/traits/SavableTrait;
    .locals 3
    .param p1, "klass"    # Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lexpo/modules/kotlin/sharedobjects/SharedRef<",
            "Landroid/graphics/Bitmap;",
            ">;>(",
            "Lkotlin/reflect/KClass<",
            "TT;>;)",
            "Lexpo/modules/kotlin/traits/SavableTrait<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "klass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 44
    .local v0, "$i$f$create":I
    new-instance v1, Lexpo/modules/kotlin/traits/SavableTrait;

    .line 45
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v2, Lexpo/modules/kotlin/traits/SavableTrait$Companion$create$1;->INSTANCE:Lexpo/modules/kotlin/traits/SavableTrait$Companion$create$1;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 44
    invoke-direct {v1, v2}, Lexpo/modules/kotlin/traits/SavableTrait;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 55
    return-object v1
.end method

.method public final synthetic createImplementation(Lexpo/modules/kotlin/AppContext;Lkotlin/jvm/functions/Function3;)Lexpo/modules/kotlin/objects/ObjectDefinitionData;
    .locals 25
    .param p1, "appContext"    # Lexpo/modules/kotlin/AppContext;
    .param p2, "saveToFile"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<InputType:",
            "Ljava/lang/Object;",
            "OptionType:",
            "Ljava/lang/Object;",
            ">(",
            "Lexpo/modules/kotlin/AppContext;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/io/File;",
            "-TInputType;-TOptionType;",
            "Lkotlin/Unit;",
            ">;)",
            "Lexpo/modules/kotlin/objects/ObjectDefinitionData;"
        }
    .end annotation

    move-object/from16 v0, p2

    const-string v1, "appContext"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "saveToFile"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 30
    .local v1, "$i$f$createImplementation":I
    invoke-static/range {p1 .. p1}, Lexpo/modules/kotlin/UtilsKt;->weak(Ljava/lang/Object;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    .line 32
    .local v3, "appContextWeakRef":Ljava/lang/ref/WeakReference;
    new-instance v4, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6, v5}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;-><init>(Lexpo/modules/kotlin/types/TypeConverterProvider;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v5, v4

    check-cast v5, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    .local v5, "$this$createImplementation_u24lambda_u241":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    const/4 v7, 0x0

    .line 33
    .local v7, "$i$a$-apply-SavableTrait$Companion$createImplementation$1":I
    const-string v8, "saveAsync"

    .local v8, "name$iv":Ljava/lang/String;
    move-object v9, v5

    .local v9, "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    const/4 v10, 0x0

    .line 59
    .local v10, "$i$f$AsyncFunction":I
    invoke-virtual {v9}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v11

    .line 60
    .local v11, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 61
    const/4 v12, 0x4

    const-string v13, "InputType"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v14, Ljava/lang/Object;

    check-cast v14, Ljava/lang/Class;

    .line 60
    .local v14, "p0$iv$iv":Ljava/lang/Class;
    nop

    .line 62
    const-string v15, "OptionType"

    invoke-static {v12, v15}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v16, Ljava/lang/Object;

    check-cast v16, Ljava/lang/Class;

    .line 60
    .local v16, "p1$iv$iv":Ljava/lang/Class;
    const/16 v17, 0x0

    .line 66
    .local v17, "$i$f$toArgsArray":I
    const/4 v6, 0x2

    new-array v6, v6, [Lexpo/modules/kotlin/types/AnyType;

    const/16 v18, 0x0

    .line 67
    .local v18, "$i$f$toAnyType":I
    sget-object v19, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v19, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/16 v20, 0x0

    .line 68
    .local v20, "$i$f$cachedAnyType":I
    move/from16 v21, v1

    .end local v1    # "$i$f$createImplementation":I
    .local v21, "$i$f$createImplementation":I
    new-instance v1, Lkotlin/Pair;

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v22, Ljava/lang/Object;

    invoke-static/range {v22 .. v22}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    const/4 v2, 0x3

    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v23, v5

    .end local v5    # "$this$createImplementation_u24lambda_u241":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .local v23, "$this$createImplementation_u24lambda_u241":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v12, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    .local v1, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual/range {v19 .. v19}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lexpo/modules/kotlin/types/AnyType;

    .line 67
    .end local v1    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v19    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v20    # "$i$f$cachedAnyType":I
    if-nez v5, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v1, Lexpo/modules/kotlin/traits/SavableTrait$Companion$createImplementation$$inlined$apply$lambda$1;->INSTANCE:Lexpo/modules/kotlin/traits/SavableTrait$Companion$createImplementation$$inlined$apply$lambda$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .local v1, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v5, 0x0

    .line 70
    .local v5, "$i$f$toAnyType":I
    new-instance v12, Lexpo/modules/kotlin/types/AnyType;

    .line 71
    new-instance v2, Lexpo/modules/kotlin/types/LazyKType;

    move/from16 v20, v5

    const/4 v5, 0x4

    .end local v5    # "$i$f$toAnyType":I
    .local v20, "$i$f$toAnyType":I
    invoke-static {v5, v13}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v5, Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    .line 73
    move/from16 v24, v7

    const/4 v7, 0x3

    .end local v7    # "$i$a$-apply-SavableTrait$Companion$createImplementation$1":I
    .local v24, "$i$a$-apply-SavableTrait$Companion$createImplementation$1":I
    invoke-static {v7, v13}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    .line 74
    nop

    .line 71
    const/4 v7, 0x0

    invoke-direct {v2, v5, v7, v1}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/reflect/KType;

    .line 76
    nop

    .line 70
    invoke-direct {v12, v2, v11}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 77
    move-object v5, v12

    goto :goto_0

    .line 67
    .end local v1    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v20    # "$i$f$toAnyType":I
    .end local v24    # "$i$a$-apply-SavableTrait$Companion$createImplementation$1":I
    .restart local v7    # "$i$a$-apply-SavableTrait$Companion$createImplementation$1":I
    :cond_0
    move/from16 v24, v7

    .end local v7    # "$i$a$-apply-SavableTrait$Companion$createImplementation$1":I
    .restart local v24    # "$i$a$-apply-SavableTrait$Companion$createImplementation$1":I
    :goto_0
    nop

    .end local v18    # "$i$f$toAnyType":I
    const/4 v1, 0x0

    aput-object v5, v6, v1

    .line 66
    nop

    .line 78
    const/4 v1, 0x0

    .line 79
    .local v1, "$i$f$toAnyType":I
    sget-object v2, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v2, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v5, 0x0

    .line 68
    .local v5, "$i$f$cachedAnyType":I
    new-instance v7, Lkotlin/Pair;

    const/4 v12, 0x4

    invoke-static {v12, v15}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v12, Ljava/lang/Object;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    const/4 v13, 0x3

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    move/from16 v18, v1

    const/4 v13, 0x0

    .end local v1    # "$i$f$toAnyType":I
    .restart local v18    # "$i$f$toAnyType":I
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v7, v12, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v7

    .line 69
    .local v1, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v2}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lexpo/modules/kotlin/types/AnyType;

    .line 79
    .end local v1    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v2    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v5    # "$i$f$cachedAnyType":I
    if-nez v7, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v1, Lexpo/modules/kotlin/traits/SavableTrait$Companion$createImplementation$$inlined$apply$lambda$2;->INSTANCE:Lexpo/modules/kotlin/traits/SavableTrait$Companion$createImplementation$$inlined$apply$lambda$2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .local v1, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v2, 0x0

    .line 80
    .local v2, "$i$f$toAnyType":I
    new-instance v7, Lexpo/modules/kotlin/types/AnyType;

    .line 81
    new-instance v5, Lexpo/modules/kotlin/types/LazyKType;

    const/4 v12, 0x4

    invoke-static {v12, v15}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v12, Ljava/lang/Object;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    .line 83
    const/4 v13, 0x3

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    .line 84
    nop

    .line 81
    const/4 v13, 0x0

    invoke-direct {v5, v12, v13, v1}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v5, Lkotlin/reflect/KType;

    .line 86
    nop

    .line 80
    invoke-direct {v7, v5, v11}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 87
    nop

    .line 79
    .end local v1    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "$i$f$toAnyType":I
    :cond_1
    const/4 v1, 0x1

    .end local v18    # "$i$f$toAnyType":I
    aput-object v7, v6, v1

    .line 66
    nop

    .line 65
    nop

    .line 59
    .end local v11    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v14    # "p0$iv$iv":Ljava/lang/Class;
    .end local v16    # "p1$iv$iv":Ljava/lang/Class;
    .end local v17    # "$i$f$toArgsArray":I
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v1, Lexpo/modules/kotlin/traits/SavableTrait$Companion$createImplementation$lambda$1$$inlined$AsyncFunction$3;

    invoke-direct {v1, v3, v0}, Lexpo/modules/kotlin/traits/SavableTrait$Companion$createImplementation$lambda$1$$inlined$AsyncFunction$3;-><init>(Ljava/lang/ref/WeakReference;Lkotlin/jvm/functions/Function3;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .local v1, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    move-object v2, v6

    .local v2, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/4 v5, 0x0

    .line 88
    .local v5, "$i$f$createAsyncFunctionComponent":I
    const-class v6, Lkotlin/Unit;

    .line 91
    move-object v7, v6

    check-cast v7, Ljava/lang/Class;

    .line 92
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 93
    const/4 v6, 0x0

    .line 94
    .local v6, "$i$f$enforceType":I
    nop

    .line 97
    nop

    .line 98
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v6, v8, v2, v1}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_1

    .line 100
    :cond_2
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 101
    const/4 v6, 0x0

    .line 94
    .restart local v6    # "$i$f$enforceType":I
    nop

    .line 97
    nop

    .line 102
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v6, v8, v2, v1}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_1

    .line 104
    :cond_3
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 105
    const/4 v6, 0x0

    .line 94
    .restart local v6    # "$i$f$enforceType":I
    nop

    .line 97
    nop

    .line 106
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v6, v8, v2, v1}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_1

    .line 108
    :cond_4
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 109
    const/4 v6, 0x0

    .line 94
    .restart local v6    # "$i$f$enforceType":I
    nop

    .line 97
    nop

    .line 110
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v6, v8, v2, v1}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_1

    .line 112
    :cond_5
    const-class v7, Ljava/lang/String;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 113
    const/4 v6, 0x0

    .line 94
    .restart local v6    # "$i$f$enforceType":I
    nop

    .line 97
    nop

    .line 114
    .end local v6    # "$i$f$enforceType":I
    new-instance v6, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v6, v8, v2, v1}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_1

    .line 116
    :cond_6
    new-instance v6, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v6, v8, v2, v1}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 91
    :goto_1
    nop

    .line 117
    .end local v1    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v2    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v5    # "$i$f$createAsyncFunctionComponent":I
    move-object v1, v6

    check-cast v1, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .local v1, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v2, 0x0

    .line 118
    .local v2, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$9$iv":I
    invoke-virtual {v9}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    nop

    .line 117
    .end local v1    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v2    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$9$iv":I
    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 59
    nop

    .line 40
    .end local v8    # "name$iv":Ljava/lang/String;
    .end local v9    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v10    # "$i$f$AsyncFunction":I
    nop

    .line 32
    .end local v23    # "$this$createImplementation_u24lambda_u241":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v24    # "$i$a$-apply-SavableTrait$Companion$createImplementation$1":I
    move-object v1, v4

    check-cast v1, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    .line 40
    invoke-virtual {v4}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->buildObject()Lexpo/modules/kotlin/objects/ObjectDefinitionData;

    move-result-object v1

    .line 32
    return-object v1
.end method
