.class public final Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "DevLauncherErrorActivity.kt"

# interfaces
.implements Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDevLauncherErrorActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DevLauncherErrorActivity.kt\nexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,149:1\n56#2,6:150\n*S KotlinDebug\n*F\n+ 1 DevLauncherErrorActivity.kt\nexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity\n*L\n19#1:150,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u001a2\u00020\u00012\u00020\u0002:\u0001\u001aB\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J\u0008\u0010\u0012\u001a\u00020\u000fH\u0002J\u0008\u0010\u0013\u001a\u00020\u000fH\u0016J\u0012\u0010\u0014\u001a\u00020\u000f2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0014J\u0008\u0010\u0017\u001a\u00020\u000fH\u0014J\u0008\u0010\u0018\u001a\u00020\u000fH\u0014J\u0008\u0010\u0019\u001a\u00020\u000fH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0008\u001a\u00020\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u001b"
    }
    d2 = {
        "Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;",
        "Landroidx/fragment/app/FragmentActivity;",
        "Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent;",
        "()V",
        "adapter",
        "Lexpo/modules/devlauncher/launcher/errors/DevLauncherStackAdapter;",
        "binding",
        "Lexpo/modules/devlauncher/databinding/ErrorFragmentBinding;",
        "controller",
        "Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;",
        "getController",
        "()Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;",
        "controller$delegate",
        "Lkotlin/Lazy;",
        "displayError",
        "",
        "error",
        "Lexpo/modules/devlauncher/launcher/errors/DevLauncherAppError;",
        "launchHome",
        "onBackPressed",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onPause",
        "onResume",
        "reload",
        "Companion",
        "expo-dev-launcher_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$Companion;

.field private static currentError:Lexpo/modules/devlauncher/launcher/errors/DevLauncherAppError;

.field private static openedErrorActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final adapter:Lexpo/modules/devlauncher/launcher/errors/DevLauncherStackAdapter;

.field private binding:Lexpo/modules/devlauncher/databinding/ErrorFragmentBinding;

.field private final controller$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$aetUXCI7qOdkJ3sMQ5IcRbQdwB8(Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->onCreate$lambda$0(Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jWNSNcgLz7YOua2ZnzO7Rm3CkbQ(Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->onCreate$lambda$1(Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->Companion:Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$Companion;

    .line 96
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->openedErrorActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 17
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 19
    move-object v0, p0

    check-cast v0, Lorg/koin/core/component/KoinComponent;

    .line 150
    .local v0, "$this$inject_u24default$iv":Lorg/koin/core/component/KoinComponent;
    nop

    .line 151
    const/4 v1, 0x0

    .line 150
    .local v1, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 152
    sget-object v2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 150
    .local v2, "mode$iv":Lkotlin/LazyThreadSafetyMode;
    nop

    .line 153
    const/4 v3, 0x0

    .line 150
    .local v3, "parameters$iv":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 155
    .local v4, "$i$f$inject":I
    new-instance v5, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$special$$inlined$inject$default$1;

    invoke-direct {v5, v0, v1, v3}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v5}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 19
    .end local v0    # "$this$inject_u24default$iv":Lorg/koin/core/component/KoinComponent;
    .end local v1    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v2    # "mode$iv":Lkotlin/LazyThreadSafetyMode;
    .end local v3    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v4    # "$i$f$inject":I
    iput-object v0, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->controller$delegate:Lkotlin/Lazy;

    .line 21
    new-instance v0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherStackAdapter;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherStackAdapter;-><init>(Landroid/content/Context;Lexpo/modules/devlauncher/launcher/errors/DevLauncherAppError;)V

    iput-object v0, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->adapter:Lexpo/modules/devlauncher/launcher/errors/DevLauncherStackAdapter;

    .line 16
    return-void
.end method

.method public static final synthetic access$getController(Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;)Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;

    .line 16
    invoke-direct {p0}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->getController()Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getOpenedErrorActivity$cp()Ljava/lang/ref/WeakReference;
    .locals 1

    .line 16
    sget-object v0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->openedErrorActivity:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public static final synthetic access$setCurrentError$cp(Lexpo/modules/devlauncher/launcher/errors/DevLauncherAppError;)V
    .locals 0
    .param p0, "<set-?>"    # Lexpo/modules/devlauncher/launcher/errors/DevLauncherAppError;

    .line 16
    sput-object p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->currentError:Lexpo/modules/devlauncher/launcher/errors/DevLauncherAppError;

    return-void
.end method

.method private final getController()Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;
    .locals 1

    .line 19
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->controller$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    return-object v0
.end method

.method private final launchHome()V
    .locals 3

    .line 65
    sget-object v0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->Companion:Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$Companion;

    monitor-enter v0

    const/4 v1, 0x0

    .line 66
    .local v1, "$i$a$-synchronized-DevLauncherErrorActivity$launchHome$1":I
    const/4 v2, 0x0

    :try_start_0
    sput-object v2, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->currentError:Lexpo/modules/devlauncher/launcher/errors/DevLauncherAppError;

    .line 67
    nop

    .end local v1    # "$i$a$-synchronized-DevLauncherErrorActivity$launchHome$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit v0

    .line 69
    invoke-direct {p0}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->getController()Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    move-result-object v0

    invoke-interface {v0}, Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;->navigateToLauncher()V

    .line 70
    return-void

    .line 65
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static final onCreate$lambda$0(Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->launchHome()V

    return-void
.end method

.method private static final onCreate$lambda$1(Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->reload()V

    return-void
.end method

.method private final reload()V
    .locals 9

    .line 73
    sget-object v0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->Companion:Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$Companion;

    monitor-enter v0

    const/4 v1, 0x0

    .line 74
    .local v1, "$i$a$-synchronized-DevLauncherErrorActivity$reload$1":I
    const/4 v2, 0x0

    :try_start_0
    sput-object v2, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->currentError:Lexpo/modules/devlauncher/launcher/errors/DevLauncherAppError;

    .line 75
    nop

    .end local v1    # "$i$a$-synchronized-DevLauncherErrorActivity$reload$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit v0

    .line 77
    invoke-direct {p0}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->getController()Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    move-result-object v0

    invoke-interface {v0}, Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;->getLatestLoadedApp()Landroid/net/Uri;

    move-result-object v0

    .line 79
    .local v0, "appUrl":Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 80
    invoke-direct {p0}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->getController()Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    move-result-object v1

    invoke-interface {v1}, Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;->navigateToLauncher()V

    .line 81
    return-void

    .line 84
    :cond_0
    invoke-direct {p0}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->getController()Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    move-result-object v1

    invoke-interface {v1}, Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    new-instance v1, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$reload$2;

    invoke-direct {v1, p0, v0, v2}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$reload$2;-><init>(Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 91
    return-void

    .line 73
    .end local v0    # "appUrl":Landroid/net/Uri;
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final displayError(Lexpo/modules/devlauncher/launcher/errors/DevLauncherAppError;)V
    .locals 5
    .param p1, "error"    # Lexpo/modules/devlauncher/launcher/errors/DevLauncherAppError;

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->adapter:Lexpo/modules/devlauncher/launcher/errors/DevLauncherStackAdapter;

    invoke-virtual {v0, p1}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherStackAdapter;->setData(Lexpo/modules/devlauncher/launcher/errors/DevLauncherAppError;)V

    .line 57
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->binding:Lexpo/modules/devlauncher/databinding/ErrorFragmentBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lexpo/modules/devlauncher/databinding/ErrorFragmentBinding;->errorStack:Landroid/widget/ListView;

    .local v0, "it":Landroid/widget/ListView;
    const/4 v3, 0x0

    .line 58
    .local v3, "$i$a$-let-DevLauncherErrorActivity$displayError$1":I
    iget-object v4, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->adapter:Lexpo/modules/devlauncher/launcher/errors/DevLauncherStackAdapter;

    check-cast v4, Landroid/widget/ListAdapter;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 59
    iget-object v4, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->adapter:Lexpo/modules/devlauncher/launcher/errors/DevLauncherStackAdapter;

    invoke-virtual {v4}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherStackAdapter;->notifyDataSetChanged()V

    .line 60
    nop

    .line 57
    .end local v0    # "it":Landroid/widget/ListView;
    .end local v3    # "$i$a$-let-DevLauncherErrorActivity$displayError$1":I
    nop

    .line 61
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->binding:Lexpo/modules/devlauncher/databinding/ErrorFragmentBinding;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lexpo/modules/devlauncher/databinding/ErrorFragmentBinding;->errorDetails:Landroid/widget/TextView;

    invoke-virtual {p1}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherAppError;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "Unknown error"

    :goto_1
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    return-void
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 16
    invoke-static {p0}, Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent$DefaultImpls;->getKoin(Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 0

    .line 93
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 24
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lexpo/modules/devlauncher/databinding/ErrorFragmentBinding;->inflate(Landroid/view/LayoutInflater;)Lexpo/modules/devlauncher/databinding/ErrorFragmentBinding;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->binding:Lexpo/modules/devlauncher/databinding/ErrorFragmentBinding;

    .line 27
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->binding:Lexpo/modules/devlauncher/databinding/ErrorFragmentBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lexpo/modules/devlauncher/databinding/ErrorFragmentBinding;->homeButton:Landroid/widget/Button;

    new-instance v2, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->binding:Lexpo/modules/devlauncher/databinding/ErrorFragmentBinding;

    if-nez v0, :cond_1

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Lexpo/modules/devlauncher/databinding/ErrorFragmentBinding;->reloadButton:Landroid/widget/Button;

    new-instance v2, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$$ExternalSyntheticLambda1;-><init>(Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    sget-object v0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->Companion:Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$Companion;

    monitor-enter v0

    const/4 v2, 0x0

    .line 31
    .local v2, "$i$a$-synchronized-DevLauncherErrorActivity$onCreate$3":I
    :try_start_0
    sget-object v3, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->currentError:Lexpo/modules/devlauncher/launcher/errors/DevLauncherAppError;

    .line 32
    .local v3, "error":Lexpo/modules/devlauncher/launcher/errors/DevLauncherAppError;
    if-eqz v3, :cond_3

    .line 33
    sget-object v4, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->currentError:Lexpo/modules/devlauncher/launcher/errors/DevLauncherAppError;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->displayError(Lexpo/modules/devlauncher/launcher/errors/DevLauncherAppError;)V

    .line 34
    sput-object v1, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->currentError:Lexpo/modules/devlauncher/launcher/errors/DevLauncherAppError;

    .line 39
    nop

    .end local v2    # "$i$a$-synchronized-DevLauncherErrorActivity$onCreate$3":I
    .end local v3    # "error":Lexpo/modules/devlauncher/launcher/errors/DevLauncherAppError;
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit v0

    .line 41
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->binding:Lexpo/modules/devlauncher/databinding/ErrorFragmentBinding;

    if-nez v0, :cond_2

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lexpo/modules/devlauncher/databinding/ErrorFragmentBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->setContentView(Landroid/view/View;)V

    .line 42
    return-void

    .line 36
    .restart local v2    # "$i$a$-synchronized-DevLauncherErrorActivity$onCreate$3":I
    .restart local v3    # "error":Lexpo/modules/devlauncher/launcher/errors/DevLauncherAppError;
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    nop

    .end local v2    # "$i$a$-synchronized-DevLauncherErrorActivity$onCreate$3":I
    .end local v3    # "error":Lexpo/modules/devlauncher/launcher/errors/DevLauncherAppError;
    monitor-exit v0

    return-void

    .line 30
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method protected onPause()V
    .locals 2

    .line 50
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 51
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->openedErrorActivity:Ljava/lang/ref/WeakReference;

    .line 52
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 45
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 46
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->openedErrorActivity:Ljava/lang/ref/WeakReference;

    .line 47
    return-void
.end method
