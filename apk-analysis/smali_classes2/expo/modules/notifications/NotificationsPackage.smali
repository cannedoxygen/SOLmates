.class public Lexpo/modules/notifications/NotificationsPackage;
.super Lexpo/modules/core/BasePackage;
.source "NotificationsPackage.java"


# instance fields
.field private mNotificationManager:Lexpo/modules/notifications/notifications/NotificationManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lexpo/modules/core/BasePackage;-><init>()V

    .line 24
    new-instance v0, Lexpo/modules/notifications/notifications/NotificationManager;

    invoke-direct {v0}, Lexpo/modules/notifications/notifications/NotificationManager;-><init>()V

    iput-object v0, p0, Lexpo/modules/notifications/NotificationsPackage;->mNotificationManager:Lexpo/modules/notifications/notifications/NotificationManager;

    .line 25
    return-void
.end method


# virtual methods
.method public createInternalModules(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lexpo/modules/core/interfaces/InternalModule;",
            ">;"
        }
    .end annotation

    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [Lexpo/modules/core/interfaces/InternalModule;

    new-instance v1, Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;

    invoke-direct {v1, p1}, Lexpo/modules/notifications/notifications/channels/AndroidXNotificationsChannelsProvider;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lexpo/modules/notifications/notifications/categories/serializers/ExpoNotificationsCategoriesSerializer;

    invoke-direct {v1}, Lexpo/modules/notifications/notifications/categories/serializers/ExpoNotificationsCategoriesSerializer;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public createReactActivityLifecycleListeners(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .param p1, "activityContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lexpo/modules/core/interfaces/ReactActivityLifecycleListener;",
            ">;"
        }
    .end annotation

    .line 45
    new-instance v0, Lexpo/modules/notifications/service/delegates/ExpoNotificationLifecycleListener;

    iget-object v1, p0, Lexpo/modules/notifications/NotificationsPackage;->mNotificationManager:Lexpo/modules/notifications/notifications/NotificationManager;

    invoke-direct {v0, p1, v1}, Lexpo/modules/notifications/service/delegates/ExpoNotificationLifecycleListener;-><init>(Landroid/content/Context;Lexpo/modules/notifications/notifications/NotificationManager;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public createSingletonModules(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lexpo/modules/core/interfaces/SingletonModule;",
            ">;"
        }
    .end annotation

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Lexpo/modules/core/interfaces/SingletonModule;

    new-instance v1, Lexpo/modules/notifications/tokens/PushTokenManager;

    invoke-direct {v1}, Lexpo/modules/notifications/tokens/PushTokenManager;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v2, p0, Lexpo/modules/notifications/NotificationsPackage;->mNotificationManager:Lexpo/modules/notifications/notifications/NotificationManager;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
