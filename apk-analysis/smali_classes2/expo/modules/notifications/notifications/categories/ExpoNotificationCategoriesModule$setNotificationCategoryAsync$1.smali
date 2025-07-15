.class final Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$setNotificationCategoryAsync$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ExpoNotificationCategoriesModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;->setNotificationCategoryAsync(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Lexpo/modules/kotlin/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Integer;",
        "Landroid/os/Bundle;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "resultCode",
        "",
        "resultData",
        "Landroid/os/Bundle;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $promise:Lexpo/modules/kotlin/Promise;

.field final synthetic this$0:Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;


# direct methods
.method constructor <init>(Lexpo/modules/kotlin/Promise;Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;)V
    .locals 1

    iput-object p1, p0, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$setNotificationCategoryAsync$1;->$promise:Lexpo/modules/kotlin/Promise;

    iput-object p2, p0, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$setNotificationCategoryAsync$1;->this$0:Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 121
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    move-object v1, p2

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {p0, v0, v1}, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$setNotificationCategoryAsync$1;->invoke(ILandroid/os/Bundle;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .line 122
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const-string v1, "notificationCategory"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lexpo/modules/notifications/notifications/model/NotificationCategory;

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 123
    .local v1, "category":Lexpo/modules/notifications/notifications/model/NotificationCategory;
    :goto_0
    if-nez p1, :cond_1

    if-eqz v1, :cond_1

    .line 124
    iget-object v0, p0, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$setNotificationCategoryAsync$1;->$promise:Lexpo/modules/kotlin/Promise;

    iget-object v2, p0, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$setNotificationCategoryAsync$1;->this$0:Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;

    invoke-virtual {v2}, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;->getSerializer()Lexpo/modules/notifications/notifications/categories/serializers/NotificationsCategoriesSerializer;

    move-result-object v2

    invoke-interface {v2, v1}, Lexpo/modules/notifications/notifications/categories/serializers/NotificationsCategoriesSerializer;->toBundle(Lexpo/modules/notifications/notifications/model/NotificationCategory;)Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v0, v2}, Lexpo/modules/kotlin/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_1

    .line 126
    :cond_1
    iget-object v2, p0, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$setNotificationCategoryAsync$1;->$promise:Lexpo/modules/kotlin/Promise;

    const-string v3, "ERR_CATEGORY_SET_FAILED"

    const-string v4, "The provided category could not be set."

    invoke-interface {v2, v3, v4, v0}, Lexpo/modules/kotlin/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    :goto_1
    return-void
.end method
