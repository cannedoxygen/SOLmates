.class public final Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$OnActivityResult$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ModuleDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/localauthentication/LocalAuthenticationModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroid/app/Activity;",
        "Lexpo/modules/kotlin/events/OnActivityResultPayload;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModuleDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModuleDefinitionBuilder.kt\nexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder$OnActivityResult$1\n+ 2 LocalAuthenticationModule.kt\nexpo/modules/localauthentication/LocalAuthenticationModule\n*L\n1#1,213:1\n107#2,26:214\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "sender",
        "Landroid/app/Activity;",
        "payload",
        "Lexpo/modules/kotlin/events/OnActivityResultPayload;",
        "invoke",
        "expo/modules/kotlin/modules/InternalModuleDefinitionBuilder$OnActivityResult$1"
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
.field final synthetic this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;


# direct methods
.method public constructor <init>(Lexpo/modules/localauthentication/LocalAuthenticationModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$OnActivityResult$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 166
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v1, p2

    check-cast v1, Lexpo/modules/kotlin/events/OnActivityResultPayload;

    invoke-virtual {p0, v0, v1}, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$OnActivityResult$1;->invoke(Landroid/app/Activity;Lexpo/modules/kotlin/events/OnActivityResultPayload;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroid/app/Activity;Lexpo/modules/kotlin/events/OnActivityResultPayload;)V
    .locals 10
    .param p1, "sender"    # Landroid/app/Activity;
    .param p2, "payload"    # Lexpo/modules/kotlin/events/OnActivityResultPayload;

    const-string v0, "sender"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payload"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    move-object v0, p1

    .local v0, "activity":Landroid/app/Activity;
    const/4 v1, 0x0

    .line 214
    .local v1, "$i$a$-OnActivityResult-LocalAuthenticationModule$definition$1$7":I
    invoke-virtual {p2}, Lexpo/modules/kotlin/events/OnActivityResultPayload;->component1()I

    move-result v2

    .local v2, "requestCode":I
    invoke-virtual {p2}, Lexpo/modules/kotlin/events/OnActivityResultPayload;->component2()I

    move-result v3

    .local v3, "resultCode":I
    invoke-virtual {p2}, Lexpo/modules/kotlin/events/OnActivityResultPayload;->component3()Landroid/content/Intent;

    move-result-object v4

    .line 215
    .local v4, "data":Landroid/content/Intent;
    const/4 v5, 0x6

    if-ne v2, v5, :cond_2

    .line 216
    const/4 v5, -0x1

    const/4 v6, 0x0

    if-ne v3, v5, :cond_0

    .line 217
    iget-object v5, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$OnActivityResult$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    invoke-static {v5}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$getPromise$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;)Lexpo/modules/kotlin/Promise;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v7, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$OnActivityResult$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    const/4 v8, 0x3

    invoke-static {v7, v6, v6, v8, v6}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->createResponse$default(Lexpo/modules/localauthentication/LocalAuthenticationModule;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object v7

    invoke-interface {v5, v7}, Lexpo/modules/kotlin/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 219
    :cond_0
    iget-object v5, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$OnActivityResult$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    invoke-static {v5}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$getPromise$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;)Lexpo/modules/kotlin/Promise;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 220
    iget-object v7, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$OnActivityResult$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    .line 221
    nop

    .line 222
    nop

    .line 220
    const-string v8, "user_cancel"

    const-string v9, "Device Credentials canceled"

    invoke-static {v7, v8, v9}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$createResponse(Lexpo/modules/localauthentication/LocalAuthenticationModule;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 219
    invoke-interface {v5, v7}, Lexpo/modules/kotlin/Promise;->resolve(Ljava/lang/Object;)V

    .line 227
    :cond_1
    :goto_0
    iget-object v5, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$OnActivityResult$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$setAuthenticating$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;Z)V

    .line 228
    iget-object v5, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$OnActivityResult$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    invoke-static {v5, v7}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$setRetryingWithDeviceCredentials$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;Z)V

    .line 229
    iget-object v5, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$OnActivityResult$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    invoke-static {v5, v6}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$setBiometricPrompt$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;Landroidx/biometric/BiometricPrompt;)V

    .line 230
    iget-object v5, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$OnActivityResult$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    invoke-static {v5, v6}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$setPromise$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;Lexpo/modules/kotlin/Promise;)V

    .line 231
    iget-object v5, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$OnActivityResult$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    invoke-static {v5, v6}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$setAuthOptions$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;Lexpo/modules/localauthentication/AuthOptions;)V

    goto :goto_1

    .line 232
    :cond_2
    instance-of v5, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v5, :cond_3

    .line 236
    move-object v5, v0

    check-cast v5, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v5}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    const-string v6, "androidx.biometric.BiometricFragment"

    invoke-virtual {v5, v6}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v5

    .line 237
    .local v5, "fragment":Landroidx/fragment/app/Fragment;
    if-eqz v5, :cond_3

    const v6, 0xffff

    and-int/2addr v6, v2

    invoke-virtual {v5, v6, v3, v4}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 239
    .end local v5    # "fragment":Landroidx/fragment/app/Fragment;
    :cond_3
    :goto_1
    nop

    .line 167
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "$i$a$-OnActivityResult-LocalAuthenticationModule$definition$1$7":I
    .end local v2    # "requestCode":I
    .end local v3    # "resultCode":I
    .end local v4    # "data":Landroid/content/Intent;
    return-void
.end method
