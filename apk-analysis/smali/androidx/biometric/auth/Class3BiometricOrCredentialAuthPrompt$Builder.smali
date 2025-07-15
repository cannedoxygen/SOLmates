.class public final Landroidx/biometric/auth/Class3BiometricOrCredentialAuthPrompt$Builder;
.super Ljava/lang/Object;
.source "Class3BiometricOrCredentialAuthPrompt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/biometric/auth/Class3BiometricOrCredentialAuthPrompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mDescription:Ljava/lang/CharSequence;

.field private mIsConfirmationRequired:Z

.field private mSubtitle:Ljava/lang/CharSequence;

.field private final mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/biometric/auth/Class3BiometricOrCredentialAuthPrompt$Builder;->mSubtitle:Ljava/lang/CharSequence;

    .line 155
    iput-object v0, p0, Landroidx/biometric/auth/Class3BiometricOrCredentialAuthPrompt$Builder;->mDescription:Ljava/lang/CharSequence;

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/biometric/auth/Class3BiometricOrCredentialAuthPrompt$Builder;->mIsConfirmationRequired:Z

    .line 164
    iput-object p1, p0, Landroidx/biometric/auth/Class3BiometricOrCredentialAuthPrompt$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 165
    return-void
.end method


# virtual methods
.method public build()Landroidx/biometric/auth/Class3BiometricOrCredentialAuthPrompt;
    .locals 2

    .line 225
    new-instance v0, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    invoke-direct {v0}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;-><init>()V

    iget-object v1, p0, Landroidx/biometric/auth/Class3BiometricOrCredentialAuthPrompt$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 226
    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/biometric/auth/Class3BiometricOrCredentialAuthPrompt$Builder;->mSubtitle:Ljava/lang/CharSequence;

    .line 227
    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/biometric/auth/Class3BiometricOrCredentialAuthPrompt$Builder;->mDescription:Ljava/lang/CharSequence;

    .line 228
    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setDescription(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/biometric/auth/Class3BiometricOrCredentialAuthPrompt$Builder;->mIsConfirmationRequired:Z

    .line 229
    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setConfirmationRequired(Z)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    move-result-object v0

    .line 230
    const v1, 0x800f

    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setAllowedAuthenticators(I)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->build()Landroidx/biometric/BiometricPrompt$PromptInfo;

    move-result-object v0

    .line 233
    .local v0, "promptInfo":Landroidx/biometric/BiometricPrompt$PromptInfo;
    new-instance v1, Landroidx/biometric/auth/Class3BiometricOrCredentialAuthPrompt;

    invoke-direct {v1, v0}, Landroidx/biometric/auth/Class3BiometricOrCredentialAuthPrompt;-><init>(Landroidx/biometric/BiometricPrompt$PromptInfo;)V

    return-object v1
.end method

.method public setConfirmationRequired(Z)Landroidx/biometric/auth/Class3BiometricOrCredentialAuthPrompt$Builder;
    .locals 0
    .param p1, "confirmationRequired"    # Z

    .line 214
    iput-boolean p1, p0, Landroidx/biometric/auth/Class3BiometricOrCredentialAuthPrompt$Builder;->mIsConfirmationRequired:Z

    .line 215
    return-object p0
.end method

.method public setDescription(Ljava/lang/CharSequence;)Landroidx/biometric/auth/Class3BiometricOrCredentialAuthPrompt$Builder;
    .locals 0
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 189
    iput-object p1, p0, Landroidx/biometric/auth/Class3BiometricOrCredentialAuthPrompt$Builder;->mDescription:Ljava/lang/CharSequence;

    .line 190
    return-object p0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)Landroidx/biometric/auth/Class3BiometricOrCredentialAuthPrompt$Builder;
    .locals 0
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 176
    iput-object p1, p0, Landroidx/biometric/auth/Class3BiometricOrCredentialAuthPrompt$Builder;->mSubtitle:Ljava/lang/CharSequence;

    .line 177
    return-object p0
.end method
