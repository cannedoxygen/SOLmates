.class public final Lexpo/modules/kotlin/exception/IncompatibleArgTypeException;
.super Lexpo/modules/kotlin/exception/CodedException;
.source "CodedException.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lexpo/modules/kotlin/exception/IncompatibleArgTypeException;",
        "Lexpo/modules/kotlin/exception/CodedException;",
        "argumentType",
        "Lkotlin/reflect/KType;",
        "desiredType",
        "cause",
        "",
        "(Lkotlin/reflect/KType;Lkotlin/reflect/KType;Ljava/lang/Throwable;)V",
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
.method public constructor <init>(Lkotlin/reflect/KType;Lkotlin/reflect/KType;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "argumentType"    # Lkotlin/reflect/KType;
    .param p2, "desiredType"    # Lkotlin/reflect/KType;
    .param p3, "cause"    # Ljava/lang/Throwable;

    const-string v0, "argumentType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "desiredType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    nop

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Argument type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' is not compatible with expected type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    nop

    .line 77
    invoke-direct {p0, v0, p3}, Lexpo/modules/kotlin/exception/CodedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/reflect/KType;Lkotlin/reflect/KType;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 73
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 76
    const/4 p3, 0x0

    .line 73
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lexpo/modules/kotlin/exception/IncompatibleArgTypeException;-><init>(Lkotlin/reflect/KType;Lkotlin/reflect/KType;Ljava/lang/Throwable;)V

    .line 80
    return-void
.end method
