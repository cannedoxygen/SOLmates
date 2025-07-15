.class public Landroidx/biometric/BiometricFragment;
.super Landroidx/fragment/app/Fragment;
.source "BiometricFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/biometric/BiometricFragment$Api21Impl;,
        Landroidx/biometric/BiometricFragment$Api28Impl;,
        Landroidx/biometric/BiometricFragment$Api29Impl;,
        Landroidx/biometric/BiometricFragment$Api30Impl;,
        Landroidx/biometric/BiometricFragment$DefaultInjector;,
        Landroidx/biometric/BiometricFragment$Injector;,
        Landroidx/biometric/BiometricFragment$StopIgnoringCancelRunnable;,
        Landroidx/biometric/BiometricFragment$StopDelayingPromptRunnable;,
        Landroidx/biometric/BiometricFragment$ShowPromptForAuthenticationRunnable;,
        Landroidx/biometric/BiometricFragment$PromptExecutor;
    }
.end annotation


# static fields
.field static final CANCELED_FROM_CLIENT:I = 0x3

.field static final CANCELED_FROM_INTERNAL:I = 0x0

.field static final CANCELED_FROM_NEGATIVE_BUTTON:I = 0x2

.field static final CANCELED_FROM_USER:I = 0x1

.field private static final DISMISS_INSTANTLY_DELAY_MS:I = 0x1f4

.field private static final FINGERPRINT_DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "androidx.biometric.FingerprintDialogFragment"

.field private static final HIDE_DIALOG_DELAY_MS:I = 0x7d0

.field private static final REQUEST_CONFIRM_CREDENTIAL:I = 0x1

.field private static final SHOW_PROMPT_DELAY_MS:I = 0x258

.field private static final TAG:Ljava/lang/String; = "BiometricFragment"


# instance fields
.field private mInjector:Landroidx/biometric/BiometricFragment$Injector;

.field private mViewModel:Landroidx/biometric/BiometricViewModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 282
    new-instance v0, Landroidx/biometric/BiometricFragment$DefaultInjector;

    invoke-direct {v0}, Landroidx/biometric/BiometricFragment$DefaultInjector;-><init>()V

    iput-object v0, p0, Landroidx/biometric/BiometricFragment;->mInjector:Landroidx/biometric/BiometricFragment$Injector;

    return-void
.end method

.method private static checkForFingerprintPreAuthenticationErrors(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;)I
    .locals 1
    .param p0, "fingerprintManager"    # Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    .line 1141
    invoke-virtual {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->isHardwareDetected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1142
    const/16 v0, 0xc

    return v0

    .line 1143
    :cond_0
    invoke-virtual {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->hasEnrolledFingerprints()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1144
    const/16 v0, 0xb

    return v0

    .line 1146
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private connectViewModel()V
    .locals 3

    .line 373
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->getViewModel()Landroidx/biometric/BiometricViewModel;

    move-result-object v0

    .line 374
    .local v0, "viewModel":Landroidx/biometric/BiometricViewModel;
    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricViewModel;->setClientActivity(Landroidx/fragment/app/FragmentActivity;)V

    .line 377
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->getAuthenticationResult()Landroidx/lifecycle/LiveData;

    move-result-object v1

    new-instance v2, Landroidx/biometric/BiometricFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Landroidx/biometric/BiometricFragment$$ExternalSyntheticLambda2;-><init>(Landroidx/biometric/BiometricFragment;Landroidx/biometric/BiometricViewModel;)V

    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 385
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->getAuthenticationError()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    new-instance v2, Landroidx/biometric/BiometricFragment$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0}, Landroidx/biometric/BiometricFragment$$ExternalSyntheticLambda3;-><init>(Landroidx/biometric/BiometricFragment;Landroidx/biometric/BiometricViewModel;)V

    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 395
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->getAuthenticationHelpMessage()Landroidx/lifecycle/LiveData;

    move-result-object v1

    new-instance v2, Landroidx/biometric/BiometricFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0}, Landroidx/biometric/BiometricFragment$$ExternalSyntheticLambda4;-><init>(Landroidx/biometric/BiometricFragment;Landroidx/biometric/BiometricViewModel;)V

    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 403
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->isAuthenticationFailurePending()Landroidx/lifecycle/LiveData;

    move-result-object v1

    new-instance v2, Landroidx/biometric/BiometricFragment$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0}, Landroidx/biometric/BiometricFragment$$ExternalSyntheticLambda5;-><init>(Landroidx/biometric/BiometricFragment;Landroidx/biometric/BiometricViewModel;)V

    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 411
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->isNegativeButtonPressPending()Landroidx/lifecycle/LiveData;

    move-result-object v1

    new-instance v2, Landroidx/biometric/BiometricFragment$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, v0}, Landroidx/biometric/BiometricFragment$$ExternalSyntheticLambda6;-><init>(Landroidx/biometric/BiometricFragment;Landroidx/biometric/BiometricViewModel;)V

    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 423
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->isFingerprintDialogCancelPending()Landroidx/lifecycle/LiveData;

    move-result-object v1

    new-instance v2, Landroidx/biometric/BiometricFragment$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, v0}, Landroidx/biometric/BiometricFragment$$ExternalSyntheticLambda7;-><init>(Landroidx/biometric/BiometricFragment;Landroidx/biometric/BiometricViewModel;)V

    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 432
    :cond_0
    return-void
.end method

.method private dismissFingerprintDialog()V
    .locals 4

    .line 756
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->getViewModel()Landroidx/biometric/BiometricViewModel;

    move-result-object v0

    .line 757
    .local v0, "viewModel":Landroidx/biometric/BiometricViewModel;
    if-eqz v0, :cond_0

    .line 758
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricViewModel;->setPromptShowing(Z)V

    .line 761
    :cond_0
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 762
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 763
    .local v1, "fragmentManager":Landroidx/fragment/app/FragmentManager;
    nop

    .line 764
    const-string v2, "androidx.biometric.FingerprintDialogFragment"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Landroidx/biometric/FingerprintDialogFragment;

    .line 766
    .local v2, "fingerprintDialog":Landroidx/biometric/FingerprintDialogFragment;
    if-eqz v2, :cond_2

    .line 767
    invoke-virtual {v2}, Landroidx/biometric/FingerprintDialogFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 768
    invoke-virtual {v2}, Landroidx/biometric/FingerprintDialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 770
    :cond_1
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    .line 771
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 775
    .end local v1    # "fragmentManager":Landroidx/fragment/app/FragmentManager;
    .end local v2    # "fingerprintDialog":Landroidx/biometric/FingerprintDialogFragment;
    :cond_2
    :goto_0
    return-void
.end method

.method private getDismissDialogDelay()I
    .locals 2

    .line 1277
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1278
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/biometric/DeviceUtils;->shouldHideFingerprintDialog(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1279
    const/4 v1, 0x0

    goto :goto_0

    .line 1280
    :cond_0
    const/16 v1, 0x7d0

    .line 1278
    :goto_0
    return v1
.end method

.method private getViewModel()Landroidx/biometric/BiometricViewModel;
    .locals 2

    .line 362
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    if-nez v0, :cond_0

    .line 363
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mInjector:Landroidx/biometric/BiometricFragment$Injector;

    invoke-static {p0}, Landroidx/biometric/BiometricPrompt;->getHostActivityOrContext(Landroidx/fragment/app/Fragment;)Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/biometric/BiometricFragment$Injector;->getViewModel(Landroid/content/Context;)Landroidx/biometric/BiometricViewModel;

    move-result-object v0

    iput-object v0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 365
    :cond_0
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    return-object v0
.end method

.method private handleConfirmCredentialResult(I)V
    .locals 4
    .param p1, "resultCode"    # I

    .line 975
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 976
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->getViewModel()Landroidx/biometric/BiometricViewModel;

    move-result-object v0

    .line 978
    .local v0, "viewModel":Landroidx/biometric/BiometricViewModel;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->isUsingKeyguardManagerForBiometricAndCredential()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 981
    const/4 v1, -0x1

    .line 982
    .local v1, "authenticationType":I
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/biometric/BiometricViewModel;->setUsingKeyguardManagerForBiometricAndCredential(Z)V

    goto :goto_0

    .line 984
    .end local v1    # "authenticationType":I
    :cond_0
    const/4 v1, 0x1

    .line 988
    .restart local v1    # "authenticationType":I
    :goto_0
    new-instance v2, Landroidx/biometric/BiometricPrompt$AuthenticationResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Landroidx/biometric/BiometricPrompt$AuthenticationResult;-><init>(Landroidx/biometric/BiometricPrompt$CryptoObject;I)V

    invoke-direct {p0, v2}, Landroidx/biometric/BiometricFragment;->sendSuccessAndDismiss(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V

    .line 991
    .end local v0    # "viewModel":Landroidx/biometric/BiometricViewModel;
    .end local v1    # "authenticationType":I
    goto :goto_1

    .line 993
    :cond_1
    sget v0, Landroidx/biometric/R$string;->generic_error_user_canceled:I

    .line 995
    invoke-virtual {p0, v0}, Landroidx/biometric/BiometricFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 993
    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Landroidx/biometric/BiometricFragment;->sendErrorAndDismiss(ILjava/lang/CharSequence;)V

    .line 997
    :goto_1
    return-void
.end method

.method private isChangingConfigurations()Z
    .locals 2

    .line 1262
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 1263
    .local v0, "activity":Landroidx/fragment/app/FragmentActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isChangingConfigurations()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isFingerprintDialogNeededForCrypto()Z
    .locals 4

    .line 1185
    invoke-static {p0}, Landroidx/biometric/BiometricPrompt;->getHostActivityOrContext(Landroidx/fragment/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    .line 1186
    .local v0, "host":Landroid/content/Context;
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->getViewModel()Landroidx/biometric/BiometricViewModel;

    move-result-object v1

    .line 1187
    .local v1, "viewModel":Landroidx/biometric/BiometricViewModel;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 1189
    invoke-virtual {v1}, Landroidx/biometric/BiometricViewModel;->getCryptoObject()Landroidx/biometric/BiometricPrompt$CryptoObject;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1190
    invoke-static {v0, v2, v3}, Landroidx/biometric/DeviceUtils;->shouldUseFingerprintForCrypto(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1187
    :goto_0
    return v2
.end method

.method private isFingerprintDialogNeededForErrorHandling()Z
    .locals 2

    .line 1203
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mInjector:Landroidx/biometric/BiometricFragment$Injector;

    .line 1204
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/biometric/BiometricFragment$Injector;->isFingerprintHardwarePresent(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1203
    :goto_0
    return v0
.end method

.method private isKeyguardManagerNeededForBiometricAndCredential()Z
    .locals 5

    .line 1235
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1236
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v0, v2}, Landroidx/biometric/DeviceUtils;->shouldUseKeyguardManagerForBiometricAndCredential(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1239
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->getViewModel()Landroidx/biometric/BiometricViewModel;

    move-result-object v2

    .line 1240
    .local v2, "viewModel":Landroidx/biometric/BiometricViewModel;
    if-eqz v2, :cond_0

    .line 1241
    invoke-virtual {v2}, Landroidx/biometric/BiometricViewModel;->getAllowedAuthenticators()I

    move-result v3

    goto :goto_0

    .line 1242
    :cond_0
    move v3, v1

    :goto_0
    nop

    .line 1244
    .local v3, "allowedAuthenticators":I
    if-eqz v2, :cond_1

    .line 1245
    invoke-static {v3}, Landroidx/biometric/AuthenticatorUtils;->isWeakBiometricAllowed(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1246
    invoke-static {v3}, Landroidx/biometric/AuthenticatorUtils;->isDeviceCredentialAllowed(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1247
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroidx/biometric/BiometricViewModel;->setUsingKeyguardManagerForBiometricAndCredential(Z)V

    .line 1248
    return v1

    .line 1252
    .end local v2    # "viewModel":Landroidx/biometric/BiometricViewModel;
    .end local v3    # "allowedAuthenticators":I
    :cond_1
    return v1
.end method

.method private isKeyguardManagerNeededForCredential()Z
    .locals 4

    .line 1208
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1212
    .local v0, "context":Landroid/content/Context;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroidx/biometric/BiometricFragment;->mInjector:Landroidx/biometric/BiometricFragment$Injector;

    .line 1213
    invoke-interface {v1, v0}, Landroidx/biometric/BiometricFragment$Injector;->isFingerprintHardwarePresent(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/biometric/BiometricFragment;->mInjector:Landroidx/biometric/BiometricFragment$Injector;

    .line 1214
    invoke-interface {v1, v0}, Landroidx/biometric/BiometricFragment$Injector;->isFaceHardwarePresent(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/biometric/BiometricFragment;->mInjector:Landroidx/biometric/BiometricFragment$Injector;

    .line 1215
    invoke-interface {v1, v0}, Landroidx/biometric/BiometricFragment$Injector;->isIrisHardwarePresent(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1216
    return v3

    .line 1220
    :cond_0
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->isManagingDeviceCredentialButton()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1221
    invoke-static {v0}, Landroidx/biometric/BiometricManager;->from(Landroid/content/Context;)Landroidx/biometric/BiometricManager;

    move-result-object v1

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroidx/biometric/BiometricManager;->canAuthenticate(I)I

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 1220
    :goto_0
    return v3
.end method

.method private isUsingFingerprintDialog()Z
    .locals 2

    .line 1171
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 1172
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->isFingerprintDialogNeededForCrypto()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1173
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->isFingerprintDialogNeededForErrorHandling()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1171
    :goto_1
    return v0
.end method

.method static synthetic lambda$showFingerprintDialogForAuthentication$6(Landroidx/biometric/BiometricViewModel;)V
    .locals 1
    .param p0, "viewModel"    # Landroidx/biometric/BiometricViewModel;

    .line 546
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/biometric/BiometricViewModel;->setFingerprintDialogDismissedInstantly(Z)V

    return-void
.end method

.method private launchConfirmCredentialActivity()V
    .locals 10

    .line 919
    invoke-static {p0}, Landroidx/biometric/BiometricPrompt;->getHostActivityOrContext(Landroidx/fragment/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    .line 920
    .local v0, "host":Landroid/content/Context;
    const-string v1, "BiometricFragment"

    if-nez v0, :cond_0

    .line 921
    const-string v2, "Failed to check device credential. Client context not found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    return-void

    .line 925
    :cond_0
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->getViewModel()Landroidx/biometric/BiometricViewModel;

    move-result-object v2

    .line 926
    .local v2, "viewModel":Landroidx/biometric/BiometricViewModel;
    if-nez v2, :cond_1

    .line 927
    const-string v3, "Failed to check device credential. View model was null."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    return-void

    .line 932
    :cond_1
    invoke-static {v0}, Landroidx/biometric/KeyguardUtils;->getKeyguardManager(Landroid/content/Context;)Landroid/app/KeyguardManager;

    move-result-object v1

    .line 933
    .local v1, "keyguardManager":Landroid/app/KeyguardManager;
    if-nez v1, :cond_2

    .line 934
    sget v3, Landroidx/biometric/R$string;->generic_error_no_keyguard:I

    .line 936
    invoke-virtual {p0, v3}, Landroidx/biometric/BiometricFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 934
    const/16 v4, 0xc

    invoke-virtual {p0, v4, v3}, Landroidx/biometric/BiometricFragment;->sendErrorAndDismiss(ILjava/lang/CharSequence;)V

    .line 937
    return-void

    .line 941
    :cond_2
    invoke-virtual {v2}, Landroidx/biometric/BiometricViewModel;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 942
    .local v3, "title":Ljava/lang/CharSequence;
    invoke-virtual {v2}, Landroidx/biometric/BiometricViewModel;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v4

    .line 943
    .local v4, "subtitle":Ljava/lang/CharSequence;
    invoke-virtual {v2}, Landroidx/biometric/BiometricViewModel;->getDescription()Ljava/lang/CharSequence;

    move-result-object v5

    .line 944
    .local v5, "description":Ljava/lang/CharSequence;
    if-eqz v4, :cond_3

    move-object v6, v4

    goto :goto_0

    :cond_3
    move-object v6, v5

    .line 946
    .local v6, "credentialDescription":Ljava/lang/CharSequence;
    :goto_0
    invoke-static {v1, v3, v6}, Landroidx/biometric/BiometricFragment$Api21Impl;->createConfirmDeviceCredentialIntent(Landroid/app/KeyguardManager;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v7

    .line 950
    .local v7, "intent":Landroid/content/Intent;
    if-nez v7, :cond_4

    .line 951
    sget v8, Landroidx/biometric/R$string;->generic_error_no_device_credential:I

    .line 953
    invoke-virtual {p0, v8}, Landroidx/biometric/BiometricFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 951
    const/16 v9, 0xe

    invoke-virtual {p0, v9, v8}, Landroidx/biometric/BiometricFragment;->sendErrorAndDismiss(ILjava/lang/CharSequence;)V

    .line 954
    return-void

    .line 957
    :cond_4
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroidx/biometric/BiometricViewModel;->setConfirmingDeviceCredential(Z)V

    .line 960
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->isUsingFingerprintDialog()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 961
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->dismissFingerprintDialog()V

    .line 965
    :cond_5
    const/high16 v9, 0x8080000

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 966
    invoke-virtual {p0, v7, v8}, Landroidx/biometric/BiometricFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 967
    return-void
.end method

.method static newInstance()Landroidx/biometric/BiometricFragment;
    .locals 1

    .line 295
    new-instance v0, Landroidx/biometric/BiometricFragment;

    invoke-direct {v0}, Landroidx/biometric/BiometricFragment;-><init>()V

    return-object v0
.end method

.method static newInstance(Landroidx/biometric/BiometricFragment$Injector;)Landroidx/biometric/BiometricFragment;
    .locals 1
    .param p0, "injector"    # Landroidx/biometric/BiometricFragment$Injector;

    .line 305
    new-instance v0, Landroidx/biometric/BiometricFragment;

    invoke-direct {v0}, Landroidx/biometric/BiometricFragment;-><init>()V

    .line 306
    .local v0, "fragment":Landroidx/biometric/BiometricFragment;
    iput-object p0, v0, Landroidx/biometric/BiometricFragment;->mInjector:Landroidx/biometric/BiometricFragment$Injector;

    .line 307
    return-object v0
.end method

.method private sendErrorToClient(ILjava/lang/CharSequence;)V
    .locals 3
    .param p1, "errorCode"    # I
    .param p2, "errorString"    # Ljava/lang/CharSequence;

    .line 1083
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->getViewModel()Landroidx/biometric/BiometricViewModel;

    move-result-object v0

    .line 1084
    .local v0, "viewModel":Landroidx/biometric/BiometricViewModel;
    const-string v1, "BiometricFragment"

    if-nez v0, :cond_0

    .line 1085
    const-string v2, "Unable to send error to client. View model was null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    return-void

    .line 1089
    :cond_0
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->isConfirmingDeviceCredential()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1090
    const-string v2, "Error not sent to client. User is confirming their device credential."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    return-void

    .line 1094
    :cond_1
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->isAwaitingResult()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1095
    const-string v2, "Error not sent to client. Client is not awaiting a result."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    return-void

    .line 1099
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricViewModel;->setAwaitingResult(Z)V

    .line 1100
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->getClientExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroidx/biometric/BiometricFragment$2;

    invoke-direct {v2, p0, v0, p1, p2}, Landroidx/biometric/BiometricFragment$2;-><init>(Landroidx/biometric/BiometricFragment;Landroidx/biometric/BiometricViewModel;ILjava/lang/CharSequence;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1106
    return-void
.end method

.method private sendFailureToClient()V
    .locals 3

    .line 1114
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->getViewModel()Landroidx/biometric/BiometricViewModel;

    move-result-object v0

    .line 1115
    .local v0, "viewModel":Landroidx/biometric/BiometricViewModel;
    const-string v1, "BiometricFragment"

    if-nez v0, :cond_0

    .line 1116
    const-string v2, "Unable to send failure to client. View model was null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    return-void

    .line 1120
    :cond_0
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->isAwaitingResult()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1121
    const-string v2, "Failure not sent to client. Client is not awaiting a result."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    return-void

    .line 1125
    :cond_1
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->getClientExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroidx/biometric/BiometricFragment$3;

    invoke-direct {v2, p0, v0}, Landroidx/biometric/BiometricFragment$3;-><init>(Landroidx/biometric/BiometricFragment;Landroidx/biometric/BiometricViewModel;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1131
    return-void
.end method

.method private sendSuccessAndDismiss(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V
    .locals 0
    .param p1, "result"    # Landroidx/biometric/BiometricPrompt$AuthenticationResult;

    .line 1023
    invoke-direct {p0, p1}, Landroidx/biometric/BiometricFragment;->sendSuccessToClient(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V

    .line 1024
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->dismiss()V

    .line 1025
    return-void
.end method

.method private sendSuccessToClient(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V
    .locals 3
    .param p1, "result"    # Landroidx/biometric/BiometricPrompt$AuthenticationResult;

    .line 1052
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->getViewModel()Landroidx/biometric/BiometricViewModel;

    move-result-object v0

    .line 1053
    .local v0, "viewModel":Landroidx/biometric/BiometricViewModel;
    const-string v1, "BiometricFragment"

    if-nez v0, :cond_0

    .line 1054
    const-string v2, "Unable to send success to client. View model was null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    return-void

    .line 1058
    :cond_0
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->isAwaitingResult()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1059
    const-string v2, "Success not sent to client. Client is not awaiting a result."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    return-void

    .line 1063
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricViewModel;->setAwaitingResult(Z)V

    .line 1064
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->getClientExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroidx/biometric/BiometricFragment$1;

    invoke-direct {v2, p0, v0, p1}, Landroidx/biometric/BiometricFragment$1;-><init>(Landroidx/biometric/BiometricFragment;Landroidx/biometric/BiometricViewModel;Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1071
    return-void
.end method

.method private showBiometricPromptForAuthentication()V
    .locals 10

    .line 565
    nop

    .line 566
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/biometric/BiometricFragment$Api28Impl;->createPromptBuilder(Landroid/content/Context;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    .line 568
    .local v0, "builder":Landroid/hardware/biometrics/BiometricPrompt$Builder;
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->getViewModel()Landroidx/biometric/BiometricViewModel;

    move-result-object v1

    .line 569
    .local v1, "viewModel":Landroidx/biometric/BiometricViewModel;
    if-nez v1, :cond_0

    .line 570
    const-string v2, "BiometricFragment"

    const-string v3, "Not showing biometric prompt. View model was null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    return-void

    .line 574
    :cond_0
    invoke-virtual {v1}, Landroidx/biometric/BiometricViewModel;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 575
    .local v2, "title":Ljava/lang/CharSequence;
    invoke-virtual {v1}, Landroidx/biometric/BiometricViewModel;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 576
    .local v3, "subtitle":Ljava/lang/CharSequence;
    invoke-virtual {v1}, Landroidx/biometric/BiometricViewModel;->getDescription()Ljava/lang/CharSequence;

    move-result-object v4

    .line 577
    .local v4, "description":Ljava/lang/CharSequence;
    if-eqz v2, :cond_1

    .line 578
    invoke-static {v0, v2}, Landroidx/biometric/BiometricFragment$Api28Impl;->setTitle(Landroid/hardware/biometrics/BiometricPrompt$Builder;Ljava/lang/CharSequence;)V

    .line 580
    :cond_1
    if-eqz v3, :cond_2

    .line 581
    invoke-static {v0, v3}, Landroidx/biometric/BiometricFragment$Api28Impl;->setSubtitle(Landroid/hardware/biometrics/BiometricPrompt$Builder;Ljava/lang/CharSequence;)V

    .line 583
    :cond_2
    if-eqz v4, :cond_3

    .line 584
    invoke-static {v0, v4}, Landroidx/biometric/BiometricFragment$Api28Impl;->setDescription(Landroid/hardware/biometrics/BiometricPrompt$Builder;Ljava/lang/CharSequence;)V

    .line 587
    :cond_3
    invoke-virtual {v1}, Landroidx/biometric/BiometricViewModel;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 588
    .local v5, "negativeButtonText":Ljava/lang/CharSequence;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 589
    nop

    .line 592
    invoke-virtual {v1}, Landroidx/biometric/BiometricViewModel;->getClientExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    .line 593
    invoke-virtual {v1}, Landroidx/biometric/BiometricViewModel;->getNegativeButtonListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v7

    .line 589
    invoke-static {v0, v5, v6, v7}, Landroidx/biometric/BiometricFragment$Api28Impl;->setNegativeButton(Landroid/hardware/biometrics/BiometricPrompt$Builder;Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)V

    .line 597
    :cond_4
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1d

    if-lt v6, v7, :cond_5

    .line 598
    invoke-virtual {v1}, Landroidx/biometric/BiometricViewModel;->isConfirmationRequired()Z

    move-result v6

    invoke-static {v0, v6}, Landroidx/biometric/BiometricFragment$Api29Impl;->setConfirmationRequired(Landroid/hardware/biometrics/BiometricPrompt$Builder;Z)V

    .line 602
    :cond_5
    nop

    .line 603
    invoke-virtual {v1}, Landroidx/biometric/BiometricViewModel;->getAllowedAuthenticators()I

    move-result v6

    .line 604
    .local v6, "authenticators":I
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1e

    if-lt v8, v9, :cond_6

    .line 605
    invoke-static {v0, v6}, Landroidx/biometric/BiometricFragment$Api30Impl;->setAllowedAuthenticators(Landroid/hardware/biometrics/BiometricPrompt$Builder;I)V

    goto :goto_0

    .line 606
    :cond_6
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v7, :cond_7

    .line 607
    nop

    .line 608
    invoke-static {v6}, Landroidx/biometric/AuthenticatorUtils;->isDeviceCredentialAllowed(I)Z

    move-result v7

    .line 607
    invoke-static {v0, v7}, Landroidx/biometric/BiometricFragment$Api29Impl;->setDeviceCredentialAllowed(Landroid/hardware/biometrics/BiometricPrompt$Builder;Z)V

    .line 611
    :cond_7
    :goto_0
    invoke-static {v0}, Landroidx/biometric/BiometricFragment$Api28Impl;->buildPrompt(Landroid/hardware/biometrics/BiometricPrompt$Builder;)Landroid/hardware/biometrics/BiometricPrompt;

    move-result-object v7

    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Landroidx/biometric/BiometricFragment;->authenticateWithBiometricPrompt(Landroid/hardware/biometrics/BiometricPrompt;Landroid/content/Context;)V

    .line 612
    return-void
.end method

.method private showFingerprintDialogForAuthentication()V
    .locals 8

    .line 526
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 527
    .local v0, "context":Landroid/content/Context;
    nop

    .line 528
    invoke-static {v0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->from(Landroid/content/Context;)Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    move-result-object v1

    .line 529
    .local v1, "fingerprintManagerCompat":Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;
    invoke-static {v1}, Landroidx/biometric/BiometricFragment;->checkForFingerprintPreAuthenticationErrors(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;)I

    move-result v2

    .line 530
    .local v2, "errorCode":I
    if-eqz v2, :cond_0

    .line 531
    nop

    .line 532
    invoke-static {v0, v2}, Landroidx/biometric/ErrorUtils;->getFingerprintErrorString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 531
    invoke-virtual {p0, v2, v3}, Landroidx/biometric/BiometricFragment;->sendErrorAndDismiss(ILjava/lang/CharSequence;)V

    .line 533
    return-void

    .line 536
    :cond_0
    nop

    .line 541
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->getViewModel()Landroidx/biometric/BiometricViewModel;

    move-result-object v3

    .line 542
    .local v3, "viewModel":Landroidx/biometric/BiometricViewModel;
    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 543
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroidx/biometric/BiometricViewModel;->setFingerprintDialogDismissedInstantly(Z)V

    .line 544
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, v4}, Landroidx/biometric/DeviceUtils;->shouldHideFingerprintDialog(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 545
    iget-object v4, p0, Landroidx/biometric/BiometricFragment;->mInjector:Landroidx/biometric/BiometricFragment$Injector;

    invoke-interface {v4}, Landroidx/biometric/BiometricFragment$Injector;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroidx/biometric/BiometricFragment$$ExternalSyntheticLambda1;

    invoke-direct {v5, v3}, Landroidx/biometric/BiometricFragment$$ExternalSyntheticLambda1;-><init>(Landroidx/biometric/BiometricViewModel;)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 549
    invoke-static {}, Landroidx/biometric/FingerprintDialogFragment;->newInstance()Landroidx/biometric/FingerprintDialogFragment;

    move-result-object v4

    .line 550
    .local v4, "dialog":Landroidx/biometric/FingerprintDialogFragment;
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    const-string v6, "androidx.biometric.FingerprintDialogFragment"

    invoke-virtual {v4, v5, v6}, Landroidx/biometric/FingerprintDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 553
    .end local v4    # "dialog":Landroidx/biometric/FingerprintDialogFragment;
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/biometric/BiometricViewModel;->setCanceledFrom(I)V

    .line 555
    invoke-virtual {p0, v1, v0}, Landroidx/biometric/BiometricFragment;->authenticateWithFingerprint(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;Landroid/content/Context;)V

    .line 557
    :cond_2
    return-void
.end method

.method private showFingerprintErrorMessage(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "errorMessage"    # Ljava/lang/CharSequence;

    .line 1005
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->getViewModel()Landroidx/biometric/BiometricViewModel;

    move-result-object v0

    .line 1006
    .local v0, "viewModel":Landroidx/biometric/BiometricViewModel;
    if-eqz v0, :cond_1

    .line 1007
    if-eqz p1, :cond_0

    .line 1008
    move-object v1, p1

    goto :goto_0

    .line 1009
    :cond_0
    sget v1, Landroidx/biometric/R$string;->default_error_msg:I

    invoke-virtual {p0, v1}, Landroidx/biometric/BiometricFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    nop

    .line 1010
    .local v1, "helpMessage":Ljava/lang/CharSequence;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroidx/biometric/BiometricViewModel;->setFingerprintDialogState(I)V

    .line 1011
    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricViewModel;->setFingerprintDialogHelpMessage(Ljava/lang/CharSequence;)V

    .line 1013
    .end local v1    # "helpMessage":Ljava/lang/CharSequence;
    :cond_1
    return-void
.end method


# virtual methods
.method authenticate(Landroidx/biometric/BiometricPrompt$PromptInfo;Landroidx/biometric/BiometricPrompt$CryptoObject;)V
    .locals 7
    .param p1, "info"    # Landroidx/biometric/BiometricPrompt$PromptInfo;
    .param p2, "crypto"    # Landroidx/biometric/BiometricPrompt$CryptoObject;

    .line 444
    invoke-static {p0}, Landroidx/biometric/BiometricPrompt;->getHostActivityOrContext(Landroidx/fragment/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    .line 445
    .local v0, "host":Landroid/content/Context;
    const-string v1, "BiometricFragment"

    if-nez v0, :cond_0

    .line 446
    const-string v2, "Not launching prompt. Client context was null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    return-void

    .line 450
    :cond_0
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->getViewModel()Landroidx/biometric/BiometricViewModel;

    move-result-object v2

    .line 451
    .local v2, "viewModel":Landroidx/biometric/BiometricViewModel;
    if-nez v2, :cond_1

    .line 452
    const-string v3, "Not launching prompt. View model was null."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    return-void

    .line 456
    :cond_1
    invoke-virtual {v2, p1}, Landroidx/biometric/BiometricViewModel;->setPromptInfo(Landroidx/biometric/BiometricPrompt$PromptInfo;)V

    .line 459
    nop

    .line 460
    invoke-static {p1, p2}, Landroidx/biometric/AuthenticatorUtils;->getConsolidatedAuthenticators(Landroidx/biometric/BiometricPrompt$PromptInfo;Landroidx/biometric/BiometricPrompt$CryptoObject;)I

    move-result v1

    .line 461
    .local v1, "authenticators":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    if-ge v3, v4, :cond_2

    const/16 v3, 0xf

    if-ne v1, v3, :cond_2

    if-nez p2, :cond_2

    .line 465
    invoke-static {}, Landroidx/biometric/CryptoObjectUtils;->createFakeCryptoObject()Landroidx/biometric/BiometricPrompt$CryptoObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/biometric/BiometricViewModel;->setCryptoObject(Landroidx/biometric/BiometricPrompt$CryptoObject;)V

    goto :goto_0

    .line 467
    :cond_2
    invoke-virtual {v2, p2}, Landroidx/biometric/BiometricViewModel;->setCryptoObject(Landroidx/biometric/BiometricPrompt$CryptoObject;)V

    .line 470
    :goto_0
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->isManagingDeviceCredentialButton()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 471
    sget v3, Landroidx/biometric/R$string;->confirm_device_credential_password:I

    .line 472
    invoke-virtual {p0, v3}, Landroidx/biometric/BiometricFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 471
    invoke-virtual {v2, v3}, Landroidx/biometric/BiometricViewModel;->setNegativeButtonTextOverride(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 475
    :cond_3
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/biometric/BiometricViewModel;->setNegativeButtonTextOverride(Ljava/lang/CharSequence;)V

    .line 479
    :goto_1
    nop

    .line 480
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->isKeyguardManagerNeededForCredential()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 481
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/biometric/BiometricViewModel;->setAwaitingResult(Z)V

    .line 482
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->launchConfirmCredentialActivity()V

    .line 483
    return-void

    .line 487
    :cond_4
    invoke-virtual {v2}, Landroidx/biometric/BiometricViewModel;->isDelayingPrompt()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 488
    iget-object v3, p0, Landroidx/biometric/BiometricFragment;->mInjector:Landroidx/biometric/BiometricFragment$Injector;

    invoke-interface {v3}, Landroidx/biometric/BiometricFragment$Injector;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Landroidx/biometric/BiometricFragment$ShowPromptForAuthenticationRunnable;

    invoke-direct {v4, p0}, Landroidx/biometric/BiometricFragment$ShowPromptForAuthenticationRunnable;-><init>(Landroidx/biometric/BiometricFragment;)V

    const-wide/16 v5, 0x258

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 491
    :cond_5
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->showPromptForAuthentication()V

    .line 493
    :goto_2
    return-void
.end method

.method authenticateWithBiometricPrompt(Landroid/hardware/biometrics/BiometricPrompt;Landroid/content/Context;)V
    .locals 9
    .param p1, "biometricPrompt"    # Landroid/hardware/biometrics/BiometricPrompt;
    .param p2, "context"    # Landroid/content/Context;

    .line 664
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->getViewModel()Landroidx/biometric/BiometricViewModel;

    move-result-object v0

    .line 665
    .local v0, "viewModel":Landroidx/biometric/BiometricViewModel;
    const-string v1, "BiometricFragment"

    if-nez v0, :cond_0

    .line 666
    const-string v2, "Not authenticating with biometric prompt. View model was null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    return-void

    .line 670
    :cond_0
    nop

    .line 671
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->getCryptoObject()Landroidx/biometric/BiometricPrompt$CryptoObject;

    move-result-object v2

    invoke-static {v2}, Landroidx/biometric/CryptoObjectUtils;->wrapForBiometricPrompt(Landroidx/biometric/BiometricPrompt$CryptoObject;)Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    move-result-object v2

    .line 672
    .local v2, "cryptoObject":Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;
    nop

    .line 673
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->getCancellationSignalProvider()Landroidx/biometric/CancellationSignalProvider;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/biometric/CancellationSignalProvider;->getBiometricCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object v3

    .line 674
    .local v3, "cancellationSignal":Landroid/os/CancellationSignal;
    new-instance v4, Landroidx/biometric/BiometricFragment$PromptExecutor;

    invoke-direct {v4}, Landroidx/biometric/BiometricFragment$PromptExecutor;-><init>()V

    .line 675
    .local v4, "executor":Ljava/util/concurrent/Executor;
    nop

    .line 676
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->getAuthenticationCallbackProvider()Landroidx/biometric/AuthenticationCallbackProvider;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/biometric/AuthenticationCallbackProvider;->getBiometricCallback()Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    move-result-object v5

    .line 679
    .local v5, "callback":Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
    if-nez v2, :cond_1

    .line 680
    :try_start_0
    invoke-static {p1, v3, v4, v5}, Landroidx/biometric/BiometricFragment$Api28Impl;->authenticate(Landroid/hardware/biometrics/BiometricPrompt;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    goto :goto_0

    .line 682
    :cond_1
    invoke-static {p1, v2, v3, v4, v5}, Landroidx/biometric/BiometricFragment$Api28Impl;->authenticate(Landroid/hardware/biometrics/BiometricPrompt;Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 693
    :goto_0
    goto :goto_2

    .line 685
    :catch_0
    move-exception v6

    .line 687
    .local v6, "e":Ljava/lang/NullPointerException;
    const-string v7, "Got NPE while authenticating with biometric prompt."

    invoke-static {v1, v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 688
    const/4 v1, 0x1

    .line 689
    .local v1, "errorCode":I
    if-eqz p2, :cond_2

    .line 690
    sget v7, Landroidx/biometric/R$string;->default_error_msg:I

    invoke-virtual {p2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 691
    :cond_2
    const-string v7, ""

    :goto_1
    nop

    .line 692
    .local v7, "errorString":Ljava/lang/String;
    const/4 v8, 0x1

    invoke-virtual {p0, v8, v7}, Landroidx/biometric/BiometricFragment;->sendErrorAndDismiss(ILjava/lang/CharSequence;)V

    .line 694
    .end local v1    # "errorCode":I
    .end local v6    # "e":Ljava/lang/NullPointerException;
    .end local v7    # "errorString":Ljava/lang/String;
    :goto_2
    return-void
.end method

.method authenticateWithFingerprint(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;Landroid/content/Context;)V
    .locals 11
    .param p1, "fingerprintManager"    # Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;
    .param p2, "context"    # Landroid/content/Context;

    .line 626
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->getViewModel()Landroidx/biometric/BiometricViewModel;

    move-result-object v0

    .line 627
    .local v0, "viewModel":Landroidx/biometric/BiometricViewModel;
    const-string v1, "BiometricFragment"

    if-nez v0, :cond_0

    .line 628
    const-string v2, "Not showing fingerprint dialog. View model was null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    return-void

    .line 632
    :cond_0
    nop

    .line 633
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->getCryptoObject()Landroidx/biometric/BiometricPrompt$CryptoObject;

    move-result-object v2

    invoke-static {v2}, Landroidx/biometric/CryptoObjectUtils;->wrapForFingerprintManager(Landroidx/biometric/BiometricPrompt$CryptoObject;)Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    move-result-object v2

    .line 634
    .local v2, "crypto":Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
    nop

    .line 635
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->getCancellationSignalProvider()Landroidx/biometric/CancellationSignalProvider;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/biometric/CancellationSignalProvider;->getFingerprintCancellationSignal()Landroidx/core/os/CancellationSignal;

    move-result-object v9

    .line 637
    .local v9, "cancellationSignal":Landroidx/core/os/CancellationSignal;
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->getAuthenticationCallbackProvider()Landroidx/biometric/AuthenticationCallbackProvider;

    move-result-object v3

    .line 638
    invoke-virtual {v3}, Landroidx/biometric/AuthenticationCallbackProvider;->getFingerprintCallback()Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;

    move-result-object v10

    .line 641
    .local v10, "callback":Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;
    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    move-object v4, v2

    move-object v6, v9

    move-object v7, v10

    :try_start_0
    invoke-virtual/range {v3 .. v8}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->authenticate(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;ILandroidx/core/os/CancellationSignal;Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    goto :goto_0

    .line 643
    :catch_0
    move-exception v3

    .line 645
    .local v3, "e":Ljava/lang/NullPointerException;
    const-string v4, "Got NPE while authenticating with fingerprint."

    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 646
    const/4 v1, 0x1

    .line 647
    .local v1, "errorCode":I
    nop

    .line 648
    const/4 v4, 0x1

    invoke-static {p2, v4}, Landroidx/biometric/ErrorUtils;->getFingerprintErrorString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 647
    invoke-virtual {p0, v4, v5}, Landroidx/biometric/BiometricFragment;->sendErrorAndDismiss(ILjava/lang/CharSequence;)V

    .line 650
    .end local v1    # "errorCode":I
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :goto_0
    return-void
.end method

.method cancelAuthentication(I)V
    .locals 4
    .param p1, "canceledFrom"    # I

    .line 702
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->getViewModel()Landroidx/biometric/BiometricViewModel;

    move-result-object v0

    .line 703
    .local v0, "viewModel":Landroidx/biometric/BiometricViewModel;
    if-nez v0, :cond_0

    .line 704
    const-string v1, "BiometricFragment"

    const-string v2, "Unable to cancel authentication. View model was null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    return-void

    .line 708
    :cond_0
    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->isIgnoringCancel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 709
    return-void

    .line 712
    :cond_1
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->isUsingFingerprintDialog()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 713
    invoke-virtual {v0, p1}, Landroidx/biometric/BiometricViewModel;->setCanceledFrom(I)V

    .line 714
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 715
    const/16 v1, 0xa

    .line 716
    .local v1, "errorCode":I
    nop

    .line 717
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Landroidx/biometric/ErrorUtils;->getFingerprintErrorString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 716
    invoke-direct {p0, v3, v2}, Landroidx/biometric/BiometricFragment;->sendErrorToClient(ILjava/lang/CharSequence;)V

    .line 721
    .end local v1    # "errorCode":I
    :cond_2
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->getCancellationSignalProvider()Landroidx/biometric/CancellationSignalProvider;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/biometric/CancellationSignalProvider;->cancel()V

    .line 722
    return-void
.end method

.method dismiss()V
    .locals 6

    .line 729
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->dismissFingerprintDialog()V

    .line 731
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->getViewModel()Landroidx/biometric/BiometricViewModel;

    move-result-object v0

    .line 732
    .local v0, "viewModel":Landroidx/biometric/BiometricViewModel;
    if-eqz v0, :cond_0

    .line 733
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricViewModel;->setPromptShowing(Z)V

    .line 736
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->isConfirmingDeviceCredential()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 737
    :cond_1
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 741
    :cond_2
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 742
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_4

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v1, v2}, Landroidx/biometric/DeviceUtils;->shouldDelayShowingPrompt(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 743
    if-eqz v0, :cond_3

    .line 744
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/biometric/BiometricViewModel;->setDelayingPrompt(Z)V

    .line 747
    :cond_3
    iget-object v2, p0, Landroidx/biometric/BiometricFragment;->mInjector:Landroidx/biometric/BiometricFragment$Injector;

    invoke-interface {v2}, Landroidx/biometric/BiometricFragment$Injector;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Landroidx/biometric/BiometricFragment$StopDelayingPromptRunnable;

    iget-object v4, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    invoke-direct {v3, v4}, Landroidx/biometric/BiometricFragment$StopDelayingPromptRunnable;-><init>(Landroidx/biometric/BiometricViewModel;)V

    const-wide/16 v4, 0x258

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 750
    :cond_4
    return-void
.end method

.method isManagingDeviceCredentialButton()Z
    .locals 3

    .line 1157
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->getViewModel()Landroidx/biometric/BiometricViewModel;

    move-result-object v0

    .line 1158
    .local v0, "viewModel":Landroidx/biometric/BiometricViewModel;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-gt v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 1161
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->getAllowedAuthenticators()I

    move-result v1

    .line 1160
    invoke-static {v1}, Landroidx/biometric/AuthenticatorUtils;->isDeviceCredentialAllowed(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1158
    :goto_0
    return v1
.end method

.method synthetic lambda$connectViewModel$0$androidx-biometric-BiometricFragment(Landroidx/biometric/BiometricViewModel;Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V
    .locals 1
    .param p1, "viewModel"    # Landroidx/biometric/BiometricViewModel;
    .param p2, "authenticationResult"    # Landroidx/biometric/BiometricPrompt$AuthenticationResult;

    .line 379
    if-eqz p2, :cond_0

    .line 380
    invoke-virtual {p0, p2}, Landroidx/biometric/BiometricFragment;->onAuthenticationSucceeded(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V

    .line 381
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/biometric/BiometricViewModel;->setAuthenticationResult(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V

    .line 383
    :cond_0
    return-void
.end method

.method synthetic lambda$connectViewModel$1$androidx-biometric-BiometricFragment(Landroidx/biometric/BiometricViewModel;Landroidx/biometric/BiometricErrorData;)V
    .locals 2
    .param p1, "viewModel"    # Landroidx/biometric/BiometricViewModel;
    .param p2, "authenticationError"    # Landroidx/biometric/BiometricErrorData;

    .line 387
    if-eqz p2, :cond_0

    .line 388
    nop

    .line 389
    invoke-virtual {p2}, Landroidx/biometric/BiometricErrorData;->getErrorCode()I

    move-result v0

    .line 390
    invoke-virtual {p2}, Landroidx/biometric/BiometricErrorData;->getErrorMessage()Ljava/lang/CharSequence;

    move-result-object v1

    .line 388
    invoke-virtual {p0, v0, v1}, Landroidx/biometric/BiometricFragment;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 391
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/biometric/BiometricViewModel;->setAuthenticationError(Landroidx/biometric/BiometricErrorData;)V

    .line 393
    :cond_0
    return-void
.end method

.method synthetic lambda$connectViewModel$2$androidx-biometric-BiometricFragment(Landroidx/biometric/BiometricViewModel;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "viewModel"    # Landroidx/biometric/BiometricViewModel;
    .param p2, "authenticationHelpMessage"    # Ljava/lang/CharSequence;

    .line 397
    if-eqz p2, :cond_0

    .line 398
    invoke-virtual {p0, p2}, Landroidx/biometric/BiometricFragment;->onAuthenticationHelp(Ljava/lang/CharSequence;)V

    .line 399
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/biometric/BiometricViewModel;->setAuthenticationError(Landroidx/biometric/BiometricErrorData;)V

    .line 401
    :cond_0
    return-void
.end method

.method synthetic lambda$connectViewModel$3$androidx-biometric-BiometricFragment(Landroidx/biometric/BiometricViewModel;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "viewModel"    # Landroidx/biometric/BiometricViewModel;
    .param p2, "authenticationFailurePending"    # Ljava/lang/Boolean;

    .line 405
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->onAuthenticationFailed()V

    .line 407
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/biometric/BiometricViewModel;->setAuthenticationFailurePending(Z)V

    .line 409
    :cond_0
    return-void
.end method

.method synthetic lambda$connectViewModel$4$androidx-biometric-BiometricFragment(Landroidx/biometric/BiometricViewModel;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "viewModel"    # Landroidx/biometric/BiometricViewModel;
    .param p2, "negativeButtonPressPending"    # Ljava/lang/Boolean;

    .line 413
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 414
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->isManagingDeviceCredentialButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->onDeviceCredentialButtonPressed()V

    goto :goto_0

    .line 417
    :cond_0
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->onCancelButtonPressed()V

    .line 419
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/biometric/BiometricViewModel;->setNegativeButtonPressPending(Z)V

    .line 421
    :cond_1
    return-void
.end method

.method synthetic lambda$connectViewModel$5$androidx-biometric-BiometricFragment(Landroidx/biometric/BiometricViewModel;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "viewModel"    # Landroidx/biometric/BiometricViewModel;
    .param p2, "fingerprintDialogCancelPending"    # Ljava/lang/Boolean;

    .line 425
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/biometric/BiometricFragment;->cancelAuthentication(I)V

    .line 427
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->dismiss()V

    .line 428
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/biometric/BiometricViewModel;->setFingerprintDialogCancelPending(Z)V

    .line 430
    :cond_0
    return-void
.end method

.method synthetic lambda$onAuthenticationError$7$androidx-biometric-BiometricFragment(ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "knownErrorCode"    # I
    .param p2, "errorString"    # Ljava/lang/CharSequence;

    .line 841
    invoke-virtual {p0, p1, p2}, Landroidx/biometric/BiometricFragment;->sendErrorAndDismiss(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 346
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 347
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 348
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->getViewModel()Landroidx/biometric/BiometricViewModel;

    move-result-object v0

    .line 349
    .local v0, "viewModel":Landroidx/biometric/BiometricViewModel;
    if-eqz v0, :cond_0

    .line 350
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricViewModel;->setConfirmingDeviceCredential(Z)V

    .line 352
    :cond_0
    invoke-direct {p0, p2}, Landroidx/biometric/BiometricFragment;->handleConfirmCredentialResult(I)V

    .line 354
    .end local v0    # "viewModel":Landroidx/biometric/BiometricViewModel;
    :cond_1
    return-void
.end method

.method onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 8
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/CharSequence;

    .line 798
    invoke-static {p1}, Landroidx/biometric/ErrorUtils;->isKnownError(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 799
    move v0, p1

    goto :goto_0

    .line 800
    :cond_0
    const/16 v0, 0x8

    :goto_0
    nop

    .line 802
    .local v0, "knownErrorCode":I
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->getViewModel()Landroidx/biometric/BiometricViewModel;

    move-result-object v1

    .line 803
    .local v1, "viewModel":Landroidx/biometric/BiometricViewModel;
    if-nez v1, :cond_1

    .line 804
    const-string v2, "BiometricFragment"

    const-string v3, "Unable to handle authentication error. View model was null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    return-void

    .line 808
    :cond_1
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 809
    .local v2, "context":Landroid/content/Context;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-ge v3, v4, :cond_2

    .line 811
    invoke-static {v0}, Landroidx/biometric/ErrorUtils;->isLockoutError(I)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 813
    invoke-static {v2}, Landroidx/biometric/KeyguardUtils;->isDeviceSecuredWithCredential(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 815
    invoke-virtual {v1}, Landroidx/biometric/BiometricViewModel;->getAllowedAuthenticators()I

    move-result v3

    .line 814
    invoke-static {v3}, Landroidx/biometric/AuthenticatorUtils;->isDeviceCredentialAllowed(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 816
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->launchConfirmCredentialActivity()V

    .line 817
    return-void

    .line 820
    :cond_2
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->isUsingFingerprintDialog()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 822
    if-eqz p2, :cond_3

    .line 823
    move-object v3, p2

    goto :goto_1

    .line 824
    :cond_3
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Landroidx/biometric/ErrorUtils;->getFingerprintErrorString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    nop

    .line 826
    .local v3, "errorString":Ljava/lang/CharSequence;
    const/4 v4, 0x5

    if-ne v0, v4, :cond_6

    .line 828
    invoke-virtual {v1}, Landroidx/biometric/BiometricViewModel;->getCanceledFrom()I

    move-result v4

    .line 829
    .local v4, "canceledFrom":I
    if-eqz v4, :cond_4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    .line 831
    :cond_4
    invoke-direct {p0, v0, v3}, Landroidx/biometric/BiometricFragment;->sendErrorToClient(ILjava/lang/CharSequence;)V

    .line 834
    :cond_5
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->dismiss()V

    .line 835
    .end local v4    # "canceledFrom":I
    goto :goto_3

    .line 836
    :cond_6
    invoke-virtual {v1}, Landroidx/biometric/BiometricViewModel;->isFingerprintDialogDismissedInstantly()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 837
    invoke-virtual {p0, v0, v3}, Landroidx/biometric/BiometricFragment;->sendErrorAndDismiss(ILjava/lang/CharSequence;)V

    goto :goto_2

    .line 839
    :cond_7
    invoke-direct {p0, v3}, Landroidx/biometric/BiometricFragment;->showFingerprintErrorMessage(Ljava/lang/CharSequence;)V

    .line 840
    iget-object v4, p0, Landroidx/biometric/BiometricFragment;->mInjector:Landroidx/biometric/BiometricFragment$Injector;

    invoke-interface {v4}, Landroidx/biometric/BiometricFragment$Injector;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroidx/biometric/BiometricFragment$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v0, v3}, Landroidx/biometric/BiometricFragment$$ExternalSyntheticLambda0;-><init>(Landroidx/biometric/BiometricFragment;ILjava/lang/CharSequence;)V

    .line 842
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->getDismissDialogDelay()I

    move-result v6

    int-to-long v6, v6

    .line 840
    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 847
    :goto_2
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroidx/biometric/BiometricViewModel;->setFingerprintDialogDismissedInstantly(Z)V

    .line 849
    .end local v3    # "errorString":Ljava/lang/CharSequence;
    :goto_3
    goto :goto_5

    .line 850
    :cond_8
    if-eqz p2, :cond_9

    .line 851
    move-object v3, p2

    goto :goto_4

    .line 852
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Landroidx/biometric/R$string;->default_error_msg:I

    invoke-virtual {p0, v4}, Landroidx/biometric/BiometricFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4
    nop

    .line 853
    .restart local v3    # "errorString":Ljava/lang/CharSequence;
    invoke-virtual {p0, v0, v3}, Landroidx/biometric/BiometricFragment;->sendErrorAndDismiss(ILjava/lang/CharSequence;)V

    .line 855
    .end local v3    # "errorString":Ljava/lang/CharSequence;
    :goto_5
    return-void
.end method

.method onAuthenticationFailed()V
    .locals 1

    .line 874
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->isUsingFingerprintDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 875
    sget v0, Landroidx/biometric/R$string;->fingerprint_not_recognized:I

    invoke-virtual {p0, v0}, Landroidx/biometric/BiometricFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/biometric/BiometricFragment;->showFingerprintErrorMessage(Ljava/lang/CharSequence;)V

    .line 877
    :cond_0
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->sendFailureToClient()V

    .line 878
    return-void
.end method

.method onAuthenticationHelp(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "helpMessage"    # Ljava/lang/CharSequence;

    .line 864
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->isUsingFingerprintDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 865
    invoke-direct {p0, p1}, Landroidx/biometric/BiometricFragment;->showFingerprintErrorMessage(Ljava/lang/CharSequence;)V

    .line 867
    :cond_0
    return-void
.end method

.method onAuthenticationSucceeded(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V
    .locals 0
    .param p1, "result"    # Landroidx/biometric/BiometricPrompt$AuthenticationResult;

    .line 785
    invoke-direct {p0, p1}, Landroidx/biometric/BiometricFragment;->sendSuccessAndDismiss(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V

    .line 786
    return-void
.end method

.method onCancelButtonPressed()V
    .locals 4

    .line 899
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->getViewModel()Landroidx/biometric/BiometricViewModel;

    move-result-object v0

    .line 900
    .local v0, "viewModel":Landroidx/biometric/BiometricViewModel;
    if-eqz v0, :cond_0

    .line 901
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 902
    :cond_0
    const/4 v1, 0x0

    :goto_0
    nop

    .line 904
    .local v1, "negativeButtonText":Ljava/lang/CharSequence;
    nop

    .line 906
    if-eqz v1, :cond_1

    .line 907
    move-object v2, v1

    goto :goto_1

    .line 908
    :cond_1
    sget v2, Landroidx/biometric/R$string;->default_error_msg:I

    invoke-virtual {p0, v2}, Landroidx/biometric/BiometricFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 904
    :goto_1
    const/16 v3, 0xd

    invoke-virtual {p0, v3, v2}, Landroidx/biometric/BiometricFragment;->sendErrorAndDismiss(ILjava/lang/CharSequence;)V

    .line 910
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Landroidx/biometric/BiometricFragment;->cancelAuthentication(I)V

    .line 911
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 312
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 313
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->connectViewModel()V

    .line 314
    return-void
.end method

.method onDeviceCredentialButtonPressed()V
    .locals 0

    .line 886
    nop

    .line 890
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->launchConfirmCredentialActivity()V

    .line 891
    return-void
.end method

.method public onStart()V
    .locals 5

    .line 318
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 322
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->getViewModel()Landroidx/biometric/BiometricViewModel;

    move-result-object v0

    .line 323
    .local v0, "viewModel":Landroidx/biometric/BiometricViewModel;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->getAllowedAuthenticators()I

    move-result v1

    .line 325
    invoke-static {v1}, Landroidx/biometric/AuthenticatorUtils;->isDeviceCredentialAllowed(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricViewModel;->setIgnoringCancel(Z)V

    .line 328
    iget-object v1, p0, Landroidx/biometric/BiometricFragment;->mInjector:Landroidx/biometric/BiometricFragment$Injector;

    invoke-interface {v1}, Landroidx/biometric/BiometricFragment$Injector;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroidx/biometric/BiometricFragment$StopIgnoringCancelRunnable;

    invoke-direct {v2, v0}, Landroidx/biometric/BiometricFragment$StopIgnoringCancelRunnable;-><init>(Landroidx/biometric/BiometricViewModel;)V

    const-wide/16 v3, 0xfa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 330
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .line 334
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 335
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->getViewModel()Landroidx/biometric/BiometricViewModel;

    move-result-object v0

    .line 336
    .local v0, "viewModel":Landroidx/biometric/BiometricViewModel;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-ge v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->isConfirmingDeviceCredential()Z

    move-result v1

    if-nez v1, :cond_0

    .line 339
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->isChangingConfigurations()Z

    move-result v1

    if-nez v1, :cond_0

    .line 340
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/biometric/BiometricFragment;->cancelAuthentication(I)V

    .line 342
    :cond_0
    return-void
.end method

.method sendErrorAndDismiss(ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "errorString"    # Ljava/lang/CharSequence;

    .line 1037
    invoke-direct {p0, p1, p2}, Landroidx/biometric/BiometricFragment;->sendErrorToClient(ILjava/lang/CharSequence;)V

    .line 1038
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->dismiss()V

    .line 1039
    return-void
.end method

.method showPromptForAuthentication()V
    .locals 3

    .line 501
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->getViewModel()Landroidx/biometric/BiometricViewModel;

    move-result-object v0

    .line 502
    .local v0, "viewModel":Landroidx/biometric/BiometricViewModel;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->isPromptShowing()Z

    move-result v1

    if-nez v1, :cond_3

    .line 503
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    .line 504
    const-string v1, "BiometricFragment"

    const-string v2, "Not showing biometric prompt. Context is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    return-void

    .line 508
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricViewModel;->setPromptShowing(Z)V

    .line 509
    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricViewModel;->setAwaitingResult(Z)V

    .line 510
    nop

    .line 511
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->isKeyguardManagerNeededForBiometricAndCredential()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 512
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->launchConfirmCredentialActivity()V

    goto :goto_0

    .line 513
    :cond_1
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->isUsingFingerprintDialog()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 514
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->showFingerprintDialogForAuthentication()V

    goto :goto_0

    .line 516
    :cond_2
    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->showBiometricPromptForAuthentication()V

    .line 519
    :cond_3
    :goto_0
    return-void
.end method
