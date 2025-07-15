.class public final Lexpo/modules/kotlin/PromiseKt;
.super Ljava/lang/Object;
.source "Promise.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0002\u001a\u00020\u0003*\u00020\u0004\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "unknownCode",
        "",
        "toBridgePromise",
        "Lcom/facebook/react/bridge/Promise;",
        "Lexpo/modules/kotlin/Promise;",
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


# static fields
.field private static final unknownCode:Ljava/lang/String; = "UnknownCode"


# direct methods
.method public static final toBridgePromise(Lexpo/modules/kotlin/Promise;)Lcom/facebook/react/bridge/Promise;
    .locals 3
    .param p0, "$this$toBridgePromise"    # Lexpo/modules/kotlin/Promise;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    move-object v0, p0

    .line 37
    .local v0, "expoPromise":Lexpo/modules/kotlin/Promise;
    instance-of v1, v0, Lexpo/modules/kotlin/jni/PromiseImpl;

    if-eqz v1, :cond_0

    .line 38
    new-instance v1, Lexpo/modules/kotlin/PromiseKt$toBridgePromise$resolveMethod$1;

    move-object v2, v0

    check-cast v2, Lexpo/modules/kotlin/jni/PromiseImpl;

    invoke-virtual {v2}, Lexpo/modules/kotlin/jni/PromiseImpl;->getCallback$expo_modules_core_debug()Lexpo/modules/kotlin/jni/JavaCallback;

    move-result-object v2

    invoke-direct {v1, v2}, Lexpo/modules/kotlin/PromiseKt$toBridgePromise$resolveMethod$1;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    goto :goto_0

    .line 40
    :cond_0
    new-instance v1, Lexpo/modules/kotlin/PromiseKt$toBridgePromise$resolveMethod$2;

    invoke-direct {v1, v0}, Lexpo/modules/kotlin/PromiseKt$toBridgePromise$resolveMethod$2;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 37
    :goto_0
    nop

    .line 43
    .local v1, "resolveMethod":Lkotlin/jvm/functions/Function1;
    new-instance v2, Lexpo/modules/kotlin/PromiseKt$toBridgePromise$1;

    invoke-direct {v2, v1, v0}, Lexpo/modules/kotlin/PromiseKt$toBridgePromise$1;-><init>(Lkotlin/jvm/functions/Function1;Lexpo/modules/kotlin/Promise;)V

    check-cast v2, Lcom/facebook/react/bridge/Promise;

    return-object v2
.end method
