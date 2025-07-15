.class public Lexpo/modules/notifications/service/ExpoFirebaseMessagingService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "ExpoFirebaseMessagingService.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u001b\u0010\u0003\u001a\u00020\u00048TX\u0094\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0011"
    }
    d2 = {
        "Lexpo/modules/notifications/service/ExpoFirebaseMessagingService;",
        "Lcom/google/firebase/messaging/FirebaseMessagingService;",
        "()V",
        "firebaseMessagingDelegate",
        "Lexpo/modules/notifications/service/interfaces/FirebaseMessagingDelegate;",
        "getFirebaseMessagingDelegate",
        "()Lexpo/modules/notifications/service/interfaces/FirebaseMessagingDelegate;",
        "firebaseMessagingDelegate$delegate",
        "Lkotlin/Lazy;",
        "onDeletedMessages",
        "",
        "onMessageReceived",
        "remoteMessage",
        "Lcom/google/firebase/messaging/RemoteMessage;",
        "onNewToken",
        "token",
        "",
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


# instance fields
.field private final firebaseMessagingDelegate$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    .line 8
    new-instance v0, Lexpo/modules/notifications/service/ExpoFirebaseMessagingService$firebaseMessagingDelegate$2;

    invoke-direct {v0, p0}, Lexpo/modules/notifications/service/ExpoFirebaseMessagingService$firebaseMessagingDelegate$2;-><init>(Lexpo/modules/notifications/service/ExpoFirebaseMessagingService;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/notifications/service/ExpoFirebaseMessagingService;->firebaseMessagingDelegate$delegate:Lkotlin/Lazy;

    .line 7
    return-void
.end method


# virtual methods
.method protected getFirebaseMessagingDelegate()Lexpo/modules/notifications/service/interfaces/FirebaseMessagingDelegate;
    .locals 1

    .line 8
    iget-object v0, p0, Lexpo/modules/notifications/service/ExpoFirebaseMessagingService;->firebaseMessagingDelegate$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/notifications/service/interfaces/FirebaseMessagingDelegate;

    return-object v0
.end method

.method public onDeletedMessages()V
    .locals 1

    .line 14
    invoke-virtual {p0}, Lexpo/modules/notifications/service/ExpoFirebaseMessagingService;->getFirebaseMessagingDelegate()Lexpo/modules/notifications/service/interfaces/FirebaseMessagingDelegate;

    move-result-object v0

    invoke-interface {v0}, Lexpo/modules/notifications/service/interfaces/FirebaseMessagingDelegate;->onDeletedMessages()V

    return-void
.end method

.method public onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 1
    .param p1, "remoteMessage"    # Lcom/google/firebase/messaging/RemoteMessage;

    const-string v0, "remoteMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lexpo/modules/notifications/service/ExpoFirebaseMessagingService;->getFirebaseMessagingDelegate()Lexpo/modules/notifications/service/interfaces/FirebaseMessagingDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lexpo/modules/notifications/service/interfaces/FirebaseMessagingDelegate;->onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V

    return-void
.end method

.method public onNewToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/String;

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lexpo/modules/notifications/service/ExpoFirebaseMessagingService;->getFirebaseMessagingDelegate()Lexpo/modules/notifications/service/interfaces/FirebaseMessagingDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lexpo/modules/notifications/service/interfaces/FirebaseMessagingDelegate;->onNewToken(Ljava/lang/String;)V

    return-void
.end method
