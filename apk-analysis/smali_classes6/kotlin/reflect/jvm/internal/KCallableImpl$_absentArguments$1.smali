.class final Lkotlin/reflect/jvm/internal/KCallableImpl$_absentArguments$1;
.super Lkotlin/jvm/internal/Lambda;
.source "KCallableImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/KCallableImpl;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKCallableImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KCallableImpl.kt\nkotlin/reflect/jvm/internal/KCallableImpl$_absentArguments$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,276:1\n1774#2,4:277\n1855#2,2:281\n*S KotlinDebug\n*F\n+ 1 KCallableImpl.kt\nkotlin/reflect/jvm/internal/KCallableImpl$_absentArguments$1\n*L\n124#1:277,4\n132#1:281,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0010\u0000\u001a\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u0002 \u0003*\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\u00010\u0001\"\u0006\u0008\u0000\u0010\u0004 \u0001H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "",
        "kotlin.jvm.PlatformType",
        "R",
        "invoke",
        "()[Ljava/lang/Object;"
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
.field final synthetic this$0:Lkotlin/reflect/jvm/internal/KCallableImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/KCallableImpl<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/KCallableImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/KCallableImpl<",
            "+TR;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$_absentArguments$1;->this$0:Lkotlin/reflect/jvm/internal/KCallableImpl;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 115
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KCallableImpl$_absentArguments$1;->invoke()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()[Ljava/lang/Object;
    .locals 15

    .line 116
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$_absentArguments$1;->this$0:Lkotlin/reflect/jvm/internal/KCallableImpl;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->getParameters()Ljava/util/List;

    move-result-object v0

    .line 117
    .local v0, "parameters":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$_absentArguments$1;->this$0:Lkotlin/reflect/jvm/internal/KCallableImpl;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/KCallableImpl;->isSuspend()Z

    move-result v2

    add-int/2addr v1, v2

    .line 119
    .local v1, "parameterSize":I
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$_absentArguments$1;->this$0:Lkotlin/reflect/jvm/internal/KCallableImpl;

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/KCallableImpl;->access$getParametersNeedMFVCFlattening$p(Lkotlin/reflect/jvm/internal/KCallableImpl;)Lkotlin/Lazy;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 120
    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    iget-object v5, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$_absentArguments$1;->this$0:Lkotlin/reflect/jvm/internal/KCallableImpl;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v6, v4

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/reflect/KParameter;

    .local v7, "it":Lkotlin/reflect/KParameter;
    const/4 v8, 0x0

    .line 121
    .local v8, "$i$a$-sumOfInt-KCallableImpl$_absentArguments$1$flattenedParametersSize$1":I
    invoke-interface {v7}, Lkotlin/reflect/KParameter;->getKind()Lkotlin/reflect/KParameter$Kind;

    move-result-object v9

    sget-object v10, Lkotlin/reflect/KParameter$Kind;->VALUE:Lkotlin/reflect/KParameter$Kind;

    if-ne v9, v10, :cond_0

    invoke-static {v5, v7}, Lkotlin/reflect/jvm/internal/KCallableImpl;->access$getParameterTypeSize(Lkotlin/reflect/jvm/internal/KCallableImpl;Lkotlin/reflect/KParameter;)I

    move-result v9

    goto :goto_1

    :cond_0
    move v9, v4

    .line 120
    .end local v7    # "it":Lkotlin/reflect/KParameter;
    .end local v8    # "$i$a$-sumOfInt-KCallableImpl$_absentArguments$1$flattenedParametersSize$1":I
    :goto_1
    add-int/2addr v6, v9

    goto :goto_0

    .line 124
    :cond_1
    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$count$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 277
    .local v5, "$i$f$count":I
    instance-of v6, v2, Ljava/util/Collection;

    if-eqz v6, :cond_2

    move-object v6, v2

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v4

    goto :goto_4

    .line 278
    :cond_2
    const/4 v6, 0x0

    .line 279
    .local v6, "count$iv":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Lkotlin/reflect/KParameter;

    .local v9, "it":Lkotlin/reflect/KParameter;
    const/4 v10, 0x0

    .line 124
    .local v10, "$i$a$-count-KCallableImpl$_absentArguments$1$flattenedParametersSize$2":I
    invoke-interface {v9}, Lkotlin/reflect/KParameter;->getKind()Lkotlin/reflect/KParameter$Kind;

    move-result-object v11

    sget-object v12, Lkotlin/reflect/KParameter$Kind;->VALUE:Lkotlin/reflect/KParameter$Kind;

    if-ne v11, v12, :cond_4

    move v9, v3

    goto :goto_3

    :cond_4
    move v9, v4

    .line 279
    .end local v9    # "it":Lkotlin/reflect/KParameter;
    .end local v10    # "$i$a$-count-KCallableImpl$_absentArguments$1$flattenedParametersSize$2":I
    :goto_3
    if-eqz v9, :cond_3

    add-int/lit8 v6, v6, 0x1

    if-gez v6, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    goto :goto_2

    .line 280
    .end local v8    # "element$iv":Ljava/lang/Object;
    :cond_5
    nop

    .line 118
    .end local v2    # "$this$count$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$count":I
    .end local v6    # "count$iv":I
    :cond_6
    :goto_4
    move v2, v6

    .line 126
    .local v2, "flattenedParametersSize":I
    add-int/lit8 v5, v2, 0x20

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x20

    .line 129
    .local v5, "maskSize":I
    add-int v6, v1, v5

    add-int/2addr v6, v3

    new-array v3, v6, [Ljava/lang/Object;

    .line 132
    .local v3, "arguments":[Ljava/lang/Object;
    move-object v6, v0

    check-cast v6, Ljava/lang/Iterable;

    .local v6, "$this$forEach$iv":Ljava/lang/Iterable;
    iget-object v7, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$_absentArguments$1;->this$0:Lkotlin/reflect/jvm/internal/KCallableImpl;

    const/4 v8, 0x0

    .line 281
    .local v8, "$i$f$forEach":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .local v10, "element$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Lkotlin/reflect/KParameter;

    .local v11, "parameter":Lkotlin/reflect/KParameter;
    const/4 v12, 0x0

    .line 133
    .local v12, "$i$a$-forEach-KCallableImpl$_absentArguments$1$1":I
    invoke-interface {v11}, Lkotlin/reflect/KParameter;->isOptional()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v11}, Lkotlin/reflect/KParameter;->getType()Lkotlin/reflect/KType;

    move-result-object v13

    invoke-static {v13}, Lkotlin/reflect/jvm/internal/UtilKt;->isInlineClassType(Lkotlin/reflect/KType;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 136
    invoke-interface {v11}, Lkotlin/reflect/KParameter;->getIndex()I

    move-result v13

    invoke-interface {v11}, Lkotlin/reflect/KParameter;->getType()Lkotlin/reflect/KType;

    move-result-object v14

    invoke-static {v14}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v14

    invoke-static {v14}, Lkotlin/reflect/jvm/internal/UtilKt;->defaultPrimitiveValue(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v14

    aput-object v14, v3, v13

    goto :goto_6

    .line 137
    :cond_7
    invoke-interface {v11}, Lkotlin/reflect/KParameter;->isVararg()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 138
    invoke-interface {v11}, Lkotlin/reflect/KParameter;->getIndex()I

    move-result v13

    invoke-interface {v11}, Lkotlin/reflect/KParameter;->getType()Lkotlin/reflect/KType;

    move-result-object v14

    invoke-static {v7, v14}, Lkotlin/reflect/jvm/internal/KCallableImpl;->access$defaultEmptyArray(Lkotlin/reflect/jvm/internal/KCallableImpl;Lkotlin/reflect/KType;)Ljava/lang/Object;

    move-result-object v14

    aput-object v14, v3, v13

    .line 140
    :cond_8
    :goto_6
    nop

    .line 281
    .end local v11    # "parameter":Lkotlin/reflect/KParameter;
    .end local v12    # "$i$a$-forEach-KCallableImpl$_absentArguments$1$1":I
    nop

    .end local v10    # "element$iv":Ljava/lang/Object;
    goto :goto_5

    .line 282
    :cond_9
    nop

    .line 142
    .end local v6    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$forEach":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_7
    if-ge v6, v5, :cond_a

    .line 143
    add-int v7, v1, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v7

    .line 142
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 146
    .end local v6    # "i":I
    :cond_a
    return-object v3
.end method
