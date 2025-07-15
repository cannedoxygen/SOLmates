.class public final Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$definition$lambda$2$$inlined$AsyncFunction$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ObjectDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "[",
        "Ljava/lang/Object;",
        "Lexpo/modules/kotlin/Promise;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$5\n+ 2 ExpoNotificationCategoriesModule.kt\nexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule\n*L\n1#1,611:1\n66#2,12:612\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001\"\u0006\u0008\u0001\u0010\u0003\u0018\u00012\u0010\u0010\u0004\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00060\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\n\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "<anonymous>",
        "",
        "R",
        "P0",
        "<anonymous parameter 0>",
        "",
        "",
        "promise",
        "Lexpo/modules/kotlin/Promise;",
        "invoke",
        "([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V",
        "expo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$5"
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
.field final synthetic this$0:Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;


# direct methods
.method public constructor <init>(Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$definition$lambda$2$$inlined$AsyncFunction$1;->this$0:Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 250
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v1, p2

    check-cast v1, Lexpo/modules/kotlin/Promise;

    invoke-virtual {p0, v0, v1}, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$definition$lambda$2$$inlined$AsyncFunction$1;->invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V
    .locals 6
    .param p2, "promise"    # Lexpo/modules/kotlin/Promise;

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "promise"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    move-object p1, p2

    .local p1, "promise":Lexpo/modules/kotlin/Promise;
    const/4 v0, 0x0

    .line 612
    .local v0, "$i$a$-AsyncFunction-ExpoNotificationCategoriesModule$definition$1$1":I
    sget-object v1, Lexpo/modules/notifications/service/NotificationsService;->Companion:Lexpo/modules/notifications/service/NotificationsService$Companion;

    .line 613
    iget-object v2, p0, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$definition$lambda$2$$inlined$AsyncFunction$1;->this$0:Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;

    invoke-static {v2}, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;->access$getContext(Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;)Landroid/content/Context;

    move-result-object v2

    .line 614
    iget-object v3, p0, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$definition$lambda$2$$inlined$AsyncFunction$1;->this$0:Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;

    new-instance v4, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$definition$1$1$1;

    iget-object v5, p0, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$definition$lambda$2$$inlined$AsyncFunction$1;->this$0:Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;

    invoke-direct {v4, p1, v5}, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$definition$1$1$1;-><init>(Lexpo/modules/kotlin/Promise;Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v4}, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;->access$createResultReceiver(Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;Lkotlin/jvm/functions/Function2;)Landroid/os/ResultReceiver;

    move-result-object v3

    .line 612
    invoke-virtual {v1, v2, v3}, Lexpo/modules/notifications/service/NotificationsService$Companion;->getCategories(Landroid/content/Context;Landroid/os/ResultReceiver;)V

    .line 623
    nop

    .line 244
    .end local v0    # "$i$a$-AsyncFunction-ExpoNotificationCategoriesModule$definition$1$1":I
    .end local p1    # "promise":Lexpo/modules/kotlin/Promise;
    return-void
.end method
