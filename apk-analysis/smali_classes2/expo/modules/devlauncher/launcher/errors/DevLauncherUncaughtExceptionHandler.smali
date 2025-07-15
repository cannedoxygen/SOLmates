.class public final Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;
.super Ljava/lang/Object;
.source "DevLauncherUncaughtExceptionHandler.kt"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDevLauncherUncaughtExceptionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DevLauncherUncaughtExceptionHandler.kt\nexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler\n+ 2 Koin.kt\norg/koin/core/Koin\n+ 3 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,136:1\n117#2,4:137\n104#2,4:142\n158#3:141\n133#3:146\n*S KotlinDebug\n*F\n+ 1 DevLauncherUncaughtExceptionHandler.kt\nexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler\n*L\n97#1:137,4\n113#1:142,4\n97#1:141\n113#1:146\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u000f\u001a\u00020\u0010H\u0002J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0010\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0018\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0013\u001a\u00020\u0014H\u0016R\u001c\u0010\u0008\u001a\u0010\u0012\u000c\u0012\n \n*\u0004\u0018\u00010\u00050\u00050\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;",
        "Ljava/lang/Thread$UncaughtExceptionHandler;",
        "controller",
        "Lexpo/modules/devlauncher/DevLauncherController;",
        "application",
        "Landroid/app/Application;",
        "defaultUncaughtHandler",
        "(Lexpo/modules/devlauncher/DevLauncherController;Landroid/app/Application;Ljava/lang/Thread$UncaughtExceptionHandler;)V",
        "applicationHolder",
        "Ljava/lang/ref/WeakReference;",
        "kotlin.jvm.PlatformType",
        "exceptionWasReported",
        "",
        "timerTask",
        "Ljava/util/TimerTask;",
        "getWebSocketUrl",
        "Landroid/net/Uri;",
        "tryToSaveException",
        "",
        "exception",
        "",
        "tryToSendExceptionToBundler",
        "uncaughtException",
        "thread",
        "Ljava/lang/Thread;",
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


# instance fields
.field private final applicationHolder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field private final controller:Lexpo/modules/devlauncher/DevLauncherController;

.field private final defaultUncaughtHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private exceptionWasReported:Z

.field private timerTask:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>(Lexpo/modules/devlauncher/DevLauncherController;Landroid/app/Application;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 1
    .param p1, "controller"    # Lexpo/modules/devlauncher/DevLauncherController;
    .param p2, "application"    # Landroid/app/Application;
    .param p3, "defaultUncaughtHandler"    # Ljava/lang/Thread$UncaughtExceptionHandler;

    const-string v0, "controller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "application"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;->controller:Lexpo/modules/devlauncher/DevLauncherController;

    .line 21
    iput-object p3, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;->defaultUncaughtHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 23
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;->applicationHolder:Ljava/lang/ref/WeakReference;

    .line 27
    nop

    .line 28
    new-instance v0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler$1;

    invoke-direct {v0, p0}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler$1;-><init>(Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;)V

    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p2, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 50
    nop

    .line 18
    return-void
.end method

.method public static final synthetic access$getDefaultUncaughtHandler$p(Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;

    .line 18
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;->defaultUncaughtHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method public static final synthetic access$getExceptionWasReported$p(Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;)Z
    .locals 1
    .param p0, "$this"    # Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;

    .line 18
    iget-boolean v0, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;->exceptionWasReported:Z

    return v0
.end method

.method public static final synthetic access$getTimerTask$p(Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;)Ljava/util/TimerTask;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;

    .line 18
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;->timerTask:Ljava/util/TimerTask;

    return-object v0
.end method

.method public static final synthetic access$setExceptionWasReported$p(Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;Z)V
    .locals 0
    .param p0, "$this"    # Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;
    .param p1, "<set-?>"    # Z

    .line 18
    iput-boolean p1, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;->exceptionWasReported:Z

    return-void
.end method

.method public static final synthetic access$setTimerTask$p(Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;Ljava/util/TimerTask;)V
    .locals 0
    .param p0, "$this"    # Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;
    .param p1, "<set-?>"    # Ljava/util/TimerTask;

    .line 18
    iput-object p1, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;->timerTask:Ljava/util/TimerTask;

    return-void
.end method

.method private final getWebSocketUrl()Landroid/net/Uri;
    .locals 3

    .line 127
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;->controller:Lexpo/modules/devlauncher/DevLauncherController;

    invoke-virtual {v0}, Lexpo/modules/devlauncher/DevLauncherController;->getAppHost()Lexpo/interfaces/devmenu/ReactHostWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getDevSupportManager()Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    .local v0, "devSupportManager":Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
    invoke-interface {v0}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->getSourceUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 130
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 131
    const-string v2, "hot"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 132
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 133
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "build(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    return-object v1

    .line 127
    .end local v0    # "devSupportManager":Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value was null."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final tryToSaveException(Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "exception"    # Ljava/lang/Throwable;

    .line 97
    sget-object v0, Lexpo/modules/devlauncher/koin/DevLauncherKoinContext;->INSTANCE:Lexpo/modules/devlauncher/koin/DevLauncherKoinContext;

    invoke-virtual {v0}, Lexpo/modules/devlauncher/koin/DevLauncherKoinContext;->getApp()Lorg/koin/core/KoinApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/koin/core/KoinApplication;->getKoin()Lorg/koin/core/Koin;

    move-result-object v0

    .line 137
    .local v0, "$this$iv":Lorg/koin/core/Koin;
    nop

    .line 138
    const/4 v1, 0x0

    .line 137
    .local v1, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 139
    const/4 v2, 0x0

    .line 137
    .local v2, "parameters$iv":Lkotlin/jvm/functions/Function0;
    const/4 v3, 0x0

    .line 140
    .local v3, "$i$f$getOrNull":I
    invoke-virtual {v0}, Lorg/koin/core/Koin;->getScopeRegistry()Lorg/koin/core/registry/ScopeRegistry;

    move-result-object v4

    invoke-virtual {v4}, Lorg/koin/core/registry/ScopeRegistry;->getRootScope()Lorg/koin/core/scope/Scope;

    move-result-object v4

    .local v4, "this_$iv$iv":Lorg/koin/core/scope/Scope;
    const/4 v5, 0x0

    .line 141
    .local v5, "$i$f$getOrNull":I
    const-class v6, Landroid/content/Context;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-virtual {v4, v6, v1, v2}, Lorg/koin/core/scope/Scope;->getOrNull(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v4

    .line 140
    .end local v4    # "this_$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v5    # "$i$f$getOrNull":I
    nop

    .line 97
    .end local v0    # "$this$iv":Lorg/koin/core/Koin;
    .end local v1    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v2    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v3    # "$i$f$getOrNull":I
    check-cast v4, Landroid/content/Context;

    if-nez v4, :cond_0

    return-void

    :cond_0
    move-object v0, v4

    .line 98
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorRegistry;

    invoke-direct {v1, v0}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorRegistry;-><init>(Landroid/content/Context;)V

    .line 99
    .local v1, "errorRegistry":Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorRegistry;
    invoke-virtual {v1, p1}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorRegistry;->storeException(Ljava/lang/Throwable;)V

    .line 100
    return-void
.end method

.method private final tryToSendExceptionToBundler(Ljava/lang/Throwable;)V
    .locals 9
    .param p1, "exception"    # Ljava/lang/Throwable;

    .line 103
    nop

    .line 104
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;->controller:Lexpo/modules/devlauncher/DevLauncherController;

    invoke-virtual {v0}, Lexpo/modules/devlauncher/DevLauncherController;->getMode()Lexpo/modules/devlauncher/DevLauncherController$Mode;

    move-result-object v0

    sget-object v1, Lexpo/modules/devlauncher/DevLauncherController$Mode;->APP:Lexpo/modules/devlauncher/DevLauncherController$Mode;

    if-ne v0, v1, :cond_1

    .line 105
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;->controller:Lexpo/modules/devlauncher/DevLauncherController;

    invoke-virtual {v0}, Lexpo/modules/devlauncher/DevLauncherController;->getAppHost()Lexpo/interfaces/devmenu/ReactHostWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getHasInstance()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;->controller:Lexpo/modules/devlauncher/DevLauncherController;

    invoke-virtual {v0}, Lexpo/modules/devlauncher/DevLauncherController;->getAppHost()Lexpo/interfaces/devmenu/ReactHostWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 111
    :cond_0
    nop

    .line 112
    :try_start_0
    invoke-direct {p0}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;->getWebSocketUrl()Landroid/net/Uri;

    move-result-object v0

    .line 113
    .local v0, "url":Landroid/net/Uri;
    new-instance v1, Lexpo/modules/devlauncher/logs/DevLauncherRemoteLogManager;

    sget-object v2, Lexpo/modules/devlauncher/koin/DevLauncherKoinContext;->INSTANCE:Lexpo/modules/devlauncher/koin/DevLauncherKoinContext;

    invoke-virtual {v2}, Lexpo/modules/devlauncher/koin/DevLauncherKoinContext;->getApp()Lorg/koin/core/KoinApplication;

    move-result-object v2

    invoke-virtual {v2}, Lorg/koin/core/KoinApplication;->getKoin()Lorg/koin/core/Koin;

    move-result-object v2

    .line 142
    .local v2, "$this$iv":Lorg/koin/core/Koin;
    nop

    .line 143
    const/4 v3, 0x0

    .line 142
    .local v3, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 144
    const/4 v4, 0x0

    .line 142
    .local v4, "parameters$iv":Lkotlin/jvm/functions/Function0;
    const/4 v5, 0x0

    .line 145
    .local v5, "$i$f$get":I
    invoke-virtual {v2}, Lorg/koin/core/Koin;->getScopeRegistry()Lorg/koin/core/registry/ScopeRegistry;

    move-result-object v6

    invoke-virtual {v6}, Lorg/koin/core/registry/ScopeRegistry;->getRootScope()Lorg/koin/core/scope/Scope;

    move-result-object v6

    .local v6, "this_$iv$iv":Lorg/koin/core/scope/Scope;
    const/4 v7, 0x0

    .line 146
    .local v7, "$i$f$get":I
    const-class v8, Lokhttp3/OkHttpClient;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-virtual {v6, v8, v3, v4}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v8

    .line 145
    .end local v6    # "this_$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v7    # "$i$f$get":I
    nop

    .end local v2    # "$this$iv":Lorg/koin/core/Koin;
    .end local v3    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v4    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v5    # "$i$f$get":I
    check-cast v8, Lokhttp3/OkHttpClient;

    .line 113
    invoke-direct {v1, v8, v0}, Lexpo/modules/devlauncher/logs/DevLauncherRemoteLogManager;-><init>(Lokhttp3/OkHttpClient;Landroid/net/Uri;)V

    .line 114
    move-object v2, v1

    .local v2, "$this$tryToSendExceptionToBundler_u24lambda_u242":Lexpo/modules/devlauncher/logs/DevLauncherRemoteLogManager;
    const/4 v3, 0x0

    .line 115
    .local v3, "$i$a$-apply-DevLauncherUncaughtExceptionHandler$tryToSendExceptionToBundler$remoteLogManager$1":I
    const-string v4, "Your app just crashed. See the error below."

    invoke-virtual {v2, v4}, Lexpo/modules/devlauncher/logs/DevLauncherRemoteLogManager;->deferError(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v2, p1}, Lexpo/modules/devlauncher/logs/DevLauncherRemoteLogManager;->deferError(Ljava/lang/Throwable;)V

    .line 117
    nop

    .line 114
    .end local v2    # "$this$tryToSendExceptionToBundler_u24lambda_u242":Lexpo/modules/devlauncher/logs/DevLauncherRemoteLogManager;
    .end local v3    # "$i$a$-apply-DevLauncherUncaughtExceptionHandler$tryToSendExceptionToBundler$remoteLogManager$1":I
    nop

    .line 113
    nop

    .line 118
    .local v1, "remoteLogManager":Lexpo/modules/devlauncher/logs/DevLauncherRemoteLogManager;
    invoke-virtual {v1}, Lexpo/modules/devlauncher/logs/DevLauncherRemoteLogManager;->sendViaWebSocket()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "url":Landroid/net/Uri;
    .end local v1    # "remoteLogManager":Lexpo/modules/devlauncher/logs/DevLauncherRemoteLogManager;
    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t send an exception to bundler. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DevLauncher"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 108
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "exception"    # Ljava/lang/Throwable;

    const-string v0, "thread"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-boolean v0, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;->exceptionWasReported:Z

    if-nez v0, :cond_2

    sget-object v0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->Companion:Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$Companion;

    invoke-virtual {v0}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$Companion;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;->exceptionWasReported:Z

    .line 60
    const-string v0, "DevLauncher"

    const-string v1, "DevLauncher tries to handle uncaught exception."

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    invoke-direct {p0, p2}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;->tryToSaveException(Ljava/lang/Throwable;)V

    .line 62
    invoke-direct {p0, p2}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;->tryToSendExceptionToBundler(Ljava/lang/Throwable;)V

    .line 64
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;->applicationHolder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    if-eqz v0, :cond_1

    .local v0, "it":Landroid/app/Application;
    const/4 v1, 0x0

    .line 65
    .local v1, "$i$a$-let-DevLauncherUncaughtExceptionHandler$uncaughtException$1":I
    sget-object v2, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity;->Companion:Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$Companion;

    .line 66
    move-object v3, v0

    check-cast v3, Landroid/content/Context;

    .line 67
    new-instance v4, Lexpo/modules/devlauncher/launcher/errors/DevLauncherAppError;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, p2}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherAppError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    invoke-virtual {v2, v3, v4}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorActivity$Companion;->showFatalError(Landroid/content/Context;Lexpo/modules/devlauncher/launcher/errors/DevLauncherAppError;)V

    .line 69
    nop

    .line 64
    .end local v0    # "it":Landroid/app/Application;
    .end local v1    # "$i$a$-let-DevLauncherUncaughtExceptionHandler$uncaughtException$1":I
    nop

    .line 77
    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler$uncaughtException$$inlined$schedule$1;

    invoke-direct {v1, p0, p1, p2}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler$uncaughtException$$inlined$schedule$1;-><init>(Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    check-cast v1, Ljava/util/TimerTask;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    iput-object v1, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherUncaughtExceptionHandler;->timerTask:Ljava/util/TimerTask;

    .line 94
    return-void

    .line 56
    :cond_2
    :goto_0
    return-void
.end method
