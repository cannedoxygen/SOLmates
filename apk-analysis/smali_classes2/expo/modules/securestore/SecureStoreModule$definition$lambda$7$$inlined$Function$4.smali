.class public final Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$Function$4;
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
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$Function$10\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 SecureStoreModule.kt\nexpo/modules/securestore/SecureStoreModule\n*L\n1#1,611:1\n22#2,4:612\n47#3,2:616\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$Function$10\n*L\n152#1:612,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0002\u0008\u0003\u0010\u0000\u001a\u0004\u0018\u00010\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001\"\u0006\u0008\u0001\u0010\u0003\u0018\u0001\"\u0006\u0008\u0002\u0010\u0004\u0018\u0001\"\u0006\u0008\u0003\u0010\u0005\u0018\u00012\u0010\u0010\u0006\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00010\u0007H\n\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "R",
        "P0",
        "P1",
        "P2",
        "<name for destructuring parameter 0>",
        "",
        "invoke",
        "([Ljava/lang/Object;)Ljava/lang/Object;",
        "expo/modules/kotlin/objects/ObjectDefinitionBuilder$Function$10"
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

    iput-object p1, p0, Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$Function$4;->this$0:Lexpo/modules/securestore/SecureStoreModule;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 154
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$Function$4;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    const-string v0, "<name for destructuring parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .local v0, "p0":Ljava/lang/Object;
    const/4 v1, 0x1

    aget-object v2, p1, v1

    .local v2, "p1":Ljava/lang/Object;
    const/4 v3, 0x2

    aget-object p1, p1, v3

    .line 152
    .local p1, "p2":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 612
    .local v3, "$i$f$enforceType":I
    nop

    .line 615
    nop

    .line 153
    .end local v3    # "$i$f$enforceType":I
    move-object v3, p1

    check-cast v3, Lexpo/modules/securestore/SecureStoreOptions;

    .local v3, "options":Lexpo/modules/securestore/SecureStoreOptions;
    move-object v10, v2

    check-cast v10, Ljava/lang/String;

    .local v10, "key":Ljava/lang/String;
    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .local v7, "value":Ljava/lang/String;
    const/4 v11, 0x0

    .line 616
    .local v11, "$i$a$-Function-SecureStoreModule$definition$1$3":I
    if-eqz v10, :cond_0

    .line 617
    new-instance v12, Lexpo/modules/securestore/SecureStoreModule$definition$1$3$1;

    iget-object v5, p0, Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$Function$4;->this$0:Lexpo/modules/securestore/SecureStoreModule;

    const/4 v9, 0x0

    move-object v4, v12

    move-object v6, v10

    move-object v8, v3

    invoke-direct/range {v4 .. v9}, Lexpo/modules/securestore/SecureStoreModule$definition$1$3$1;-><init>(Lexpo/modules/securestore/SecureStoreModule;Ljava/lang/String;Ljava/lang/String;Lexpo/modules/securestore/SecureStoreOptions;Lkotlin/coroutines/Continuation;)V

    check-cast v12, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x0

    invoke-static {v4, v12, v1, v4}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 153
    .end local v3    # "options":Lexpo/modules/securestore/SecureStoreOptions;
    .end local v7    # "value":Ljava/lang/String;
    .end local v10    # "key":Ljava/lang/String;
    .end local v11    # "$i$a$-Function-SecureStoreModule$definition$1$3":I
    return-object v1

    .line 616
    .restart local v3    # "options":Lexpo/modules/securestore/SecureStoreOptions;
    .restart local v7    # "value":Ljava/lang/String;
    .restart local v10    # "key":Ljava/lang/String;
    .restart local v11    # "$i$a$-Function-SecureStoreModule$definition$1$3":I
    :cond_0
    new-instance v1, Lexpo/modules/securestore/NullKeyException;

    invoke-direct {v1}, Lexpo/modules/securestore/NullKeyException;-><init>()V

    throw v1
.end method
