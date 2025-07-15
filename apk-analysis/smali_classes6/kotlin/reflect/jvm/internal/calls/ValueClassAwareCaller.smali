.class public final Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;
.super Ljava/lang/Object;
.source "ValueClassAwareCaller.kt"

# interfaces
.implements Lkotlin/reflect/jvm/internal/calls/Caller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$BoxUnboxData;,
        Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$MultiFieldValueClassPrimaryConstructorCaller;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Ljava/lang/reflect/Member;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/reflect/jvm/internal/calls/Caller<",
        "TM;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nValueClassAwareCaller.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ValueClassAwareCaller.kt\nkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,363:1\n1549#2:364\n1620#2,3:365\n1747#2,3:374\n1620#2,3:377\n37#3,2:368\n37#3,2:372\n37#3,2:380\n1#4:370\n26#5:371\n*S KotlinDebug\n*F\n+ 1 ValueClassAwareCaller.kt\nkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller\n*L\n43#1:364\n43#1:365,3\n156#1:374,3\n174#1:377,3\n43#1:368,2\n145#1:372,2\n182#1:380,2\n79#1:371\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000*\u000c\u0008\u0000\u0010\u0001 \u0001*\u0004\u0018\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003:\u0002%&B#\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u001b\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\n\u0010 \u001a\u0006\u0012\u0002\u0008\u00030\u001bH\u0016\u00a2\u0006\u0002\u0010!J\u000e\u0010\"\u001a\u00020\u001c2\u0006\u0010#\u001a\u00020$R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\u00028\u0000X\u0096\u0004\u00a2\u0006\n\n\u0002\u0010\u0011\u001a\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00138VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0017\u001a\u00020\u00148VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001bX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u001d\u00a8\u0006\'"
    }
    d2 = {
        "Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;",
        "M",
        "Ljava/lang/reflect/Member;",
        "Lkotlin/reflect/jvm/internal/calls/Caller;",
        "descriptor",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;",
        "oldCaller",
        "isDefault",
        "",
        "(Lorg/jetbrains/kotlin/descriptors/CallableMemberDescriptor;Lkotlin/reflect/jvm/internal/calls/Caller;Z)V",
        "caller",
        "data",
        "Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$BoxUnboxData;",
        "hasMfvcParameters",
        "member",
        "getMember",
        "()Ljava/lang/reflect/Member;",
        "Ljava/lang/reflect/Member;",
        "parameterTypes",
        "",
        "Ljava/lang/reflect/Type;",
        "getParameterTypes",
        "()Ljava/util/List;",
        "returnType",
        "getReturnType",
        "()Ljava/lang/reflect/Type;",
        "slices",
        "",
        "Lkotlin/ranges/IntRange;",
        "[Lkotlin/ranges/IntRange;",
        "call",
        "",
        "args",
        "([Ljava/lang/Object;)Ljava/lang/Object;",
        "getRealSlicesOfParameters",
        "index",
        "",
        "BoxUnboxData",
        "MultiFieldValueClassPrimaryConstructorCaller",
        "kotlin-reflection"
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
.field private final caller:Lkotlin/reflect/jvm/internal/calls/Caller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/calls/Caller<",
            "TM;>;"
        }
    .end annotation
.end field

.field private final data:Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$BoxUnboxData;

.field private final hasMfvcParameters:Z

.field private final isDefault:Z

.field private final member:Ljava/lang/reflect/Member;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field

.field private final slices:[Lkotlin/ranges/IntRange;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/reflect/jvm/internal/calls/Caller;Z)V
    .locals 18
    .param p1, "descriptor"    # Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;
    .param p2, "oldCaller"    # Lkotlin/reflect/jvm/internal/calls/Caller;
    .param p3, "isDefault"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;",
            "Lkotlin/reflect/jvm/internal/calls/Caller<",
            "+TM;>;Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "descriptor"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "oldCaller"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    move/from16 v3, p3

    iput-boolean v3, v0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->isDefault:Z

    .line 39
    instance-of v4, v2, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundStatic;

    const/4 v6, 0x0

    if-eqz v4, :cond_4

    .line 40
    invoke-interface/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;->getExtensionReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-interface/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;->getDispatchReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;

    move-result-object v4

    :cond_0
    if-eqz v4, :cond_1

    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 41
    .local v4, "receiverType":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    :goto_0
    if-eqz v4, :cond_3

    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/resolve/InlineClassesUtilsKt;->needsMfvcFlattening(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 42
    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutionKt;->asSimpleType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v7

    invoke-static {v7}, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCallerKt;->getMfvcUnboxMethods(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 43
    .local v7, "unboxMethods":Ljava/util/List;
    move-object v8, v7

    check-cast v8, Ljava/lang/Iterable;

    .local v8, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 364
    .local v9, "$i$f$map":I
    new-instance v10, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v8, v11}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v10, Ljava/util/Collection;

    .local v10, "destination$iv$iv":Ljava/util/Collection;
    move-object v11, v8

    .local v11, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v12, 0x0

    .line 365
    .local v12, "$i$f$mapTo":I
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 366
    .local v14, "item$iv$iv":Ljava/lang/Object;
    move-object v15, v14

    check-cast v15, Ljava/lang/reflect/Method;

    .local v15, "it":Ljava/lang/reflect/Method;
    const/16 v16, 0x0

    .line 43
    .local v16, "$i$a$-map-ValueClassAwareCaller$caller$boundReceiverComponents$1":I
    move-object/from16 v17, v2

    check-cast v17, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundStatic;

    invoke-virtual/range {v17 .. v17}, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundStatic;->getBoundReceiver$kotlin_reflection()Ljava/lang/Object;

    move-result-object v5

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v15, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 366
    .end local v15    # "it":Ljava/lang/reflect/Method;
    .end local v16    # "$i$a$-map-ValueClassAwareCaller$caller$boundReceiverComponents$1":I
    invoke-interface {v10, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move/from16 v3, p3

    goto :goto_1

    .line 367
    .end local v14    # "item$iv$iv":Ljava/lang/Object;
    :cond_2
    nop

    .end local v10    # "destination$iv$iv":Ljava/util/Collection;
    .end local v11    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v12    # "$i$f$mapTo":I
    move-object v3, v10

    check-cast v3, Ljava/util/List;

    .line 364
    nop

    .end local v8    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$map":I
    check-cast v3, Ljava/util/Collection;

    .line 43
    nop

    .local v3, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v5, 0x0

    .line 368
    .local v5, "$i$f$toTypedArray":I
    move-object v8, v3

    .line 369
    .local v8, "thisCollection$iv":Ljava/util/Collection;
    new-array v9, v6, [Ljava/lang/Object;

    invoke-interface {v8, v9}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .line 43
    .end local v3    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v5    # "$i$f$toTypedArray":I
    .end local v8    # "thisCollection$iv":Ljava/util/Collection;
    nop

    .line 45
    .local v3, "boundReceiverComponents":[Ljava/lang/Object;
    new-instance v5, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundStaticMultiFieldValueClass;

    move-object v8, v2

    check-cast v8, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundStatic;

    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundStatic;->getMember()Ljava/lang/reflect/Member;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Method;

    invoke-direct {v5, v8, v3}, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundStaticMultiFieldValueClass;-><init>(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    check-cast v5, Lkotlin/reflect/jvm/internal/calls/Caller;

    .end local v3    # "boundReceiverComponents":[Ljava/lang/Object;
    .end local v7    # "unboxMethods":Ljava/util/List;
    goto :goto_3

    .line 47
    :cond_3
    nop

    .end local v4    # "receiverType":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    goto :goto_2

    .line 50
    :cond_4
    nop

    .line 39
    :goto_2
    move-object v5, v2

    :goto_3
    iput-object v5, v0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->caller:Lkotlin/reflect/jvm/internal/calls/Caller;

    .line 53
    iget-object v3, v0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->caller:Lkotlin/reflect/jvm/internal/calls/Caller;

    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/calls/Caller;->getMember()Ljava/lang/reflect/Member;

    move-result-object v3

    iput-object v3, v0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->member:Ljava/lang/reflect/Member;

    .line 64
    move-object v3, v0

    check-cast v3, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;

    .local v3, "$this$data_u24lambda_u243":Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;
    const/4 v4, 0x0

    .line 65
    .local v4, "$i$a$-run-ValueClassAwareCaller$data$1":I
    invoke-interface/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;->getReturnType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 67
    .local v5, "returnType":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    instance-of v7, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    const/4 v8, 0x1

    if-eqz v7, :cond_6

    move-object v7, v1

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    invoke-interface {v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;->isSuspend()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 68
    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/resolve/InlineClassesUtilsKt;->substitutedUnderlyingType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 370
    .local v7, "it":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    const/4 v9, 0x0

    .line 68
    .local v9, "$i$a$-let-ValueClassAwareCaller$data$1$box$1":I
    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->isPrimitiveType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v7

    .end local v7    # "it":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .end local v9    # "$i$a$-let-ValueClassAwareCaller$data$1$box$1":I
    if-ne v7, v8, :cond_5

    move v7, v8

    goto :goto_4

    :cond_5
    move v7, v6

    :goto_4
    if-eqz v7, :cond_6

    .line 71
    const/4 v7, 0x0

    goto :goto_5

    .line 73
    :cond_6
    invoke-static {v5}, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCallerKt;->access$toInlineClass(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/lang/Class;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-static {v7, v1}, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCallerKt;->access$getBoxMethod(Ljava/lang/Class;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Ljava/lang/reflect/Method;

    move-result-object v7

    goto :goto_5

    :cond_7
    const/4 v7, 0x0

    .line 66
    :goto_5
    nop

    .line 76
    .local v7, "box":Ljava/lang/reflect/Method;
    move-object v9, v1

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;

    invoke-static {v9}, Lkotlin/reflect/jvm/internal/impl/resolve/InlineClassesUtilsKt;->isGetterOfUnderlyingPropertyOfValueClass(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 79
    new-instance v9, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$BoxUnboxData;

    sget-object v10, Lkotlin/ranges/IntRange;->Companion:Lkotlin/ranges/IntRange$Companion;

    invoke-virtual {v10}, Lkotlin/ranges/IntRange$Companion;->getEMPTY()Lkotlin/ranges/IntRange;

    move-result-object v10

    const/4 v11, 0x0

    .line 371
    .local v11, "$i$f$emptyArray":I
    new-array v11, v6, [Ljava/util/List;

    .line 79
    .end local v11    # "$i$f$emptyArray":I
    invoke-direct {v9, v10, v11, v7}, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$BoxUnboxData;-><init>(Lkotlin/ranges/IntRange;[Ljava/util/List;Ljava/lang/reflect/Method;)V

    goto/16 :goto_10

    .line 82
    :cond_8
    nop

    .line 83
    iget-object v9, v3, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->caller:Lkotlin/reflect/jvm/internal/calls/Caller;

    instance-of v9, v9, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundStatic;

    const/4 v10, -0x1

    if-nez v9, :cond_e

    iget-object v9, v3, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->caller:Lkotlin/reflect/jvm/internal/calls/Caller;

    instance-of v9, v9, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundStaticMultiFieldValueClass;

    if-eqz v9, :cond_9

    goto :goto_6

    .line 89
    :cond_9
    instance-of v9, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/ConstructorDescriptor;

    if-eqz v9, :cond_b

    .line 90
    iget-object v9, v3, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->caller:Lkotlin/reflect/jvm/internal/calls/Caller;

    instance-of v9, v9, Lkotlin/reflect/jvm/internal/calls/BoundCaller;

    if-eqz v9, :cond_a

    goto :goto_7

    :cond_a
    move v10, v6

    goto :goto_7

    .line 92
    :cond_b
    invoke-interface/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;->getDispatchReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;

    move-result-object v9

    if-eqz v9, :cond_d

    iget-object v9, v3, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->caller:Lkotlin/reflect/jvm/internal/calls/Caller;

    instance-of v9, v9, Lkotlin/reflect/jvm/internal/calls/BoundCaller;

    if-nez v9, :cond_d

    .line 95
    invoke-interface/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object v9

    const-string v10, "getContainingDeclaration(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, Lkotlin/reflect/jvm/internal/impl/resolve/InlineClassesUtilsKt;->isValueClass(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 96
    move v10, v6

    goto :goto_7

    .line 98
    :cond_c
    move v10, v8

    goto :goto_7

    .line 101
    :cond_d
    move v10, v6

    goto :goto_7

    .line 86
    :cond_e
    :goto_6
    nop

    .line 82
    :goto_7
    move v9, v10

    .line 104
    .local v9, "shift":I
    iget-object v10, v3, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->caller:Lkotlin/reflect/jvm/internal/calls/Caller;

    instance-of v10, v10, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundStaticMultiFieldValueClass;

    if-eqz v10, :cond_f

    iget-object v10, v3, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->caller:Lkotlin/reflect/jvm/internal/calls/Caller;

    check-cast v10, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundStaticMultiFieldValueClass;

    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundStaticMultiFieldValueClass;->getReceiverComponentsCount()I

    move-result v10

    neg-int v10, v10

    goto :goto_8

    :cond_f
    move v10, v9

    .line 106
    .local v10, "flattenedShift":I
    :goto_8
    sget-object v11, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$data$1$kotlinParameterTypes$1;->INSTANCE:Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$data$1$kotlinParameterTypes$1;

    check-cast v11, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v11}, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCallerKt;->access$makeKotlinParameterTypes(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object v11

    .line 113
    .local v11, "kotlinParameterTypes":Ljava/util/List;
    iget-boolean v12, v3, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->isDefault:Z

    if-eqz v12, :cond_11

    move-object v12, v11

    check-cast v12, Ljava/lang/Iterable;

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v13, v6

    :goto_9
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_10

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 370
    nop

    .local v14, "p0":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    const/4 v15, 0x0

    .line 113
    .local v15, "$i$a$-sumOfInt-ValueClassAwareCaller$data$1$extraArgumentsTail$1":I
    invoke-static {v14}, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->data$lambda$3$typeSize(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)I

    move-result v14

    .end local v14    # "p0":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .end local v15    # "$i$a$-sumOfInt-ValueClassAwareCaller$data$1$extraArgumentsTail$1":I
    add-int/2addr v13, v14

    goto :goto_9

    :cond_10
    add-int/lit8 v13, v13, 0x20

    sub-int/2addr v13, v8

    div-int/lit8 v13, v13, 0x20

    add-int/2addr v13, v8

    goto :goto_a

    :cond_11
    move v13, v6

    .line 114
    :goto_a
    instance-of v12, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    if-eqz v12, :cond_12

    move-object v12, v1

    check-cast v12, Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    invoke-interface {v12}, Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;->isSuspend()Z

    move-result v12

    if-eqz v12, :cond_12

    move v12, v8

    goto :goto_b

    :cond_12
    move v12, v6

    .line 113
    :goto_b
    add-int/2addr v13, v12

    .line 112
    move v12, v13

    .line 115
    .local v12, "extraArgumentsTail":I
    move-object v13, v11

    check-cast v13, Ljava/lang/Iterable;

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v14, v6

    :goto_c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_13

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 370
    nop

    .local v15, "p0":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    const/16 v16, 0x0

    .line 115
    .local v16, "$i$a$-sumOfInt-ValueClassAwareCaller$data$1$expectedArgsSize$1":I
    invoke-static {v15}, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->data$lambda$3$typeSize(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)I

    move-result v15

    .end local v15    # "p0":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .end local v16    # "$i$a$-sumOfInt-ValueClassAwareCaller$data$1$expectedArgsSize$1":I
    add-int/2addr v14, v15

    goto :goto_c

    :cond_13
    add-int/2addr v14, v10

    add-int/2addr v14, v12

    .line 116
    .local v14, "expectedArgsSize":I
    move-object v13, v3

    check-cast v13, Lkotlin/reflect/jvm/internal/calls/Caller;

    iget-boolean v15, v3, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->isDefault:Z

    invoke-static {v13, v14, v1, v15}, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCallerKt;->access$checkParametersSize(Lkotlin/reflect/jvm/internal/calls/Caller;ILkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Z)V

    .line 120
    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v15

    add-int/2addr v15, v9

    invoke-static {v13, v15}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v13

    .line 122
    .local v13, "argumentRange":Lkotlin/ranges/IntRange;
    new-array v15, v14, [Ljava/util/List;

    move v8, v6

    :goto_d
    if-ge v8, v14, :cond_16

    .line 123
    invoke-virtual {v13}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result v6

    invoke-virtual {v13}, Lkotlin/ranges/IntRange;->getLast()I

    move-result v2

    if-gt v8, v2, :cond_14

    if-gt v6, v8, :cond_14

    const/4 v2, 0x1

    goto :goto_e

    :cond_14
    const/4 v2, 0x0

    :goto_e
    if-eqz v2, :cond_15

    .line 124
    sub-int v2, v8, v9

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutionKt;->asSimpleType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCallerKt;->access$getValueClassUnboxMethods(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Ljava/util/List;

    move-result-object v2

    goto :goto_f

    .line 125
    :cond_15
    const/4 v2, 0x0

    :goto_f
    aput-object v2, v15, v8

    add-int/lit8 v8, v8, 0x1

    .line 122
    move-object/from16 v2, p2

    const/4 v6, 0x0

    goto :goto_d

    :cond_16
    move-object v2, v15

    .line 128
    .local v2, "unbox":[Ljava/util/List;
    new-instance v6, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$BoxUnboxData;

    invoke-direct {v6, v13, v2, v7}, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$BoxUnboxData;-><init>(Lkotlin/ranges/IntRange;[Ljava/util/List;Ljava/lang/reflect/Method;)V

    move-object v9, v6

    .line 64
    .end local v2    # "unbox":[Ljava/util/List;
    .end local v3    # "$this$data_u24lambda_u243":Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;
    .end local v4    # "$i$a$-run-ValueClassAwareCaller$data$1":I
    .end local v5    # "returnType":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .end local v7    # "box":Ljava/lang/reflect/Method;
    .end local v9    # "shift":I
    .end local v10    # "flattenedShift":I
    .end local v11    # "kotlinParameterTypes":Ljava/util/List;
    .end local v12    # "extraArgumentsTail":I
    .end local v13    # "argumentRange":Lkotlin/ranges/IntRange;
    .end local v14    # "expectedArgsSize":I
    :goto_10
    iput-object v9, v0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->data:Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$BoxUnboxData;

    .line 145
    nop

    .line 131
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v2

    move-object v3, v2

    .local v3, "$this$slices_u24lambda_u244":Ljava/util/List;
    const/4 v4, 0x0

    .line 132
    .local v4, "$i$a$-buildList-ValueClassAwareCaller$slices$1":I
    iget-object v5, v0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->caller:Lkotlin/reflect/jvm/internal/calls/Caller;

    .line 133
    instance-of v6, v5, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundStaticMultiFieldValueClass;

    if-eqz v6, :cond_17

    iget-object v5, v0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->caller:Lkotlin/reflect/jvm/internal/calls/Caller;

    check-cast v5, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundStaticMultiFieldValueClass;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundStaticMultiFieldValueClass;->getBoundReceiverComponents$kotlin_reflection()[Ljava/lang/Object;

    move-result-object v5

    array-length v5, v5

    goto :goto_11

    .line 134
    :cond_17
    instance-of v5, v5, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$BoundStatic;

    if-eqz v5, :cond_18

    const/4 v5, 0x1

    goto :goto_11

    .line 135
    :cond_18
    const/4 v5, 0x0

    .line 132
    :goto_11
    nop

    .line 137
    .local v5, "currentOffset":I
    if-lez v5, :cond_19

    .line 138
    const/4 v6, 0x0

    invoke-static {v6, v5}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_19
    iget-object v6, v0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->data:Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$BoxUnboxData;

    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$BoxUnboxData;->getUnboxParameters()[Ljava/util/List;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_12
    if-ge v8, v7, :cond_1b

    aget-object v9, v6, v8

    .line 141
    .local v9, "parameterUnboxMethods":Ljava/util/List;
    if-eqz v9, :cond_1a

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    goto :goto_13

    :cond_1a
    const/4 v10, 0x1

    .line 142
    .local v10, "length":I
    :goto_13
    add-int v11, v5, v10

    invoke-static {v5, v11}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    add-int/2addr v5, v10

    .line 140
    .end local v9    # "parameterUnboxMethods":Ljava/util/List;
    .end local v10    # "length":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_12

    .line 145
    :cond_1b
    nop

    .line 131
    .end local v3    # "$this$slices_u24lambda_u244":Ljava/util/List;
    .end local v4    # "$i$a$-buildList-ValueClassAwareCaller$slices$1":I
    .end local v5    # "currentOffset":I
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 145
    nop

    .local v2, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v3, 0x0

    .line 372
    .local v3, "$i$f$toTypedArray":I
    move-object v4, v2

    .line 373
    .local v4, "thisCollection$iv":Ljava/util/Collection;
    const/4 v6, 0x0

    new-array v5, v6, [Lkotlin/ranges/IntRange;

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v3    # "$i$f$toTypedArray":I
    .end local v4    # "thisCollection$iv":Ljava/util/Collection;
    check-cast v2, [Lkotlin/ranges/IntRange;

    .line 145
    iput-object v2, v0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->slices:[Lkotlin/ranges/IntRange;

    .line 156
    iget-object v2, v0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->data:Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$BoxUnboxData;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$BoxUnboxData;->getArgumentRange()Lkotlin/ranges/IntRange;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 374
    .local v3, "$i$f$any":I
    instance-of v4, v2, Ljava/util/Collection;

    if-eqz v4, :cond_1c

    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1c

    goto :goto_15

    .line 375
    :cond_1c
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_20

    move-object v5, v4

    check-cast v5, Lkotlin/collections/IntIterator;

    invoke-virtual {v5}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v5

    .local v5, "element$iv":I
    move v7, v5

    .local v7, "it":I
    const/4 v8, 0x0

    .line 156
    .local v8, "$i$a$-any-ValueClassAwareCaller$hasMfvcParameters$1":I
    iget-object v9, v0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->data:Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$BoxUnboxData;

    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$BoxUnboxData;->getUnboxParameters()[Ljava/util/List;

    move-result-object v9

    aget-object v9, v9, v7

    if-nez v9, :cond_1e

    move v7, v6

    const/4 v10, 0x1

    goto :goto_14

    :cond_1e
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_1f

    move v7, v10

    goto :goto_14

    :cond_1f
    move v7, v6

    .line 375
    .end local v7    # "it":I
    .end local v8    # "$i$a$-any-ValueClassAwareCaller$hasMfvcParameters$1":I
    :goto_14
    if-eqz v7, :cond_1d

    move v6, v10

    goto :goto_15

    .line 376
    .end local v5    # "element$iv":I
    :cond_20
    nop

    .line 156
    .end local v2    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$any":I
    :goto_15
    iput-boolean v6, v0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->hasMfvcParameters:Z

    .line 33
    return-void
.end method

.method private static final data$lambda$3$typeSize(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)I
    .locals 1
    .param p0, "type"    # Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 108
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutionKt;->asSimpleType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCallerKt;->getMfvcUnboxMethods(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method


# virtual methods
.method public call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22
    .param p1, "args"    # [Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "args"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iget-object v2, v0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->data:Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$BoxUnboxData;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$BoxUnboxData;->getArgumentRange()Lkotlin/ranges/IntRange;

    move-result-object v2

    .line 160
    .local v2, "range":Lkotlin/ranges/IntRange;
    iget-object v3, v0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->data:Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$BoxUnboxData;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$BoxUnboxData;->getUnboxParameters()[Ljava/util/List;

    move-result-object v3

    .line 161
    .local v3, "unbox":[Ljava/util/List;
    iget-object v4, v0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->data:Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$BoxUnboxData;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$BoxUnboxData;->getBox()Ljava/lang/reflect/Method;

    move-result-object v4

    .line 163
    .local v4, "box":Ljava/lang/reflect/Method;
    nop

    .line 164
    invoke-virtual {v2}, Lkotlin/ranges/IntRange;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v1

    goto/16 :goto_a

    .line 165
    :cond_0
    iget-boolean v5, v0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->hasMfvcParameters:Z

    const-string v7, "getReturnType(...)"

    const/4 v9, 0x0

    if-eqz v5, :cond_8

    array-length v5, v1

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->createListBuilder(I)Ljava/util/List;

    move-result-object v5

    move-object v10, v5

    .local v10, "$this$call_u24lambda_u247":Ljava/util/List;
    const/4 v11, 0x0

    .line 166
    .local v11, "$i$a$-buildList-ValueClassAwareCaller$call$unboxedArguments$1":I
    const/4 v12, 0x0

    .local v12, "index":I
    invoke-virtual {v2}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result v13

    :goto_0
    if-ge v12, v13, :cond_1

    .line 167
    aget-object v14, v1, v12

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 169
    .end local v12    # "index":I
    :cond_1
    invoke-virtual {v2}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result v12

    .restart local v12    # "index":I
    invoke-virtual {v2}, Lkotlin/ranges/IntRange;->getLast()I

    move-result v13

    if-gt v12, v13, :cond_5

    .line 170
    :goto_1
    aget-object v14, v3, v12

    .line 171
    .local v14, "methods":Ljava/util/List;
    aget-object v15, v1, v12

    .line 173
    .local v15, "arg":Ljava/lang/Object;
    if-eqz v14, :cond_4

    .line 174
    move-object/from16 v16, v14

    check-cast v16, Ljava/lang/Iterable;

    .local v16, "$this$mapTo$iv":Ljava/lang/Iterable;
    const/16 v17, 0x0

    .line 377
    .local v17, "$i$f$mapTo":I
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    .line 378
    .local v19, "item$iv":Ljava/lang/Object;
    move-object v6, v10

    check-cast v6, Ljava/util/Collection;

    move-object/from16 v8, v19

    check-cast v8, Ljava/lang/reflect/Method;

    .local v8, "it":Ljava/lang/reflect/Method;
    const/16 v20, 0x0

    .line 174
    .local v20, "$i$a$-mapTo-ValueClassAwareCaller$call$unboxedArguments$1$1":I
    if-eqz v15, :cond_2

    move/from16 v21, v11

    .end local v11    # "$i$a$-buildList-ValueClassAwareCaller$call$unboxedArguments$1":I
    .local v21, "$i$a$-buildList-ValueClassAwareCaller$call$unboxedArguments$1":I
    new-array v11, v9, [Ljava/lang/Object;

    invoke-virtual {v8, v15, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    goto :goto_3

    .end local v21    # "$i$a$-buildList-ValueClassAwareCaller$call$unboxedArguments$1":I
    .restart local v11    # "$i$a$-buildList-ValueClassAwareCaller$call$unboxedArguments$1":I
    :cond_2
    move/from16 v21, v11

    .end local v11    # "$i$a$-buildList-ValueClassAwareCaller$call$unboxedArguments$1":I
    .restart local v21    # "$i$a$-buildList-ValueClassAwareCaller$call$unboxedArguments$1":I
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v11

    invoke-static {v11, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Ljava/lang/reflect/Type;

    invoke-static {v11}, Lkotlin/reflect/jvm/internal/UtilKt;->defaultPrimitiveValue(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v11

    .line 378
    .end local v8    # "it":Ljava/lang/reflect/Method;
    .end local v20    # "$i$a$-mapTo-ValueClassAwareCaller$call$unboxedArguments$1$1":I
    :goto_3
    invoke-interface {v6, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move/from16 v11, v21

    goto :goto_2

    .line 379
    .end local v19    # "item$iv":Ljava/lang/Object;
    .end local v21    # "$i$a$-buildList-ValueClassAwareCaller$call$unboxedArguments$1":I
    .restart local v11    # "$i$a$-buildList-ValueClassAwareCaller$call$unboxedArguments$1":I
    :cond_3
    move/from16 v21, v11

    .end local v11    # "$i$a$-buildList-ValueClassAwareCaller$call$unboxedArguments$1":I
    .restart local v21    # "$i$a$-buildList-ValueClassAwareCaller$call$unboxedArguments$1":I
    move-object v6, v10

    check-cast v6, Ljava/util/Collection;

    .end local v16    # "$this$mapTo$iv":Ljava/lang/Iterable;
    .end local v17    # "$i$f$mapTo":I
    goto :goto_4

    .line 176
    .end local v21    # "$i$a$-buildList-ValueClassAwareCaller$call$unboxedArguments$1":I
    .restart local v11    # "$i$a$-buildList-ValueClassAwareCaller$call$unboxedArguments$1":I
    :cond_4
    move/from16 v21, v11

    .end local v11    # "$i$a$-buildList-ValueClassAwareCaller$call$unboxedArguments$1":I
    .restart local v21    # "$i$a$-buildList-ValueClassAwareCaller$call$unboxedArguments$1":I
    invoke-interface {v10, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    .end local v14    # "methods":Ljava/util/List;
    .end local v15    # "arg":Ljava/lang/Object;
    :goto_4
    if-eq v12, v13, :cond_6

    add-int/lit8 v12, v12, 0x1

    move/from16 v11, v21

    goto :goto_1

    .end local v21    # "$i$a$-buildList-ValueClassAwareCaller$call$unboxedArguments$1":I
    .restart local v11    # "$i$a$-buildList-ValueClassAwareCaller$call$unboxedArguments$1":I
    :cond_5
    move/from16 v21, v11

    .line 179
    .end local v11    # "$i$a$-buildList-ValueClassAwareCaller$call$unboxedArguments$1":I
    .end local v12    # "index":I
    .restart local v21    # "$i$a$-buildList-ValueClassAwareCaller$call$unboxedArguments$1":I
    :cond_6
    invoke-virtual {v2}, Lkotlin/ranges/IntRange;->getLast()I

    move-result v6

    const/4 v8, 0x1

    add-int/2addr v6, v8

    .local v6, "index":I
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysKt;->getLastIndex([Ljava/lang/Object;)I

    move-result v7

    if-gt v6, v7, :cond_7

    .line 180
    :goto_5
    aget-object v8, v1, v6

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    if-eq v6, v7, :cond_7

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 182
    .end local v6    # "index":I
    :cond_7
    nop

    .line 165
    .end local v10    # "$this$call_u24lambda_u247":Ljava/util/List;
    .end local v21    # "$i$a$-buildList-ValueClassAwareCaller$call$unboxedArguments$1":I
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    .line 182
    nop

    .local v5, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v6, 0x0

    .line 380
    .local v6, "$i$f$toTypedArray":I
    move-object v7, v5

    .line 381
    .local v7, "thisCollection$iv":Ljava/util/Collection;
    new-array v8, v9, [Ljava/lang/Object;

    invoke-interface {v7, v8}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v6    # "$i$f$toTypedArray":I
    .end local v7    # "thisCollection$iv":Ljava/util/Collection;
    goto :goto_a

    .line 183
    :cond_8
    const/4 v8, 0x1

    array-length v5, v1

    new-array v6, v5, [Ljava/lang/Object;

    move v10, v9

    :goto_6
    if-ge v10, v5, :cond_e

    .line 184
    invoke-virtual {v2}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result v11

    invoke-virtual {v2}, Lkotlin/ranges/IntRange;->getLast()I

    move-result v12

    if-gt v10, v12, :cond_9

    if-gt v11, v10, :cond_9

    move v11, v8

    goto :goto_7

    :cond_9
    move v11, v9

    :goto_7
    if-eqz v11, :cond_d

    .line 185
    aget-object v11, v3, v10

    if-eqz v11, :cond_a

    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/reflect/Method;

    goto :goto_8

    :cond_a
    const/4 v11, 0x0

    .line 186
    .local v11, "method":Ljava/lang/reflect/Method;
    :goto_8
    aget-object v12, v1, v10

    .line 188
    .local v12, "arg":Ljava/lang/Object;
    nop

    .line 189
    if-nez v11, :cond_b

    goto :goto_9

    .line 190
    :cond_b
    if-eqz v12, :cond_c

    new-array v13, v9, [Ljava/lang/Object;

    invoke-virtual {v11, v12, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object v12, v13

    goto :goto_9

    .line 191
    :cond_c
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v13

    invoke-static {v13, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Ljava/lang/reflect/Type;

    invoke-static {v13}, Lkotlin/reflect/jvm/internal/UtilKt;->defaultPrimitiveValue(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v12

    .end local v11    # "method":Ljava/lang/reflect/Method;
    .end local v12    # "arg":Ljava/lang/Object;
    goto :goto_9

    .line 194
    :cond_d
    aget-object v12, v1, v10

    :goto_9
    aput-object v12, v6, v10

    add-int/lit8 v10, v10, 0x1

    .line 183
    goto :goto_6

    :cond_e
    move-object v5, v6

    .line 163
    :goto_a
    nop

    .line 199
    .local v5, "unboxedArguments":[Ljava/lang/Object;
    iget-object v6, v0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->caller:Lkotlin/reflect/jvm/internal/calls/Caller;

    invoke-interface {v6, v5}, Lkotlin/reflect/jvm/internal/calls/Caller;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 200
    .local v6, "result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v7

    if-ne v6, v7, :cond_f

    return-object v6

    .line 203
    :cond_f
    if-eqz v4, :cond_10

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4, v8, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_11

    :cond_10
    move-object v7, v6

    :cond_11
    return-object v7
.end method

.method public getMember()Ljava/lang/reflect/Member;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->member:Ljava/lang/reflect/Member;

    return-object v0
.end method

.method public getParameterTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->caller:Lkotlin/reflect/jvm/internal/calls/Caller;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/calls/Caller;->getParameterTypes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getRealSlicesOfParameters(I)Lkotlin/ranges/IntRange;
    .locals 3
    .param p1, "index"    # I

    .line 147
    nop

    .line 148
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->slices:[Lkotlin/ranges/IntRange;

    array-length v2, v2

    if-ge p1, v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->slices:[Lkotlin/ranges/IntRange;

    aget-object v0, v0, p1

    goto :goto_1

    .line 149
    :cond_1
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->slices:[Lkotlin/ranges/IntRange;

    array-length v2, v2

    if-nez v2, :cond_2

    move v1, v0

    :cond_2
    if-eqz v1, :cond_3

    new-instance v0, Lkotlin/ranges/IntRange;

    invoke-direct {v0, p1, p1}, Lkotlin/ranges/IntRange;-><init>(II)V

    goto :goto_1

    .line 151
    :cond_3
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->slices:[Lkotlin/ranges/IntRange;

    array-length v1, v1

    sub-int v1, p1, v1

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->slices:[Lkotlin/ranges/IntRange;

    invoke-static {v2}, Lkotlin/collections/ArraysKt;->last([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/ranges/IntRange;

    invoke-virtual {v2}, Lkotlin/ranges/IntRange;->getLast()I

    move-result v2

    add-int/2addr v2, v0

    add-int/2addr v1, v2

    .line 152
    .local v1, "start":I
    new-instance v0, Lkotlin/ranges/IntRange;

    invoke-direct {v0, v1, v1}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 154
    .end local v1    # "start":I
    :goto_1
    return-object v0
.end method

.method public getReturnType()Ljava/lang/reflect/Type;
    .locals 1

    .line 57
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->caller:Lkotlin/reflect/jvm/internal/calls/Caller;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/calls/Caller;->getReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method
