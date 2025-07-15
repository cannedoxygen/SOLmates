.class public final Lexpo/modules/keepawake/KeepAwakeModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$4;
.super Lkotlin/jvm/internal/Lambda;
.source "ObjectDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/keepawake/KeepAwakeModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "[",
        "Ljava/lang/Object;",
        "Lexpo/modules/kotlin/Promise;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$10\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 KeepAwakeModule.kt\nexpo/modules/keepawake/KeepAwakeModule\n*L\n1#1,611:1\n8#2,4:612\n26#3,6:616\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$10\n*L\n273#1:612,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001\"\u0006\u0008\u0001\u0010\u0003\u0018\u00012\u0010\u0010\u0004\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00060\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\n\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "<anonymous>",
        "",
        "R",
        "P0",
        "<name for destructuring parameter 0>",
        "",
        "",
        "promise",
        "Lexpo/modules/kotlin/Promise;",
        "invoke",
        "([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V",
        "expo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$10"
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
.field final synthetic this$0:Lexpo/modules/keepawake/KeepAwakeModule;


# direct methods
.method public constructor <init>(Lexpo/modules/keepawake/KeepAwakeModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/keepawake/KeepAwakeModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$4;->this$0:Lexpo/modules/keepawake/KeepAwakeModule;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 275
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v1, p2

    check-cast v1, Lexpo/modules/kotlin/Promise;

    invoke-virtual {p0, v0, v1}, Lexpo/modules/keepawake/KeepAwakeModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$4;->invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V
    .locals 5
    .param p2, "promise"    # Lexpo/modules/kotlin/Promise;

    const-string v0, "<name for destructuring parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    const/4 v0, 0x0

    aget-object p1, p1, v0

    .line 273
    .local p1, "p0":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 612
    .local v0, "$i$f$enforceType":I
    nop

    .line 615
    nop

    .line 274
    .end local v0    # "$i$f$enforceType":I
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .local v0, "tag":Ljava/lang/String;
    move-object v1, p2

    .local v1, "promise":Lexpo/modules/kotlin/Promise;
    const/4 v2, 0x0

    .line 616
    .local v2, "$i$a$-AsyncFunctionWithPromise-KeepAwakeModule$definition$1$2":I
    nop

    .line 617
    :try_start_0
    iget-object v3, p0, Lexpo/modules/keepawake/KeepAwakeModule$definition$lambda$3$$inlined$AsyncFunctionWithPromise$4;->this$0:Lexpo/modules/keepawake/KeepAwakeModule;

    invoke-static {v3}, Lexpo/modules/keepawake/KeepAwakeModule;->access$getKeepAwakeManager(Lexpo/modules/keepawake/KeepAwakeModule;)Lexpo/modules/core/interfaces/services/KeepAwakeManager;

    move-result-object v3

    new-instance v4, Lexpo/modules/keepawake/KeepAwakeModule$definition$1$2$1;

    invoke-direct {v4, v1}, Lexpo/modules/keepawake/KeepAwakeModule$definition$1$2$1;-><init>(Lexpo/modules/kotlin/Promise;)V

    check-cast v4, Ljava/lang/Runnable;

    invoke-interface {v3, v0, v4}, Lexpo/modules/core/interfaces/services/KeepAwakeManager;->deactivate(Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 618
    :catch_0
    move-exception v3

    .line 619
    .local v3, "e":Ljava/lang/Exception;
    invoke-interface {v1}, Lexpo/modules/kotlin/Promise;->resolve()V

    .line 621
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    nop

    .line 274
    .end local v0    # "tag":Ljava/lang/String;
    .end local v1    # "promise":Lexpo/modules/kotlin/Promise;
    .end local v2    # "$i$a$-AsyncFunctionWithPromise-KeepAwakeModule$definition$1$2":I
    nop

    .line 275
    return-void
.end method
