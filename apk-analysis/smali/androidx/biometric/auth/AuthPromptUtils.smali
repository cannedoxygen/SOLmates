.class Landroidx/biometric/auth/AuthPromptUtils;
.super Ljava/lang/Object;
.source "AuthPromptUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/biometric/auth/AuthPromptUtils$AuthenticationCallbackWrapper;,
        Landroidx/biometric/auth/AuthPromptUtils$DefaultExecutor;,
        Landroidx/biometric/auth/AuthPromptUtils$AuthPromptWrapper;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createBiometricPrompt(Landroidx/biometric/auth/AuthPromptHost;Ljava/util/concurrent/Executor;Landroidx/biometric/auth/AuthPromptCallback;)Landroidx/biometric/BiometricPrompt;
    .locals 6
    .param p0, "host"    # Landroidx/biometric/auth/AuthPromptHost;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroidx/biometric/auth/AuthPromptCallback;

    .line 88
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/biometric/auth/AuthPromptUtils$DefaultExecutor;

    invoke-direct {v0}, Landroidx/biometric/auth/AuthPromptUtils$DefaultExecutor;-><init>()V

    .line 91
    .local v0, "executorOrDefault":Ljava/util/concurrent/Executor;
    :goto_0
    invoke-virtual {p0}, Landroidx/biometric/auth/AuthPromptHost;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 92
    new-instance v1, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Landroidx/biometric/auth/AuthPromptHost;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 93
    .local v1, "provider":Landroidx/lifecycle/ViewModelProvider;
    invoke-static {p2, v1}, Landroidx/biometric/auth/AuthPromptUtils;->wrapCallback(Landroidx/biometric/auth/AuthPromptCallback;Landroidx/lifecycle/ViewModelProvider;)Landroidx/biometric/auth/AuthPromptUtils$AuthenticationCallbackWrapper;

    move-result-object v2

    .line 94
    .local v2, "wrappedCallback":Landroidx/biometric/auth/AuthPromptUtils$AuthenticationCallbackWrapper;
    new-instance v3, Landroidx/biometric/BiometricPrompt;

    invoke-virtual {p0}, Landroidx/biometric/auth/AuthPromptHost;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4, v0, v2}, Landroidx/biometric/BiometricPrompt;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/util/concurrent/Executor;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V

    move-object v1, v3

    .line 95
    .end local v2    # "wrappedCallback":Landroidx/biometric/auth/AuthPromptUtils$AuthenticationCallbackWrapper;
    .local v1, "prompt":Landroidx/biometric/BiometricPrompt;
    goto :goto_1

    .end local v1    # "prompt":Landroidx/biometric/BiometricPrompt;
    :cond_1
    invoke-virtual {p0}, Landroidx/biometric/auth/AuthPromptHost;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroidx/biometric/auth/AuthPromptHost;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 96
    invoke-virtual {p0}, Landroidx/biometric/auth/AuthPromptHost;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 97
    .local v1, "activity":Landroidx/fragment/app/FragmentActivity;
    new-instance v2, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v2, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 98
    .local v2, "provider":Landroidx/lifecycle/ViewModelProvider;
    invoke-static {p2, v2}, Landroidx/biometric/auth/AuthPromptUtils;->wrapCallback(Landroidx/biometric/auth/AuthPromptCallback;Landroidx/lifecycle/ViewModelProvider;)Landroidx/biometric/auth/AuthPromptUtils$AuthenticationCallbackWrapper;

    move-result-object v3

    .line 99
    .local v3, "wrappedCallback":Landroidx/biometric/auth/AuthPromptUtils$AuthenticationCallbackWrapper;
    new-instance v4, Landroidx/biometric/BiometricPrompt;

    invoke-virtual {p0}, Landroidx/biometric/auth/AuthPromptHost;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v5

    invoke-direct {v4, v5, v0, v3}, Landroidx/biometric/BiometricPrompt;-><init>(Landroidx/fragment/app/Fragment;Ljava/util/concurrent/Executor;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V

    move-object v1, v4

    .line 100
    .end local v2    # "provider":Landroidx/lifecycle/ViewModelProvider;
    .end local v3    # "wrappedCallback":Landroidx/biometric/auth/AuthPromptUtils$AuthenticationCallbackWrapper;
    .local v1, "prompt":Landroidx/biometric/BiometricPrompt;
    nop

    .line 105
    :goto_1
    return-object v1

    .line 101
    .end local v1    # "prompt":Landroidx/biometric/BiometricPrompt;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "AuthPromptHost must contain a FragmentActivity or an attached Fragment."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static startAuthentication(Landroidx/biometric/auth/AuthPromptHost;Landroidx/biometric/BiometricPrompt$PromptInfo;Landroidx/biometric/BiometricPrompt$CryptoObject;Ljava/util/concurrent/Executor;Landroidx/biometric/auth/AuthPromptCallback;)Landroidx/biometric/auth/AuthPrompt;
    .locals 2
    .param p0, "host"    # Landroidx/biometric/auth/AuthPromptHost;
    .param p1, "promptInfo"    # Landroidx/biometric/BiometricPrompt$PromptInfo;
    .param p2, "crypto"    # Landroidx/biometric/BiometricPrompt$CryptoObject;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroidx/biometric/auth/AuthPromptCallback;

    .line 58
    nop

    .line 59
    invoke-static {p0, p3, p4}, Landroidx/biometric/auth/AuthPromptUtils;->createBiometricPrompt(Landroidx/biometric/auth/AuthPromptHost;Ljava/util/concurrent/Executor;Landroidx/biometric/auth/AuthPromptCallback;)Landroidx/biometric/BiometricPrompt;

    move-result-object v0

    .line 61
    .local v0, "biometricPrompt":Landroidx/biometric/BiometricPrompt;
    if-nez p2, :cond_0

    .line 62
    invoke-virtual {v0, p1}, Landroidx/biometric/BiometricPrompt;->authenticate(Landroidx/biometric/BiometricPrompt$PromptInfo;)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroidx/biometric/BiometricPrompt;->authenticate(Landroidx/biometric/BiometricPrompt$PromptInfo;Landroidx/biometric/BiometricPrompt$CryptoObject;)V

    .line 67
    :goto_0
    new-instance v1, Landroidx/biometric/auth/AuthPromptUtils$AuthPromptWrapper;

    invoke-direct {v1, v0}, Landroidx/biometric/auth/AuthPromptUtils$AuthPromptWrapper;-><init>(Landroidx/biometric/BiometricPrompt;)V

    return-object v1
.end method

.method private static wrapCallback(Landroidx/biometric/auth/AuthPromptCallback;Landroidx/lifecycle/ViewModelProvider;)Landroidx/biometric/auth/AuthPromptUtils$AuthenticationCallbackWrapper;
    .locals 2
    .param p0, "callback"    # Landroidx/biometric/auth/AuthPromptCallback;
    .param p1, "provider"    # Landroidx/lifecycle/ViewModelProvider;

    .line 118
    new-instance v0, Landroidx/biometric/auth/AuthPromptUtils$AuthenticationCallbackWrapper;

    const-class v1, Landroidx/biometric/BiometricViewModel;

    invoke-virtual {p1, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    check-cast v1, Landroidx/biometric/BiometricViewModel;

    invoke-direct {v0, p0, v1}, Landroidx/biometric/auth/AuthPromptUtils$AuthenticationCallbackWrapper;-><init>(Landroidx/biometric/auth/AuthPromptCallback;Landroidx/biometric/BiometricViewModel;)V

    return-object v0
.end method
