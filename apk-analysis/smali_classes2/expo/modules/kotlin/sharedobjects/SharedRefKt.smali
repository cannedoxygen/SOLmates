.class public final Lexpo/modules/kotlin/sharedobjects/SharedRefKt;
.super Ljava/lang/Object;
.source "SharedRef.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a!\u0010\u0000\u001a\n\u0012\u0004\u0012\u0002H\u0002\u0018\u00010\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001*\u0006\u0012\u0002\u0008\u00030\u0001H\u0086\u0008\u00a8\u0006\u0003"
    }
    d2 = {
        "cast",
        "Lexpo/modules/kotlin/sharedobjects/SharedRef;",
        "RefType",
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
.method public static final synthetic cast(Lexpo/modules/kotlin/sharedobjects/SharedRef;)Lexpo/modules/kotlin/sharedobjects/SharedRef;
    .locals 4
    .param p0, "$this$cast"    # Lexpo/modules/kotlin/sharedobjects/SharedRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RefType:",
            "Ljava/lang/Object;",
            ">(",
            "Lexpo/modules/kotlin/sharedobjects/SharedRef<",
            "*>;)",
            "Lexpo/modules/kotlin/sharedobjects/SharedRef<",
            "TRefType;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 26
    .local v0, "$i$f$cast":I
    invoke-virtual {p0}, Lexpo/modules/kotlin/sharedobjects/SharedRef;->getRef()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x3

    const-string v3, "RefType"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v1, v1, Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 27
    move-object v1, p0

    check-cast v1, Lexpo/modules/kotlin/sharedobjects/SharedRef;

    return-object v1

    .line 30
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method
