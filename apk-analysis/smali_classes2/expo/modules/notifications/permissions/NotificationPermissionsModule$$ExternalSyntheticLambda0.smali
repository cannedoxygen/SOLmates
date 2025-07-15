.class public final synthetic Lexpo/modules/notifications/permissions/NotificationPermissionsModule$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lexpo/modules/interfaces/permissions/PermissionsResponseListener;


# instance fields
.field public final synthetic f$0:Lexpo/modules/notifications/permissions/NotificationPermissionsModule;

.field public final synthetic f$1:Lexpo/modules/kotlin/Promise;


# direct methods
.method public synthetic constructor <init>(Lexpo/modules/notifications/permissions/NotificationPermissionsModule;Lexpo/modules/kotlin/Promise;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/notifications/permissions/NotificationPermissionsModule$$ExternalSyntheticLambda0;->f$0:Lexpo/modules/notifications/permissions/NotificationPermissionsModule;

    iput-object p2, p0, Lexpo/modules/notifications/permissions/NotificationPermissionsModule$$ExternalSyntheticLambda0;->f$1:Lexpo/modules/kotlin/Promise;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/util/Map;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lexpo/modules/notifications/permissions/NotificationPermissionsModule$$ExternalSyntheticLambda0;->f$0:Lexpo/modules/notifications/permissions/NotificationPermissionsModule;

    iget-object v1, p0, Lexpo/modules/notifications/permissions/NotificationPermissionsModule$$ExternalSyntheticLambda0;->f$1:Lexpo/modules/kotlin/Promise;

    invoke-static {v0, v1, p1}, Lexpo/modules/notifications/permissions/NotificationPermissionsModule;->$r8$lambda$ZQhE4zZd0y9Y9ScGTewadeLVMaE(Lexpo/modules/notifications/permissions/NotificationPermissionsModule;Lexpo/modules/kotlin/Promise;Ljava/util/Map;)V

    return-void
.end method
