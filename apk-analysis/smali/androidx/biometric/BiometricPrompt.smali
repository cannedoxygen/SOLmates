.class public Landroidx/biometric/BiometricPrompt;
.super Ljava/lang/Object;
.source "BiometricPrompt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/biometric/BiometricPrompt$ResetCallbackObserver;,
        Landroidx/biometric/BiometricPrompt$PromptInfo;,
        Landroidx/biometric/BiometricPrompt$AuthenticationCallback;,
        Landroidx/biometric/BiometricPrompt$AuthenticationResult;,
        Landroidx/biometric/BiometricPrompt$CryptoObject;,
        Landroidx/biometric/BiometricPrompt$AuthenticationError;
    }
.end annotation


# static fields
.field public static final AUTHENTICATION_RESULT_TYPE_BIOMETRIC:I = 0x2

.field public static final AUTHENTICATION_RESULT_TYPE_DEVICE_CREDENTIAL:I = 0x1

.field public static final AUTHENTICATION_RESULT_TYPE_UNKNOWN:I = -0x1

.field private static final BIOMETRIC_FRAGMENT_TAG:Ljava/lang/String; = "androidx.biometric.BiometricFragment"

.field static final BIOMETRIC_SUCCESS:I = 0x0

.field public static final ERROR_CANCELED:I = 0x5

.field public static final ERROR_HW_NOT_PRESENT:I = 0xc

.field public static final ERROR_HW_UNAVAILABLE:I = 0x1

.field public static final ERROR_LOCKOUT:I = 0x7

.field public static final ERROR_LOCKOUT_PERMANENT:I = 0x9

.field public static final ERROR_NEGATIVE_BUTTON:I = 0xd

.field public static final ERROR_NO_BIOMETRICS:I = 0xb

.field public static final ERROR_NO_DEVICE_CREDENTIAL:I = 0xe

.field public static final ERROR_NO_SPACE:I = 0x4

.field public static final ERROR_SECURITY_UPDATE_REQUIRED:I = 0xf

.field public static final ERROR_TIMEOUT:I = 0x3

.field public static final ERROR_UNABLE_TO_PROCESS:I = 0x2

.field public static final ERROR_USER_CANCELED:I = 0xa

.field public static final ERROR_VENDOR:I = 0x8

.field private static final TAG:Ljava/lang/String; = "BiometricPromptCompat"


# instance fields
.field private mClientFragmentManager:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V
    .locals 3
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p2, "callback"    # Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    .line 796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 798
    if-eqz p1, :cond_1

    .line 801
    if-eqz p2, :cond_0

    .line 805
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 806
    .local v0, "fragmentManager":Landroidx/fragment/app/FragmentManager;
    invoke-static {p1}, Landroidx/biometric/BiometricPrompt;->getHostActivityOrContext(Landroidx/fragment/app/Fragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/biometric/BiometricPrompt;->getViewModel(Landroid/content/Context;)Landroidx/biometric/BiometricViewModel;

    move-result-object v1

    .line 807
    .local v1, "viewModel":Landroidx/biometric/BiometricViewModel;
    invoke-static {p1, v1}, Landroidx/biometric/BiometricPrompt;->addObservers(Landroidx/fragment/app/Fragment;Landroidx/biometric/BiometricViewModel;)V

    .line 808
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p2}, Landroidx/biometric/BiometricPrompt;->init(Landroidx/fragment/app/FragmentManager;Landroidx/biometric/BiometricViewModel;Ljava/util/concurrent/Executor;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V

    .line 809
    return-void

    .line 802
    .end local v0    # "fragmentManager":Landroidx/fragment/app/FragmentManager;
    .end local v1    # "viewModel":Landroidx/biometric/BiometricViewModel;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AuthenticationCallback must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 799
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Fragment must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;Ljava/util/concurrent/Executor;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V
    .locals 2
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    .line 874
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 876
    if-eqz p1, :cond_2

    .line 879
    if-eqz p2, :cond_1

    .line 882
    if-eqz p3, :cond_0

    .line 886
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 887
    .local v0, "fragmentManager":Landroidx/fragment/app/FragmentManager;
    invoke-static {p1}, Landroidx/biometric/BiometricPrompt;->getHostActivityOrContext(Landroidx/fragment/app/Fragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/biometric/BiometricPrompt;->getViewModel(Landroid/content/Context;)Landroidx/biometric/BiometricViewModel;

    move-result-object v1

    .line 888
    .local v1, "viewModel":Landroidx/biometric/BiometricViewModel;
    invoke-static {p1, v1}, Landroidx/biometric/BiometricPrompt;->addObservers(Landroidx/fragment/app/Fragment;Landroidx/biometric/BiometricViewModel;)V

    .line 889
    invoke-direct {p0, v0, v1, p2, p3}, Landroidx/biometric/BiometricPrompt;->init(Landroidx/fragment/app/FragmentManager;Landroidx/biometric/BiometricViewModel;Ljava/util/concurrent/Executor;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V

    .line 890
    return-void

    .line 883
    .end local v0    # "fragmentManager":Landroidx/fragment/app/FragmentManager;
    .end local v1    # "viewModel":Landroidx/biometric/BiometricViewModel;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AuthenticationCallback must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 880
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Executor must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 877
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Fragment must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V
    .locals 3
    .param p1, "activity"    # Landroidx/fragment/app/FragmentActivity;
    .param p2, "callback"    # Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    .line 764
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 766
    if-eqz p1, :cond_1

    .line 769
    if-eqz p2, :cond_0

    .line 773
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 774
    .local v0, "fragmentManager":Landroidx/fragment/app/FragmentManager;
    invoke-static {p1}, Landroidx/biometric/BiometricPrompt;->getViewModel(Landroid/content/Context;)Landroidx/biometric/BiometricViewModel;

    move-result-object v1

    .line 775
    .local v1, "viewModel":Landroidx/biometric/BiometricViewModel;
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p2}, Landroidx/biometric/BiometricPrompt;->init(Landroidx/fragment/app/FragmentManager;Landroidx/biometric/BiometricViewModel;Ljava/util/concurrent/Executor;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V

    .line 776
    return-void

    .line 770
    .end local v0    # "fragmentManager":Landroidx/fragment/app/FragmentManager;
    .end local v1    # "viewModel":Landroidx/biometric/BiometricViewModel;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AuthenticationCallback must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 767
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FragmentActivity must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Ljava/util/concurrent/Executor;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V
    .locals 2
    .param p1, "activity"    # Landroidx/fragment/app/FragmentActivity;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    .line 834
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 836
    if-eqz p1, :cond_2

    .line 839
    if-eqz p2, :cond_1

    .line 842
    if-eqz p3, :cond_0

    .line 846
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 847
    .local v0, "fragmentManager":Landroidx/fragment/app/FragmentManager;
    invoke-static {p1}, Landroidx/biometric/BiometricPrompt;->getViewModel(Landroid/content/Context;)Landroidx/biometric/BiometricViewModel;

    move-result-object v1

    .line 848
    .local v1, "viewModel":Landroidx/biometric/BiometricViewModel;
    invoke-direct {p0, v0, v1, p2, p3}, Landroidx/biometric/BiometricPrompt;->init(Landroidx/fragment/app/FragmentManager;Landroidx/biometric/BiometricViewModel;Ljava/util/concurrent/Executor;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V

    .line 849
    return-void

    .line 843
    .end local v0    # "fragmentManager":Landroidx/fragment/app/FragmentManager;
    .end local v1    # "viewModel":Landroidx/biometric/BiometricViewModel;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AuthenticationCallback must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 840
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Executor must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 837
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FragmentActivity must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static addObservers(Landroidx/fragment/app/Fragment;Landroidx/biometric/BiometricViewModel;)V
    .locals 2
    .param p0, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p1, "viewModel"    # Landroidx/biometric/BiometricViewModel;

    .line 1058
    if-eqz p1, :cond_0

    .line 1060
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Landroidx/biometric/BiometricPrompt$ResetCallbackObserver;

    invoke-direct {v1, p1}, Landroidx/biometric/BiometricPrompt$ResetCallbackObserver;-><init>(Landroidx/biometric/BiometricViewModel;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 1062
    :cond_0
    return-void
.end method

.method private authenticateInternal(Landroidx/biometric/BiometricPrompt$PromptInfo;Landroidx/biometric/BiometricPrompt$CryptoObject;)V
    .locals 2
    .param p1, "info"    # Landroidx/biometric/BiometricPrompt$PromptInfo;
    .param p2, "crypto"    # Landroidx/biometric/BiometricPrompt$CryptoObject;

    .line 984
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt;->mClientFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v1, "BiometricPromptCompat"

    if-nez v0, :cond_0

    .line 985
    const-string v0, "Unable to start authentication. Client fragment manager was null."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    return-void

    .line 988
    :cond_0
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt;->mClientFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 989
    const-string v0, "Unable to start authentication. Called after onSaveInstanceState()."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    return-void

    .line 993
    :cond_1
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt;->mClientFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 994
    invoke-static {v0}, Landroidx/biometric/BiometricPrompt;->findOrAddBiometricFragment(Landroidx/fragment/app/FragmentManager;)Landroidx/biometric/BiometricFragment;

    move-result-object v0

    .line 995
    .local v0, "biometricFragment":Landroidx/biometric/BiometricFragment;
    invoke-virtual {v0, p1, p2}, Landroidx/biometric/BiometricFragment;->authenticate(Landroidx/biometric/BiometricPrompt$PromptInfo;Landroidx/biometric/BiometricPrompt$CryptoObject;)V

    .line 996
    return-void
.end method

.method private static findBiometricFragment(Landroidx/fragment/app/FragmentManager;)Landroidx/biometric/BiometricFragment;
    .locals 1
    .param p0, "fragmentManager"    # Landroidx/fragment/app/FragmentManager;

    .line 1075
    const-string v0, "androidx.biometric.BiometricFragment"

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Landroidx/biometric/BiometricFragment;

    return-object v0
.end method

.method private static findOrAddBiometricFragment(Landroidx/fragment/app/FragmentManager;)Landroidx/biometric/BiometricFragment;
    .locals 3
    .param p0, "fragmentManager"    # Landroidx/fragment/app/FragmentManager;

    .line 1090
    invoke-static {p0}, Landroidx/biometric/BiometricPrompt;->findBiometricFragment(Landroidx/fragment/app/FragmentManager;)Landroidx/biometric/BiometricFragment;

    move-result-object v0

    .line 1093
    .local v0, "biometricFragment":Landroidx/biometric/BiometricFragment;
    if-nez v0, :cond_0

    .line 1094
    invoke-static {}, Landroidx/biometric/BiometricFragment;->newInstance()Landroidx/biometric/BiometricFragment;

    move-result-object v0

    .line 1095
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 1096
    const-string v2, "androidx.biometric.BiometricFragment"

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 1097
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1101
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    .line 1104
    :cond_0
    return-object v0
.end method

.method static getHostActivityOrContext(Landroidx/fragment/app/Fragment;)Landroid/content/Context;
    .locals 2
    .param p0, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 1041
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 1042
    .local v0, "activity":Landroidx/fragment/app/FragmentActivity;
    if-eqz v0, :cond_0

    .line 1043
    return-object v0

    .line 1046
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    return-object v1
.end method

.method static getViewModel(Landroid/content/Context;)Landroidx/biometric/BiometricViewModel;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 1028
    instance-of v0, p0, Landroidx/lifecycle/ViewModelStoreOwner;

    if-eqz v0, :cond_0

    .line 1029
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/ViewModelStoreOwner;

    invoke-direct {v0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Landroidx/biometric/BiometricViewModel;

    goto :goto_0

    .line 1030
    :cond_0
    const/4 v0, 0x0

    .line 1028
    :goto_0
    return-object v0
.end method

.method private init(Landroidx/fragment/app/FragmentManager;Landroidx/biometric/BiometricViewModel;Ljava/util/concurrent/Executor;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V
    .locals 0
    .param p1, "fragmentManager"    # Landroidx/fragment/app/FragmentManager;
    .param p2, "viewModel"    # Landroidx/biometric/BiometricViewModel;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    .line 907
    iput-object p1, p0, Landroidx/biometric/BiometricPrompt;->mClientFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 909
    if-eqz p2, :cond_1

    .line 910
    if-eqz p3, :cond_0

    .line 911
    invoke-virtual {p2, p3}, Landroidx/biometric/BiometricViewModel;->setClientExecutor(Ljava/util/concurrent/Executor;)V

    .line 913
    :cond_0
    invoke-virtual {p2, p4}, Landroidx/biometric/BiometricViewModel;->setClientCallback(Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V

    .line 915
    :cond_1
    return-void
.end method


# virtual methods
.method public authenticate(Landroidx/biometric/BiometricPrompt$PromptInfo;)V
    .locals 2
    .param p1, "info"    # Landroidx/biometric/BiometricPrompt$PromptInfo;

    .line 970
    if-eqz p1, :cond_0

    .line 974
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/biometric/BiometricPrompt;->authenticateInternal(Landroidx/biometric/BiometricPrompt$PromptInfo;Landroidx/biometric/BiometricPrompt$CryptoObject;)V

    .line 975
    return-void

    .line 971
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PromptInfo cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public authenticate(Landroidx/biometric/BiometricPrompt$PromptInfo;Landroidx/biometric/BiometricPrompt$CryptoObject;)V
    .locals 3
    .param p1, "info"    # Landroidx/biometric/BiometricPrompt$PromptInfo;
    .param p2, "crypto"    # Landroidx/biometric/BiometricPrompt$CryptoObject;

    .line 937
    if-eqz p1, :cond_4

    .line 940
    if-eqz p2, :cond_3

    .line 945
    nop

    .line 946
    invoke-static {p1, p2}, Landroidx/biometric/AuthenticatorUtils;->getConsolidatedAuthenticators(Landroidx/biometric/BiometricPrompt$PromptInfo;Landroidx/biometric/BiometricPrompt$CryptoObject;)I

    move-result v0

    .line 947
    .local v0, "authenticators":I
    invoke-static {v0}, Landroidx/biometric/AuthenticatorUtils;->isWeakBiometricAllowed(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 951
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_1

    .line 952
    invoke-static {v0}, Landroidx/biometric/AuthenticatorUtils;->isDeviceCredentialAllowed(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 953
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Crypto-based authentication is not supported for device credential prior to API 30."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 957
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Landroidx/biometric/BiometricPrompt;->authenticateInternal(Landroidx/biometric/BiometricPrompt$PromptInfo;Landroidx/biometric/BiometricPrompt$CryptoObject;)V

    .line 958
    return-void

    .line 948
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Crypto-based authentication is not supported for Class 2 (Weak) biometrics."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 941
    .end local v0    # "authenticators":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CryptoObject cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 938
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PromptInfo cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cancelAuthentication()V
    .locals 3

    .line 1006
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt;->mClientFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v1, "BiometricPromptCompat"

    if-nez v0, :cond_0

    .line 1007
    const-string v0, "Unable to start authentication. Client fragment manager was null."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    return-void

    .line 1011
    :cond_0
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt;->mClientFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-static {v0}, Landroidx/biometric/BiometricPrompt;->findBiometricFragment(Landroidx/fragment/app/FragmentManager;)Landroidx/biometric/BiometricFragment;

    move-result-object v0

    .line 1012
    .local v0, "biometricFragment":Landroidx/biometric/BiometricFragment;
    if-nez v0, :cond_1

    .line 1013
    const-string v2, "Unable to cancel authentication. BiometricFragment not found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    return-void

    .line 1017
    :cond_1
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricFragment;->cancelAuthentication(I)V

    .line 1018
    return-void
.end method
