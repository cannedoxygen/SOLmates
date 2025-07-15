.class public final Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$Function$7;
.super Lkotlin/jvm/internal/Lambda;
.source "ObjectDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/securestore/SecureStoreModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "[",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$Function$8\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 SecureStoreModule.kt\nexpo/modules/securestore/SecureStoreModule\n*L\n1#1,611:1\n15#2,4:612\n54#3:616\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$Function$8\n*L\n140#1:612,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0008\u0003\u0010\u0000\u001a\u0004\u0018\u00010\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001\"\u0006\u0008\u0001\u0010\u0003\u0018\u0001\"\u0006\u0008\u0002\u0010\u0004\u0018\u00012\u0010\u0010\u0005\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00010\u0006H\n\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "<anonymous>",
        "",
        "R",
        "P0",
        "P1",
        "<name for destructuring parameter 0>",
        "",
        "invoke",
        "([Ljava/lang/Object;)Ljava/lang/Object;",
        "expo/modules/kotlin/objects/ObjectDefinitionBuilder$Function$8"
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
.field final synthetic this$0:Lexpo/modules/securestore/SecureStoreModule;


# direct methods
.method public constructor <init>(Lexpo/modules/securestore/SecureStoreModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$Function$7;->this$0:Lexpo/modules/securestore/SecureStoreModule;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 142
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$Function$7;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const-string v0, "<name for destructuring parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .local v0, "p0":Ljava/lang/Object;
    const/4 v1, 0x1

    aget-object p1, p1, v1

    .line 140
    .local p1, "p1":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 612
    .local v2, "$i$f$enforceType":I
    nop

    .line 615
    nop

    .line 141
    .end local v2    # "$i$f$enforceType":I
    move-object v2, p1

    check-cast v2, Lexpo/modules/securestore/SecureStoreOptions;

    .local v2, "options":Lexpo/modules/securestore/SecureStoreOptions;
    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .local v3, "key":Ljava/lang/String;
    const/4 v4, 0x0

    .line 616
    .local v4, "$i$a$-Function-SecureStoreModule$definition$1$4":I
    new-instance v5, Lexpo/modules/securestore/SecureStoreModule$definition$1$4$1;

    iget-object v6, p0, Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$Function$7;->this$0:Lexpo/modules/securestore/SecureStoreModule;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v3, v2, v7}, Lexpo/modules/securestore/SecureStoreModule$definition$1$4$1;-><init>(Lexpo/modules/securestore/SecureStoreModule;Ljava/lang/String;Lexpo/modules/securestore/SecureStoreOptions;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v5, v1, v7}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 141
    .end local v2    # "options":Lexpo/modules/securestore/SecureStoreOptions;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "$i$a$-Function-SecureStoreModule$definition$1$4":I
    return-object v1
.end method
