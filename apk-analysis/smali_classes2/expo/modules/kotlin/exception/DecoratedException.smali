.class public Lexpo/modules/kotlin/exception/DecoratedException;
.super Lexpo/modules/kotlin/exception/CodedException;
.source "CodedException.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0016\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lexpo/modules/kotlin/exception/DecoratedException;",
        "Lexpo/modules/kotlin/exception/CodedException;",
        "message",
        "",
        "cause",
        "(Ljava/lang/String;Lexpo/modules/kotlin/exception/CodedException;)V",
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
.method public constructor <init>(Ljava/lang/String;Lexpo/modules/kotlin/exception/CodedException;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Lexpo/modules/kotlin/exception/CodedException;

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cause"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    nop

    .line 140
    invoke-virtual {p2}, Lexpo/modules/kotlin/exception/CodedException;->getCode()Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lexpo/modules/kotlin/exception/CodedException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v2, p2

    check-cast v2, Ljava/io/Serializable;

    goto :goto_0

    :cond_0
    check-cast v2, Ljava/io/Serializable;

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\u2192 Caused by: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    move-object v2, p2

    check-cast v2, Ljava/lang/Throwable;

    .line 139
    invoke-direct {p0, v0, v1, v2}, Lexpo/modules/kotlin/exception/CodedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    return-void
.end method
