.class public abstract Landroidx/biometric/auth/AuthPromptCallback;
.super Ljava/lang/Object;
.source "AuthPromptCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(Landroidx/fragment/app/FragmentActivity;ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "activity"    # Landroidx/fragment/app/FragmentActivity;
    .param p2, "errorCode"    # I
    .param p3, "errString"    # Ljava/lang/CharSequence;

    .line 46
    return-void
.end method

.method public onAuthenticationFailed(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0
    .param p1, "activity"    # Landroidx/fragment/app/FragmentActivity;

    .line 66
    return-void
.end method

.method public onAuthenticationSucceeded(Landroidx/fragment/app/FragmentActivity;Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V
    .locals 0
    .param p1, "activity"    # Landroidx/fragment/app/FragmentActivity;
    .param p2, "result"    # Landroidx/biometric/BiometricPrompt$AuthenticationResult;

    .line 59
    return-void
.end method
