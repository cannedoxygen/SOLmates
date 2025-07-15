.class public final Lexpo/modules/localauthentication/LocalAuthenticationModule$authenticationCallback$1;
.super Landroidx/biometric/BiometricPrompt$AuthenticationCallback;
.source "LocalAuthenticationModule.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/localauthentication/LocalAuthenticationModule;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\r\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "expo/modules/localauthentication/LocalAuthenticationModule$authenticationCallback$1",
        "Landroidx/biometric/BiometricPrompt$AuthenticationCallback;",
        "onAuthenticationError",
        "",
        "errMsgId",
        "",
        "errString",
        "",
        "onAuthenticationSucceeded",
        "result",
        "Landroidx/biometric/BiometricPrompt$AuthenticationResult;",
        "expo-local-authentication_debug"
    }
    k = 0x1
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
.method constructor <init>(Lexpo/modules/localauthentication/LocalAuthenticationModule;)V
    .locals 0
    .param p1, "$receiver"    # Lexpo/modules/localauthentication/LocalAuthenticationModule;

    iput-object p1, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$authenticationCallback$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    .line 149
    invoke-direct {p0}, Landroidx/biometric/BiometricPrompt$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 6
    .param p1, "errMsgId"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    const-string v0, "errString"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$authenticationCallback$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    invoke-static {v0, p1}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$isBiometricUnavailable(Lexpo/modules/localauthentication/LocalAuthenticationModule;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$authenticationCallback$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    invoke-static {v0}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$isDeviceSecure(Lexpo/modules/localauthentication/LocalAuthenticationModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$authenticationCallback$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    invoke-static {v0}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$isRetryingWithDeviceCredentials$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$authenticationCallback$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    invoke-static {v0}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$getAuthOptions$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;)Lexpo/modules/localauthentication/AuthOptions;

    move-result-object v0

    .line 168
    .local v0, "options":Lexpo/modules/localauthentication/AuthOptions;
    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0}, Lexpo/modules/localauthentication/AuthOptions;->getDisableDeviceFallback()Z

    move-result v1

    .line 172
    .local v1, "disableDeviceFallback":Z
    if-nez v1, :cond_0

    .line 173
    iget-object v2, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$authenticationCallback$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    invoke-static {v2}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$getPromise$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;)Lexpo/modules/kotlin/Promise;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$authenticationCallback$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    .local v2, "it":Lexpo/modules/kotlin/Promise;
    const/4 v4, 0x0

    .line 174
    .local v4, "$i$a$-let-LocalAuthenticationModule$authenticationCallback$1$onAuthenticationError$1":I
    const/4 v5, 0x1

    invoke-static {v3, v5}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$setRetryingWithDeviceCredentials$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;Z)V

    .line 175
    invoke-static {v3, v0, v2}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$promptDeviceCredentialsFallback(Lexpo/modules/localauthentication/LocalAuthenticationModule;Lexpo/modules/localauthentication/AuthOptions;Lexpo/modules/kotlin/Promise;)V

    .line 176
    return-void

    .line 182
    .end local v0    # "options":Lexpo/modules/localauthentication/AuthOptions;
    .end local v1    # "disableDeviceFallback":Z
    .end local v2    # "it":Lexpo/modules/kotlin/Promise;
    .end local v4    # "$i$a$-let-LocalAuthenticationModule$authenticationCallback$1$onAuthenticationError$1":I
    :cond_0
    iget-object v0, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$authenticationCallback$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$setAuthenticating$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;Z)V

    .line 183
    iget-object v0, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$authenticationCallback$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    invoke-static {v0, v1}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$setRetryingWithDeviceCredentials$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;Z)V

    .line 184
    iget-object v0, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$authenticationCallback$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$setBiometricPrompt$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;Landroidx/biometric/BiometricPrompt;)V

    .line 185
    iget-object v0, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$authenticationCallback$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    invoke-static {v0}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$getPromise$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;)Lexpo/modules/kotlin/Promise;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 186
    iget-object v2, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$authenticationCallback$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    .line 187
    iget-object v3, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$authenticationCallback$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    invoke-static {v3, p1}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$convertErrorCode(Lexpo/modules/localauthentication/LocalAuthenticationModule;I)Ljava/lang/String;

    move-result-object v3

    .line 188
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 186
    invoke-static {v2, v3, v4}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$createResponse(Lexpo/modules/localauthentication/LocalAuthenticationModule;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 185
    invoke-interface {v0, v2}, Lexpo/modules/kotlin/Promise;->resolve(Ljava/lang/Object;)V

    .line 191
    :cond_1
    iget-object v0, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$authenticationCallback$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    invoke-static {v0, v1}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$setPromise$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;Lexpo/modules/kotlin/Promise;)V

    .line 192
    iget-object v0, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$authenticationCallback$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    invoke-static {v0, v1}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$setAuthOptions$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;Lexpo/modules/localauthentication/AuthOptions;)V

    .line 193
    return-void
.end method

.method public onAuthenticationSucceeded(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V
    .locals 7
    .param p1, "result"    # Landroidx/biometric/BiometricPrompt$AuthenticationResult;

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$authenticationCallback$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$setAuthenticating$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;Z)V

    .line 152
    iget-object v0, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$authenticationCallback$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    invoke-static {v0, v1}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$setRetryingWithDeviceCredentials$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;Z)V

    .line 153
    iget-object v0, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$authenticationCallback$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$setBiometricPrompt$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;Landroidx/biometric/BiometricPrompt;)V

    .line 154
    iget-object v0, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$authenticationCallback$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    invoke-static {v0}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$getPromise$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;)Lexpo/modules/kotlin/Promise;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v3, v2

    .local v3, "$this$onAuthenticationSucceeded_u24lambda_u240":Landroid/os/Bundle;
    const/4 v4, 0x0

    .line 156
    .local v4, "$i$a$-apply-LocalAuthenticationModule$authenticationCallback$1$onAuthenticationSucceeded$1":I
    const-string v5, "success"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 157
    nop

    .line 155
    .end local v3    # "$this$onAuthenticationSucceeded_u24lambda_u240":Landroid/os/Bundle;
    .end local v4    # "$i$a$-apply-LocalAuthenticationModule$authenticationCallback$1$onAuthenticationSucceeded$1":I
    nop

    .line 154
    invoke-interface {v0, v2}, Lexpo/modules/kotlin/Promise;->resolve(Ljava/lang/Object;)V

    .line 159
    :cond_0
    iget-object v0, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$authenticationCallback$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    invoke-static {v0, v1}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$setPromise$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;Lexpo/modules/kotlin/Promise;)V

    .line 160
    iget-object v0, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$authenticationCallback$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    invoke-static {v0, v1}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$setAuthOptions$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;Lexpo/modules/localauthentication/AuthOptions;)V

    .line 161
    return-void
.end method
