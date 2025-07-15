.class public final Landroidx/biometric/auth/Class2BiometricOrCredentialAuthPrompt$Builder;
.super Ljava/lang/Object;
.source "Class2BiometricOrCredentialAuthPrompt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/biometric/auth/Class2BiometricOrCredentialAuthPrompt;
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

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/biometric/auth/Class2BiometricOrCredentialAuthPrompt$Builder;->mSubtitle:Ljava/lang/CharSequence;

    .line 144
    iput-object v0, p0, Landroidx/biometric/auth/Class2BiometricOrCredentialAuthPrompt$Builder;->mDescription:Ljava/lang/CharSequence;

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/biometric/auth/Class2BiometricOrCredentialAuthPrompt$Builder;->mIsConfirmationRequired:Z

    .line 153
    iput-object p1, p0, Landroidx/biometric/auth/Class2BiometricOrCredentialAuthPrompt$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 154
    return-void
.end method


# virtual methods
.method public build()Landroidx/biometric/auth/Class2BiometricOrCredentialAuthPrompt;
    .locals 2

    .line 212
    new-instance v0, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    invoke-direct {v0}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;-><init>()V

    iget-object v1, p0, Landroidx/biometric/auth/Class2BiometricOrCredentialAuthPrompt$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 213
    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/biometric/auth/Class2BiometricOrCredentialAuthPrompt$Builder;->mSubtitle:Ljava/lang/CharSequence;

    .line 214
    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/biometric/auth/Class2BiometricOrCredentialAuthPrompt$Builder;->mDescription:Ljava/lang/CharSequence;

    .line 215
    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setDescription(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/biometric/auth/Class2BiometricOrCredentialAuthPrompt$Builder;->mIsConfirmationRequired:Z

    .line 216
    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setConfirmationRequired(Z)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    move-result-object v0

    .line 217
    const v1, 0x80ff

    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setAllowedAuthenticators(I)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->build()Landroidx/biometric/BiometricPrompt$PromptInfo;

    move-result-object v0

    .line 220
    .local v0, "promptInfo":Landroidx/biometric/BiometricPrompt$PromptInfo;
    new-instance v1, Landroidx/biometric/auth/Class2BiometricOrCredentialAuthPrompt;

    invoke-direct {v1, v0}, Landroidx/biometric/auth/Class2BiometricOrCredentialAuthPrompt;-><init>(Landroidx/biometric/BiometricPrompt$PromptInfo;)V

    return-object v1
.end method

.method public setConfirmationRequired(Z)Landroidx/biometric/auth/Class2BiometricOrCredentialAuthPrompt$Builder;
    .locals 0
    .param p1, "confirmationRequired"    # Z

    .line 201
    iput-boolean p1, p0, Landroidx/biometric/auth/Class2BiometricOrCredentialAuthPrompt$Builder;->mIsConfirmationRequired:Z

    .line 202
    return-object p0
.end method

.method public setDescription(Ljava/lang/CharSequence;)Landroidx/biometric/auth/Class2BiometricOrCredentialAuthPrompt$Builder;
    .locals 0
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 176
    iput-object p1, p0, Landroidx/biometric/auth/Class2BiometricOrCredentialAuthPrompt$Builder;->mDescription:Ljava/lang/CharSequence;

    .line 177
    return-object p0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)Landroidx/biometric/auth/Class2BiometricOrCredentialAuthPrompt$Builder;
    .locals 0
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 164
    iput-object p1, p0, Landroidx/biometric/auth/Class2BiometricOrCredentialAuthPrompt$Builder;->mSubtitle:Ljava/lang/CharSequence;

    .line 165
    return-object p0
.end method
