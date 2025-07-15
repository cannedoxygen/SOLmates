.class public Lexpo/modules/kotlin/views/ConcreteViewProp;
.super Lexpo/modules/kotlin/views/AnyViewProp;
.source "ConcreteViewProp.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ViewType:",
        "Landroid/view/View;",
        "PropType:",
        "Ljava/lang/Object;",
        ">",
        "Lexpo/modules/kotlin/views/AnyViewProp;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConcreteViewProp.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConcreteViewProp.kt\nexpo/modules/kotlin/views/ConcreteViewProp\n+ 2 ExceptionDecorator.kt\nexpo/modules/kotlin/exception/ExceptionDecoratorKt\n+ 3 CodedException.kt\nexpo/modules/kotlin/exception/CodedExceptionKt\n*L\n1#1,42:1\n5#2,4:43\n11#3,6:47\n*S KotlinDebug\n*F\n+ 1 ConcreteViewProp.kt\nexpo/modules/kotlin/views/ConcreteViewProp\n*L\n17#1:43,4\n17#1:47,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0016\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\u0004\u0008\u0001\u0010\u00032\u00020\u0004BM\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00126\u0010\t\u001a2\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u000c\u0012\u0013\u0012\u00118\u0001\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\r\u0012\u0004\u0012\u00020\u000e0\n\u00a2\u0006\u0002\u0010\u000fJ\"\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00022\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016R\u0014\u0010\u0010\u001a\u00020\u0011X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0012RD\u0010\t\u001a2\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u000c\u0012\u0013\u0012\u00118\u0001\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\r\u0012\u0004\u0012\u00020\u000e0\nX\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u001a"
    }
    d2 = {
        "Lexpo/modules/kotlin/views/ConcreteViewProp;",
        "ViewType",
        "Landroid/view/View;",
        "PropType",
        "Lexpo/modules/kotlin/views/AnyViewProp;",
        "name",
        "",
        "propType",
        "Lexpo/modules/kotlin/types/AnyType;",
        "setter",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "view",
        "prop",
        "",
        "(Ljava/lang/String;Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V",
        "isNullable",
        "",
        "()Z",
        "getSetter",
        "()Lkotlin/jvm/functions/Function2;",
        "set",
        "Lcom/facebook/react/bridge/Dynamic;",
        "onView",
        "appContext",
        "Lexpo/modules/kotlin/AppContext;",
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
.field private final isNullable:Z

.field private final setter:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "TViewType;TPropType;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "propType"    # Lexpo/modules/kotlin/types/AnyType;
    .param p3, "setter"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lexpo/modules/kotlin/types/AnyType;",
            "Lkotlin/jvm/functions/Function2<",
            "-TViewType;-TPropType;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "propType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "setter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1, p2}, Lexpo/modules/kotlin/views/AnyViewProp;-><init>(Ljava/lang/String;Lexpo/modules/kotlin/types/AnyType;)V

    .line 13
    iput-object p3, p0, Lexpo/modules/kotlin/views/ConcreteViewProp;->setter:Lkotlin/jvm/functions/Function2;

    .line 24
    invoke-virtual {p2}, Lexpo/modules/kotlin/types/AnyType;->getKType()Lkotlin/reflect/KType;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KType;->isMarkedNullable()Z

    move-result v0

    iput-boolean v0, p0, Lexpo/modules/kotlin/views/ConcreteViewProp;->isNullable:Z

    .line 10
    return-void
.end method


# virtual methods
.method protected final getSetter()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "TViewType;TPropType;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lexpo/modules/kotlin/views/ConcreteViewProp;->setter:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public isNullable()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lexpo/modules/kotlin/views/ConcreteViewProp;->isNullable:Z

    return v0
.end method

.method public set(Lcom/facebook/react/bridge/Dynamic;Landroid/view/View;Lexpo/modules/kotlin/AppContext;)V
    .locals 8
    .param p1, "prop"    # Lcom/facebook/react/bridge/Dynamic;
    .param p2, "onView"    # Landroid/view/View;
    .param p3, "appContext"    # Lexpo/modules/kotlin/AppContext;

    const-string v0, "prop"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    const/4 v0, 0x0

    .line 43
    .local v0, "$i$f$exceptionDecorator":I
    nop

    .line 44
    const/4 v1, 0x0

    .line 20
    .local v1, "$i$a$-exceptionDecorator-ConcreteViewProp$set$2":I
    :try_start_0
    iget-object v2, p0, Lexpo/modules/kotlin/views/ConcreteViewProp;->setter:Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0}, Lexpo/modules/kotlin/views/ConcreteViewProp;->getType$expo_modules_core_debug()Lexpo/modules/kotlin/types/AnyType;

    move-result-object v3

    invoke-virtual {v3, p1, p3}, Lexpo/modules/kotlin/types/AnyType;->convert(Ljava/lang/Object;Lexpo/modules/kotlin/AppContext;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, p2, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    nop

    .end local v1    # "$i$a$-exceptionDecorator-ConcreteViewProp$set$2":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    nop

    .line 43
    nop

    .line 22
    .end local v0    # "$i$f$exceptionDecorator":I
    return-void

    .line 45
    .restart local v0    # "$i$f$exceptionDecorator":I
    :catchall_0
    move-exception v1

    .line 46
    .local v1, "e$iv":Ljava/lang/Throwable;
    move-object v2, v1

    .local v2, "$this$toCodedException$iv$iv":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 47
    .local v3, "$i$f$toCodedException":I
    nop

    .line 48
    nop

    .line 49
    instance-of v4, v2, Lexpo/modules/kotlin/exception/CodedException;

    if-nez v4, :cond_1

    .line 50
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

    .line 51
    :cond_0
    new-instance v4, Lexpo/modules/kotlin/exception/UnexpectedException;

    invoke-direct {v4, v2}, Lexpo/modules/kotlin/exception/UnexpectedException;-><init>(Ljava/lang/Throwable;)V

    check-cast v4, Lexpo/modules/kotlin/exception/CodedException;

    goto :goto_0

    .line 49
    :cond_1
    move-object v4, v2

    check-cast v4, Lexpo/modules/kotlin/exception/CodedException;

    .line 52
    :goto_0
    nop

    .line 46
    .end local v2    # "$this$toCodedException$iv$iv":Ljava/lang/Throwable;
    .end local v3    # "$i$f$toCodedException":I
    move-object v2, v4

    .local v2, "it":Lexpo/modules/kotlin/exception/CodedException;
    const/4 v3, 0x0

    .line 18
    .local v3, "$i$a$-exceptionDecorator-ConcreteViewProp$set$1":I
    new-instance v4, Lexpo/modules/kotlin/exception/PropSetException;

    invoke-virtual {p0}, Lexpo/modules/kotlin/views/ConcreteViewProp;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-direct {v4, v5, v6, v2}, Lexpo/modules/kotlin/exception/PropSetException;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;Lexpo/modules/kotlin/exception/CodedException;)V

    check-cast v4, Ljava/lang/Throwable;

    .line 46
    .end local v2    # "it":Lexpo/modules/kotlin/exception/CodedException;
    .end local v3    # "$i$a$-exceptionDecorator-ConcreteViewProp$set$1":I
    throw v4
.end method
