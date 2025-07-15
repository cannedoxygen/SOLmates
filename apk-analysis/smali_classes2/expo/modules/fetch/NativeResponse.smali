.class public final Lexpo/modules/fetch/NativeResponse;
.super Lexpo/modules/kotlin/sharedobjects/SharedObject;
.source "NativeResponse.kt"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/fetch/NativeResponse$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNativeResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NativeResponse.kt\nexpo/modules/fetch/NativeResponse\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,208:1\n1#2:209\n1549#3:210\n1620#3,3:211\n*S KotlinDebug\n*F\n+ 1 NativeResponse.kt\nexpo/modules/fetch/NativeResponse\n*L\n158#1:210\n158#1:211,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 @2\u00020\u00012\u00020\u0002:\u0001@B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0006\u0010%\u001a\u00020&J\u0010\u0010\'\u001a\u00020\u00122\u0006\u0010(\u001a\u00020)H\u0002J\u0008\u0010*\u001a\u00020&H\u0016J\u0006\u0010+\u001a\u00020&J!\u0010,\u001a\u00020\t2\u0012\u0010-\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u001b0.\"\u00020\u001bH\u0002\u00a2\u0006\u0002\u0010/J\u0018\u00100\u001a\u00020&2\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u000204H\u0016J\u0018\u00105\u001a\u00020&2\u0006\u00101\u001a\u0002022\u0006\u0010(\u001a\u00020)H\u0016J\u0006\u00106\u001a\u00020&J\u0010\u00107\u001a\u00020&2\u0006\u00108\u001a\u000209H\u0002J\u0008\u0010:\u001a\u0004\u0018\u00010;J(\u0010<\u001a\u00020&2\u000c\u0010=\u001a\u0008\u0012\u0004\u0012\u00020\u001b0>2\u0012\u0010?\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020&0#R\u0011\u0010\u0008\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R.\u0010\u000f\u001a\n\u0018\u00010\rj\u0004\u0018\u0001`\u000e2\u000e\u0010\u000c\u001a\n\u0018\u00010\rj\u0004\u0018\u0001`\u000e@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\"\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0012@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0016\u001a\u00020\u0017\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R&\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001a\u001a\u00020\u001b8B@BX\u0082\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R$\u0010!\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\t0#j\u0002`$0\"X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006A"
    }
    d2 = {
        "Lexpo/modules/fetch/NativeResponse;",
        "Lexpo/modules/kotlin/sharedobjects/SharedObject;",
        "Lokhttp3/Callback;",
        "appContext",
        "Lexpo/modules/kotlin/AppContext;",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "(Lexpo/modules/kotlin/AppContext;Lkotlinx/coroutines/CoroutineScope;)V",
        "bodyUsed",
        "",
        "getBodyUsed",
        "()Z",
        "<set-?>",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "error",
        "getError",
        "()Ljava/lang/Exception;",
        "Lexpo/modules/fetch/NativeResponseInit;",
        "responseInit",
        "getResponseInit",
        "()Lexpo/modules/fetch/NativeResponseInit;",
        "sink",
        "Lexpo/modules/fetch/ResponseSink;",
        "getSink",
        "()Lexpo/modules/fetch/ResponseSink;",
        "value",
        "Lexpo/modules/fetch/ResponseState;",
        "state",
        "getState",
        "()Lexpo/modules/fetch/ResponseState;",
        "setState",
        "(Lexpo/modules/fetch/ResponseState;)V",
        "stateChangeOnceListeners",
        "",
        "Lkotlin/Function1;",
        "Lexpo/modules/fetch/StateChangeListener;",
        "cancelStreaming",
        "",
        "createResponseInit",
        "response",
        "Lokhttp3/Response;",
        "deallocate",
        "emitRequestCanceled",
        "isInvalidState",
        "validStates",
        "",
        "([Lexpo/modules/fetch/ResponseState;)Z",
        "onFailure",
        "call",
        "Lokhttp3/Call;",
        "e",
        "Ljava/io/IOException;",
        "onResponse",
        "onStarted",
        "pumpResponseBodyStream",
        "stream",
        "Lokio/BufferedSource;",
        "startStreaming",
        "",
        "waitForStates",
        "states",
        "",
        "callback",
        "Companion",
        "expo_debug"
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
.field public static final Companion:Lexpo/modules/fetch/NativeResponse$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field private error:Ljava/lang/Exception;

.field private responseInit:Lexpo/modules/fetch/NativeResponseInit;

.field private final sink:Lexpo/modules/fetch/ResponseSink;

.field private state:Lexpo/modules/fetch/ResponseState;

.field private final stateChangeOnceListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function1<",
            "Lexpo/modules/fetch/ResponseState;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/fetch/NativeResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/fetch/NativeResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/fetch/NativeResponse;->Companion:Lexpo/modules/fetch/NativeResponse$Companion;

    .line 203
    const-class v0, Lexpo/modules/fetch/NativeResponse;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lexpo/modules/fetch/NativeResponse;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lexpo/modules/kotlin/AppContext;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 1
    .param p1, "appContext"    # Lexpo/modules/kotlin/AppContext;
    .param p2, "coroutineScope"    # Lkotlinx/coroutines/CoroutineScope;

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1}, Lexpo/modules/kotlin/sharedobjects/SharedObject;-><init>(Lexpo/modules/kotlin/AppContext;)V

    .line 18
    iput-object p2, p0, Lexpo/modules/fetch/NativeResponse;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 20
    new-instance v0, Lexpo/modules/fetch/ResponseSink;

    invoke-direct {v0}, Lexpo/modules/fetch/ResponseSink;-><init>()V

    iput-object v0, p0, Lexpo/modules/fetch/NativeResponse;->sink:Lexpo/modules/fetch/ResponseSink;

    .line 21
    sget-object v0, Lexpo/modules/fetch/ResponseState;->INITIALIZED:Lexpo/modules/fetch/ResponseState;

    iput-object v0, p0, Lexpo/modules/fetch/NativeResponse;->state:Lexpo/modules/fetch/ResponseState;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lexpo/modules/fetch/NativeResponse;->stateChangeOnceListeners:Ljava/util/List;

    .line 18
    return-void
.end method

.method public static final synthetic access$getState(Lexpo/modules/fetch/NativeResponse;)Lexpo/modules/fetch/ResponseState;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/fetch/NativeResponse;

    .line 18
    invoke-direct {p0}, Lexpo/modules/fetch/NativeResponse;->getState()Lexpo/modules/fetch/ResponseState;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getStateChangeOnceListeners$p(Lexpo/modules/fetch/NativeResponse;)Ljava/util/List;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/fetch/NativeResponse;

    .line 18
    iget-object v0, p0, Lexpo/modules/fetch/NativeResponse;->stateChangeOnceListeners:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$pumpResponseBodyStream(Lexpo/modules/fetch/NativeResponse;Lokio/BufferedSource;)V
    .locals 0
    .param p0, "$this"    # Lexpo/modules/fetch/NativeResponse;
    .param p1, "stream"    # Lokio/BufferedSource;

    .line 18
    invoke-direct {p0, p1}, Lexpo/modules/fetch/NativeResponse;->pumpResponseBodyStream(Lokio/BufferedSource;)V

    return-void
.end method

.method public static final synthetic access$setState(Lexpo/modules/fetch/NativeResponse;Lexpo/modules/fetch/ResponseState;)V
    .locals 0
    .param p0, "$this"    # Lexpo/modules/fetch/NativeResponse;
    .param p1, "value"    # Lexpo/modules/fetch/ResponseState;

    .line 18
    invoke-direct {p0, p1}, Lexpo/modules/fetch/NativeResponse;->setState(Lexpo/modules/fetch/ResponseState;)V

    return-void
.end method

.method private final createResponseInit(Lokhttp3/Response;)Lexpo/modules/fetch/NativeResponseInit;
    .locals 13
    .param p1, "response"    # Lokhttp3/Response;

    .line 156
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v6

    .line 157
    .local v6, "status":I
    invoke-virtual {p1}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v7

    .line 158
    .local v7, "statusText":Ljava/lang/String;
    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 210
    .local v1, "$i$f$map":I
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 211
    .local v4, "$i$f$mapTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 212
    .local v8, "item$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Lkotlin/Pair;

    .local v9, "header":Lkotlin/Pair;
    const/4 v10, 0x0

    .line 159
    .local v10, "$i$a$-map-NativeResponse$createResponseInit$headers$1":I
    invoke-virtual {v9}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v12

    invoke-static {v11, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    .line 212
    .end local v9    # "header":Lkotlin/Pair;
    .end local v10    # "$i$a$-map-NativeResponse$createResponseInit$headers$1":I
    invoke-interface {v2, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 213
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    :cond_0
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$mapTo":I
    check-cast v2, Ljava/util/List;

    .line 210
    nop

    .line 158
    .end local v0    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$map":I
    move-object v1, v2

    .line 161
    .local v1, "headers":Ljava/util/List;
    invoke-virtual {p1}, Lokhttp3/Response;->isRedirect()Z

    move-result v8

    .line 162
    .local v8, "redirected":Z
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v9

    .line 163
    .local v9, "url":Ljava/lang/String;
    new-instance v10, Lexpo/modules/fetch/NativeResponseInit;

    .line 164
    nop

    .line 165
    nop

    .line 166
    nop

    .line 167
    nop

    .line 168
    nop

    .line 163
    move-object v0, v10

    move v2, v6

    move-object v3, v7

    move-object v4, v9

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lexpo/modules/fetch/NativeResponseInit;-><init>(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Z)V

    return-object v10
.end method

.method private final getState()Lexpo/modules/fetch/ResponseState;
    .locals 2

    .line 22
    monitor-enter p0

    .line 209
    const/4 v0, 0x0

    .line 22
    .local v0, "$i$a$-synchronized-NativeResponse$state$1":I
    :try_start_0
    iget-object v1, p0, Lexpo/modules/fetch/NativeResponse;->state:Lexpo/modules/fetch/ResponseState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "$i$a$-synchronized-NativeResponse$state$1":I
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final varargs isInvalidState([Lexpo/modules/fetch/ResponseState;)Z
    .locals 10
    .param p1, "validStates"    # [Lexpo/modules/fetch/ResponseState;

    .line 146
    invoke-direct {p0}, Lexpo/modules/fetch/NativeResponse;->getState()Lexpo/modules/fetch/ResponseState;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const/4 v0, 0x0

    return v0

    .line 150
    :cond_0
    const-string v0, ","

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    sget-object v0, Lexpo/modules/fetch/NativeResponse$isInvalidState$validStatesString$1;->INSTANCE:Lexpo/modules/fetch/NativeResponse$isInvalidState$validStatesString$1;

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function1;

    const/16 v8, 0x1e

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v9}, Lkotlin/collections/ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "validStatesString":Ljava/lang/String;
    sget-object v1, Lexpo/modules/fetch/NativeResponse;->TAG:Ljava/lang/String;

    invoke-direct {p0}, Lexpo/modules/fetch/NativeResponse;->getState()Lexpo/modules/fetch/ResponseState;

    move-result-object v2

    invoke-virtual {v2}, Lexpo/modules/fetch/ResponseState;->getIntValue()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid state - currentState["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] validStates["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/4 v1, 0x1

    return v1
.end method

.method private final pumpResponseBodyStream(Lokio/BufferedSource;)V
    .locals 3
    .param p1, "stream"    # Lokio/BufferedSource;

    .line 173
    nop

    .line 174
    :goto_0
    :try_start_0
    invoke-interface {p1}, Lokio/BufferedSource;->exhausted()Z

    move-result v0

    if-nez v0, :cond_4

    .line 175
    nop

    .line 176
    const/4 v0, 0x3

    new-array v0, v0, [Lexpo/modules/fetch/ResponseState;

    sget-object v1, Lexpo/modules/fetch/ResponseState;->RESPONSE_RECEIVED:Lexpo/modules/fetch/ResponseState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 177
    sget-object v1, Lexpo/modules/fetch/ResponseState;->BODY_STREAMING_STARTED:Lexpo/modules/fetch/ResponseState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 176
    nop

    .line 178
    sget-object v1, Lexpo/modules/fetch/ResponseState;->BODY_STREAMING_CANCELED:Lexpo/modules/fetch/ResponseState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 176
    nop

    .line 175
    invoke-direct {p0, v0}, Lexpo/modules/fetch/NativeResponse;->isInvalidState([Lexpo/modules/fetch/ResponseState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    goto :goto_1

    .line 183
    :cond_0
    invoke-direct {p0}, Lexpo/modules/fetch/NativeResponse;->getState()Lexpo/modules/fetch/ResponseState;

    move-result-object v0

    sget-object v1, Lexpo/modules/fetch/ResponseState;->RESPONSE_RECEIVED:Lexpo/modules/fetch/ResponseState;

    if-ne v0, v1, :cond_1

    .line 184
    iget-object v0, p0, Lexpo/modules/fetch/NativeResponse;->sink:Lexpo/modules/fetch/ResponseSink;

    invoke-interface {p1}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    move-result-object v1

    invoke-virtual {v1}, Lokio/Buffer;->readByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lexpo/modules/fetch/ResponseSink;->appendBufferBody$expo_debug([B)V

    goto :goto_0

    .line 185
    :cond_1
    invoke-direct {p0}, Lexpo/modules/fetch/NativeResponse;->getState()Lexpo/modules/fetch/ResponseState;

    move-result-object v0

    sget-object v1, Lexpo/modules/fetch/ResponseState;->BODY_STREAMING_STARTED:Lexpo/modules/fetch/ResponseState;

    if-ne v0, v1, :cond_2

    .line 186
    const-string v0, "didReceiveResponseData"

    invoke-interface {p1}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    move-result-object v1

    invoke-virtual {v1}, Lokio/Buffer;->readByteArray()[B

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lexpo/modules/fetch/NativeResponse;->emit(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 188
    :cond_2
    goto :goto_1

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/io/IOException;
    move-object v1, v0

    check-cast v1, Ljava/lang/Exception;

    iput-object v1, p0, Lexpo/modules/fetch/NativeResponse;->error:Ljava/lang/Exception;

    .line 193
    invoke-direct {p0}, Lexpo/modules/fetch/NativeResponse;->getState()Lexpo/modules/fetch/ResponseState;

    move-result-object v1

    sget-object v2, Lexpo/modules/fetch/ResponseState;->BODY_STREAMING_STARTED:Lexpo/modules/fetch/ResponseState;

    if-ne v1, v2, :cond_3

    .line 194
    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lexpo/modules/core/logging/LoggerUtilsKt;->localizedMessageWithCauseLocalizedMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "didFailWithError"

    invoke-virtual {p0, v2, v1}, Lexpo/modules/fetch/NativeResponse;->emit(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    :cond_3
    sget-object v1, Lexpo/modules/fetch/ResponseState;->ERROR_RECEIVED:Lexpo/modules/fetch/ResponseState;

    invoke-direct {p0, v1}, Lexpo/modules/fetch/NativeResponse;->setState(Lexpo/modules/fetch/ResponseState;)V

    .line 198
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    :goto_1
    return-void
.end method

.method private final setState(Lexpo/modules/fetch/ResponseState;)V
    .locals 7
    .param p1, "value"    # Lexpo/modules/fetch/ResponseState;

    .line 24
    monitor-enter p0

    const/4 v0, 0x0

    .line 25
    .local v0, "$i$a$-synchronized-NativeResponse$state$2":I
    :try_start_0
    iput-object p1, p0, Lexpo/modules/fetch/NativeResponse;->state:Lexpo/modules/fetch/ResponseState;

    .line 26
    nop

    .end local v0    # "$i$a$-synchronized-NativeResponse$state$2":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    monitor-exit p0

    .line 27
    iget-object v1, p0, Lexpo/modules/fetch/NativeResponse;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lexpo/modules/fetch/NativeResponse$state$3;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lexpo/modules/fetch/NativeResponse$state$3;-><init>(Lexpo/modules/fetch/NativeResponse;Lexpo/modules/fetch/ResponseState;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 30
    return-void

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final cancelStreaming()V
    .locals 3

    .line 69
    const/4 v0, 0x1

    new-array v0, v0, [Lexpo/modules/fetch/ResponseState;

    const/4 v1, 0x0

    sget-object v2, Lexpo/modules/fetch/ResponseState;->BODY_STREAMING_STARTED:Lexpo/modules/fetch/ResponseState;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lexpo/modules/fetch/NativeResponse;->isInvalidState([Lexpo/modules/fetch/ResponseState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    return-void

    .line 72
    :cond_0
    sget-object v0, Lexpo/modules/fetch/ResponseState;->BODY_STREAMING_CANCELED:Lexpo/modules/fetch/ResponseState;

    invoke-direct {p0, v0}, Lexpo/modules/fetch/NativeResponse;->setState(Lexpo/modules/fetch/ResponseState;)V

    .line 73
    return-void
.end method

.method public deallocate()V
    .locals 1

    .line 42
    iget-object v0, p0, Lexpo/modules/fetch/NativeResponse;->sink:Lexpo/modules/fetch/ResponseSink;

    invoke-virtual {v0}, Lexpo/modules/fetch/ResponseSink;->finalize()[B

    .line 43
    invoke-super {p0}, Lexpo/modules/kotlin/sharedobjects/SharedObject;->deallocate()V

    .line 44
    return-void
.end method

.method public final emitRequestCanceled()V
    .locals 3

    .line 76
    new-instance v0, Lexpo/modules/fetch/FetchRequestCanceledException;

    invoke-direct {v0}, Lexpo/modules/fetch/FetchRequestCanceledException;-><init>()V

    .line 77
    .local v0, "error":Lexpo/modules/fetch/FetchRequestCanceledException;
    move-object v1, v0

    check-cast v1, Ljava/lang/Exception;

    iput-object v1, p0, Lexpo/modules/fetch/NativeResponse;->error:Ljava/lang/Exception;

    .line 78
    invoke-direct {p0}, Lexpo/modules/fetch/NativeResponse;->getState()Lexpo/modules/fetch/ResponseState;

    move-result-object v1

    sget-object v2, Lexpo/modules/fetch/ResponseState;->BODY_STREAMING_STARTED:Lexpo/modules/fetch/ResponseState;

    if-ne v1, v2, :cond_0

    .line 79
    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lexpo/modules/core/logging/LoggerUtilsKt;->localizedMessageWithCauseLocalizedMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "didFailWithError"

    invoke-virtual {p0, v2, v1}, Lexpo/modules/fetch/NativeResponse;->emit(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    :cond_0
    sget-object v1, Lexpo/modules/fetch/ResponseState;->ERROR_RECEIVED:Lexpo/modules/fetch/ResponseState;

    invoke-direct {p0, v1}, Lexpo/modules/fetch/NativeResponse;->setState(Lexpo/modules/fetch/ResponseState;)V

    .line 82
    return-void
.end method

.method public final getBodyUsed()Z
    .locals 1

    .line 39
    iget-object v0, p0, Lexpo/modules/fetch/NativeResponse;->sink:Lexpo/modules/fetch/ResponseSink;

    invoke-virtual {v0}, Lexpo/modules/fetch/ResponseSink;->getBodyUsed()Z

    move-result v0

    return v0
.end method

.method public final getError()Ljava/lang/Exception;
    .locals 1

    .line 35
    iget-object v0, p0, Lexpo/modules/fetch/NativeResponse;->error:Ljava/lang/Exception;

    return-object v0
.end method

.method public final getResponseInit()Lexpo/modules/fetch/NativeResponseInit;
    .locals 1

    .line 33
    iget-object v0, p0, Lexpo/modules/fetch/NativeResponse;->responseInit:Lexpo/modules/fetch/NativeResponseInit;

    return-object v0
.end method

.method public final getSink()Lexpo/modules/fetch/ResponseSink;
    .locals 1

    .line 20
    iget-object v0, p0, Lexpo/modules/fetch/NativeResponse;->sink:Lexpo/modules/fetch/ResponseSink;

    return-object v0
.end method

.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 4
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "e"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Canceled"

    if-ne v0, v1, :cond_0

    .line 103
    return-void

    .line 106
    :cond_0
    nop

    .line 107
    const/4 v0, 0x4

    new-array v0, v0, [Lexpo/modules/fetch/ResponseState;

    sget-object v1, Lexpo/modules/fetch/ResponseState;->STARTED:Lexpo/modules/fetch/ResponseState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 108
    sget-object v1, Lexpo/modules/fetch/ResponseState;->RESPONSE_RECEIVED:Lexpo/modules/fetch/ResponseState;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 107
    nop

    .line 109
    sget-object v1, Lexpo/modules/fetch/ResponseState;->BODY_STREAMING_STARTED:Lexpo/modules/fetch/ResponseState;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 107
    nop

    .line 110
    sget-object v1, Lexpo/modules/fetch/ResponseState;->BODY_STREAMING_CANCELED:Lexpo/modules/fetch/ResponseState;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    .line 107
    nop

    .line 106
    invoke-direct {p0, v0}, Lexpo/modules/fetch/NativeResponse;->isInvalidState([Lexpo/modules/fetch/ResponseState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    return-void

    .line 116
    :cond_1
    invoke-direct {p0}, Lexpo/modules/fetch/NativeResponse;->getState()Lexpo/modules/fetch/ResponseState;

    move-result-object v0

    sget-object v1, Lexpo/modules/fetch/ResponseState;->BODY_STREAMING_STARTED:Lexpo/modules/fetch/ResponseState;

    if-ne v0, v1, :cond_2

    .line 117
    move-object v0, p2

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lexpo/modules/core/logging/LoggerUtilsKt;->localizedMessageWithCauseLocalizedMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "didFailWithError"

    invoke-virtual {p0, v1, v0}, Lexpo/modules/fetch/NativeResponse;->emit(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    :cond_2
    move-object v0, p2

    check-cast v0, Ljava/lang/Exception;

    iput-object v0, p0, Lexpo/modules/fetch/NativeResponse;->error:Ljava/lang/Exception;

    .line 120
    sget-object v0, Lexpo/modules/fetch/ResponseState;->ERROR_RECEIVED:Lexpo/modules/fetch/ResponseState;

    invoke-direct {p0, v0}, Lexpo/modules/fetch/NativeResponse;->setState(Lexpo/modules/fetch/ResponseState;)V

    .line 121
    const-string v0, "readyForJSFinalization"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lexpo/modules/fetch/NativeResponse;->emit(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 7
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-direct {p0, p2}, Lexpo/modules/fetch/NativeResponse;->createResponseInit(Lokhttp3/Response;)Lexpo/modules/fetch/NativeResponseInit;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/fetch/NativeResponse;->responseInit:Lexpo/modules/fetch/NativeResponseInit;

    .line 126
    sget-object v0, Lexpo/modules/fetch/ResponseState;->RESPONSE_RECEIVED:Lexpo/modules/fetch/ResponseState;

    invoke-direct {p0, v0}, Lexpo/modules/fetch/NativeResponse;->setState(Lexpo/modules/fetch/ResponseState;)V

    .line 128
    iget-object v1, p0, Lexpo/modules/fetch/NativeResponse;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lexpo/modules/fetch/NativeResponse$onResponse$1;

    const/4 v3, 0x0

    invoke-direct {v0, p2, p0, v3}, Lexpo/modules/fetch/NativeResponse$onResponse$1;-><init>(Lokhttp3/Response;Lexpo/modules/fetch/NativeResponse;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 139
    return-void
.end method

.method public final onStarted()V
    .locals 3

    .line 47
    const/4 v0, 0x1

    new-array v0, v0, [Lexpo/modules/fetch/ResponseState;

    const/4 v1, 0x0

    sget-object v2, Lexpo/modules/fetch/ResponseState;->INITIALIZED:Lexpo/modules/fetch/ResponseState;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lexpo/modules/fetch/NativeResponse;->isInvalidState([Lexpo/modules/fetch/ResponseState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    return-void

    .line 50
    :cond_0
    sget-object v0, Lexpo/modules/fetch/ResponseState;->STARTED:Lexpo/modules/fetch/ResponseState;

    invoke-direct {p0, v0}, Lexpo/modules/fetch/NativeResponse;->setState(Lexpo/modules/fetch/ResponseState;)V

    .line 51
    return-void
.end method

.method public final startStreaming()[B
    .locals 4

    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [Lexpo/modules/fetch/ResponseState;

    const/4 v1, 0x0

    sget-object v2, Lexpo/modules/fetch/ResponseState;->RESPONSE_RECEIVED:Lexpo/modules/fetch/ResponseState;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lexpo/modules/fetch/ResponseState;->BODY_COMPLETED:Lexpo/modules/fetch/ResponseState;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lexpo/modules/fetch/NativeResponse;->isInvalidState([Lexpo/modules/fetch/ResponseState;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 55
    return-object v1

    .line 57
    :cond_0
    invoke-direct {p0}, Lexpo/modules/fetch/NativeResponse;->getState()Lexpo/modules/fetch/ResponseState;

    move-result-object v0

    sget-object v2, Lexpo/modules/fetch/ResponseState;->RESPONSE_RECEIVED:Lexpo/modules/fetch/ResponseState;

    if-ne v0, v2, :cond_1

    .line 58
    sget-object v0, Lexpo/modules/fetch/ResponseState;->BODY_STREAMING_STARTED:Lexpo/modules/fetch/ResponseState;

    invoke-direct {p0, v0}, Lexpo/modules/fetch/NativeResponse;->setState(Lexpo/modules/fetch/ResponseState;)V

    .line 59
    iget-object v0, p0, Lexpo/modules/fetch/NativeResponse;->sink:Lexpo/modules/fetch/ResponseSink;

    invoke-virtual {v0}, Lexpo/modules/fetch/ResponseSink;->finalize()[B

    move-result-object v0

    .line 60
    .local v0, "queuedData":[B
    const-string v2, "didReceiveResponseData"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lexpo/modules/fetch/NativeResponse;->emit(Ljava/lang/String;[Ljava/lang/Object;)V

    .end local v0    # "queuedData":[B
    goto :goto_0

    .line 61
    :cond_1
    invoke-direct {p0}, Lexpo/modules/fetch/NativeResponse;->getState()Lexpo/modules/fetch/ResponseState;

    move-result-object v0

    sget-object v2, Lexpo/modules/fetch/ResponseState;->BODY_COMPLETED:Lexpo/modules/fetch/ResponseState;

    if-ne v0, v2, :cond_2

    .line 62
    iget-object v0, p0, Lexpo/modules/fetch/NativeResponse;->sink:Lexpo/modules/fetch/ResponseSink;

    invoke-virtual {v0}, Lexpo/modules/fetch/ResponseSink;->finalize()[B

    move-result-object v0

    .line 63
    .restart local v0    # "queuedData":[B
    return-object v0

    .line 65
    .end local v0    # "queuedData":[B
    :cond_2
    :goto_0
    return-object v1
.end method

.method public final waitForStates(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1, "states"    # Ljava/util/List;
    .param p2, "callback"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lexpo/modules/fetch/ResponseState;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lexpo/modules/fetch/ResponseState;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "states"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-direct {p0}, Lexpo/modules/fetch/NativeResponse;->getState()Lexpo/modules/fetch/ResponseState;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-direct {p0}, Lexpo/modules/fetch/NativeResponse;->getState()Lexpo/modules/fetch/ResponseState;

    move-result-object v0

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lexpo/modules/fetch/NativeResponse;->stateChangeOnceListeners:Ljava/util/List;

    new-instance v1, Lexpo/modules/fetch/NativeResponse$waitForStates$1;

    invoke-direct {v1, p1, p2}, Lexpo/modules/fetch/NativeResponse$waitForStates$1;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    return-void
.end method
