.class public final Lexpo/modules/notifications/service/delegates/ExpoCategoriesDelegate;
.super Ljava/lang/Object;
.source "ExpoCategoriesDelegate.kt"

# interfaces
.implements Lexpo/modules/notifications/service/interfaces/CategoriesDelegate;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u000e\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eH\u0016J\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0011\u001a\u00020\u000fH\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lexpo/modules/notifications/service/delegates/ExpoCategoriesDelegate;",
        "Lexpo/modules/notifications/service/interfaces/CategoriesDelegate;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "getContext",
        "()Landroid/content/Context;",
        "mStore",
        "Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationCategoriesStore;",
        "deleteCategory",
        "",
        "identifier",
        "",
        "getCategories",
        "",
        "Lexpo/modules/notifications/notifications/model/NotificationCategory;",
        "setCategory",
        "category",
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
.field private final context:Landroid/content/Context;

.field private final mStore:Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationCategoriesStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/notifications/service/delegates/ExpoCategoriesDelegate;->context:Landroid/content/Context;

    .line 8
    new-instance v0, Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationCategoriesStore;

    iget-object v1, p0, Lexpo/modules/notifications/service/delegates/ExpoCategoriesDelegate;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationCategoriesStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lexpo/modules/notifications/service/delegates/ExpoCategoriesDelegate;->mStore:Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationCategoriesStore;

    .line 7
    return-void
.end method


# virtual methods
.method public deleteCategory(Ljava/lang/String;)Z
    .locals 1
    .param p1, "identifier"    # Ljava/lang/String;

    const-string v0, "identifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lexpo/modules/notifications/service/delegates/ExpoCategoriesDelegate;->mStore:Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationCategoriesStore;

    invoke-virtual {v0, p1}, Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationCategoriesStore;->removeNotificationCategory(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getCategories()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lexpo/modules/notifications/notifications/model/NotificationCategory;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lexpo/modules/notifications/service/delegates/ExpoCategoriesDelegate;->mStore:Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationCategoriesStore;

    invoke-virtual {v0}, Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationCategoriesStore;->getAllNotificationCategories()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected final getContext()Landroid/content/Context;
    .locals 1

    .line 7
    iget-object v0, p0, Lexpo/modules/notifications/service/delegates/ExpoCategoriesDelegate;->context:Landroid/content/Context;

    return-object v0
.end method

.method public setCategory(Lexpo/modules/notifications/notifications/model/NotificationCategory;)Lexpo/modules/notifications/notifications/model/NotificationCategory;
    .locals 1
    .param p1, "category"    # Lexpo/modules/notifications/notifications/model/NotificationCategory;

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lexpo/modules/notifications/service/delegates/ExpoCategoriesDelegate;->mStore:Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationCategoriesStore;

    invoke-virtual {v0, p1}, Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationCategoriesStore;->saveNotificationCategory(Lexpo/modules/notifications/notifications/model/NotificationCategory;)Lexpo/modules/notifications/notifications/model/NotificationCategory;

    move-result-object v0

    return-object v0
.end method
