.class Landroidx/biometric/BiometricManager$StringsCompat;
.super Ljava/lang/Object;
.source "BiometricManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/biometric/BiometricManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StringsCompat"
.end annotation


# instance fields
.field private final mAuthenticators:I

.field private final mPossibleModalities:I

.field private final mResources:Landroid/content/res/Resources;

.field final synthetic this$0:Landroidx/biometric/BiometricManager;


# direct methods
.method constructor <init>(Landroidx/biometric/BiometricManager;Landroid/content/res/Resources;IZZZZ)V
    .locals 1
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "authenticators"    # I
    .param p4, "isFingerprintSupported"    # Z
    .param p5, "isFaceSupported"    # Z
    .param p6, "isIrisSupported"    # Z
    .param p7, "isDeviceSecured"    # Z

    .line 322
    iput-object p1, p0, Landroidx/biometric/BiometricManager$StringsCompat;->this$0:Landroidx/biometric/BiometricManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    iput-object p2, p0, Landroidx/biometric/BiometricManager$StringsCompat;->mResources:Landroid/content/res/Resources;

    .line 325
    iput p3, p0, Landroidx/biometric/BiometricManager$StringsCompat;->mAuthenticators:I

    .line 328
    if-eqz p7, :cond_0

    invoke-static {p3}, Landroidx/biometric/AuthenticatorUtils;->isDeviceCredentialAllowed(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 329
    const/4 p1, 0x1

    goto :goto_0

    .line 330
    :cond_0
    const/4 p1, 0x0

    :goto_0
    nop

    .line 332
    .local p1, "possibleModalities":I
    invoke-static {p3}, Landroidx/biometric/AuthenticatorUtils;->isSomeBiometricAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 333
    if-eqz p4, :cond_1

    .line 334
    or-int/lit8 p1, p1, 0x4

    .line 336
    :cond_1
    if-eqz p5, :cond_2

    .line 337
    or-int/lit8 p1, p1, 0x8

    .line 339
    :cond_2
    if-eqz p6, :cond_3

    .line 340
    or-int/lit8 p1, p1, 0x2

    .line 343
    :cond_3
    iput p1, p0, Landroidx/biometric/BiometricManager$StringsCompat;->mPossibleModalities:I

    .line 344
    return-void
.end method


# virtual methods
.method getButtonLabel()Ljava/lang/CharSequence;
    .locals 3

    .line 357
    iget v0, p0, Landroidx/biometric/BiometricManager$StringsCompat;->mAuthenticators:I

    .line 358
    invoke-static {v0}, Landroidx/biometric/AuthenticatorUtils;->getBiometricAuthenticators(I)I

    move-result v0

    .line 359
    .local v0, "biometricAuthenticators":I
    iget-object v1, p0, Landroidx/biometric/BiometricManager$StringsCompat;->this$0:Landroidx/biometric/BiometricManager;

    invoke-virtual {v1, v0}, Landroidx/biometric/BiometricManager;->canAuthenticate(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 360
    iget v1, p0, Landroidx/biometric/BiometricManager$StringsCompat;->mPossibleModalities:I

    and-int/lit8 v1, v1, -0x2

    sparse-switch v1, :sswitch_data_0

    .line 369
    iget-object v1, p0, Landroidx/biometric/BiometricManager$StringsCompat;->mResources:Landroid/content/res/Resources;

    sget v2, Landroidx/biometric/R$string;->use_biometric_label:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 366
    :sswitch_0
    iget-object v1, p0, Landroidx/biometric/BiometricManager$StringsCompat;->mResources:Landroid/content/res/Resources;

    sget v2, Landroidx/biometric/R$string;->use_face_label:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 363
    :sswitch_1
    iget-object v1, p0, Landroidx/biometric/BiometricManager$StringsCompat;->mResources:Landroid/content/res/Resources;

    sget v2, Landroidx/biometric/R$string;->use_fingerprint_label:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 373
    :cond_0
    iget v1, p0, Landroidx/biometric/BiometricManager$StringsCompat;->mPossibleModalities:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 375
    iget-object v1, p0, Landroidx/biometric/BiometricManager$StringsCompat;->mResources:Landroid/content/res/Resources;

    sget v2, Landroidx/biometric/R$string;->use_screen_lock_label:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 379
    :cond_1
    const/4 v1, 0x0

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method getPromptMessage()Ljava/lang/CharSequence;
    .locals 3

    .line 393
    iget v0, p0, Landroidx/biometric/BiometricManager$StringsCompat;->mAuthenticators:I

    .line 394
    invoke-static {v0}, Landroidx/biometric/AuthenticatorUtils;->getBiometricAuthenticators(I)I

    move-result v0

    .line 396
    .local v0, "biometricAuthenticators":I
    iget-object v1, p0, Landroidx/biometric/BiometricManager$StringsCompat;->this$0:Landroidx/biometric/BiometricManager;

    invoke-virtual {v1, v0}, Landroidx/biometric/BiometricManager;->canAuthenticate(I)I

    move-result v1

    if-nez v1, :cond_3

    .line 398
    iget v1, p0, Landroidx/biometric/BiometricManager$StringsCompat;->mPossibleModalities:I

    and-int/lit8 v1, v1, -0x2

    sparse-switch v1, :sswitch_data_0

    .line 415
    iget v1, p0, Landroidx/biometric/BiometricManager$StringsCompat;->mAuthenticators:I

    invoke-static {v1}, Landroidx/biometric/AuthenticatorUtils;->isDeviceCredentialAllowed(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 416
    sget v1, Landroidx/biometric/R$string;->biometric_or_screen_lock_prompt_message:I

    goto :goto_2

    .line 408
    :sswitch_0
    iget v1, p0, Landroidx/biometric/BiometricManager$StringsCompat;->mAuthenticators:I

    invoke-static {v1}, Landroidx/biometric/AuthenticatorUtils;->isDeviceCredentialAllowed(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 409
    sget v1, Landroidx/biometric/R$string;->face_or_screen_lock_prompt_message:I

    goto :goto_0

    .line 410
    :cond_0
    sget v1, Landroidx/biometric/R$string;->face_prompt_message:I

    :goto_0
    nop

    .line 411
    .local v1, "messageRes":I
    goto :goto_3

    .line 401
    .end local v1    # "messageRes":I
    :sswitch_1
    iget v1, p0, Landroidx/biometric/BiometricManager$StringsCompat;->mAuthenticators:I

    invoke-static {v1}, Landroidx/biometric/AuthenticatorUtils;->isDeviceCredentialAllowed(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 402
    sget v1, Landroidx/biometric/R$string;->fingerprint_or_screen_lock_prompt_message:I

    goto :goto_1

    .line 403
    :cond_1
    sget v1, Landroidx/biometric/R$string;->fingerprint_prompt_message:I

    :goto_1
    nop

    .line 404
    .restart local v1    # "messageRes":I
    goto :goto_3

    .line 417
    .end local v1    # "messageRes":I
    :cond_2
    sget v1, Landroidx/biometric/R$string;->biometric_prompt_message:I

    :goto_2
    nop

    .line 421
    .restart local v1    # "messageRes":I
    :goto_3
    iget-object v2, p0, Landroidx/biometric/BiometricManager$StringsCompat;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 424
    .end local v1    # "messageRes":I
    :cond_3
    iget v1, p0, Landroidx/biometric/BiometricManager$StringsCompat;->mPossibleModalities:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    .line 426
    iget-object v1, p0, Landroidx/biometric/BiometricManager$StringsCompat;->mResources:Landroid/content/res/Resources;

    sget v2, Landroidx/biometric/R$string;->screen_lock_prompt_message:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 430
    :cond_4
    const/4 v1, 0x0

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method getSettingName()Ljava/lang/CharSequence;
    .locals 2

    .line 445
    iget v0, p0, Landroidx/biometric/BiometricManager$StringsCompat;->mPossibleModalities:I

    packed-switch v0, :pswitch_data_0

    .line 472
    :pswitch_0
    iget v0, p0, Landroidx/biometric/BiometricManager$StringsCompat;->mPossibleModalities:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 474
    iget-object v0, p0, Landroidx/biometric/BiometricManager$StringsCompat;->mResources:Landroid/content/res/Resources;

    sget v1, Landroidx/biometric/R$string;->use_biometric_label:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "settingName":Ljava/lang/CharSequence;
    goto :goto_0

    .line 468
    .end local v0    # "settingName":Ljava/lang/CharSequence;
    :pswitch_1
    iget-object v0, p0, Landroidx/biometric/BiometricManager$StringsCompat;->mResources:Landroid/content/res/Resources;

    sget v1, Landroidx/biometric/R$string;->use_face_label:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 469
    .restart local v0    # "settingName":Ljava/lang/CharSequence;
    goto :goto_0

    .line 463
    .end local v0    # "settingName":Ljava/lang/CharSequence;
    :pswitch_2
    iget-object v0, p0, Landroidx/biometric/BiometricManager$StringsCompat;->mResources:Landroid/content/res/Resources;

    sget v1, Landroidx/biometric/R$string;->use_fingerprint_label:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 464
    .restart local v0    # "settingName":Ljava/lang/CharSequence;
    goto :goto_0

    .line 458
    .end local v0    # "settingName":Ljava/lang/CharSequence;
    :pswitch_3
    iget-object v0, p0, Landroidx/biometric/BiometricManager$StringsCompat;->mResources:Landroid/content/res/Resources;

    sget v1, Landroidx/biometric/R$string;->use_biometric_label:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 459
    .restart local v0    # "settingName":Ljava/lang/CharSequence;
    goto :goto_0

    .line 453
    .end local v0    # "settingName":Ljava/lang/CharSequence;
    :pswitch_4
    iget-object v0, p0, Landroidx/biometric/BiometricManager$StringsCompat;->mResources:Landroid/content/res/Resources;

    sget v1, Landroidx/biometric/R$string;->use_screen_lock_label:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 454
    .restart local v0    # "settingName":Ljava/lang/CharSequence;
    goto :goto_0

    .line 448
    .end local v0    # "settingName":Ljava/lang/CharSequence;
    :pswitch_5
    const/4 v0, 0x0

    .line 449
    .restart local v0    # "settingName":Ljava/lang/CharSequence;
    goto :goto_0

    .line 476
    .end local v0    # "settingName":Ljava/lang/CharSequence;
    :cond_0
    iget v0, p0, Landroidx/biometric/BiometricManager$StringsCompat;->mPossibleModalities:I

    and-int/lit8 v0, v0, -0x2

    sparse-switch v0, :sswitch_data_0

    .line 491
    iget-object v0, p0, Landroidx/biometric/BiometricManager$StringsCompat;->mResources:Landroid/content/res/Resources;

    sget v1, Landroidx/biometric/R$string;->use_biometric_or_screen_lock_label:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "settingName":Ljava/lang/CharSequence;
    goto :goto_0

    .line 485
    .end local v0    # "settingName":Ljava/lang/CharSequence;
    :sswitch_0
    iget-object v0, p0, Landroidx/biometric/BiometricManager$StringsCompat;->mResources:Landroid/content/res/Resources;

    sget v1, Landroidx/biometric/R$string;->use_face_or_screen_lock_label:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 487
    .restart local v0    # "settingName":Ljava/lang/CharSequence;
    goto :goto_0

    .line 479
    .end local v0    # "settingName":Ljava/lang/CharSequence;
    :sswitch_1
    iget-object v0, p0, Landroidx/biometric/BiometricManager$StringsCompat;->mResources:Landroid/content/res/Resources;

    sget v1, Landroidx/biometric/R$string;->use_fingerprint_or_screen_lock_label:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 481
    .restart local v0    # "settingName":Ljava/lang/CharSequence;
    nop

    .line 498
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method
