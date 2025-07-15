.class public final Lexpo/modules/kotlin/exception/ExceptionDecoratorKt;
.super Ljava/lang/Object;
.source "ExceptionDecorator.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExceptionDecorator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExceptionDecorator.kt\nexpo/modules/kotlin/exception/ExceptionDecoratorKt\n+ 2 CodedException.kt\nexpo/modules/kotlin/exception/CodedExceptionKt\n*L\n1#1,11:1\n11#2,6:12\n*S KotlinDebug\n*F\n+ 1 ExceptionDecorator.kt\nexpo/modules/kotlin/exception/ExceptionDecoratorKt\n*L\n8#1:12,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001aH\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u00012!\u0010\u0002\u001a\u001d\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0007\u0012\u0004\u0012\u00020\u00080\u00032\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\nH\u0080\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000b\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u000c"
    }
    d2 = {
        "exceptionDecorator",
        "T",
        "decoratorBlock",
        "Lkotlin/Function1;",
        "Lexpo/modules/kotlin/exception/CodedException;",
        "Lkotlin/ParameterName;",
        "name",
        "e",
        "",
        "block",
        "Lkotlin/Function0;",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "expo-modules-core_debug"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final exceptionDecorator(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 8
    .param p0, "decoratorBlock"    # Lkotlin/jvm/functions/Function1;
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lexpo/modules/kotlin/exception/CodedException;",
            "+",
            "Ljava/lang/Throwable;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lexpo/modules/kotlin/exception/CodedException;
        }
    .end annotation

    const-string v0, "decoratorBlock"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 5
    .local v0, "$i$f$exceptionDecorator":I
    nop

    .line 6
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    return-object v1

    .line 7
    :catchall_0
    move-exception v1

    .line 8
    .local v1, "e":Ljava/lang/Throwable;
    move-object v2, v1

    .local v2, "$this$toCodedException$iv":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 12
    .local v3, "$i$f$toCodedException":I
    nop

    .line 13
    nop

    .line 14
    instance-of v4, v2, Lexpo/modules/kotlin/exception/CodedException;

    if-nez v4, :cond_1

    .line 15
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

    .line 16
    :cond_0
    new-instance v4, Lexpo/modules/kotlin/exception/UnexpectedException;

    invoke-direct {v4, v2}, Lexpo/modules/kotlin/exception/UnexpectedException;-><init>(Ljava/lang/Throwable;)V

    check-cast v4, Lexpo/modules/kotlin/exception/CodedException;

    goto :goto_0

    .line 14
    :cond_1
    move-object v4, v2

    check-cast v4, Lexpo/modules/kotlin/exception/CodedException;

    .line 17
    :goto_0
    nop

    .line 8
    .end local v2    # "$this$toCodedException$iv":Ljava/lang/Throwable;
    .end local v3    # "$i$f$toCodedException":I
    invoke-interface {p0, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method
