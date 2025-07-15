.class public final Lexpo/modules/crypto/CryptoModule$definition$lambda$6$$inlined$Function$4;
.super Lkotlin/jvm/internal/Lambda;
.source "ObjectDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/crypto/CryptoModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
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
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$Function$10\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 CryptoModule.kt\nexpo/modules/crypto/CryptoModule\n*L\n1#1,611:1\n22#2,4:612\n17#3:616\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$Function$10\n*L\n152#1:612,4\n*E\n"
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
.field final synthetic $receiver$inlined:Lexpo/modules/crypto/CryptoModule;


# direct methods
.method public constructor <init>(Lexpo/modules/crypto/CryptoModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/crypto/CryptoModule$definition$lambda$6$$inlined$Function$4;->$receiver$inlined:Lexpo/modules/crypto/CryptoModule;

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

    invoke-virtual {p0, v0}, Lexpo/modules/crypto/CryptoModule$definition$lambda$6$$inlined$Function$4;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const-string v0, "<name for destructuring parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .local v0, "p0":Ljava/lang/Object;
    const/4 v1, 0x1

    aget-object v1, p1, v1

    .local v1, "p1":Ljava/lang/Object;
    const/4 v2, 0x2

    aget-object p1, p1, v2

    .line 152
    .local p1, "p2":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 612
    .local v2, "$i$f$enforceType":I
    nop

    .line 615
    nop

    .line 153
    .end local v2    # "$i$f$enforceType":I
    move-object v2, p1

    check-cast v2, Lexpo/modules/crypto/DigestOptions;

    .local v2, "p2":Lexpo/modules/crypto/DigestOptions;
    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .local v3, "p1":Ljava/lang/String;
    move-object v4, v0

    check-cast v4, Lexpo/modules/crypto/DigestAlgorithm;

    .local v4, "p0":Lexpo/modules/crypto/DigestAlgorithm;
    const/4 v5, 0x0

    .line 616
    .local v5, "$i$a$-Function-CryptoModule$definition$1$1":I
    iget-object v6, p0, Lexpo/modules/crypto/CryptoModule$definition$lambda$6$$inlined$Function$4;->$receiver$inlined:Lexpo/modules/crypto/CryptoModule;

    invoke-static {v6, v4, v3, v2}, Lexpo/modules/crypto/CryptoModule;->access$digestString(Lexpo/modules/crypto/CryptoModule;Lexpo/modules/crypto/DigestAlgorithm;Ljava/lang/String;Lexpo/modules/crypto/DigestOptions;)Ljava/lang/String;

    move-result-object v2

    .line 153
    .end local v2    # "p2":Lexpo/modules/crypto/DigestOptions;
    .end local v3    # "p1":Ljava/lang/String;
    .end local v4    # "p0":Lexpo/modules/crypto/DigestAlgorithm;
    .end local v5    # "$i$a$-Function-CryptoModule$definition$1$1":I
    return-object v2
.end method
