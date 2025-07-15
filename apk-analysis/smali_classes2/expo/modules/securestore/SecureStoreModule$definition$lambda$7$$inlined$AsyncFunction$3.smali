.class public final Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$AsyncFunction$3;
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
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$8\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 SecureStoreModule.kt\nexpo/modules/securestore/SecureStoreModule\n*L\n1#1,611:1\n15#2,4:612\n60#3,8:616\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$8\n*L\n260#1:612,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0010\u0000\u001a\u0002H\u0001\"\u0006\u0008\u0000\u0010\u0001\u0018\u0001\"\u0006\u0008\u0001\u0010\u0002\u0018\u0001\"\u0006\u0008\u0002\u0010\u0003\u0018\u00012\u0010\u0010\u0004\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00060\u0005H\n\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "<anonymous>",
        "R",
        "P0",
        "P1",
        "<name for destructuring parameter 0>",
        "",
        "",
        "invoke",
        "([Ljava/lang/Object;)Ljava/lang/Object;",
        "expo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$8"
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

    iput-object p1, p0, Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$AsyncFunction$3;->this$0:Lexpo/modules/securestore/SecureStoreModule;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 259
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$AsyncFunction$3;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Lkotlin/Unit;"
        }
    .end annotation

    const-string v0, "<name for destructuring parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .local v0, "p0":Ljava/lang/Object;
    const/4 v1, 0x1

    aget-object p1, p1, v1

    .line 260
    .local p1, "p1":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 612
    .local v1, "$i$f$enforceType":I
    nop

    .line 615
    nop

    .line 261
    .end local v1    # "$i$f$enforceType":I
    move-object v1, p1

    check-cast v1, Lexpo/modules/securestore/SecureStoreOptions;

    .local v1, "options":Lexpo/modules/securestore/SecureStoreOptions;
    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .local v2, "key":Ljava/lang/String;
    const/4 v3, 0x0

    .line 616
    .local v3, "$i$a$-AsyncFunction-SecureStoreModule$definition$1$5":I
    nop

    .line 617
    :try_start_0
    iget-object v4, p0, Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$AsyncFunction$3;->this$0:Lexpo/modules/securestore/SecureStoreModule;

    invoke-static {v4, v2, v1}, Lexpo/modules/securestore/SecureStoreModule;->access$deleteItemImpl(Lexpo/modules/securestore/SecureStoreModule;Ljava/lang/String;Lexpo/modules/securestore/SecureStoreOptions;)V
    :try_end_0
    .catch Lexpo/modules/kotlin/exception/CodedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    nop

    .end local v1    # "options":Lexpo/modules/securestore/SecureStoreOptions;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "$i$a$-AsyncFunction-SecureStoreModule$definition$1$5":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 261
    return-object v1

    .line 620
    .restart local v1    # "options":Lexpo/modules/securestore/SecureStoreOptions;
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "$i$a$-AsyncFunction-SecureStoreModule$definition$1$5":I
    :catch_0
    move-exception v4

    .line 621
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Lexpo/modules/securestore/DeleteException;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lexpo/modules/securestore/SecureStoreOptions;->getKeychainService()Ljava/lang/String;

    move-result-object v7

    move-object v8, v4

    check-cast v8, Ljava/lang/Throwable;

    invoke-direct {v5, v6, v2, v7, v8}, Lexpo/modules/securestore/DeleteException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 618
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 619
    .local v4, "e":Lexpo/modules/kotlin/exception/CodedException;
    throw v4
.end method
