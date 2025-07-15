.class final Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter$sharedRefType$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SharedObjectTypeConverter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter;-><init>(Lkotlin/reflect/KType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/reflect/KType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001\"\u000c\u0008\u0000\u0010\u0002*\u0006\u0012\u0002\u0008\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/reflect/KType;",
        "T",
        "Lexpo/modules/kotlin/sharedobjects/SharedRef;",
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
.field final synthetic this$0:Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter$sharedRefType$2;->this$0:Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter$sharedRefType$2;->invoke()Lkotlin/reflect/KType;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lkotlin/reflect/KType;
    .locals 7

    .line 45
    iget-object v0, p0, Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter$sharedRefType$2;->this$0:Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter;

    invoke-virtual {v0}, Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter;->getType()Lkotlin/reflect/KType;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KType;->getClassifier()Lkotlin/reflect/KClassifier;

    move-result-object v0

    instance-of v1, v0, Lkotlin/reflect/KClass;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lkotlin/reflect/KClass;

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 46
    .local v0, "currentClass":Lkotlin/reflect/KClass;
    :goto_0
    iget-object v1, p0, Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter$sharedRefType$2;->this$0:Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter;

    invoke-virtual {v1}, Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter;->getType()Lkotlin/reflect/KType;

    move-result-object v1

    .line 47
    .local v1, "currentType":Lkotlin/reflect/KType;
    :goto_1
    if-eqz v0, :cond_8

    .line 48
    const-class v3, Lexpo/modules/kotlin/sharedobjects/SharedRef;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 49
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lkotlin/reflect/KType;->getArguments()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/KTypeProjection;

    goto :goto_2

    :cond_1
    move-object v3, v2

    .line 52
    .local v3, "firstArgument":Lkotlin/reflect/KTypeProjection;
    :goto_2
    sget-object v4, Lkotlin/reflect/KTypeProjection;->Companion:Lkotlin/reflect/KTypeProjection$Companion;

    invoke-virtual {v4}, Lkotlin/reflect/KTypeProjection$Companion;->getSTAR()Lkotlin/reflect/KTypeProjection;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 53
    return-object v2

    .line 56
    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lkotlin/reflect/KTypeProjection;->getType()Lkotlin/reflect/KType;

    move-result-object v2

    :cond_3
    iget-object v4, p0, Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter$sharedRefType$2;->this$0:Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter;

    if-eqz v2, :cond_4

    return-object v2

    :cond_4
    const/4 v2, 0x0

    .line 57
    .local v2, "$i$a$-requireNotNull-SharedRefTypeConverter$sharedRefType$2$1":I
    invoke-virtual {v4}, Lexpo/modules/kotlin/sharedobjects/SharedRefTypeConverter;->getSharedRefType()Lkotlin/reflect/KType;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " type should contain the type of the inner ref"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 56
    .end local v2    # "$i$a$-requireNotNull-SharedRefTypeConverter$sharedRefType$2$1":I
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 60
    .end local v3    # "firstArgument":Lkotlin/reflect/KTypeProjection;
    :cond_5
    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSupertypes()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lkotlin/reflect/KType;

    .line 61
    if-eqz v1, :cond_6

    invoke-interface {v1}, Lkotlin/reflect/KType;->getClassifier()Lkotlin/reflect/KClassifier;

    move-result-object v3

    goto :goto_3

    :cond_6
    move-object v3, v2

    :goto_3
    instance-of v4, v3, Lkotlin/reflect/KClass;

    if-eqz v4, :cond_7

    check-cast v3, Lkotlin/reflect/KClass;

    goto :goto_4

    :cond_7
    move-object v3, v2

    :goto_4
    move-object v0, v3

    goto :goto_1

    .line 64
    :cond_8
    return-object v2
.end method
