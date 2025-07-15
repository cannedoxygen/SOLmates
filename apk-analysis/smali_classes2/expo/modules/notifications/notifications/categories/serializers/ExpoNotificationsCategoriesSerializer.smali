.class public Lexpo/modules/notifications/notifications/categories/serializers/ExpoNotificationsCategoriesSerializer;
.super Ljava/lang/Object;
.source "ExpoNotificationsCategoriesSerializer.java"

# interfaces
.implements Lexpo/modules/notifications/notifications/categories/serializers/NotificationsCategoriesSerializer;
.implements Lexpo/modules/core/interfaces/InternalModule;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private toBundle(Lexpo/modules/notifications/notifications/model/NotificationAction;)Landroid/os/Bundle;
    .locals 5
    .param p1, "action"    # Lexpo/modules/notifications/notifications/model/NotificationAction;

    .line 51
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 52
    .local v0, "serializedActionOptions":Landroid/os/Bundle;
    const-string v1, "opensAppToForeground"

    invoke-virtual {p1}, Lexpo/modules/notifications/notifications/model/NotificationAction;->opensAppToForeground()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 54
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 55
    .local v1, "serializedAction":Landroid/os/Bundle;
    const-string v2, "identifier"

    invoke-virtual {p1}, Lexpo/modules/notifications/notifications/model/NotificationAction;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v2, "buttonTitle"

    invoke-virtual {p1}, Lexpo/modules/notifications/notifications/model/NotificationAction;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v2, "options"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 59
    instance-of v2, p1, Lexpo/modules/notifications/notifications/model/TextInputNotificationAction;

    if-eqz v2, :cond_0

    .line 60
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 61
    .local v2, "serializedTextInputOptions":Landroid/os/Bundle;
    move-object v3, p1

    check-cast v3, Lexpo/modules/notifications/notifications/model/TextInputNotificationAction;

    invoke-virtual {v3}, Lexpo/modules/notifications/notifications/model/TextInputNotificationAction;->getPlaceholder()Ljava/lang/String;

    move-result-object v3

    const-string v4, "placeholder"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v3, "textInput"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 65
    .end local v2    # "serializedTextInputOptions":Landroid/os/Bundle;
    :cond_0
    return-object v1
.end method

.method private toBundleList(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lexpo/modules/notifications/notifications/model/NotificationAction;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 42
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Lexpo/modules/notifications/notifications/model/NotificationAction;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/notifications/notifications/model/NotificationAction;

    .line 44
    .local v2, "action":Lexpo/modules/notifications/notifications/model/NotificationAction;
    invoke-direct {p0, v2}, Lexpo/modules/notifications/notifications/categories/serializers/ExpoNotificationsCategoriesSerializer;->toBundle(Lexpo/modules/notifications/notifications/model/NotificationAction;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .end local v2    # "action":Lexpo/modules/notifications/notifications/model/NotificationAction;
    goto :goto_0

    .line 46
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getExportedInterfaces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .line 20
    const-class v0, Lexpo/modules/notifications/notifications/categories/serializers/NotificationsCategoriesSerializer;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getIdentifier(Lexpo/modules/notifications/notifications/model/NotificationCategory;)Ljava/lang/String;
    .locals 1
    .param p1, "category"    # Lexpo/modules/notifications/notifications/model/NotificationCategory;

    .line 38
    invoke-virtual {p1}, Lexpo/modules/notifications/notifications/model/NotificationCategory;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toBundle(Lexpo/modules/notifications/notifications/model/NotificationCategory;)Landroid/os/Bundle;
    .locals 3
    .param p1, "category"    # Lexpo/modules/notifications/notifications/model/NotificationCategory;

    .line 26
    if-nez p1, :cond_0

    .line 27
    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 30
    .local v0, "serializedCategory":Landroid/os/Bundle;
    const-string v1, "identifier"

    invoke-virtual {p0, p1}, Lexpo/modules/notifications/notifications/categories/serializers/ExpoNotificationsCategoriesSerializer;->getIdentifier(Lexpo/modules/notifications/notifications/model/NotificationCategory;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lexpo/modules/notifications/notifications/model/NotificationCategory;->getActions()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lexpo/modules/notifications/notifications/categories/serializers/ExpoNotificationsCategoriesSerializer;->toBundleList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "actions"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 33
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "options"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 34
    return-object v0
.end method
