.class public final Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$OnCreate$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ModuleDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


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
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModuleDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModuleDefinitionBuilder.kt\nexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder$OnCreate$1\n+ 2 SecureStoreModule.kt\nexpo/modules/securestore/SecureStoreModule\n*L\n1#1,213:1\n79#2,7:214\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "expo/modules/kotlin/modules/InternalModuleDefinitionBuilder$OnCreate$1"
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

    iput-object p1, p0, Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$OnCreate$1;->this$0:Lexpo/modules/securestore/SecureStoreModule;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 110
    invoke-virtual {p0}, Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$OnCreate$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    .line 110
    const/4 v0, 0x0

    .line 214
    .local v0, "$i$a$-OnCreate-SecureStoreModule$definition$1$7":I
    iget-object v1, p0, Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$OnCreate$1;->this$0:Lexpo/modules/securestore/SecureStoreModule;

    new-instance v2, Lexpo/modules/securestore/AuthenticationHelper;

    iget-object v3, p0, Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$OnCreate$1;->this$0:Lexpo/modules/securestore/SecureStoreModule;

    invoke-virtual {v3}, Lexpo/modules/securestore/SecureStoreModule;->getReactContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$OnCreate$1;->this$0:Lexpo/modules/securestore/SecureStoreModule;

    invoke-virtual {v4}, Lexpo/modules/securestore/SecureStoreModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v4

    invoke-virtual {v4}, Lexpo/modules/kotlin/AppContext;->getLegacyModuleRegistry()Lexpo/modules/core/ModuleRegistry;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lexpo/modules/securestore/AuthenticationHelper;-><init>(Landroid/content/Context;Lexpo/modules/core/ModuleRegistry;)V

    invoke-static {v1, v2}, Lexpo/modules/securestore/SecureStoreModule;->access$setAuthenticationHelper$p(Lexpo/modules/securestore/SecureStoreModule;Lexpo/modules/securestore/AuthenticationHelper;)V

    .line 215
    iget-object v1, p0, Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$OnCreate$1;->this$0:Lexpo/modules/securestore/SecureStoreModule;

    new-instance v2, Lexpo/modules/securestore/encryptors/HybridAESEncryptor;

    iget-object v3, p0, Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$OnCreate$1;->this$0:Lexpo/modules/securestore/SecureStoreModule;

    invoke-virtual {v3}, Lexpo/modules/securestore/SecureStoreModule;->getReactContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$OnCreate$1;->this$0:Lexpo/modules/securestore/SecureStoreModule;

    invoke-static {v4}, Lexpo/modules/securestore/SecureStoreModule;->access$getMAESEncryptor$p(Lexpo/modules/securestore/SecureStoreModule;)Lexpo/modules/securestore/encryptors/AESEncryptor;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lexpo/modules/securestore/encryptors/HybridAESEncryptor;-><init>(Landroid/content/Context;Lexpo/modules/securestore/encryptors/AESEncryptor;)V

    invoke-static {v1, v2}, Lexpo/modules/securestore/SecureStoreModule;->access$setHybridAESEncryptor$p(Lexpo/modules/securestore/SecureStoreModule;Lexpo/modules/securestore/encryptors/HybridAESEncryptor;)V

    .line 217
    const-string v1, "AndroidKeyStore"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 218
    .local v1, "keyStore":Ljava/security/KeyStore;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 219
    iget-object v2, p0, Lexpo/modules/securestore/SecureStoreModule$definition$lambda$7$$inlined$OnCreate$1;->this$0:Lexpo/modules/securestore/SecureStoreModule;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2, v1}, Lexpo/modules/securestore/SecureStoreModule;->access$setKeyStore$p(Lexpo/modules/securestore/SecureStoreModule;Ljava/security/KeyStore;)V

    .line 220
    nop

    .line 110
    .end local v0    # "$i$a$-OnCreate-SecureStoreModule$definition$1$7":I
    .end local v1    # "keyStore":Ljava/security/KeyStore;
    return-void
.end method
