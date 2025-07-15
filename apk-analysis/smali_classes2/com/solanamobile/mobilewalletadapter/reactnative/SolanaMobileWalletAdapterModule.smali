.class public final Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;
.super Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterSpec;
.source "SolanaMobileWalletAdapterModule.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$Companion;,
        Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$SessionState;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00192\u00020\u00012\u00020\u0002:\u0002\u0019\u001aB\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u000c\u001a\u00020\rH\u0002J\u0010\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0010H\u0017J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\"\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u00122\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u000f\u001a\u00020\u0010H\u0017J\u001a\u0010\u0017\u001a\u00020\r2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u000f\u001a\u00020\u0010H\u0017R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;",
        "Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterSpec;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "reactContext",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "(Lcom/facebook/react/bridge/ReactApplicationContext;)V",
        "coroutineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "getCoroutineContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "mActivityEventListener",
        "Lcom/facebook/react/bridge/ActivityEventListener;",
        "cleanup",
        "",
        "endSession",
        "promise",
        "Lcom/facebook/react/bridge/Promise;",
        "getName",
        "",
        "invoke",
        "method",
        "params",
        "Lcom/facebook/react/bridge/ReadableMap;",
        "startSession",
        "config",
        "Companion",
        "SessionState",
        "solana-mobile_mobile-wallet-adapter-protocol_debug"
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
.field private static final ASSOCIATION_TIMEOUT_MS:I = 0x2710

.field private static final CLIENT_TIMEOUT_MS:I = 0x15f90

.field public static final Companion:Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$Companion;

.field public static final NAME:Ljava/lang/String; = "SolanaMobileWalletAdapter"

.field private static final REQUEST_LOCAL_ASSOCIATION:I

.field private static associationResultCallback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private static final mutex:Lkotlinx/coroutines/sync/Mutex;

.field private static sessionState:Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$SessionState;


# instance fields
.field private final coroutineContext:Lkotlin/coroutines/CoroutineContext;

.field private final mActivityEventListener:Lcom/facebook/react/bridge/ActivityEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;->Companion:Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$Companion;

    .line 41
    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v0

    sput-object v0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;->mutex:Lkotlinx/coroutines/sync/Mutex;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 3
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    const-string v0, "reactContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p1}, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterSpec;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 32
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lkotlinx/coroutines/CoroutineName;

    const-string v2, "SolanaMobileWalletAdapterModuleScope"

    invoke-direct {v1, v2}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/CoroutineDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2, v1}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    iput-object v0, p0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 47
    new-instance v0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$mActivityEventListener$1;

    invoke-direct {v0}, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$mActivityEventListener$1;-><init>()V

    check-cast v0, Lcom/facebook/react/bridge/ActivityEventListener;

    iput-object v0, p0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;->mActivityEventListener:Lcom/facebook/react/bridge/ActivityEventListener;

    .line 59
    nop

    .line 60
    iget-object v0, p0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;->mActivityEventListener:Lcom/facebook/react/bridge/ActivityEventListener;

    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addActivityEventListener(Lcom/facebook/react/bridge/ActivityEventListener;)V

    .line 61
    nop

    .line 23
    return-void
.end method

.method public static final synthetic access$cleanup(Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;)V
    .locals 0
    .param p0, "$this"    # Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;

    .line 23
    invoke-direct {p0}, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;->cleanup()V

    return-void
.end method

.method public static final synthetic access$getAssociationResultCallback$cp()Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 23
    sget-object v0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;->associationResultCallback:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final synthetic access$getCurrentActivity(Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;)Landroid/app/Activity;
    .locals 1
    .param p0, "$this"    # Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;

    .line 23
    invoke-virtual {p0}, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getMutex$cp()Lkotlinx/coroutines/sync/Mutex;
    .locals 1

    .line 23
    sget-object v0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;->mutex:Lkotlinx/coroutines/sync/Mutex;

    return-object v0
.end method

.method public static final synthetic access$setAssociationResultCallback$cp(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p0, "<set-?>"    # Lkotlin/jvm/functions/Function1;

    .line 23
    sput-object p0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;->associationResultCallback:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final synthetic access$setSessionState$cp(Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$SessionState;)V
    .locals 0
    .param p0, "<set-?>"    # Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$SessionState;

    .line 23
    sput-object p0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;->sessionState:Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$SessionState;

    return-void
.end method

.method private final cleanup()V
    .locals 3

    .line 195
    const/4 v0, 0x0

    sput-object v0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;->sessionState:Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$SessionState;

    .line 196
    sput-object v0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;->associationResultCallback:Lkotlin/jvm/functions/Function1;

    .line 197
    sget-object v1, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;->mutex:Lkotlinx/coroutines/sync/Mutex;

    invoke-interface {v1}, Lkotlinx/coroutines/sync/Mutex;->isLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    sget-object v1, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;->mutex:Lkotlinx/coroutines/sync/Mutex;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v0}, Lkotlinx/coroutines/sync/Mutex$DefaultImpls;->unlock$default(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 200
    :cond_0
    return-void
.end method


# virtual methods
.method public endSession(Lcom/facebook/react/bridge/Promise;)V
    .locals 8
    .param p1, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "promise"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    sget-object v0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;->sessionState:Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$SessionState;

    if-eqz v0, :cond_0

    .local v0, "it":Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$SessionState;
    const/4 v1, 0x0

    .line 172
    .local v1, "$i$a$-let-SolanaMobileWalletAdapterModule$endSession$1":I
    move-object v2, p0

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$endSession$1$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v0, p1, v4}, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$endSession$1$1;-><init>(Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$SessionState;Lcom/facebook/react/bridge/Promise;Lkotlin/coroutines/Continuation;)V

    move-object v5, v3

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    .line 171
    .end local v0    # "it":Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$SessionState;
    .end local v1    # "$i$a$-let-SolanaMobileWalletAdapterModule$endSession$1":I
    if-eqz v0, :cond_0

    .line 192
    return-void

    .line 191
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Tried to end a session without an active session"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 64
    const-string v0, "SolanaMobileWalletAdapter"

    return-object v0
.end method

.method public invoke(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 7
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p3, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    sget-object v0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;->sessionState:Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$SessionState;

    if-eqz v0, :cond_2

    .local v0, "it":Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$SessionState;
    const/4 v1, 0x0

    .line 141
    .local v1, "$i$a$-let-SolanaMobileWalletAdapterModule$invoke$1":I
    invoke-virtual {p0}, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoke `"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "` with params "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    nop

    .line 144
    :try_start_0
    invoke-virtual {v0}, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$SessionState;->getClient()Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient;

    move-result-object v2

    .line 145
    sget-object v3, Lcom/solanamobile/mobilewalletadapter/reactnative/JSONSerializationUtils;->INSTANCE:Lcom/solanamobile/mobilewalletadapter/reactnative/JSONSerializationUtils;

    invoke-virtual {v3, p2}, Lcom/solanamobile/mobilewalletadapter/reactnative/JSONSerializationUtils;->convertMapToJson(Lcom/facebook/react/bridge/ReadableMap;)Lorg/json/JSONObject;

    move-result-object v3

    const v5, 0x15f90

    invoke-virtual {v2, p1, v3, v5}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient;->methodCall(Ljava/lang/String;Ljava/lang/Object;I)Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;

    move-result-object v2

    .line 146
    invoke-interface {v2}, Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;->get()Ljava/lang/Object;

    move-result-object v2

    .line 144
    const-string v3, "null cannot be cast to non-null type org.json.JSONObject"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lorg/json/JSONObject;

    .line 143
    nop

    .line 148
    .local v2, "result":Lorg/json/JSONObject;
    sget-object v3, Lcom/solanamobile/mobilewalletadapter/reactnative/JSONSerializationUtils;->INSTANCE:Lcom/solanamobile/mobilewalletadapter/reactnative/JSONSerializationUtils;

    invoke-virtual {v3, v2}, Lcom/solanamobile/mobilewalletadapter/reactnative/JSONSerializationUtils;->convertJsonToMap(Lorg/json/JSONObject;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v3

    invoke-interface {p3, v3}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "result":Lorg/json/JSONObject;
    goto :goto_0

    .line 160
    :catchall_0
    move-exception v2

    .line 161
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to invoke `"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    invoke-interface {p3, v2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 149
    .end local v2    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v2

    .line 150
    .local v2, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 151
    .local v3, "cause":Ljava/lang/Throwable;
    instance-of v4, v3, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20RemoteException;

    if-eqz v4, :cond_0

    .line 152
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v4

    .line 153
    .local v4, "userInfo":Lcom/facebook/react/bridge/WritableMap;
    move-object v5, v3

    check-cast v5, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20RemoteException;

    iget v5, v5, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20RemoteException;->code:I

    const-string v6, "jsonRpcErrorCode"

    invoke-interface {v4, v6, v5}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 154
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v5, "JSON_RPC_ERROR"

    invoke-interface {p3, v5, v3, v4}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;Lcom/facebook/react/bridge/WritableMap;)V

    .end local v4    # "userInfo":Lcom/facebook/react/bridge/WritableMap;
    goto :goto_0

    .line 155
    :cond_0
    instance-of v4, v3, Ljava/util/concurrent/TimeoutException;

    if-eqz v4, :cond_1

    .line 156
    const-string v4, "Timed out waiting for response"

    move-object v5, v2

    check-cast v5, Ljava/lang/Throwable;

    invoke-interface {p3, v4, v5}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 164
    .end local v2    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v3    # "cause":Ljava/lang/Throwable;
    :goto_0
    nop

    .line 140
    .end local v0    # "it":Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$SessionState;
    .end local v1    # "$i$a$-let-SolanaMobileWalletAdapterModule$invoke$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    .line 158
    .restart local v0    # "it":Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$SessionState;
    .restart local v1    # "$i$a$-let-SolanaMobileWalletAdapterModule$invoke$1":I
    .restart local v2    # "e":Ljava/util/concurrent/ExecutionException;
    .restart local v3    # "cause":Ljava/lang/Throwable;
    :cond_1
    throw v2

    .line 140
    .end local v0    # "it":Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$SessionState;
    .end local v1    # "$i$a$-let-SolanaMobileWalletAdapterModule$invoke$1":I
    .end local v2    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v3    # "cause":Ljava/lang/Throwable;
    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 167
    return-void

    .line 165
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to invoke `"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "` without an active session"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startSession(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 7
    .param p1, "config"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p2, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "promise"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, p2, v2}, Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule$startSession$1;-><init>(Lcom/solanamobile/mobilewalletadapter/reactnative/SolanaMobileWalletAdapterModule;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 136
    return-void
.end method
