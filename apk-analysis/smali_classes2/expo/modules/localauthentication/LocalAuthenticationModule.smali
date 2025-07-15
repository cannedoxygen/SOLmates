.class public final Lexpo/modules/localauthentication/LocalAuthenticationModule;
.super Lexpo/modules/kotlin/modules/Module;
.source "LocalAuthenticationModule.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLocalAuthenticationModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocalAuthenticationModule.kt\nexpo/modules/localauthentication/LocalAuthenticationModule\n+ 2 Module.kt\nexpo/modules/kotlin/modules/ModuleKt\n+ 3 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 4 Trace.kt\nandroidx/tracing/TraceKt\n+ 5 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder\n+ 6 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n+ 7 UntypedAsyncFunctionComponent.kt\nexpo/modules/kotlin/functions/UntypedAsyncFunctionComponentKt\n+ 8 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 9 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n+ 10 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeProvider\n+ 11 ModuleDefinitionBuilder.kt\nexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder\n*L\n1#1,345:1\n61#2:346\n14#3:347\n25#3:348\n27#4,3:349\n31#4:541\n233#5:352\n234#5,2:383\n233#5:385\n234#5,2:416\n233#5:418\n234#5,2:449\n233#5:451\n234#5,2:482\n272#5:484\n275#5,3:502\n233#5:505\n234#5,2:536\n26#6:353\n26#6:386\n26#6:419\n26#6:452\n26#6:506\n13#7,6:354\n19#7,19:364\n13#7,6:387\n19#7,19:397\n13#7,6:420\n19#7,19:430\n13#7,6:453\n19#7,19:463\n13#7,6:507\n19#7,19:517\n8#8,4:360\n8#8,4:393\n8#8,4:426\n8#8,4:459\n8#8,4:513\n172#9,6:485\n168#9:491\n158#9,8:494\n143#10,2:492\n166#11,3:538\n*S KotlinDebug\n*F\n+ 1 LocalAuthenticationModule.kt\nexpo/modules/localauthentication/LocalAuthenticationModule\n*L\n34#1:346\n34#1:347\n34#1:348\n34#1:349,3\n34#1:541\n37#1:352\n37#1:383,2\n55#1:385\n55#1:416,2\n59#1:418\n59#1:449,2\n63#1:451\n63#1:482,2\n77#1:484\n77#1:502,3\n102#1:505\n102#1:536,2\n37#1:353\n55#1:386\n59#1:419\n63#1:452\n102#1:506\n37#1:354,6\n37#1:364,19\n55#1:387,6\n55#1:397,19\n59#1:420,6\n59#1:430,19\n63#1:453,6\n63#1:463,19\n102#1:507,6\n102#1:517,19\n37#1:360,4\n55#1:393,4\n59#1:426,4\n63#1:459,4\n102#1:513,4\n77#1:485,6\n77#1:491\n77#1:494,8\n77#1:492,2\n107#1:538,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J \u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020#H\u0003J\u0008\u0010)\u001a\u00020*H\u0002J\u0008\u0010+\u001a\u00020*H\u0002J\u0010\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020*H\u0002J \u0010/\u001a\u0002002\n\u0008\u0002\u00101\u001a\u0004\u0018\u00010-2\n\u0008\u0002\u00102\u001a\u0004\u0018\u00010-H\u0002J\u0008\u00103\u001a\u000204H\u0016J\u0010\u00105\u001a\u00020\u00142\u0006\u00106\u001a\u00020-H\u0002J\u0010\u00107\u001a\u00020\u00142\u0006\u0010.\u001a\u00020*H\u0002J\u0018\u00108\u001a\u00020%2\u0006\u0010(\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020#H\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0007\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u00020\u00108BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u00020\u00148BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u000e\u0010\u0017\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u00020\u00198BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u001bR#\u0010\u001c\u001a\n \u001e*\u0004\u0018\u00010\u001d0\u001d8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008!\u0010\u000c\u001a\u0004\u0008\u001f\u0010 R\u0010\u0010\"\u001a\u0004\u0018\u00010#X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00069"
    }
    d2 = {
        "Lexpo/modules/localauthentication/LocalAuthenticationModule;",
        "Lexpo/modules/kotlin/modules/Module;",
        "()V",
        "authOptions",
        "Lexpo/modules/localauthentication/AuthOptions;",
        "authenticationCallback",
        "Landroidx/biometric/BiometricPrompt$AuthenticationCallback;",
        "biometricManager",
        "Landroidx/biometric/BiometricManager;",
        "getBiometricManager",
        "()Landroidx/biometric/BiometricManager;",
        "biometricManager$delegate",
        "Lkotlin/Lazy;",
        "biometricPrompt",
        "Landroidx/biometric/BiometricPrompt;",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "isAuthenticating",
        "",
        "isDeviceSecure",
        "()Z",
        "isRetryingWithDeviceCredentials",
        "keyguardManager",
        "Landroid/app/KeyguardManager;",
        "getKeyguardManager",
        "()Landroid/app/KeyguardManager;",
        "packageManager",
        "Landroid/content/pm/PackageManager;",
        "kotlin.jvm.PlatformType",
        "getPackageManager",
        "()Landroid/content/pm/PackageManager;",
        "packageManager$delegate",
        "promise",
        "Lexpo/modules/kotlin/Promise;",
        "authenticate",
        "",
        "fragmentActivity",
        "Landroidx/fragment/app/FragmentActivity;",
        "options",
        "canAuthenticateUsingStrongBiometrics",
        "",
        "canAuthenticateUsingWeakBiometrics",
        "convertErrorCode",
        "",
        "code",
        "createResponse",
        "Landroid/os/Bundle;",
        "error",
        "warning",
        "definition",
        "Lexpo/modules/kotlin/modules/ModuleDefinitionData;",
        "hasSystemFeature",
        "feature",
        "isBiometricUnavailable",
        "promptDeviceCredentialsFallback",
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
.field private authOptions:Lexpo/modules/localauthentication/AuthOptions;

.field private final authenticationCallback:Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

.field private final biometricManager$delegate:Lkotlin/Lazy;

.field private biometricPrompt:Landroidx/biometric/BiometricPrompt;

.field private isAuthenticating:Z

.field private isRetryingWithDeviceCredentials:Z

.field private final packageManager$delegate:Lkotlin/Lazy;

.field private promise:Lexpo/modules/kotlin/Promise;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lexpo/modules/kotlin/modules/Module;-><init>()V

    .line 141
    new-instance v0, Lexpo/modules/localauthentication/LocalAuthenticationModule$biometricManager$2;

    invoke-direct {v0, p0}, Lexpo/modules/localauthentication/LocalAuthenticationModule$biometricManager$2;-><init>(Lexpo/modules/localauthentication/LocalAuthenticationModule;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule;->biometricManager$delegate:Lkotlin/Lazy;

    .line 142
    new-instance v0, Lexpo/modules/localauthentication/LocalAuthenticationModule$packageManager$2;

    invoke-direct {v0, p0}, Lexpo/modules/localauthentication/LocalAuthenticationModule$packageManager$2;-><init>(Lexpo/modules/localauthentication/LocalAuthenticationModule;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule;->packageManager$delegate:Lkotlin/Lazy;

    .line 149
    new-instance v0, Lexpo/modules/localauthentication/LocalAuthenticationModule$authenticationCallback$1;

    invoke-direct {v0, p0}, Lexpo/modules/localauthentication/LocalAuthenticationModule$authenticationCallback$1;-><init>(Lexpo/modules/localauthentication/LocalAuthenticationModule;)V

    check-cast v0, Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    iput-object v0, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule;->authenticationCallback:Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    .line 33
    return-void
.end method

.method public static final synthetic access$authenticate(Lexpo/modules/localauthentication/LocalAuthenticationModule;Landroidx/fragment/app/FragmentActivity;Lexpo/modules/localauthentication/AuthOptions;Lexpo/modules/kotlin/Promise;)V
    .locals 0
    .param p0, "$this"    # Lexpo/modules/localauthentication/LocalAuthenticationModule;
    .param p1, "fragmentActivity"    # Landroidx/fragment/app/FragmentActivity;
    .param p2, "options"    # Lexpo/modules/localauthentication/AuthOptions;
    .param p3, "promise"    # Lexpo/modules/kotlin/Promise;

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->authenticate(Landroidx/fragment/app/FragmentActivity;Lexpo/modules/localauthentication/AuthOptions;Lexpo/modules/kotlin/Promise;)V

    return-void
.end method

.method public static final synthetic access$canAuthenticateUsingStrongBiometrics(Lexpo/modules/localauthentication/LocalAuthenticationModule;)I
    .locals 1
    .param p0, "$this"    # Lexpo/modules/localauthentication/LocalAuthenticationModule;

    .line 33
    invoke-direct {p0}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->canAuthenticateUsingStrongBiometrics()I

    move-result v0

    return v0
.end method

.method public static final synthetic access$canAuthenticateUsingWeakBiometrics(Lexpo/modules/localauthentication/LocalAuthenticationModule;)I
    .locals 1
    .param p0, "$this"    # Lexpo/modules/localauthentication/LocalAuthenticationModule;

    .line 33
    invoke-direct {p0}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->canAuthenticateUsingWeakBiometrics()I

    move-result v0

    return v0
.end method

.method public static final synthetic access$convertErrorCode(Lexpo/modules/localauthentication/LocalAuthenticationModule;I)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/localauthentication/LocalAuthenticationModule;
    .param p1, "code"    # I

    .line 33
    invoke-direct {p0, p1}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->convertErrorCode(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$createResponse(Lexpo/modules/localauthentication/LocalAuthenticationModule;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/localauthentication/LocalAuthenticationModule;
    .param p1, "error"    # Ljava/lang/String;
    .param p2, "warning"    # Ljava/lang/String;

    .line 33
    invoke-direct {p0, p1, p2}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->createResponse(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getAuthOptions$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;)Lexpo/modules/localauthentication/AuthOptions;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/localauthentication/LocalAuthenticationModule;

    .line 33
    iget-object v0, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule;->authOptions:Lexpo/modules/localauthentication/AuthOptions;

    return-object v0
.end method

.method public static final synthetic access$getAuthenticationCallback$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;)Landroidx/biometric/BiometricPrompt$AuthenticationCallback;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/localauthentication/LocalAuthenticationModule;

    .line 33
    iget-object v0, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule;->authenticationCallback:Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    return-object v0
.end method

.method public static final synthetic access$getBiometricPrompt$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;)Landroidx/biometric/BiometricPrompt;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/localauthentication/LocalAuthenticationModule;

    .line 33
    iget-object v0, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule;->biometricPrompt:Landroidx/biometric/BiometricPrompt;

    return-object v0
.end method

.method public static final synthetic access$getContext(Lexpo/modules/localauthentication/LocalAuthenticationModule;)Landroid/content/Context;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/localauthentication/LocalAuthenticationModule;

    .line 33
    invoke-direct {p0}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getKeyguardManager(Lexpo/modules/localauthentication/LocalAuthenticationModule;)Landroid/app/KeyguardManager;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/localauthentication/LocalAuthenticationModule;

    .line 33
    invoke-direct {p0}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getPromise$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;)Lexpo/modules/kotlin/Promise;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/localauthentication/LocalAuthenticationModule;

    .line 33
    iget-object v0, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule;->promise:Lexpo/modules/kotlin/Promise;

    return-object v0
.end method

.method public static final synthetic access$hasSystemFeature(Lexpo/modules/localauthentication/LocalAuthenticationModule;Ljava/lang/String;)Z
    .locals 1
    .param p0, "$this"    # Lexpo/modules/localauthentication/LocalAuthenticationModule;
    .param p1, "feature"    # Ljava/lang/String;

    .line 33
    invoke-direct {p0, p1}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$isBiometricUnavailable(Lexpo/modules/localauthentication/LocalAuthenticationModule;I)Z
    .locals 1
    .param p0, "$this"    # Lexpo/modules/localauthentication/LocalAuthenticationModule;
    .param p1, "code"    # I

    .line 33
    invoke-direct {p0, p1}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->isBiometricUnavailable(I)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$isDeviceSecure(Lexpo/modules/localauthentication/LocalAuthenticationModule;)Z
    .locals 1
    .param p0, "$this"    # Lexpo/modules/localauthentication/LocalAuthenticationModule;

    .line 33
    invoke-direct {p0}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->isDeviceSecure()Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$isRetryingWithDeviceCredentials$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;)Z
    .locals 1
    .param p0, "$this"    # Lexpo/modules/localauthentication/LocalAuthenticationModule;

    .line 33
    iget-boolean v0, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule;->isRetryingWithDeviceCredentials:Z

    return v0
.end method

.method public static final synthetic access$promptDeviceCredentialsFallback(Lexpo/modules/localauthentication/LocalAuthenticationModule;Lexpo/modules/localauthentication/AuthOptions;Lexpo/modules/kotlin/Promise;)V
    .locals 0
    .param p0, "$this"    # Lexpo/modules/localauthentication/LocalAuthenticationModule;
    .param p1, "options"    # Lexpo/modules/localauthentication/AuthOptions;
    .param p2, "promise"    # Lexpo/modules/kotlin/Promise;

    .line 33
    invoke-direct {p0, p1, p2}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->promptDeviceCredentialsFallback(Lexpo/modules/localauthentication/AuthOptions;Lexpo/modules/kotlin/Promise;)V

    return-void
.end method

.method public static final synthetic access$setAuthOptions$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;Lexpo/modules/localauthentication/AuthOptions;)V
    .locals 0
    .param p0, "$this"    # Lexpo/modules/localauthentication/LocalAuthenticationModule;
    .param p1, "<set-?>"    # Lexpo/modules/localauthentication/AuthOptions;

    .line 33
    iput-object p1, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule;->authOptions:Lexpo/modules/localauthentication/AuthOptions;

    return-void
.end method

.method public static final synthetic access$setAuthenticating$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;Z)V
    .locals 0
    .param p0, "$this"    # Lexpo/modules/localauthentication/LocalAuthenticationModule;
    .param p1, "<set-?>"    # Z

    .line 33
    iput-boolean p1, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule;->isAuthenticating:Z

    return-void
.end method

.method public static final synthetic access$setBiometricPrompt$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;Landroidx/biometric/BiometricPrompt;)V
    .locals 0
    .param p0, "$this"    # Lexpo/modules/localauthentication/LocalAuthenticationModule;
    .param p1, "<set-?>"    # Landroidx/biometric/BiometricPrompt;

    .line 33
    iput-object p1, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule;->biometricPrompt:Landroidx/biometric/BiometricPrompt;

    return-void
.end method

.method public static final synthetic access$setPromise$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;Lexpo/modules/kotlin/Promise;)V
    .locals 0
    .param p0, "$this"    # Lexpo/modules/localauthentication/LocalAuthenticationModule;
    .param p1, "<set-?>"    # Lexpo/modules/kotlin/Promise;

    .line 33
    iput-object p1, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule;->promise:Lexpo/modules/kotlin/Promise;

    return-void
.end method

.method public static final synthetic access$setRetryingWithDeviceCredentials$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;Z)V
    .locals 0
    .param p0, "$this"    # Lexpo/modules/localauthentication/LocalAuthenticationModule;
    .param p1, "<set-?>"    # Z

    .line 33
    iput-boolean p1, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule;->isRetryingWithDeviceCredentials:Z

    return-void
.end method

.method private final authenticate(Landroidx/fragment/app/FragmentActivity;Lexpo/modules/localauthentication/AuthOptions;Lexpo/modules/kotlin/Promise;)V
    .locals 11
    .param p1, "fragmentActivity"    # Landroidx/fragment/app/FragmentActivity;
    .param p2, "options"    # Lexpo/modules/localauthentication/AuthOptions;
    .param p3, "promise"    # Lexpo/modules/kotlin/Promise;

    .line 198
    iget-boolean v0, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule;->isAuthenticating:Z

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule;->promise:Lexpo/modules/kotlin/Promise;

    if-eqz v0, :cond_0

    .line 200
    nop

    .line 201
    nop

    .line 200
    const/4 v1, 0x2

    const-string v2, "app_cancel"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3, v1, v3}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->createResponse$default(Lexpo/modules/localauthentication/LocalAuthenticationModule;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object v1

    .line 199
    invoke-interface {v0, v1}, Lexpo/modules/kotlin/Promise;->resolve(Ljava/lang/Object;)V

    .line 204
    :cond_0
    iput-object p3, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule;->promise:Lexpo/modules/kotlin/Promise;

    .line 205
    return-void

    .line 208
    :cond_1
    invoke-virtual {p2}, Lexpo/modules/localauthentication/AuthOptions;->getPromptMessage()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "promptMessage":Ljava/lang/String;
    invoke-virtual {p2}, Lexpo/modules/localauthentication/AuthOptions;->getCancelLabel()Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "cancelLabel":Ljava/lang/String;
    invoke-virtual {p2}, Lexpo/modules/localauthentication/AuthOptions;->getRequireConfirmation()Z

    move-result v2

    .line 211
    .local v2, "requireConfirmation":Z
    invoke-virtual {p2}, Lexpo/modules/localauthentication/AuthOptions;->getDisableDeviceFallback()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 212
    invoke-virtual {p2}, Lexpo/modules/localauthentication/AuthOptions;->getBiometricsSecurityLevel()Lexpo/modules/localauthentication/BiometricsSecurityLevel;

    move-result-object v3

    invoke-virtual {v3}, Lexpo/modules/localauthentication/BiometricsSecurityLevel;->toNativeBiometricSecurityLevel()I

    move-result v3

    goto :goto_0

    .line 214
    :cond_2
    invoke-virtual {p2}, Lexpo/modules/localauthentication/AuthOptions;->getBiometricsSecurityLevel()Lexpo/modules/localauthentication/BiometricsSecurityLevel;

    move-result-object v3

    invoke-virtual {v3}, Lexpo/modules/localauthentication/BiometricsSecurityLevel;->toNativeBiometricSecurityLevel()I

    move-result v3

    const v4, 0x8000

    or-int/2addr v3, v4

    .line 211
    :goto_0
    nop

    .line 217
    .local v3, "allowedAuthenticators":I
    const/4 v4, 0x1

    iput-boolean v4, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule;->isAuthenticating:Z

    .line 218
    iput-object p3, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule;->promise:Lexpo/modules/kotlin/Promise;

    .line 219
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    const-string v5, "newSingleThreadExecutor(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/util/concurrent/Executor;

    .line 220
    .local v4, "executor":Ljava/util/concurrent/Executor;
    new-instance v5, Landroidx/biometric/BiometricPrompt;

    iget-object v6, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule;->authenticationCallback:Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    invoke-direct {v5, p1, v4, v6}, Landroidx/biometric/BiometricPrompt;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/util/concurrent/Executor;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V

    iput-object v5, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule;->biometricPrompt:Landroidx/biometric/BiometricPrompt;

    .line 221
    new-instance v5, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    invoke-direct {v5}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;-><init>()V

    move-object v6, v5

    .local v6, "$this$authenticate_u24lambda_u249":Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;
    const/4 v7, 0x0

    .line 222
    .local v7, "$i$a$-apply-LocalAuthenticationModule$authenticate$promptInfoBuilder$1":I
    move-object v8, v0

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v6, v8}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    .line 223
    invoke-virtual {v6, v3}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setAllowedAuthenticators(I)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    .line 224
    invoke-virtual {p2}, Lexpo/modules/localauthentication/AuthOptions;->getDisableDeviceFallback()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 225
    move-object v8, v1

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v6, v8}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setNegativeButtonText(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    .line 227
    :cond_3
    invoke-virtual {v6, v2}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setConfirmationRequired(Z)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    .line 228
    nop

    .line 221
    .end local v6    # "$this$authenticate_u24lambda_u249":Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;
    .end local v7    # "$i$a$-apply-LocalAuthenticationModule$authenticate$promptInfoBuilder$1":I
    nop

    .line 230
    .local v5, "promptInfoBuilder":Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;
    invoke-virtual {v5}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->build()Landroidx/biometric/BiometricPrompt$PromptInfo;

    move-result-object v6

    const-string v7, "build(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    .local v6, "promptInfo":Landroidx/biometric/BiometricPrompt$PromptInfo;
    nop

    .line 232
    :try_start_0
    iget-object v7, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule;->biometricPrompt:Landroidx/biometric/BiometricPrompt;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7, v6}, Landroidx/biometric/BiometricPrompt;->authenticate(Landroidx/biometric/BiometricPrompt$PromptInfo;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 233
    :catch_0
    move-exception v7

    .line 234
    .local v7, "e":Ljava/lang/NullPointerException;
    new-instance v8, Lexpo/modules/kotlin/exception/UnexpectedException;

    const-string v9, "Canceled authentication due to an internal error"

    move-object v10, v7

    check-cast v10, Ljava/lang/Throwable;

    invoke-direct {v8, v9, v10}, Lexpo/modules/kotlin/exception/UnexpectedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v8, Lexpo/modules/kotlin/exception/CodedException;

    invoke-interface {p3, v8}, Lexpo/modules/kotlin/Promise;->reject(Lexpo/modules/kotlin/exception/CodedException;)V

    .line 236
    .end local v7    # "e":Ljava/lang/NullPointerException;
    :goto_1
    return-void
.end method

.method private final canAuthenticateUsingStrongBiometrics()I
    .locals 2

    .line 324
    invoke-direct {p0}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->getBiometricManager()Landroidx/biometric/BiometricManager;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricManager;->canAuthenticate(I)I

    move-result v0

    return v0
.end method

.method private final canAuthenticateUsingWeakBiometrics()I
    .locals 2

    .line 321
    invoke-direct {p0}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->getBiometricManager()Landroidx/biometric/BiometricManager;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricManager;->canAuthenticate(I)I

    move-result v0

    return v0
.end method

.method private final convertErrorCode(I)Ljava/lang/String;
    .locals 1
    .param p1, "code"    # I

    .line 297
    packed-switch p1, :pswitch_data_0

    .line 304
    :pswitch_0
    const-string v0, "unknown"

    goto :goto_0

    .line 300
    :pswitch_1
    const-string v0, "lockout"

    goto :goto_0

    .line 298
    :pswitch_2
    const-string v0, "user_cancel"

    goto :goto_0

    .line 301
    :pswitch_3
    const-string v0, "no_space"

    goto :goto_0

    .line 302
    :pswitch_4
    const-string v0, "timeout"

    goto :goto_0

    .line 303
    :pswitch_5
    const-string v0, "unable_to_process"

    goto :goto_0

    .line 299
    :pswitch_6
    const-string v0, "not_available"

    .line 297
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_2
        :pswitch_6
    .end packed-switch
.end method

.method private final createResponse(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6
    .param p1, "error"    # Ljava/lang/String;
    .param p2, "warning"    # Ljava/lang/String;

    .line 329
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v1, v0

    .local v1, "$this$createResponse_u24lambda_u2412":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 330
    .local v2, "$i$a$-apply-LocalAuthenticationModule$createResponse$1":I
    if-nez p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "success"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 331
    if-eqz p1, :cond_1

    move-object v3, p1

    .local v3, "it":Ljava/lang/String;
    const/4 v4, 0x0

    .line 332
    .local v4, "$i$a$-let-LocalAuthenticationModule$createResponse$1$1":I
    const-string v5, "error"

    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    nop

    .line 331
    .end local v3    # "it":Ljava/lang/String;
    .end local v4    # "$i$a$-let-LocalAuthenticationModule$createResponse$1$1":I
    nop

    .line 334
    :cond_1
    if-eqz p2, :cond_2

    move-object v3, p2

    .restart local v3    # "it":Ljava/lang/String;
    const/4 v4, 0x0

    .line 335
    .local v4, "$i$a$-let-LocalAuthenticationModule$createResponse$1$2":I
    const-string v5, "warning"

    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    nop

    .line 334
    .end local v3    # "it":Ljava/lang/String;
    .end local v4    # "$i$a$-let-LocalAuthenticationModule$createResponse$1$2":I
    nop

    .line 337
    :cond_2
    nop

    .line 329
    .end local v1    # "$this$createResponse_u24lambda_u2412":Landroid/os/Bundle;
    .end local v2    # "$i$a$-apply-LocalAuthenticationModule$createResponse$1":I
    nop

    .line 337
    return-object v0
.end method

.method static synthetic createResponse$default(Lexpo/modules/localauthentication/LocalAuthenticationModule;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/os/Bundle;
    .locals 1

    .line 326
    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 327
    move-object p1, v0

    .line 326
    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 328
    move-object p2, v0

    .line 326
    :cond_1
    invoke-direct {p0, p1, p2}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->createResponse(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private final getBiometricManager()Landroidx/biometric/BiometricManager;
    .locals 1

    .line 141
    iget-object v0, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule;->biometricManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/biometric/BiometricManager;

    return-object v0
.end method

.method private final getContext()Landroid/content/Context;
    .locals 1

    .line 136
    invoke-virtual {p0}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getReactContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lexpo/modules/kotlin/exception/Exceptions$ReactContextLost;

    invoke-direct {v0}, Lexpo/modules/kotlin/exception/Exceptions$ReactContextLost;-><init>()V

    throw v0
.end method

.method private final getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 2

    .line 139
    invoke-direct {p0}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.KeyguardManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/KeyguardManager;

    return-object v0
.end method

.method private final getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .line 142
    iget-object v0, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule;->packageManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private final hasSystemFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;

    .line 283
    invoke-direct {p0}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private final isBiometricUnavailable(I)Z
    .locals 1
    .param p1, "code"    # I

    .line 309
    sparse-switch p1, :sswitch_data_0

    .line 316
    const/4 v0, 0x0

    goto :goto_0

    .line 314
    :sswitch_0
    const/4 v0, 0x1

    .line 309
    :goto_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method private final isDeviceSecure()Z
    .locals 1

    .line 294
    invoke-direct {p0}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v0

    return v0
.end method

.method private final promptDeviceCredentialsFallback(Lexpo/modules/localauthentication/AuthOptions;Lexpo/modules/kotlin/Promise;)V
    .locals 12
    .param p1, "options"    # Lexpo/modules/localauthentication/AuthOptions;
    .param p2, "promise"    # Lexpo/modules/kotlin/Promise;

    .line 239
    invoke-virtual {p0}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getThrowingActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    .line 240
    .local v0, "fragmentActivity":Landroidx/fragment/app/FragmentActivity;
    if-nez v0, :cond_0

    .line 241
    nop

    .line 242
    nop

    .line 243
    nop

    .line 244
    nop

    .line 242
    const-string v1, "not_available"

    const-string v2, "getCurrentActivity() returned null"

    invoke-direct {p0, v1, v2}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->createResponse(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 241
    invoke-interface {p2, v1}, Lexpo/modules/kotlin/Promise;->resolve(Ljava/lang/Object;)V

    .line 247
    return-void

    .line 250
    :cond_0
    invoke-virtual {p1}, Lexpo/modules/localauthentication/AuthOptions;->getPromptMessage()Ljava/lang/String;

    move-result-object v8

    .line 251
    .local v8, "promptMessage":Ljava/lang/String;
    invoke-virtual {p1}, Lexpo/modules/localauthentication/AuthOptions;->getRequireConfirmation()Z

    move-result v9

    .line 255
    .local v9, "requireConfirmation":Z
    invoke-virtual {p0}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v1

    invoke-virtual {v1}, Lexpo/modules/kotlin/AppContext;->getMainQueue()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v10

    new-instance v11, Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;

    const/4 v7, 0x0

    move-object v1, v11

    move-object v2, p0

    move-object v3, v8

    move-object v4, v0

    move-object v5, p2

    move v6, v9

    invoke-direct/range {v1 .. v7}, Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;-><init>(Lexpo/modules/localauthentication/LocalAuthenticationModule;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lexpo/modules/kotlin/Promise;ZLkotlin/coroutines/Continuation;)V

    move-object v5, v11

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, v10

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 281
    return-void
.end method


# virtual methods
.method public definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
    .locals 29

    .line 34
    move-object/from16 v1, p0

    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/modules/Module;

    .local v2, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    const/4 v3, 0x0

    .line 346
    .local v3, "$i$f$ModuleDefinition":I
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ".ModuleDefinition"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "blockName$iv$iv":Ljava/lang/String;
    const/4 v5, 0x0

    .line 347
    .local v5, "$i$f$trace":I
    const-string v6, "ExpoModulesCore"

    .local v6, "tag$iv$iv$iv":Ljava/lang/String;
    const/4 v7, 0x0

    .line 348
    .local v7, "$i$f$trace":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "] "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .local v8, "label$iv$iv$iv$iv":Ljava/lang/String;
    const/4 v9, 0x0

    .line 349
    .local v9, "$i$f$trace":I
    invoke-static {v8}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 350
    nop

    .line 351
    const/4 v0, 0x0

    .line 346
    .local v0, "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    :try_start_0
    new-instance v10, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    invoke-direct {v10, v2}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    move-object v11, v10

    .local v11, "$this$definition_u24lambda_u248":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    const/4 v12, 0x0

    .line 35
    .local v12, "$i$a$-ModuleDefinition-LocalAuthenticationModule$definition$1":I
    const-string v13, "ExpoLocalAuthentication"

    invoke-virtual {v11, v13}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Name(Ljava/lang/String;)V

    .line 37
    move-object v13, v11

    check-cast v13, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v14, "supportedAuthenticationTypesAsync"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .local v13, "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .local v14, "name$iv":Ljava/lang/String;
    const/4 v15, 0x0

    .line 352
    .local v15, "$i$f$AsyncFunction":I
    const/16 v16, 0x0

    .line 353
    .local v16, "$i$f$emptyArray":I
    move/from16 v17, v0

    .end local v0    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .local v17, "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    const/4 v0, 0x0

    move-object/from16 v18, v2

    .end local v2    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .local v18, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    :try_start_1
    new-array v2, v0, [Lexpo/modules/kotlin/types/AnyType;

    .line 352
    .end local v16    # "$i$f$emptyArray":I
    new-instance v0, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$AsyncFunction$1;

    invoke-direct {v0, v1}, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$AsyncFunction$1;-><init>(Lexpo/modules/localauthentication/LocalAuthenticationModule;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .local v0, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .local v2, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/16 v19, 0x0

    .line 354
    .local v19, "$i$f$createAsyncFunctionComponent":I
    move/from16 v20, v3

    .end local v3    # "$i$f$ModuleDefinition":I
    .local v20, "$i$f$ModuleDefinition":I
    :try_start_2
    const-class v3, Ljava/util/Set;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    .line 357
    nop

    .line 358
    move-object/from16 v21, v4

    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .local v21, "blockName$iv$iv":Ljava/lang/String;
    :try_start_3
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    if-eqz v4, :cond_0

    .line 359
    const/4 v3, 0x0

    .line 360
    .local v3, "$i$f$enforceType":I
    nop

    .line 363
    nop

    .line 364
    .end local v3    # "$i$f$enforceType":I
    :try_start_4
    new-instance v3, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v3, v14, v2, v0}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 541
    .end local v0    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v2    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v11    # "$this$definition_u24lambda_u248":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v12    # "$i$a$-ModuleDefinition-LocalAuthenticationModule$definition$1":I
    .end local v13    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v14    # "name$iv":Ljava/lang/String;
    .end local v15    # "$i$f$AsyncFunction":I
    .end local v17    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .end local v19    # "$i$f$createAsyncFunctionComponent":I
    :catchall_0
    move-exception v0

    move/from16 v25, v5

    move-object/from16 v27, v6

    move/from16 v26, v7

    move-object/from16 v28, v8

    move/from16 v24, v9

    goto/16 :goto_6

    .line 366
    .restart local v0    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .restart local v2    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .restart local v11    # "$this$definition_u24lambda_u248":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .restart local v12    # "$i$a$-ModuleDefinition-LocalAuthenticationModule$definition$1":I
    .restart local v13    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v14    # "name$iv":Ljava/lang/String;
    .restart local v15    # "$i$f$AsyncFunction":I
    .restart local v17    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .restart local v19    # "$i$f$createAsyncFunctionComponent":I
    :cond_0
    :try_start_5
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    if-eqz v4, :cond_1

    .line 367
    const/4 v3, 0x0

    .line 360
    .restart local v3    # "$i$f$enforceType":I
    nop

    .line 363
    nop

    .line 368
    .end local v3    # "$i$f$enforceType":I
    :try_start_6
    new-instance v3, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v3, v14, v2, v0}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 370
    :cond_1
    :try_start_7
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    if-eqz v4, :cond_2

    .line 371
    const/4 v3, 0x0

    .line 360
    .restart local v3    # "$i$f$enforceType":I
    nop

    .line 363
    nop

    .line 372
    .end local v3    # "$i$f$enforceType":I
    :try_start_8
    new-instance v3, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v3, v14, v2, v0}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    .line 374
    :cond_2
    :try_start_9
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    if-eqz v4, :cond_3

    .line 375
    const/4 v3, 0x0

    .line 360
    .restart local v3    # "$i$f$enforceType":I
    nop

    .line 363
    nop

    .line 376
    .end local v3    # "$i$f$enforceType":I
    :try_start_a
    new-instance v3, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v3, v14, v2, v0}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_0

    .line 378
    :cond_3
    :try_start_b
    const-class v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    if-eqz v3, :cond_4

    .line 379
    const/4 v3, 0x0

    .line 360
    .restart local v3    # "$i$f$enforceType":I
    nop

    .line 363
    nop

    .line 380
    .end local v3    # "$i$f$enforceType":I
    :try_start_c
    new-instance v3, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v3, v14, v2, v0}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_0

    .line 382
    :cond_4
    :try_start_d
    new-instance v3, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v3, v14, v2, v0}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 357
    :goto_0
    nop

    .line 352
    .end local v0    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v2    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v19    # "$i$f$createAsyncFunctionComponent":I
    move-object v0, v3

    .local v0, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v2, 0x0

    .line 383
    .local v2, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$4$iv":I
    invoke-virtual {v13}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    nop

    .line 352
    .end local v0    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v2    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$4$iv":I
    nop

    .line 55
    .end local v13    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v14    # "name$iv":Ljava/lang/String;
    .end local v15    # "$i$f$AsyncFunction":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "hasHardwareAsync"

    .local v0, "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .local v2, "name$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 385
    .local v3, "$i$f$AsyncFunction":I
    const/4 v4, 0x0

    .line 386
    .local v4, "$i$f$emptyArray":I
    const/4 v13, 0x0

    new-array v14, v13, [Lexpo/modules/kotlin/types/AnyType;

    .line 385
    .end local v4    # "$i$f$emptyArray":I
    new-instance v4, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$AsyncFunction$2;

    invoke-direct {v4, v1}, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$AsyncFunction$2;-><init>(Lexpo/modules/localauthentication/LocalAuthenticationModule;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .local v4, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    move-object v13, v14

    .local v13, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/4 v14, 0x0

    .line 387
    .local v14, "$i$f$createAsyncFunctionComponent":I
    const-class v15, Ljava/lang/Boolean;

    .line 390
    nop

    .line 391
    move/from16 v19, v3

    .end local v3    # "$i$f$AsyncFunction":I
    .local v19, "$i$f$AsyncFunction":I
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    if-eqz v3, :cond_5

    .line 392
    const/4 v3, 0x0

    .line 393
    .local v3, "$i$f$enforceType":I
    nop

    .line 396
    nop

    .line 397
    .end local v3    # "$i$f$enforceType":I
    :try_start_e
    new-instance v3, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v3, v2, v13, v4}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_1

    .line 399
    :cond_5
    :try_start_f
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    if-eqz v3, :cond_6

    .line 400
    const/4 v3, 0x0

    .line 393
    .restart local v3    # "$i$f$enforceType":I
    nop

    .line 396
    nop

    .line 401
    .end local v3    # "$i$f$enforceType":I
    :try_start_10
    new-instance v3, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v3, v2, v13, v4}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_1

    .line 403
    :cond_6
    :try_start_11
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    if-eqz v3, :cond_7

    .line 404
    const/4 v3, 0x0

    .line 393
    .restart local v3    # "$i$f$enforceType":I
    nop

    .line 396
    nop

    .line 405
    .end local v3    # "$i$f$enforceType":I
    :try_start_12
    new-instance v3, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v3, v2, v13, v4}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto :goto_1

    .line 407
    :cond_7
    :try_start_13
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    if-eqz v3, :cond_8

    .line 408
    const/4 v3, 0x0

    .line 393
    .restart local v3    # "$i$f$enforceType":I
    nop

    .line 396
    nop

    .line 409
    .end local v3    # "$i$f$enforceType":I
    :try_start_14
    new-instance v3, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v3, v2, v13, v4}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto :goto_1

    .line 411
    :cond_8
    :try_start_15
    const-class v3, Ljava/lang/String;

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    if-eqz v3, :cond_9

    .line 412
    const/4 v3, 0x0

    .line 393
    .restart local v3    # "$i$f$enforceType":I
    nop

    .line 396
    nop

    .line 413
    .end local v3    # "$i$f$enforceType":I
    :try_start_16
    new-instance v3, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v3, v2, v13, v4}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto :goto_1

    .line 415
    :cond_9
    :try_start_17
    new-instance v3, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v3, v2, v13, v4}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 390
    :goto_1
    nop

    .line 385
    .end local v4    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v13    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v14    # "$i$f$createAsyncFunctionComponent":I
    nop

    .local v3, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v4, 0x0

    .line 416
    .local v4, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$4$iv":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    nop

    .line 385
    .end local v3    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v4    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$4$iv":I
    nop

    .line 59
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v19    # "$i$f$AsyncFunction":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "isEnrolledAsync"

    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v2    # "name$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 418
    .local v3, "$i$f$AsyncFunction":I
    const/4 v4, 0x0

    .line 419
    .local v4, "$i$f$emptyArray":I
    const/4 v13, 0x0

    new-array v14, v13, [Lexpo/modules/kotlin/types/AnyType;

    .line 418
    .end local v4    # "$i$f$emptyArray":I
    new-instance v4, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$AsyncFunction$3;

    invoke-direct {v4, v1}, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$AsyncFunction$3;-><init>(Lexpo/modules/localauthentication/LocalAuthenticationModule;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .local v4, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    move-object v13, v14

    .restart local v13    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/4 v14, 0x0

    .line 420
    .restart local v14    # "$i$f$createAsyncFunctionComponent":I
    const-class v15, Ljava/lang/Boolean;

    .line 423
    nop

    .line 424
    move/from16 v19, v3

    .end local v3    # "$i$f$AsyncFunction":I
    .restart local v19    # "$i$f$AsyncFunction":I
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    if-eqz v3, :cond_a

    .line 425
    const/4 v3, 0x0

    .line 426
    .local v3, "$i$f$enforceType":I
    nop

    .line 429
    nop

    .line 430
    .end local v3    # "$i$f$enforceType":I
    :try_start_18
    new-instance v3, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v3, v2, v13, v4}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    goto :goto_2

    .line 432
    :cond_a
    :try_start_19
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    if-eqz v3, :cond_b

    .line 433
    const/4 v3, 0x0

    .line 426
    .restart local v3    # "$i$f$enforceType":I
    nop

    .line 429
    nop

    .line 434
    .end local v3    # "$i$f$enforceType":I
    :try_start_1a
    new-instance v3, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v3, v2, v13, v4}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    goto :goto_2

    .line 436
    :cond_b
    :try_start_1b
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    if-eqz v3, :cond_c

    .line 437
    const/4 v3, 0x0

    .line 426
    .restart local v3    # "$i$f$enforceType":I
    nop

    .line 429
    nop

    .line 438
    .end local v3    # "$i$f$enforceType":I
    :try_start_1c
    new-instance v3, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v3, v2, v13, v4}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    goto :goto_2

    .line 440
    :cond_c
    :try_start_1d
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    if-eqz v3, :cond_d

    .line 441
    const/4 v3, 0x0

    .line 426
    .restart local v3    # "$i$f$enforceType":I
    nop

    .line 429
    nop

    .line 442
    .end local v3    # "$i$f$enforceType":I
    :try_start_1e
    new-instance v3, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v3, v2, v13, v4}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    goto :goto_2

    .line 444
    :cond_d
    :try_start_1f
    const-class v3, Ljava/lang/String;

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    if-eqz v3, :cond_e

    .line 445
    const/4 v3, 0x0

    .line 426
    .restart local v3    # "$i$f$enforceType":I
    nop

    .line 429
    nop

    .line 446
    .end local v3    # "$i$f$enforceType":I
    :try_start_20
    new-instance v3, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v3, v2, v13, v4}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    goto :goto_2

    .line 448
    :cond_e
    :try_start_21
    new-instance v3, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v3, v2, v13, v4}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 423
    :goto_2
    nop

    .line 418
    .end local v4    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v13    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v14    # "$i$f$createAsyncFunctionComponent":I
    nop

    .local v3, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v4, 0x0

    .line 449
    .local v4, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$4$iv":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    nop

    .line 418
    .end local v3    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v4    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$4$iv":I
    nop

    .line 63
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v19    # "$i$f$AsyncFunction":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "getEnrolledLevelAsync"

    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v2    # "name$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 451
    .local v3, "$i$f$AsyncFunction":I
    const/4 v4, 0x0

    .line 452
    .local v4, "$i$f$emptyArray":I
    const/4 v13, 0x0

    new-array v14, v13, [Lexpo/modules/kotlin/types/AnyType;

    .line 451
    .end local v4    # "$i$f$emptyArray":I
    new-instance v4, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$AsyncFunction$4;

    invoke-direct {v4, v1}, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$AsyncFunction$4;-><init>(Lexpo/modules/localauthentication/LocalAuthenticationModule;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .local v4, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    move-object v13, v14

    .restart local v13    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/4 v14, 0x0

    .line 453
    .restart local v14    # "$i$f$createAsyncFunctionComponent":I
    const-class v15, Ljava/lang/Integer;

    .line 456
    nop

    .line 457
    move/from16 v19, v3

    .end local v3    # "$i$f$AsyncFunction":I
    .restart local v19    # "$i$f$AsyncFunction":I
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_6

    if-eqz v3, :cond_f

    .line 458
    const/4 v3, 0x0

    .line 459
    .local v3, "$i$f$enforceType":I
    nop

    .line 462
    nop

    .line 463
    .end local v3    # "$i$f$enforceType":I
    :try_start_22
    new-instance v3, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v3, v2, v13, v4}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    goto :goto_3

    .line 465
    :cond_f
    :try_start_23
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_6

    if-eqz v3, :cond_10

    .line 466
    const/4 v3, 0x0

    .line 459
    .restart local v3    # "$i$f$enforceType":I
    nop

    .line 462
    nop

    .line 467
    .end local v3    # "$i$f$enforceType":I
    :try_start_24
    new-instance v3, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v3, v2, v13, v4}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    goto :goto_3

    .line 469
    :cond_10
    :try_start_25
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_6

    if-eqz v3, :cond_11

    .line 470
    const/4 v3, 0x0

    .line 459
    .restart local v3    # "$i$f$enforceType":I
    nop

    .line 462
    nop

    .line 471
    .end local v3    # "$i$f$enforceType":I
    :try_start_26
    new-instance v3, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v3, v2, v13, v4}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_0

    goto :goto_3

    .line 473
    :cond_11
    :try_start_27
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_6

    if-eqz v3, :cond_12

    .line 474
    const/4 v3, 0x0

    .line 459
    .restart local v3    # "$i$f$enforceType":I
    nop

    .line 462
    nop

    .line 475
    .end local v3    # "$i$f$enforceType":I
    :try_start_28
    new-instance v3, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v3, v2, v13, v4}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    goto :goto_3

    .line 477
    :cond_12
    :try_start_29
    const-class v3, Ljava/lang/String;

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_6

    if-eqz v3, :cond_13

    .line 478
    const/4 v3, 0x0

    .line 459
    .restart local v3    # "$i$f$enforceType":I
    nop

    .line 462
    nop

    .line 479
    .end local v3    # "$i$f$enforceType":I
    :try_start_2a
    new-instance v3, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v3, v2, v13, v4}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0

    goto :goto_3

    .line 481
    :cond_13
    :try_start_2b
    new-instance v3, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v3, v2, v13, v4}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 456
    :goto_3
    nop

    .line 451
    .end local v4    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v13    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v14    # "$i$f$createAsyncFunctionComponent":I
    nop

    .local v3, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v4, 0x0

    .line 482
    .local v4, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$4$iv":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    nop

    .line 451
    .end local v3    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v4    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$4$iv":I
    nop

    .line 77
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v19    # "$i$f$AsyncFunction":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "authenticateAsync"

    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v2    # "name$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 484
    .local v3, "$i$f$AsyncFunctionWithPromise":I
    new-instance v4, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v13

    .line 485
    .local v13, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 486
    const-class v14, Lexpo/modules/localauthentication/AuthOptions;

    .line 485
    .local v14, "p0$iv$iv":Ljava/lang/Class;
    const/4 v15, 0x0

    .line 490
    .local v15, "$i$f$toArgsArray":I
    move/from16 v19, v3

    .end local v3    # "$i$f$AsyncFunctionWithPromise":I
    .local v19, "$i$f$AsyncFunctionWithPromise":I
    const/4 v3, 0x1

    new-array v3, v3, [Lexpo/modules/kotlin/types/AnyType;

    const/16 v22, 0x0

    .line 491
    .local v22, "$i$f$toAnyType":I
    sget-object v23, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_6

    .local v23, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/16 v24, 0x0

    .line 492
    .local v24, "$i$f$cachedAnyType":I
    move/from16 v25, v5

    .end local v5    # "$i$f$trace":I
    .local v25, "$i$f$trace":I
    :try_start_2c
    new-instance v5, Lkotlin/Pair;

    const-class v26, Lexpo/modules/localauthentication/AuthOptions;
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_5

    move-object/from16 v27, v6

    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .local v27, "tag$iv$iv$iv":Ljava/lang/String;
    :try_start_2d
    invoke-static/range {v26 .. v26}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_4

    move/from16 v26, v7

    const/16 v16, 0x0

    .end local v7    # "$i$f$trace":I
    .local v26, "$i$f$trace":I
    :try_start_2e
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 493
    .local v5, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual/range {v23 .. v23}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/AnyType;

    .line 491
    .end local v5    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v23    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v24    # "$i$f$cachedAnyType":I
    if-nez v6, :cond_14

    sget-object v5, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$AsyncFunctionWithPromise$1;->INSTANCE:Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$AsyncFunctionWithPromise$1;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    .local v5, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v6, 0x0

    .line 494
    .local v6, "$i$f$toAnyType":I
    new-instance v7, Lexpo/modules/kotlin/types/AnyType;

    .line 495
    move/from16 v23, v6

    .end local v6    # "$i$f$toAnyType":I
    .local v23, "$i$f$toAnyType":I
    new-instance v6, Lexpo/modules/kotlin/types/LazyKType;

    const-class v24, Lexpo/modules/localauthentication/AuthOptions;
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_3

    move-object/from16 v28, v8

    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v28, "label$iv$iv$iv$iv":Ljava/lang/String;
    :try_start_2f
    invoke-static/range {v24 .. v24}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_1

    .line 497
    nop

    .line 498
    nop

    .line 495
    move/from16 v24, v9

    const/4 v9, 0x0

    .end local v9    # "$i$f$trace":I
    .local v24, "$i$f$trace":I
    :try_start_30
    invoke-direct {v6, v8, v9, v5}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v6, Lkotlin/reflect/KType;

    .line 500
    nop

    .line 494
    invoke-direct {v7, v6, v13}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 501
    move-object v6, v7

    goto :goto_4

    .line 541
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v5    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v11    # "$this$definition_u24lambda_u248":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v12    # "$i$a$-ModuleDefinition-LocalAuthenticationModule$definition$1":I
    .end local v13    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v14    # "p0$iv$iv":Ljava/lang/Class;
    .end local v15    # "$i$f$toArgsArray":I
    .end local v17    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .end local v19    # "$i$f$AsyncFunctionWithPromise":I
    .end local v22    # "$i$f$toAnyType":I
    .end local v23    # "$i$f$toAnyType":I
    .end local v24    # "$i$f$trace":I
    .restart local v9    # "$i$f$trace":I
    :catchall_1
    move-exception v0

    move/from16 v24, v9

    .end local v9    # "$i$f$trace":I
    .restart local v24    # "$i$f$trace":I
    goto/16 :goto_6

    .line 491
    .end local v24    # "$i$f$trace":I
    .end local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v2    # "name$iv":Ljava/lang/String;
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    .restart local v11    # "$this$definition_u24lambda_u248":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .restart local v12    # "$i$a$-ModuleDefinition-LocalAuthenticationModule$definition$1":I
    .restart local v13    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .restart local v14    # "p0$iv$iv":Ljava/lang/Class;
    .restart local v15    # "$i$f$toArgsArray":I
    .restart local v17    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .restart local v19    # "$i$f$AsyncFunctionWithPromise":I
    .restart local v22    # "$i$f$toAnyType":I
    :cond_14
    move-object/from16 v28, v8

    move/from16 v24, v9

    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v24    # "$i$f$trace":I
    .restart local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :goto_4
    const/4 v5, 0x0

    .end local v22    # "$i$f$toAnyType":I
    aput-object v6, v3, v5

    .line 490
    nop

    .line 489
    nop

    .line 502
    .end local v13    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v14    # "p0$iv$iv":Ljava/lang/Class;
    .end local v15    # "$i$f$toArgsArray":I
    new-instance v5, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$AsyncFunctionWithPromise$2;

    invoke-direct {v5, v1}, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$AsyncFunctionWithPromise$2;-><init>(Lexpo/modules/localauthentication/LocalAuthenticationModule;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 484
    invoke-direct {v4, v2, v3, v5}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    .line 502
    move-object v3, v4

    .local v3, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;
    const/4 v5, 0x0

    .line 503
    .local v5, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$11$iv":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    nop

    .line 502
    .end local v3    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;
    .end local v5    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$11$iv":I
    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 484
    nop

    .line 102
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v19    # "$i$f$AsyncFunctionWithPromise":I
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "cancelAuthenticate"

    .restart local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v2    # "name$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 505
    .local v3, "$i$f$AsyncFunction":I
    const/4 v4, 0x0

    .line 506
    .local v4, "$i$f$emptyArray":I
    const/4 v5, 0x0

    new-array v5, v5, [Lexpo/modules/kotlin/types/AnyType;

    .line 505
    .end local v4    # "$i$f$emptyArray":I
    new-instance v4, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$AsyncFunction$5;

    invoke-direct {v4, v1}, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$AsyncFunction$5;-><init>(Lexpo/modules/localauthentication/LocalAuthenticationModule;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .local v4, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .local v5, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/4 v6, 0x0

    .line 507
    .local v6, "$i$f$createAsyncFunctionComponent":I
    const-class v7, Lkotlin/Unit;

    .line 510
    nop

    .line 511
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 512
    const/4 v7, 0x0

    .line 513
    .local v7, "$i$f$enforceType":I
    nop

    .line 516
    nop

    .line 517
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v7, v2, v5, v4}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_5

    .line 519
    :cond_15
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 520
    const/4 v7, 0x0

    .line 513
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 516
    nop

    .line 521
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v7, v2, v5, v4}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_5

    .line 523
    :cond_16
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 524
    const/4 v7, 0x0

    .line 513
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 516
    nop

    .line 525
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v7, v2, v5, v4}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_5

    .line 527
    :cond_17
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 528
    const/4 v7, 0x0

    .line 513
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 516
    nop

    .line 529
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v7, v2, v5, v4}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_5

    .line 531
    :cond_18
    const-class v8, Ljava/lang/String;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 532
    const/4 v7, 0x0

    .line 513
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 516
    nop

    .line 533
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v7, v2, v5, v4}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_5

    .line 535
    :cond_19
    new-instance v7, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v7, v2, v5, v4}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 510
    :goto_5
    nop

    .line 505
    .end local v4    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v5    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v6    # "$i$f$createAsyncFunctionComponent":I
    move-object v4, v7

    .local v4, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v5, 0x0

    .line 536
    .local v5, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$4$iv":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    nop

    .line 505
    .end local v4    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v5    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$4$iv":I
    nop

    .line 105
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v3    # "$i$f$AsyncFunction":I
    sget-object v0, Lexpo/modules/kotlin/functions/Queues;->MAIN:Lexpo/modules/kotlin/functions/Queues;

    invoke-virtual {v7, v0}, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;->runOnQueue(Lexpo/modules/kotlin/functions/Queues;)Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;

    .line 107
    move-object v0, v11

    check-cast v0, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;

    .local v0, "this_$iv":Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;
    const/4 v2, 0x0

    .line 538
    .local v2, "$i$f$OnActivityResult":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;->getEventListeners()Ljava/util/Map;

    move-result-object v3

    sget-object v4, Lexpo/modules/kotlin/events/EventName;->ON_ACTIVITY_RESULT:Lexpo/modules/kotlin/events/EventName;

    .line 539
    new-instance v5, Lexpo/modules/kotlin/events/EventListenerWithSenderAndPayload;

    sget-object v6, Lexpo/modules/kotlin/events/EventName;->ON_ACTIVITY_RESULT:Lexpo/modules/kotlin/events/EventName;

    .line 538
    new-instance v7, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$OnActivityResult$1;

    invoke-direct {v7, v1}, Lexpo/modules/localauthentication/LocalAuthenticationModule$definition$lambda$8$$inlined$OnActivityResult$1;-><init>(Lexpo/modules/localauthentication/LocalAuthenticationModule;)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 539
    invoke-direct {v5, v6, v7}, Lexpo/modules/kotlin/events/EventListenerWithSenderAndPayload;-><init>(Lexpo/modules/kotlin/events/EventName;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    nop

    .line 133
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;
    .end local v2    # "$i$f$OnActivityResult":I
    nop

    .line 346
    .end local v11    # "$this$definition_u24lambda_u248":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v12    # "$i$a$-ModuleDefinition-LocalAuthenticationModule$definition$1":I
    invoke-virtual {v10}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->buildModule()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v0
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_2

    .line 351
    .end local v17    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    nop

    .line 541
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 351
    nop

    .line 348
    .end local v24    # "$i$f$trace":I
    .end local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    nop

    .line 347
    .end local v26    # "$i$f$trace":I
    .end local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    nop

    .line 346
    .end local v21    # "blockName$iv$iv":Ljava/lang/String;
    .end local v25    # "$i$f$trace":I
    nop

    .line 133
    .end local v18    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v20    # "$i$f$ModuleDefinition":I
    return-object v0

    .line 541
    .restart local v18    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v20    # "$i$f$ModuleDefinition":I
    .restart local v21    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v24    # "$i$f$trace":I
    .restart local v25    # "$i$f$trace":I
    .restart local v26    # "$i$f$trace":I
    .restart local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :catchall_2
    move-exception v0

    goto/16 :goto_6

    .end local v24    # "$i$f$trace":I
    .end local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_3
    move-exception v0

    move-object/from16 v28, v8

    move/from16 v24, v9

    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v24    # "$i$f$trace":I
    .restart local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    goto :goto_6

    .end local v24    # "$i$f$trace":I
    .end local v26    # "$i$f$trace":I
    .end local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v7, "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_4
    move-exception v0

    move/from16 v26, v7

    move-object/from16 v28, v8

    move/from16 v24, v9

    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v24    # "$i$f$trace":I
    .restart local v26    # "$i$f$trace":I
    .restart local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    goto :goto_6

    .end local v24    # "$i$f$trace":I
    .end local v26    # "$i$f$trace":I
    .end local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v6, "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_5
    move-exception v0

    move-object/from16 v27, v6

    move/from16 v26, v7

    move-object/from16 v28, v8

    move/from16 v24, v9

    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v24    # "$i$f$trace":I
    .restart local v26    # "$i$f$trace":I
    .restart local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    goto :goto_6

    .end local v24    # "$i$f$trace":I
    .end local v25    # "$i$f$trace":I
    .end local v26    # "$i$f$trace":I
    .end local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v5, "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_6
    move-exception v0

    move/from16 v25, v5

    move-object/from16 v27, v6

    move/from16 v26, v7

    move-object/from16 v28, v8

    move/from16 v24, v9

    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v24    # "$i$f$trace":I
    .restart local v25    # "$i$f$trace":I
    .restart local v26    # "$i$f$trace":I
    .restart local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    goto :goto_6

    .end local v21    # "blockName$iv$iv":Ljava/lang/String;
    .end local v24    # "$i$f$trace":I
    .end local v25    # "$i$f$trace":I
    .end local v26    # "$i$f$trace":I
    .end local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v4, "blockName$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_7
    move-exception v0

    move-object/from16 v21, v4

    move/from16 v25, v5

    move-object/from16 v27, v6

    move/from16 v26, v7

    move-object/from16 v28, v8

    move/from16 v24, v9

    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v21    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v24    # "$i$f$trace":I
    .restart local v25    # "$i$f$trace":I
    .restart local v26    # "$i$f$trace":I
    .restart local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    goto :goto_6

    .end local v20    # "$i$f$ModuleDefinition":I
    .end local v21    # "blockName$iv$iv":Ljava/lang/String;
    .end local v24    # "$i$f$trace":I
    .end local v25    # "$i$f$trace":I
    .end local v26    # "$i$f$trace":I
    .end local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v3, "$i$f$ModuleDefinition":I
    .restart local v4    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_8
    move-exception v0

    move/from16 v20, v3

    move-object/from16 v21, v4

    move/from16 v25, v5

    move-object/from16 v27, v6

    move/from16 v26, v7

    move-object/from16 v28, v8

    move/from16 v24, v9

    .end local v3    # "$i$f$ModuleDefinition":I
    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v20    # "$i$f$ModuleDefinition":I
    .restart local v21    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v24    # "$i$f$trace":I
    .restart local v25    # "$i$f$trace":I
    .restart local v26    # "$i$f$trace":I
    .restart local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    goto :goto_6

    .end local v18    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v20    # "$i$f$ModuleDefinition":I
    .end local v21    # "blockName$iv$iv":Ljava/lang/String;
    .end local v24    # "$i$f$trace":I
    .end local v25    # "$i$f$trace":I
    .end local v26    # "$i$f$trace":I
    .end local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v2, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v3    # "$i$f$ModuleDefinition":I
    .restart local v4    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v9    # "$i$f$trace":I
    :catchall_9
    move-exception v0

    move-object/from16 v18, v2

    move/from16 v20, v3

    move-object/from16 v21, v4

    move/from16 v25, v5

    move-object/from16 v27, v6

    move/from16 v26, v7

    move-object/from16 v28, v8

    move/from16 v24, v9

    .end local v2    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v3    # "$i$f$ModuleDefinition":I
    .end local v4    # "blockName$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local v8    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trace":I
    .restart local v18    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v20    # "$i$f$ModuleDefinition":I
    .restart local v21    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v24    # "$i$f$trace":I
    .restart local v25    # "$i$f$trace":I
    .restart local v26    # "$i$f$trace":I
    .restart local v27    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v28    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :goto_6
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method
