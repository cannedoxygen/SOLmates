.class public Lexpo/modules/notifications/tokens/PushTokenManager;
.super Ljava/lang/Object;
.source "PushTokenManager.java"

# interfaces
.implements Lexpo/modules/core/interfaces/SingletonModule;
.implements Lexpo/modules/notifications/tokens/interfaces/FirebaseTokenListener;
.implements Lexpo/modules/notifications/tokens/interfaces/PushTokenManager;


# static fields
.field private static final SINGLETON_NAME:Ljava/lang/String; = "PushTokenManager"


# instance fields
.field private mLastToken:Ljava/lang/String;

.field private mListenerReferenceMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lexpo/modules/notifications/tokens/interfaces/PushTokenListener;",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/notifications/tokens/interfaces/PushTokenListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lexpo/modules/notifications/tokens/PushTokenManager;->mListenerReferenceMap:Ljava/util/WeakHashMap;

    .line 32
    invoke-static {p0}, Lexpo/modules/notifications/service/delegates/FirebaseMessagingDelegate;->addTokenListener(Lexpo/modules/notifications/tokens/interfaces/FirebaseTokenListener;)V

    .line 33
    return-void
.end method


# virtual methods
.method public addListener(Lexpo/modules/notifications/tokens/interfaces/PushTokenListener;)V
    .locals 2
    .param p1, "listener"    # Lexpo/modules/notifications/tokens/interfaces/PushTokenListener;

    .line 49
    iget-object v0, p0, Lexpo/modules/notifications/tokens/PushTokenManager;->mListenerReferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 51
    .local v0, "listenerReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lexpo/modules/notifications/tokens/interfaces/PushTokenListener;>;"
    iget-object v1, p0, Lexpo/modules/notifications/tokens/PushTokenManager;->mListenerReferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v1, p0, Lexpo/modules/notifications/tokens/PushTokenManager;->mLastToken:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 54
    iget-object v1, p0, Lexpo/modules/notifications/tokens/PushTokenManager;->mLastToken:Ljava/lang/String;

    invoke-interface {p1, v1}, Lexpo/modules/notifications/tokens/interfaces/PushTokenListener;->onNewToken(Ljava/lang/String;)V

    .line 57
    .end local v0    # "listenerReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lexpo/modules/notifications/tokens/interfaces/PushTokenListener;>;"
    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 37
    const-string v0, "PushTokenManager"

    return-object v0
.end method

.method public onNewToken(Ljava/lang/String;)V
    .locals 3
    .param p1, "token"    # Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lexpo/modules/notifications/tokens/PushTokenManager;->mListenerReferenceMap:Ljava/util/WeakHashMap;

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

    .line 80
    .local v1, "listenerReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lexpo/modules/notifications/tokens/interfaces/PushTokenListener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/notifications/tokens/interfaces/PushTokenListener;

    .line 81
    .local v2, "listener":Lexpo/modules/notifications/tokens/interfaces/PushTokenListener;
    if-eqz v2, :cond_0

    .line 82
    invoke-interface {v2, p1}, Lexpo/modules/notifications/tokens/interfaces/PushTokenListener;->onNewToken(Ljava/lang/String;)V

    .line 84
    .end local v1    # "listenerReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lexpo/modules/notifications/tokens/interfaces/PushTokenListener;>;"
    .end local v2    # "listener":Lexpo/modules/notifications/tokens/interfaces/PushTokenListener;
    :cond_0
    goto :goto_0

    .line 86
    :cond_1
    iput-object p1, p0, Lexpo/modules/notifications/tokens/PushTokenManager;->mLastToken:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public removeListener(Lexpo/modules/notifications/tokens/interfaces/PushTokenListener;)V
    .locals 1
    .param p1, "listener"    # Lexpo/modules/notifications/tokens/interfaces/PushTokenListener;

    .line 67
    iget-object v0, p0, Lexpo/modules/notifications/tokens/PushTokenManager;->mListenerReferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method
