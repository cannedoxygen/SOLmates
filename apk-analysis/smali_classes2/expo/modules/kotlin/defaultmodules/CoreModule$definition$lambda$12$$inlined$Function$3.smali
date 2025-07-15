.class public final Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$12$$inlined$Function$3;
.super Lkotlin/jvm/internal/Lambda;
.source "ObjectDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/kotlin/defaultmodules/CoreModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
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
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$Function$8\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 CoreModule.kt\nexpo/modules/kotlin/defaultmodules/CoreModule\n*L\n1#1,611:1\n15#2,4:612\n48#3,6:616\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$Function$8\n*L\n140#1:612,4\n*E\n"
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


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 142
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lexpo/modules/kotlin/defaultmodules/CoreModule$definition$lambda$12$$inlined$Function$3;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

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
    const/4 v1, 0x0

    .line 612
    .local v1, "$i$f$enforceType":I
    nop

    .line 615
    nop

    .line 141
    .end local v1    # "$i$f$enforceType":I
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    .local v1, "namespace":Ljava/lang/String;
    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x0

    .line 616
    .local v3, "$i$a$-Function-CoreModule$definition$1$5":I
    nop

    .line 617
    :try_start_0
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    nop

    .line 621
    .local v4, "namespaceUUID":Ljava/util/UUID;
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4, v2}, Lexpo/modules/kotlin/uuidv5/Uuidv5Kt;->uuidv5(Ljava/util/UUID;Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 141
    .end local v1    # "namespace":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "$i$a$-Function-CoreModule$definition$1$5":I
    .end local v4    # "namespaceUUID":Ljava/util/UUID;
    return-object v1

    .line 618
    .restart local v1    # "namespace":Ljava/lang/String;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "$i$a$-Function-CoreModule$definition$1$5":I
    :catch_0
    move-exception v4

    .line 619
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Lexpo/modules/kotlin/uuidv5/InvalidNamespaceException;

    invoke-direct {v5, v1}, Lexpo/modules/kotlin/uuidv5/InvalidNamespaceException;-><init>(Ljava/lang/String;)V

    throw v5
.end method
