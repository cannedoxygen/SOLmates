.class public final Lexpo/modules/kotlin/Promise$DefaultImpls;
.super Ljava/lang/Object;
.source "Promise.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/kotlin/Promise;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static reject(Lexpo/modules/kotlin/Promise;Lexpo/modules/kotlin/exception/CodedException;)V
    .locals 3
    .param p0, "$this"    # Lexpo/modules/kotlin/Promise;
    .param p1, "exception"    # Lexpo/modules/kotlin/exception/CodedException;

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lexpo/modules/kotlin/exception/CodedException;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lexpo/modules/kotlin/exception/CodedException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lexpo/modules/kotlin/exception/CodedException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-interface {p0, v0, v1, v2}, Lexpo/modules/kotlin/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    return-void
.end method

.method public static resolve(Lexpo/modules/kotlin/Promise;)V
    .locals 1
    .param p0, "$this"    # Lexpo/modules/kotlin/Promise;

    .line 12
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lexpo/modules/kotlin/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public static resolve(Lexpo/modules/kotlin/Promise;D)V
    .locals 1
    .param p0, "$this"    # Lexpo/modules/kotlin/Promise;
    .param p1, "result"    # D

    .line 18
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    check-cast v0, Ljava/lang/Object;

    invoke-interface {p0, v0}, Lexpo/modules/kotlin/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public static resolve(Lexpo/modules/kotlin/Promise;F)V
    .locals 1
    .param p0, "$this"    # Lexpo/modules/kotlin/Promise;
    .param p1, "result"    # F

    .line 20
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    check-cast v0, Ljava/lang/Object;

    invoke-interface {p0, v0}, Lexpo/modules/kotlin/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public static resolve(Lexpo/modules/kotlin/Promise;I)V
    .locals 1
    .param p0, "$this"    # Lexpo/modules/kotlin/Promise;
    .param p1, "result"    # I

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Object;

    invoke-interface {p0, v0}, Lexpo/modules/kotlin/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public static resolve(Lexpo/modules/kotlin/Promise;Ljava/lang/String;)V
    .locals 1
    .param p0, "$this"    # Lexpo/modules/kotlin/Promise;
    .param p1, "result"    # Ljava/lang/String;

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    move-object v0, p1

    check-cast v0, Ljava/lang/Object;

    invoke-interface {p0, v0}, Lexpo/modules/kotlin/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public static resolve(Lexpo/modules/kotlin/Promise;Ljava/util/Collection;)V
    .locals 1
    .param p0, "$this"    # Lexpo/modules/kotlin/Promise;
    .param p1, "result"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/Promise;",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    move-object v0, p1

    check-cast v0, Ljava/lang/Object;

    invoke-interface {p0, v0}, Lexpo/modules/kotlin/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public static resolve(Lexpo/modules/kotlin/Promise;Ljava/util/Map;)V
    .locals 1
    .param p0, "$this"    # Lexpo/modules/kotlin/Promise;
    .param p1, "result"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/Promise;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    move-object v0, p1

    check-cast v0, Ljava/lang/Object;

    invoke-interface {p0, v0}, Lexpo/modules/kotlin/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public static resolve(Lexpo/modules/kotlin/Promise;Z)V
    .locals 1
    .param p0, "$this"    # Lexpo/modules/kotlin/Promise;
    .param p1, "result"    # Z

    .line 16
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    check-cast v0, Ljava/lang/Object;

    invoke-interface {p0, v0}, Lexpo/modules/kotlin/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method
