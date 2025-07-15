.class public Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;
.super Lcom/solana/mobilewalletadapter/clientlib/scenario/Scenario;
.source "LocalAssociationScenario.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;,
        Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$ConnectionFailedException;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CONNECT_BACKOFF_SCHEDULE_MS:[I

.field private static final CONNECT_MAX_ATTEMPTS:I = 0x22

.field private static final CONNECT_TIMEOUT_MS:I = 0xc8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mClosedFuture:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private mConnectionAttempts:I

.field private mConnectionBackoffExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private final mLock:Ljava/lang/Object;

.field private mMobileWalletAdapterSession:Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterSession;

.field private mMobileWalletAdapterWebSocket:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

.field private final mPort:I

.field private mSessionEstablishedFuture:Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture<",
            "Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionStateCallbacks:Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$StateCallbacks;

.field private mState:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

.field private final mWebSocketStateCallbacks:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$StateCallbacks;

.field private final mWebSocketUri:Ljava/net/URI;


# direct methods
.method public static synthetic $r8$lambda$h61m0GDYqyf8JTxdU8FUYX0ibxw(Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;)V
    .locals 0

    invoke-direct {p0}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->doTryConnect()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdoConnected(Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;)V
    .locals 0

    invoke-direct {p0}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->doConnected()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoConnectionFailed(Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;)V
    .locals 0

    invoke-direct {p0}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->doConnectionFailed()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoDisconnected(Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;)V
    .locals 0

    invoke-direct {p0}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->doDisconnected()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoSessionClosed(Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;)V
    .locals 0

    invoke-direct {p0}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->doSessionClosed()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoSessionError(Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;)V
    .locals 0

    invoke-direct {p0}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->doSessionError()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoSessionEstablished(Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;)V
    .locals 0

    invoke-direct {p0}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->doSessionEstablished()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 29
    nop

    .line 30
    const-class v0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->TAG:Ljava/lang/String;

    .line 32
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->CONNECT_BACKOFF_SCHEDULE_MS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x96
        0x96
        0xc8
        0x1f4
        0x1f4
        0x2ee
        0x2ee
        0x3e8
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 9
    .param p1, "clientTimeoutMs"    # I

    .line 59
    invoke-direct {p0, p1}, Lcom/solana/mobilewalletadapter/clientlib/scenario/Scenario;-><init>(I)V

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mLock:Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->NOT_STARTED:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    iput-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mState:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mConnectionAttempts:I

    .line 311
    new-instance v0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$1;

    invoke-direct {v0, p0}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$1;-><init>(Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;)V

    iput-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mWebSocketStateCallbacks:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$StateCallbacks;

    .line 334
    new-instance v0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$2;

    invoke-direct {v0, p0}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$2;-><init>(Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;)V

    iput-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mSessionStateCallbacks:Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$StateCallbacks;

    .line 61
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const v1, 0xc000

    add-int/2addr v0, v1

    iput v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mPort:I

    .line 65
    :try_start_0
    new-instance v0, Ljava/net/URI;

    const-string/jumbo v2, "ws"

    const-string v4, "127.0.0.1"

    iget v5, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mPort:I

    const-string v6, "/solana-wallet"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mWebSocketUri:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    nop

    .line 72
    new-instance v0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterSession;

    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mMobileWalletAdapterClient:Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient;

    iget-object v2, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mSessionStateCallbacks:Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$StateCallbacks;

    invoke-direct {v0, v1, v2}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterSession;-><init>(Lcom/solana/mobilewalletadapter/common/protocol/MessageReceiver;Lcom/solana/mobilewalletadapter/common/protocol/MobileWalletAdapterSessionCommon$StateCallbacks;)V

    iput-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mMobileWalletAdapterSession:Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterSession;

    .line 76
    sget-object v0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating local association scenario for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mWebSocketUri:Ljava/net/URI;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Failed assembling a LocalAssociation URI"

    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private closeDeferredFuture()Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mState:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    sget-object v1, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->CLOSING:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    if-ne v0, v1, :cond_1

    .line 175
    new-instance v0, Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;

    invoke-direct {v0}, Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;-><init>()V

    .line 176
    .local v0, "future":Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;, "Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture<Ljava/lang/Void;>;"
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mClosedFuture:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 177
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mClosedFuture:Ljava/util/ArrayList;

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mClosedFuture:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    return-object v0

    .line 174
    .end local v0    # "future":Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;, "Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture<Ljava/lang/Void;>;"
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private closedImmediatelyFuture()Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mState:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    sget-object v1, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->CLOSED:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    if-ne v0, v1, :cond_0

    .line 166
    new-instance v0, Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;

    invoke-direct {v0}, Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;-><init>()V

    .line 167
    .local v0, "future":Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;, "Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture<Ljava/lang/Void;>;"
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 168
    return-object v0

    .line 165
    .end local v0    # "future":Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;, "Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture<Ljava/lang/Void;>;"
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private destroyResourcesOnClose()V
    .locals 2

    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mMobileWalletAdapterSession:Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterSession;

    .line 281
    iput-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mMobileWalletAdapterWebSocket:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    .line 282
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mConnectionBackoffExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mConnectionBackoffExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 284
    iput-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mConnectionBackoffExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 286
    :cond_0
    return-void
.end method

.method private doConnected()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mState:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    sget-object v1, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->CONNECTING:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mState:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    sget-object v1, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->CLOSING:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 195
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mState:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    sget-object v1, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->CLOSING:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    if-ne v0, v1, :cond_2

    return-void

    .line 196
    :cond_2
    sget-object v0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->TAG:Ljava/lang/String;

    const-string v1, "WebSocket connection established, waiting for session establishment"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    sget-object v0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->ESTABLISHING_SESSION:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    iput-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mState:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    .line 198
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mConnectionBackoffExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mConnectionBackoffExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 200
    return-void
.end method

.method private doConnectionFailed()V
    .locals 6

    .line 204
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mState:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    sget-object v1, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->CONNECTING:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mState:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    sget-object v1, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->CLOSING:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 205
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mState:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    sget-object v1, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->CLOSING:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    if-ne v0, v1, :cond_2

    return-void

    .line 206
    :cond_2
    iget v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mConnectionAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mConnectionAttempts:I

    const/16 v1, 0x22

    if-ge v0, v1, :cond_4

    .line 207
    sget-object v0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->CONNECT_BACKOFF_SCHEDULE_MS:[I

    .line 208
    iget v1, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mConnectionAttempts:I

    sget-object v2, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->CONNECT_BACKOFF_SCHEDULE_MS:[I

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 209
    iget v1, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mConnectionAttempts:I

    goto :goto_1

    .line 210
    :cond_3
    sget-object v1, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->CONNECT_BACKOFF_SCHEDULE_MS:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    aget v0, v0, v1

    .line 211
    .local v0, "delay":I
    sget-object v1, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connect attempt failed, retrying in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mMobileWalletAdapterWebSocket:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    .line 213
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mConnectionBackoffExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$$ExternalSyntheticLambda0;-><init>(Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;)V

    int-to-long v3, v0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 214
    .end local v0    # "delay":I
    goto :goto_2

    .line 215
    :cond_4
    sget-object v0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->TAG:Ljava/lang/String;

    const-string v1, "Failed establishing a WebSocket connection"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    sget-object v0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->CLOSED:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    iput-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mState:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    .line 219
    invoke-direct {p0}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->destroyResourcesOnClose()V

    .line 220
    const-string v0, "Unable to connect to websocket server"

    invoke-direct {p0, v0}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->notifySessionEstablishmentFailed(Ljava/lang/String;)V

    .line 222
    :goto_2
    return-void
.end method

.method private doDisconnected()V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mState:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    sget-object v1, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->CONNECTING:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mState:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    sget-object v1, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->ESTABLISHING_SESSION:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mState:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    sget-object v1, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->STARTED:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mState:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    sget-object v1, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->CLOSING:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 227
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mState:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    sget-object v1, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->CONNECTING:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mState:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    sget-object v1, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->ESTABLISHING_SESSION:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    if-ne v0, v1, :cond_2

    goto :goto_1

    .line 232
    :cond_2
    sget-object v0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->TAG:Ljava/lang/String;

    const-string v1, "Disconnected during normal operation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 228
    :cond_3
    :goto_1
    sget-object v0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->TAG:Ljava/lang/String;

    const-string v1, "Disconnected before session established"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    sget-object v0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->CLOSING:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    iput-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mState:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    .line 230
    invoke-direct {p0, v1}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->notifySessionEstablishmentFailed(Ljava/lang/String;)V

    .line 234
    :goto_2
    sget-object v0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->CLOSED:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    iput-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mState:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    .line 235
    invoke-direct {p0}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->destroyResourcesOnClose()V

    .line 236
    invoke-direct {p0}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->notifyCloseCompleted()V

    .line 237
    return-void
.end method

.method private doSessionClosed()V
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mState:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    sget-object v1, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->ESTABLISHING_SESSION:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mState:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    sget-object v1, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->STARTED:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mState:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    sget-object v1, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->CLOSING:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 251
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mState:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    sget-object v1, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->CLOSING:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    if-ne v0, v1, :cond_2

    return-void

    .line 252
    :cond_2
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mState:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    sget-object v1, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->ESTABLISHING_SESSION:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    if-ne v0, v1, :cond_3

    .line 253
    sget-object v0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->TAG:Ljava/lang/String;

    const-string v1, "Session terminated before session establishment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    sget-object v0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->CLOSING:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    iput-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mState:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    .line 255
    invoke-direct {p0, v1}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->notifySessionEstablishmentFailed(Ljava/lang/String;)V

    goto :goto_1

    .line 257
    :cond_3
    sget-object v0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->TAG:Ljava/lang/String;

    const-string v1, "Session terminated normally"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    sget-object v0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->CLOSING:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    iput-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mState:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    .line 261
    :goto_1
    return-void
.end method

.method private doSessionError()V
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mState:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    sget-object v1, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->ESTABLISHING_SESSION:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mState:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    sget-object v1, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->STARTED:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mState:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    sget-object v1, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->CLOSING:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 266
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mState:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    sget-object v1, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->CLOSING:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    if-ne v0, v1, :cond_2

    return-void

    .line 267
    :cond_2
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mState:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    sget-object v1, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->ESTABLISHING_SESSION:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    if-ne v0, v1, :cond_3

    .line 268
    sget-object v0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->TAG:Ljava/lang/String;

    const-string v1, "Session error, terminating before session established"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    sget-object v0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->CLOSING:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    iput-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mState:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    .line 270
    const-string v0, "Closing before session establishment due to session error"

    invoke-direct {p0, v0}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->notifySessionEstablishmentFailed(Ljava/lang/String;)V

    goto :goto_1

    .line 272
    :cond_3
    sget-object v0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->TAG:Ljava/lang/String;

    const-string v1, "Session error, terminating"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    sget-object v0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->CLOSING:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    iput-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mState:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    .line 276
    :goto_1
    return-void
.end method

.method private doSessionEstablished()V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mState:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    sget-object v1, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->ESTABLISHING_SESSION:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mState:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    sget-object v1, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->CLOSING:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 242
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mState:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    sget-object v1, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->CLOSING:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    if-ne v0, v1, :cond_2

    return-void

    .line 243
    :cond_2
    sget-object v0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->TAG:Ljava/lang/String;

    const-string v1, "Session established, scenario ready for use"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    sget-object v0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->STARTED:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    iput-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mState:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    .line 245
    invoke-direct {p0}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->notifySessionEstablishmentSucceeded()V

    .line 246
    return-void
.end method

.method private doTryConnect()V
    .locals 5

    .line 185
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mState:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    sget-object v1, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->CONNECTING:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mState:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    sget-object v1, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->CLOSING:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 186
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mState:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    sget-object v1, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->CLOSING:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    if-ne v0, v1, :cond_2

    return-void

    .line 187
    :cond_2
    new-instance v0, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mWebSocketUri:Ljava/net/URI;

    iget-object v2, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mMobileWalletAdapterSession:Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterSession;

    iget-object v3, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mWebSocketStateCallbacks:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$StateCallbacks;

    const/16 v4, 0xc8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;-><init>(Ljava/net/URI;Lcom/solana/mobilewalletadapter/common/protocol/MessageReceiver;Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket$StateCallbacks;I)V

    iput-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mMobileWalletAdapterWebSocket:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    .line 189
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mMobileWalletAdapterWebSocket:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    invoke-virtual {v0}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->connect()V

    .line 190
    return-void
.end method

.method private notifyCloseCompleted()V
    .locals 3

    .line 303
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mClosedFuture:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mClosedFuture:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;

    .line 305
    .local v1, "future":Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;, "Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture<Ljava/lang/Void;>;"
    invoke-virtual {v1, v2}, Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 306
    .end local v1    # "future":Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;, "Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture<Ljava/lang/Void;>;"
    goto :goto_0

    .line 307
    :cond_0
    iput-object v2, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mClosedFuture:Ljava/util/ArrayList;

    .line 309
    :cond_1
    return-void
.end method

.method private notifySessionEstablishmentFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 296
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mSessionEstablishedFuture:Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;

    new-instance v1, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$ConnectionFailedException;

    invoke-direct {v1, p1}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$ConnectionFailedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;->completeExceptionally(Ljava/lang/Exception;)Z

    .line 297
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mSessionEstablishedFuture:Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;

    .line 298
    return-void
.end method

.method private notifySessionEstablishmentSucceeded()V
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mSessionEstablishedFuture:Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;

    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mMobileWalletAdapterClient:Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient;

    invoke-virtual {v0, v1}, Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 291
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mSessionEstablishedFuture:Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;

    .line 292
    return-void
.end method

.method private startDeferredFuture()Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture<",
            "Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient;",
            ">;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mState:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    sget-object v1, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->CONNECTING:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mSessionEstablishedFuture:Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;

    invoke-direct {v0}, Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;-><init>()V

    .line 158
    .local v0, "future":Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;, "Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture<Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient;>;"
    iput-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mSessionEstablishedFuture:Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;

    .line 159
    return-object v0

    .line 156
    .end local v0    # "future":Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;, "Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture<Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient;>;"
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public close()Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 105
    :try_start_0
    sget-object v1, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$3;->$SwitchMap$com$solana$mobilewalletadapter$clientlib$scenario$LocalAssociationScenario$State:[I

    iget-object v2, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mState:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    invoke-virtual {v2}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 146
    new-instance v1, Ljava/lang/IllegalStateException;

    goto :goto_1

    .line 143
    :pswitch_0
    invoke-direct {p0}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->closedImmediatelyFuture()Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;

    move-result-object v1

    .line 144
    .local v1, "future":Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;, "Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture<Ljava/lang/Void;>;"
    goto :goto_0

    .line 139
    .end local v1    # "future":Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;, "Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture<Ljava/lang/Void;>;"
    :pswitch_1
    invoke-direct {p0}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->closeDeferredFuture()Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;

    move-result-object v1

    .line 140
    .restart local v1    # "future":Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;, "Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture<Ljava/lang/Void;>;"
    goto :goto_0

    .line 133
    .end local v1    # "future":Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;, "Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture<Ljava/lang/Void;>;"
    :pswitch_2
    sget-object v1, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->CLOSING:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    iput-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mState:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    .line 134
    invoke-direct {p0}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->closeDeferredFuture()Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;

    move-result-object v1

    .line 135
    .restart local v1    # "future":Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;, "Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture<Ljava/lang/Void;>;"
    iget-object v2, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mMobileWalletAdapterWebSocket:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    invoke-virtual {v2}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->close()V

    .line 136
    goto :goto_0

    .line 127
    .end local v1    # "future":Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;, "Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture<Ljava/lang/Void;>;"
    :pswitch_3
    sget-object v1, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->CLOSING:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    iput-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mState:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    .line 128
    const-string v1, "Scenario closed during session establishment"

    invoke-direct {p0, v1}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->notifySessionEstablishmentFailed(Ljava/lang/String;)V

    .line 129
    invoke-direct {p0}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->closeDeferredFuture()Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;

    move-result-object v1

    .line 130
    .restart local v1    # "future":Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;, "Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture<Ljava/lang/Void;>;"
    iget-object v2, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mMobileWalletAdapterWebSocket:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    invoke-virtual {v2}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->close()V

    .line 131
    goto :goto_0

    .line 113
    .end local v1    # "future":Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;, "Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture<Ljava/lang/Void;>;"
    :pswitch_4
    sget-object v1, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->CLOSING:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    iput-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mState:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    .line 114
    const-string v1, "Scenario closed while connecting"

    invoke-direct {p0, v1}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->notifySessionEstablishmentFailed(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mMobileWalletAdapterWebSocket:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    if-eqz v1, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->closeDeferredFuture()Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;

    move-result-object v1

    .line 118
    .restart local v1    # "future":Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;, "Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture<Ljava/lang/Void;>;"
    iget-object v2, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mMobileWalletAdapterWebSocket:Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;

    invoke-virtual {v2}, Lcom/solana/mobilewalletadapter/clientlib/transport/websockets/MobileWalletAdapterWebSocket;->close()V

    goto :goto_0

    .line 121
    .end local v1    # "future":Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;, "Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture<Ljava/lang/Void;>;"
    :cond_0
    sget-object v1, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->CLOSED:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    iput-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mState:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    .line 122
    invoke-direct {p0}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->destroyResourcesOnClose()V

    .line 123
    invoke-direct {p0}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->closedImmediatelyFuture()Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;

    move-result-object v1

    .line 125
    .restart local v1    # "future":Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;, "Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture<Ljava/lang/Void;>;"
    goto :goto_0

    .line 108
    .end local v1    # "future":Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;, "Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture<Ljava/lang/Void;>;"
    :pswitch_5
    sget-object v1, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->CLOSED:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    iput-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mState:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    .line 109
    invoke-direct {p0}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->destroyResourcesOnClose()V

    .line 110
    invoke-direct {p0}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->closedImmediatelyFuture()Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;

    move-result-object v1

    .line 111
    .restart local v1    # "future":Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;, "Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture<Ljava/lang/Void;>;"
    nop

    .line 148
    :goto_0
    monitor-exit v0

    .line 150
    return-object v1

    .line 146
    .end local v1    # "future":Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;, "Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture<Ljava/lang/Void;>;"
    :goto_1
    const-string v2, "Error: attempt to close in an unknown state"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 148
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPort()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mPort:I

    return v0
.end method

.method public getSession()Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterSession;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mMobileWalletAdapterSession:Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterSession;

    return-object v0
.end method

.method public start()Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture<",
            "Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mState:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    sget-object v2, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->NOT_STARTED:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    if-ne v1, v2, :cond_0

    .line 88
    sget-object v1, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;->CONNECTING:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    iput-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mState:Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$State;

    .line 89
    invoke-direct {p0}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->startDeferredFuture()Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;

    move-result-object v1

    .line 93
    .local v1, "future":Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;, "Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture<Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient;>;"
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mConnectionBackoffExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 94
    iget-object v2, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->mConnectionBackoffExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$$ExternalSyntheticLambda0;-><init>(Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;)V

    sget-object v4, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;->CONNECT_BACKOFF_SCHEDULE_MS:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5, v6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 95
    monitor-exit v0

    .line 97
    return-object v1

    .line 85
    .end local v1    # "future":Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture;, "Lcom/solana/mobilewalletadapter/common/util/NotifyingCompletableFuture<Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient;>;"
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Scenario has already been started"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 95
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
