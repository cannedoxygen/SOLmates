.class public Lexpo/modules/notifications/notifications/NotificationManager;
.super Ljava/lang/Object;
.source "NotificationManager.java"

# interfaces
.implements Lexpo/modules/core/interfaces/SingletonModule;
.implements Lexpo/modules/notifications/notifications/interfaces/NotificationManager;


# static fields
.field private static final SINGLETON_NAME:Ljava/lang/String; = "NotificationManager"


# instance fields
.field private mListenerReferenceMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lexpo/modules/notifications/notifications/interfaces/NotificationListener;",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/notifications/notifications/interfaces/NotificationListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPendingNotificationResponses:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lexpo/modules/notifications/notifications/model/NotificationResponse;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingNotificationResponsesFromExtras:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lexpo/modules/notifications/notifications/NotificationManager;->mPendingNotificationResponses:Ljava/util/Collection;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lexpo/modules/notifications/notifications/NotificationManager;->mPendingNotificationResponsesFromExtras:Ljava/util/Collection;

    .line 31
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lexpo/modules/notifications/notifications/NotificationManager;->mListenerReferenceMap:Ljava/util/WeakHashMap;

    .line 39
    sget-object v0, Lexpo/modules/notifications/service/delegates/ExpoHandlingDelegate;->Companion:Lexpo/modules/notifications/service/delegates/ExpoHandlingDelegate$Companion;

    invoke-virtual {v0, p0}, Lexpo/modules/notifications/service/delegates/ExpoHandlingDelegate$Companion;->addListener(Lexpo/modules/notifications/notifications/NotificationManager;)V

    .line 40
    return-void
.end method


# virtual methods
.method public addListener(Lexpo/modules/notifications/notifications/interfaces/NotificationListener;)V
    .locals 3
    .param p1, "listener"    # Lexpo/modules/notifications/notifications/interfaces/NotificationListener;

    .line 56
    iget-object v0, p0, Lexpo/modules/notifications/notifications/NotificationManager;->mListenerReferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 58
    .local v0, "listenerReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lexpo/modules/notifications/notifications/interfaces/NotificationListener;>;"
    iget-object v1, p0, Lexpo/modules/notifications/notifications/NotificationManager;->mListenerReferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v1, p0, Lexpo/modules/notifications/notifications/NotificationManager;->mPendingNotificationResponses:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    iget-object v1, p0, Lexpo/modules/notifications/notifications/NotificationManager;->mPendingNotificationResponses:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/notifications/notifications/model/NotificationResponse;

    .line 61
    .local v2, "pendingResponse":Lexpo/modules/notifications/notifications/model/NotificationResponse;
    invoke-interface {p1, v2}, Lexpo/modules/notifications/notifications/interfaces/NotificationListener;->onNotificationResponseReceived(Lexpo/modules/notifications/notifications/model/NotificationResponse;)Z

    .line 62
    .end local v2    # "pendingResponse":Lexpo/modules/notifications/notifications/model/NotificationResponse;
    goto :goto_0

    .line 64
    :cond_0
    iget-object v1, p0, Lexpo/modules/notifications/notifications/NotificationManager;->mPendingNotificationResponsesFromExtras:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 65
    iget-object v1, p0, Lexpo/modules/notifications/notifications/NotificationManager;->mPendingNotificationResponsesFromExtras:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 66
    .local v2, "extras":Landroid/os/Bundle;
    invoke-interface {p1, v2}, Lexpo/modules/notifications/notifications/interfaces/NotificationListener;->onNotificationResponseIntentReceived(Landroid/os/Bundle;)V

    .line 67
    .end local v2    # "extras":Landroid/os/Bundle;
    goto :goto_1

    .line 70
    .end local v0    # "listenerReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lexpo/modules/notifications/notifications/interfaces/NotificationListener;>;"
    :cond_1
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 44
    const-string v0, "NotificationManager"

    return-object v0
.end method

.method public onNotificationReceived(Lexpo/modules/notifications/notifications/model/Notification;)V
    .locals 3
    .param p1, "notification"    # Lexpo/modules/notifications/notifications/model/Notification;

    .line 95
    iget-object v0, p0, Lexpo/modules/notifications/notifications/NotificationManager;->mListenerReferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 96
    .local v1, "listenerReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lexpo/modules/notifications/notifications/interfaces/NotificationListener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/notifications/notifications/interfaces/NotificationListener;

    .line 97
    .local v2, "listener":Lexpo/modules/notifications/notifications/interfaces/NotificationListener;
    if-eqz v2, :cond_0

    .line 98
    invoke-interface {v2, p1}, Lexpo/modules/notifications/notifications/interfaces/NotificationListener;->onNotificationReceived(Lexpo/modules/notifications/notifications/model/Notification;)V

    .line 100
    .end local v1    # "listenerReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lexpo/modules/notifications/notifications/interfaces/NotificationListener;>;"
    .end local v2    # "listener":Lexpo/modules/notifications/notifications/interfaces/NotificationListener;
    :cond_0
    goto :goto_0

    .line 101
    :cond_1
    return-void
.end method

.method public onNotificationResponseFromExtras(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 144
    iget-object v0, p0, Lexpo/modules/notifications/notifications/NotificationManager;->mListenerReferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 145
    iget-object v0, p0, Lexpo/modules/notifications/notifications/NotificationManager;->mListenerReferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 146
    .local v1, "listenerReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lexpo/modules/notifications/notifications/interfaces/NotificationListener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/notifications/notifications/interfaces/NotificationListener;

    .line 147
    .local v2, "listener":Lexpo/modules/notifications/notifications/interfaces/NotificationListener;
    if-eqz v2, :cond_0

    .line 148
    invoke-interface {v2, p1}, Lexpo/modules/notifications/notifications/interfaces/NotificationListener;->onNotificationResponseIntentReceived(Landroid/os/Bundle;)V

    .line 150
    .end local v1    # "listenerReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lexpo/modules/notifications/notifications/interfaces/NotificationListener;>;"
    .end local v2    # "listener":Lexpo/modules/notifications/notifications/interfaces/NotificationListener;
    :cond_0
    goto :goto_0

    :cond_1
    goto :goto_1

    .line 155
    :cond_2
    iget-object v0, p0, Lexpo/modules/notifications/notifications/NotificationManager;->mPendingNotificationResponsesFromExtras:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 156
    iget-object v0, p0, Lexpo/modules/notifications/notifications/NotificationManager;->mPendingNotificationResponsesFromExtras:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_3
    :goto_1
    return-void
.end method

.method public onNotificationResponseReceived(Lexpo/modules/notifications/notifications/model/NotificationResponse;)V
    .locals 3
    .param p1, "response"    # Lexpo/modules/notifications/notifications/model/NotificationResponse;

    .line 111
    iget-object v0, p0, Lexpo/modules/notifications/notifications/NotificationManager;->mListenerReferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lexpo/modules/notifications/notifications/NotificationManager;->mPendingNotificationResponses:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 114
    :cond_0
    iget-object v0, p0, Lexpo/modules/notifications/notifications/NotificationManager;->mListenerReferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 115
    .local v1, "listenerReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lexpo/modules/notifications/notifications/interfaces/NotificationListener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/notifications/notifications/interfaces/NotificationListener;

    .line 116
    .local v2, "listener":Lexpo/modules/notifications/notifications/interfaces/NotificationListener;
    if-eqz v2, :cond_1

    .line 117
    invoke-interface {v2, p1}, Lexpo/modules/notifications/notifications/interfaces/NotificationListener;->onNotificationResponseReceived(Lexpo/modules/notifications/notifications/model/NotificationResponse;)Z

    .line 119
    .end local v1    # "listenerReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lexpo/modules/notifications/notifications/interfaces/NotificationListener;>;"
    .end local v2    # "listener":Lexpo/modules/notifications/notifications/interfaces/NotificationListener;
    :cond_1
    goto :goto_0

    .line 121
    :cond_2
    :goto_1
    return-void
.end method

.method public onNotificationsDropped()V
    .locals 3

    .line 129
    iget-object v0, p0, Lexpo/modules/notifications/notifications/NotificationManager;->mListenerReferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 130
    .local v1, "listenerReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lexpo/modules/notifications/notifications/interfaces/NotificationListener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/notifications/notifications/interfaces/NotificationListener;

    .line 131
    .local v2, "listener":Lexpo/modules/notifications/notifications/interfaces/NotificationListener;
    if-eqz v2, :cond_0

    .line 132
    invoke-interface {v2}, Lexpo/modules/notifications/notifications/interfaces/NotificationListener;->onNotificationsDropped()V

    .line 134
    .end local v1    # "listenerReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lexpo/modules/notifications/notifications/interfaces/NotificationListener;>;"
    .end local v2    # "listener":Lexpo/modules/notifications/notifications/interfaces/NotificationListener;
    :cond_0
    goto :goto_0

    .line 135
    :cond_1
    return-void
.end method

.method public removeListener(Lexpo/modules/notifications/notifications/interfaces/NotificationListener;)V
    .locals 1
    .param p1, "listener"    # Lexpo/modules/notifications/notifications/interfaces/NotificationListener;

    .line 80
    iget-object v0, p0, Lexpo/modules/notifications/notifications/NotificationManager;->mListenerReferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    return-void
.end method
