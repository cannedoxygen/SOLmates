.class public final Lexpo/modules/notifications/tokens/PushTokenModule$definition$lambda$4$$inlined$OnCreate$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ModuleDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/notifications/tokens/PushTokenModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
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
    value = "SMAP\nModuleDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModuleDefinitionBuilder.kt\nexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder$OnCreate$1\n+ 2 PushTokenModule.kt\nexpo/modules/notifications/tokens/PushTokenModule\n+ 3 AppContext.kt\nexpo/modules/kotlin/AppContext\n*L\n1#1,213:1\n29#2:214\n30#2,6:219\n134#3,4:215\n*S KotlinDebug\n*F\n+ 1 PushTokenModule.kt\nexpo/modules/notifications/tokens/PushTokenModule\n*L\n29#1:215,4\n*E\n"
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
.field final synthetic this$0:Lexpo/modules/notifications/tokens/PushTokenModule;


# direct methods
.method public constructor <init>(Lexpo/modules/notifications/tokens/PushTokenModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/notifications/tokens/PushTokenModule$definition$lambda$4$$inlined$OnCreate$1;->this$0:Lexpo/modules/notifications/tokens/PushTokenModule;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 110
    invoke-virtual {p0}, Lexpo/modules/notifications/tokens/PushTokenModule$definition$lambda$4$$inlined$OnCreate$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 6

    .line 110
    const/4 v0, 0x0

    .line 214
    .local v0, "$i$a$-OnCreate-PushTokenModule$definition$1$1":I
    iget-object v1, p0, Lexpo/modules/notifications/tokens/PushTokenModule$definition$lambda$4$$inlined$OnCreate$1;->this$0:Lexpo/modules/notifications/tokens/PushTokenModule;

    iget-object v2, p0, Lexpo/modules/notifications/tokens/PushTokenModule$definition$lambda$4$$inlined$OnCreate$1;->this$0:Lexpo/modules/notifications/tokens/PushTokenModule;

    invoke-virtual {v2}, Lexpo/modules/notifications/tokens/PushTokenModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v2

    .local v2, "this_$iv":Lexpo/modules/kotlin/AppContext;
    const/4 v3, 0x0

    .line 215
    .local v3, "$i$f$legacyModule":I
    nop

    .line 216
    :try_start_0
    invoke-virtual {v2}, Lexpo/modules/kotlin/AppContext;->getLegacyModuleRegistry()Lexpo/modules/core/ModuleRegistry;

    move-result-object v4

    const-class v5, Lexpo/modules/core/interfaces/services/EventEmitter;

    invoke-virtual {v4, v5}, Lexpo/modules/core/ModuleRegistry;->getModule(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 217
    :catch_0
    move-exception v4

    .line 218
    .local v4, "_$iv":Ljava/lang/Exception;
    const/4 v5, 0x0

    move-object v4, v5

    .line 215
    .end local v4    # "_$iv":Ljava/lang/Exception;
    :goto_0
    nop

    .line 214
    .end local v2    # "this_$iv":Lexpo/modules/kotlin/AppContext;
    .end local v3    # "$i$f$legacyModule":I
    check-cast v4, Lexpo/modules/core/interfaces/services/EventEmitter;

    if-eqz v4, :cond_1

    invoke-static {v1, v4}, Lexpo/modules/notifications/tokens/PushTokenModule;->access$setEventEmitter$p(Lexpo/modules/notifications/tokens/PushTokenModule;Lexpo/modules/core/interfaces/services/EventEmitter;)V

    .line 223
    iget-object v1, p0, Lexpo/modules/notifications/tokens/PushTokenModule$definition$lambda$4$$inlined$OnCreate$1;->this$0:Lexpo/modules/notifications/tokens/PushTokenModule;

    invoke-static {v1}, Lexpo/modules/notifications/tokens/PushTokenModule;->access$getTokenManager(Lexpo/modules/notifications/tokens/PushTokenModule;)Lexpo/modules/notifications/tokens/interfaces/PushTokenManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lexpo/modules/notifications/tokens/PushTokenModule$definition$lambda$4$$inlined$OnCreate$1;->this$0:Lexpo/modules/notifications/tokens/PushTokenModule;

    check-cast v2, Lexpo/modules/notifications/tokens/interfaces/PushTokenListener;

    invoke-interface {v1, v2}, Lexpo/modules/notifications/tokens/interfaces/PushTokenManager;->addListener(Lexpo/modules/notifications/tokens/interfaces/PushTokenListener;)V

    .line 224
    :cond_0
    nop

    .line 110
    .end local v0    # "$i$a$-OnCreate-PushTokenModule$definition$1$1":I
    return-void

    .line 219
    .restart local v0    # "$i$a$-OnCreate-PushTokenModule$definition$1$1":I
    :cond_1
    new-instance v1, Lexpo/modules/notifications/ModuleNotFoundException;

    const-class v2, Lexpo/modules/core/interfaces/services/EventEmitter;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-direct {v1, v2}, Lexpo/modules/notifications/ModuleNotFoundException;-><init>(Lkotlin/reflect/KClass;)V

    throw v1
.end method
