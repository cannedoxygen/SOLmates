.class public final Lexpo/modules/kotlin/exception/CodedExceptionKt;
.super Ljava/lang/Object;
.source "CodedException.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u001a\u0015\u0010\u0000\u001a\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\u0086\u0008\u001a\u000f\u0010\u0004\u001a\u00020\u0003*\u0004\u0018\u00010\u0005H\u0086\u0008\u00a8\u0006\u0006"
    }
    d2 = {
        "errorCodeOf",
        "",
        "T",
        "Lexpo/modules/kotlin/exception/CodedException;",
        "toCodedException",
        "",
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
.method public static final synthetic errorCodeOf()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lexpo/modules/kotlin/exception/CodedException;",
            ">()",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 71
    .local v0, "$i$f$errorCodeOf":I
    sget-object v1, Lexpo/modules/kotlin/exception/CodedException;->Companion:Lexpo/modules/kotlin/exception/CodedException$Companion;

    const/4 v2, 0x4

    const-string v3, "T"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v2, Lexpo/modules/kotlin/exception/CodedException;

    move-object v3, v2

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v1, v2}, Lexpo/modules/kotlin/exception/CodedException$Companion;->inferCode(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final toCodedException(Ljava/lang/Throwable;)Lexpo/modules/kotlin/exception/CodedException;
    .locals 5
    .param p0, "$this$toCodedException"    # Ljava/lang/Throwable;

    const/4 v0, 0x0

    .line 11
    .local v0, "$i$f$toCodedException":I
    nop

    .line 12
    if-nez p0, :cond_0

    new-instance v1, Lexpo/modules/kotlin/exception/UnexpectedException;

    const-string v2, "Unknown error"

    invoke-direct {v1, v2}, Lexpo/modules/kotlin/exception/UnexpectedException;-><init>(Ljava/lang/String;)V

    check-cast v1, Lexpo/modules/kotlin/exception/CodedException;

    goto :goto_0

    .line 13
    :cond_0
    instance-of v1, p0, Lexpo/modules/kotlin/exception/CodedException;

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Lexpo/modules/kotlin/exception/CodedException;

    goto :goto_0

    .line 14
    :cond_1
    instance-of v1, p0, Lexpo/modules/core/errors/CodedException;

    if-eqz v1, :cond_2

    new-instance v1, Lexpo/modules/kotlin/exception/CodedException;

    move-object v2, p0

    check-cast v2, Lexpo/modules/core/errors/CodedException;

    invoke-virtual {v2}, Lexpo/modules/core/errors/CodedException;->getCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getCode(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lexpo/modules/kotlin/exception/CodedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 15
    :cond_2
    new-instance v1, Lexpo/modules/kotlin/exception/UnexpectedException;

    invoke-direct {v1, p0}, Lexpo/modules/kotlin/exception/UnexpectedException;-><init>(Ljava/lang/Throwable;)V

    check-cast v1, Lexpo/modules/kotlin/exception/CodedException;

    .line 16
    :goto_0
    return-object v1
.end method
