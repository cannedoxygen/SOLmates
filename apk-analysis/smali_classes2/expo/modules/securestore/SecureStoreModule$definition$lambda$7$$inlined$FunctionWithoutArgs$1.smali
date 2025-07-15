.class public final Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$FunctionWithoutArgs$1;
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
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$Function$2\n+ 2 SecureStoreModule.kt\nexpo/modules/securestore/SecureStoreModule\n*L\n1#1,611:1\n70#2,5:612\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0003\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0010\u0010\u0002\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00010\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "invoke",
        "([Ljava/lang/Object;)Ljava/lang/Object;",
        "expo/modules/kotlin/objects/ObjectDefinitionBuilder$Function$2"
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

    iput-object p1, p0, Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$FunctionWithoutArgs$1;->this$0:Lexpo/modules/securestore/SecureStoreModule;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 109
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$FunctionWithoutArgs$1;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "it"    # [Ljava/lang/Object;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    const/4 v0, 0x0

    .line 612
    .local v0, "$i$a$-FunctionWithoutArgs-SecureStoreModule$definition$1$6":I
    nop

    .line 613
    :try_start_0
    iget-object v1, p0, Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$FunctionWithoutArgs$1;->this$0:Lexpo/modules/securestore/SecureStoreModule;

    invoke-static {v1}, Lexpo/modules/securestore/SecureStoreModule;->access$getAuthenticationHelper$p(Lexpo/modules/securestore/SecureStoreModule;)Lexpo/modules/securestore/AuthenticationHelper;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "authenticationHelper"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v1}, Lexpo/modules/securestore/AuthenticationHelper;->assertBiometricsSupport()V
    :try_end_0
    .catch Lexpo/modules/securestore/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 614
    const/4 v1, 0x1

    goto :goto_0

    .line 615
    :catch_0
    move-exception v1

    .line 616
    .local v1, "e":Lexpo/modules/securestore/AuthenticationException;
    const/4 v2, 0x0

    move v1, v2

    .end local v1    # "e":Lexpo/modules/securestore/AuthenticationException;
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 612
    nop

    .line 109
    .end local v0    # "$i$a$-FunctionWithoutArgs-SecureStoreModule$definition$1$6":I
    return-object v1
.end method
