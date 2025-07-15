.class public final Lexpo/modules/kotlin/devtools/ExpoRequestCdpInterceptor;
.super Ljava/lang/Object;
.source "ExpoRequestCdpInterceptor.kt"

# interfaces
.implements Lexpo/modules/kotlin/devtools/ExpoNetworkInspectOkHttpInterceptorsDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/kotlin/devtools/ExpoRequestCdpInterceptor$Delegate;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u001cB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J*\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u0010\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\u0010\u0010\u0019\u001a\u00020\r2\u0008\u0010\t\u001a\u0004\u0018\u00010\u000bJ\"\u0010\u001a\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0013H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lexpo/modules/kotlin/devtools/ExpoRequestCdpInterceptor;",
        "Lexpo/modules/kotlin/devtools/ExpoNetworkInspectOkHttpInterceptorsDelegate;",
        "()V",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "getCoroutineScope$expo_modules_core_debug",
        "()Lkotlinx/coroutines/CoroutineScope;",
        "setCoroutineScope$expo_modules_core_debug",
        "(Lkotlinx/coroutines/CoroutineScope;)V",
        "delegate",
        "Ljava/lang/ref/WeakReference;",
        "Lexpo/modules/kotlin/devtools/ExpoRequestCdpInterceptor$Delegate;",
        "didReceiveResponse",
        "",
        "requestId",
        "",
        "request",
        "Lokhttp3/Request;",
        "response",
        "Lokhttp3/Response;",
        "body",
        "Lokhttp3/ResponseBody;",
        "dispatchEvent",
        "event",
        "Lexpo/modules/kotlin/devtools/cdp/Event;",
        "setDelegate",
        "willSendRequest",
        "redirectResponse",
        "Delegate",
        "expo-modules-core_debug"
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
.field public static final INSTANCE:Lexpo/modules/kotlin/devtools/ExpoRequestCdpInterceptor;

.field private static coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field private static delegate:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/kotlin/devtools/ExpoRequestCdpInterceptor$Delegate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/kotlin/devtools/ExpoRequestCdpInterceptor;

    invoke-direct {v0}, Lexpo/modules/kotlin/devtools/ExpoRequestCdpInterceptor;-><init>()V

    sput-object v0, Lexpo/modules/kotlin/devtools/ExpoRequestCdpInterceptor;->INSTANCE:Lexpo/modules/kotlin/devtools/ExpoRequestCdpInterceptor;

    .line 26
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lexpo/modules/kotlin/devtools/ExpoRequestCdpInterceptor;->delegate:Ljava/lang/ref/WeakReference;

    .line 27
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    sput-object v0, Lexpo/modules/kotlin/devtools/ExpoRequestCdpInterceptor;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getDelegate$p()Ljava/lang/ref/WeakReference;
    .locals 1

    .line 25
    sget-object v0, Lexpo/modules/kotlin/devtools/ExpoRequestCdpInterceptor;->delegate:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public static final synthetic access$setDelegate$p(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .param p0, "<set-?>"    # Ljava/lang/ref/WeakReference;

    .line 25
    sput-object p0, Lexpo/modules/kotlin/devtools/ExpoRequestCdpInterceptor;->delegate:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private final dispatchEvent(Lexpo/modules/kotlin/devtools/cdp/Event;)V
    .locals 6
    .param p1, "event"    # Lexpo/modules/kotlin/devtools/cdp/Event;

    .line 36
    sget-object v0, Lexpo/modules/kotlin/devtools/ExpoRequestCdpInterceptor;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lexpo/modules/kotlin/devtools/ExpoRequestCdpInterceptor$dispatchEvent$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lexpo/modules/kotlin/devtools/ExpoRequestCdpInterceptor$dispatchEvent$1;-><init>(Lexpo/modules/kotlin/devtools/cdp/Event;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 39
    return-void
.end method


# virtual methods
.method public didReceiveResponse(Ljava/lang/String;Lokhttp3/Request;Lokhttp3/Response;Lokhttp3/ResponseBody;)V
    .locals 6
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "request"    # Lokhttp3/Request;
    .param p3, "response"    # Lokhttp3/Response;
    .param p4, "body"    # Lokhttp3/ResponseBody;

    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v1, 0x3

    sget-object v2, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 65
    .local v0, "now":Ljava/math/BigDecimal;
    new-instance v1, Lexpo/modules/kotlin/devtools/cdp/ResponseReceivedParams;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v0, p1, p3}, Lexpo/modules/kotlin/devtools/cdp/ResponseReceivedParams;-><init>(Ljava/math/BigDecimal;Ljava/lang/String;Lokhttp3/Response;)V

    .line 66
    .local v1, "params":Lexpo/modules/kotlin/devtools/cdp/ResponseReceivedParams;
    new-instance v2, Lexpo/modules/kotlin/devtools/cdp/Event;

    const-string v3, "Network.responseReceived"

    move-object v4, v1

    check-cast v4, Lexpo/modules/kotlin/devtools/cdp/JsonSerializable;

    invoke-direct {v2, v3, v4}, Lexpo/modules/kotlin/devtools/cdp/Event;-><init>(Ljava/lang/String;Lexpo/modules/kotlin/devtools/cdp/JsonSerializable;)V

    invoke-direct {p0, v2}, Lexpo/modules/kotlin/devtools/ExpoRequestCdpInterceptor;->dispatchEvent(Lexpo/modules/kotlin/devtools/cdp/Event;)V

    .line 68
    if-eqz p4, :cond_0

    .line 69
    new-instance v2, Lexpo/modules/kotlin/devtools/cdp/ExpoReceivedResponseBodyParams;

    invoke-direct {v2, p1, p4}, Lexpo/modules/kotlin/devtools/cdp/ExpoReceivedResponseBodyParams;-><init>(Ljava/lang/String;Lokhttp3/ResponseBody;)V

    .line 70
    .local v2, "params2":Lexpo/modules/kotlin/devtools/cdp/ExpoReceivedResponseBodyParams;
    new-instance v3, Lexpo/modules/kotlin/devtools/cdp/Event;

    const-string v4, "Expo(Network.receivedResponseBody)"

    move-object v5, v2

    check-cast v5, Lexpo/modules/kotlin/devtools/cdp/JsonSerializable;

    invoke-direct {v3, v4, v5}, Lexpo/modules/kotlin/devtools/cdp/Event;-><init>(Ljava/lang/String;Lexpo/modules/kotlin/devtools/cdp/JsonSerializable;)V

    invoke-direct {p0, v3}, Lexpo/modules/kotlin/devtools/ExpoRequestCdpInterceptor;->dispatchEvent(Lexpo/modules/kotlin/devtools/cdp/Event;)V

    .line 73
    .end local v2    # "params2":Lexpo/modules/kotlin/devtools/cdp/ExpoReceivedResponseBodyParams;
    :cond_0
    new-instance v2, Lexpo/modules/kotlin/devtools/cdp/LoadingFinishedParams;

    invoke-direct {v2, v0, p1, p3}, Lexpo/modules/kotlin/devtools/cdp/LoadingFinishedParams;-><init>(Ljava/math/BigDecimal;Ljava/lang/String;Lokhttp3/Response;)V

    .line 74
    .local v2, "params3":Lexpo/modules/kotlin/devtools/cdp/LoadingFinishedParams;
    new-instance v3, Lexpo/modules/kotlin/devtools/cdp/Event;

    const-string v4, "Network.loadingFinished"

    move-object v5, v2

    check-cast v5, Lexpo/modules/kotlin/devtools/cdp/JsonSerializable;

    invoke-direct {v3, v4, v5}, Lexpo/modules/kotlin/devtools/cdp/Event;-><init>(Ljava/lang/String;Lexpo/modules/kotlin/devtools/cdp/JsonSerializable;)V

    invoke-direct {p0, v3}, Lexpo/modules/kotlin/devtools/ExpoRequestCdpInterceptor;->dispatchEvent(Lexpo/modules/kotlin/devtools/cdp/Event;)V

    .line 75
    return-void
.end method

.method public final getCoroutineScope$expo_modules_core_debug()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 27
    sget-object v0, Lexpo/modules/kotlin/devtools/ExpoRequestCdpInterceptor;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final setCoroutineScope$expo_modules_core_debug(Lkotlinx/coroutines/CoroutineScope;)V
    .locals 1
    .param p1, "<set-?>"    # Lkotlinx/coroutines/CoroutineScope;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sput-object p1, Lexpo/modules/kotlin/devtools/ExpoRequestCdpInterceptor;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method

.method public final setDelegate(Lexpo/modules/kotlin/devtools/ExpoRequestCdpInterceptor$Delegate;)V
    .locals 6
    .param p1, "delegate"    # Lexpo/modules/kotlin/devtools/ExpoRequestCdpInterceptor$Delegate;

    .line 30
    sget-object v0, Lexpo/modules/kotlin/devtools/ExpoRequestCdpInterceptor;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lexpo/modules/kotlin/devtools/ExpoRequestCdpInterceptor$setDelegate$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lexpo/modules/kotlin/devtools/ExpoRequestCdpInterceptor$setDelegate$1;-><init>(Lexpo/modules/kotlin/devtools/ExpoRequestCdpInterceptor;Lexpo/modules/kotlin/devtools/ExpoRequestCdpInterceptor$Delegate;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 33
    return-void
.end method

.method public willSendRequest(Ljava/lang/String;Lokhttp3/Request;Lokhttp3/Response;)V
    .locals 6
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "request"    # Lokhttp3/Request;
    .param p3, "redirectResponse"    # Lokhttp3/Response;

    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v1, 0x3

    sget-object v2, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 50
    .local v0, "now":Ljava/math/BigDecimal;
    new-instance v1, Lexpo/modules/kotlin/devtools/cdp/RequestWillBeSentParams;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v0, p1, p2, p3}, Lexpo/modules/kotlin/devtools/cdp/RequestWillBeSentParams;-><init>(Ljava/math/BigDecimal;Ljava/lang/String;Lokhttp3/Request;Lokhttp3/Response;)V

    .line 51
    .local v1, "params":Lexpo/modules/kotlin/devtools/cdp/RequestWillBeSentParams;
    new-instance v2, Lexpo/modules/kotlin/devtools/cdp/Event;

    const-string v3, "Network.requestWillBeSent"

    move-object v4, v1

    check-cast v4, Lexpo/modules/kotlin/devtools/cdp/JsonSerializable;

    invoke-direct {v2, v3, v4}, Lexpo/modules/kotlin/devtools/cdp/Event;-><init>(Ljava/lang/String;Lexpo/modules/kotlin/devtools/cdp/JsonSerializable;)V

    invoke-direct {p0, v2}, Lexpo/modules/kotlin/devtools/ExpoRequestCdpInterceptor;->dispatchEvent(Lexpo/modules/kotlin/devtools/cdp/Event;)V

    .line 53
    new-instance v2, Lexpo/modules/kotlin/devtools/cdp/RequestWillBeSentExtraInfoParams;

    invoke-direct {v2, v0, p1, p2}, Lexpo/modules/kotlin/devtools/cdp/RequestWillBeSentExtraInfoParams;-><init>(Ljava/math/BigDecimal;Ljava/lang/String;Lokhttp3/Request;)V

    .line 54
    .local v2, "params2":Lexpo/modules/kotlin/devtools/cdp/RequestWillBeSentExtraInfoParams;
    new-instance v3, Lexpo/modules/kotlin/devtools/cdp/Event;

    const-string v4, "Network.requestWillBeSentExtraInfo"

    move-object v5, v2

    check-cast v5, Lexpo/modules/kotlin/devtools/cdp/JsonSerializable;

    invoke-direct {v3, v4, v5}, Lexpo/modules/kotlin/devtools/cdp/Event;-><init>(Ljava/lang/String;Lexpo/modules/kotlin/devtools/cdp/JsonSerializable;)V

    invoke-direct {p0, v3}, Lexpo/modules/kotlin/devtools/ExpoRequestCdpInterceptor;->dispatchEvent(Lexpo/modules/kotlin/devtools/cdp/Event;)V

    .line 55
    return-void
.end method
