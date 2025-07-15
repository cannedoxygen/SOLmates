.class final Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule$dismissNotificationAsync$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ExpoNotificationPresentationModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule;->dismissNotificationAsync(Ljava/lang/String;Lexpo/modules/kotlin/Promise;)V
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


# direct methods
.method constructor <init>(Lexpo/modules/kotlin/Promise;)V
    .locals 1

    iput-object p1, p0, Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule$dismissNotificationAsync$1;->$promise:Lexpo/modules/kotlin/Promise;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 77
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    move-object v1, p2

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {p0, v0, v1}, Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule$dismissNotificationAsync$1;->invoke(ILandroid/os/Bundle;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .line 78
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 79
    iget-object v1, p0, Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule$dismissNotificationAsync$1;->$promise:Lexpo/modules/kotlin/Promise;

    invoke-interface {v1, v0}, Lexpo/modules/kotlin/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_1

    .line 81
    :cond_0
    if-eqz p2, :cond_1

    const-string v1, "exception"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    instance-of v2, v1, Ljava/lang/Exception;

    if-eqz v2, :cond_2

    move-object v0, v1

    check-cast v0, Ljava/lang/Exception;

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    :cond_2
    iget-object v1, p0, Lexpo/modules/notifications/notifications/presentation/ExpoNotificationPresentationModule$dismissNotificationAsync$1;->$promise:Lexpo/modules/kotlin/Promise;

    const-string v2, "Notification could not be dismissed."

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    const-string v4, "ERR_NOTIFICATION_DISMISSAL_FAILED"

    invoke-interface {v1, v4, v2, v3}, Lexpo/modules/kotlin/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
