.class public final Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate$Companion;
.super Ljava/lang/Object;
.source "FirebaseMessagingDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0005J\u0010\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0012H\u0007R,\u0010\u0003\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00060\u0004X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R*\u0010\u0011\u001a\u0018\u0012\u0004\u0012\u00020\u0012\u0012\u000e\u0012\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0012\u0018\u00010\u00060\u0004X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0008\u00a8\u0006\u0019"
    }
    d2 = {
        "Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate$Companion;",
        "",
        "()V",
        "sBackgroundTaskConsumerReferences",
        "Ljava/util/WeakHashMap;",
        "Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer;",
        "Ljava/lang/ref/WeakReference;",
        "getSBackgroundTaskConsumerReferences",
        "()Ljava/util/WeakHashMap;",
        "setSBackgroundTaskConsumerReferences",
        "(Ljava/util/WeakHashMap;)V",
        "sLastToken",
        "",
        "getSLastToken",
        "()Ljava/lang/String;",
        "setSLastToken",
        "(Ljava/lang/String;)V",
        "sTokenListenersReferences",
        "Lexpo/modules/notifications/tokens/interfaces/FirebaseTokenListener;",
        "getSTokenListenersReferences",
        "addBackgroundTaskConsumer",
        "",
        "taskConsumer",
        "addTokenListener",
        "listener",
        "expo-notifications_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final addBackgroundTaskConsumer(Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer;)V
    .locals 2
    .param p1, "taskConsumer"    # Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer;

    const-string v0, "taskConsumer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate$Companion;->getSBackgroundTaskConsumerReferences()Ljava/util/WeakHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    return-void

    .line 74
    :cond_0
    invoke-virtual {p0}, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate$Companion;->getSBackgroundTaskConsumerReferences()Ljava/util/WeakHashMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-void
.end method

.method public final addTokenListener(Lexpo/modules/notifications/tokens/interfaces/FirebaseTokenListener;)V
    .locals 2
    .param p1, "listener"    # Lexpo/modules/notifications/tokens/interfaces/FirebaseTokenListener;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate$Companion;->getSTokenListenersReferences()Ljava/util/WeakHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate$Companion;->getSTokenListenersReferences()Ljava/util/WeakHashMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-virtual {p0}, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate$Companion;->getSLastToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate$Companion;->getSLastToken()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lexpo/modules/notifications/tokens/interfaces/FirebaseTokenListener;->onNewToken(Ljava/lang/String;)V

    .line 56
    :cond_0
    return-void
.end method

.method protected final getSBackgroundTaskConsumerReferences()Ljava/util/WeakHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap<",
            "Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer;",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer;",
            ">;>;"
        }
    .end annotation

    .line 63
    invoke-static {}, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate;->access$getSBackgroundTaskConsumerReferences$cp()Ljava/util/WeakHashMap;

    move-result-object v0

    return-object v0
.end method

.method protected final getSLastToken()Ljava/lang/String;
    .locals 1

    .line 28
    invoke-static {}, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate;->access$getSLastToken$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getSTokenListenersReferences()Ljava/util/WeakHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap<",
            "Lexpo/modules/notifications/tokens/interfaces/FirebaseTokenListener;",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/notifications/tokens/interfaces/FirebaseTokenListener;",
            ">;>;"
        }
    .end annotation

    .line 34
    invoke-static {}, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate;->access$getSTokenListenersReferences$cp()Ljava/util/WeakHashMap;

    move-result-object v0

    return-object v0
.end method

.method protected final setSBackgroundTaskConsumerReferences(Ljava/util/WeakHashMap;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/WeakHashMap<",
            "Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer;",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/notifications/notifications/background/BackgroundRemoteNotificationTaskConsumer;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-static {p1}, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate;->access$setSBackgroundTaskConsumerReferences$cp(Ljava/util/WeakHashMap;)V

    return-void
.end method

.method protected final setSLastToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 28
    invoke-static {p1}, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate;->access$setSLastToken$cp(Ljava/lang/String;)V

    return-void
.end method
