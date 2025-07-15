.class final Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$serializer$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ExpoNotificationCategoriesModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lexpo/modules/notifications/notifications/categories/serializers/NotificationsCategoriesSerializer;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExpoNotificationCategoriesModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExpoNotificationCategoriesModule.kt\nexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$serializer$2\n+ 2 AppContext.kt\nexpo/modules/kotlin/AppContext\n*L\n1#1,150:1\n134#2,4:151\n*S KotlinDebug\n*F\n+ 1 ExpoNotificationCategoriesModule.kt\nexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$serializer$2\n*L\n55#1:151,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lexpo/modules/notifications/notifications/categories/serializers/NotificationsCategoriesSerializer;",
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
.field final synthetic this$0:Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;


# direct methods
.method constructor <init>(Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;)V
    .locals 1

    iput-object p1, p0, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$serializer$2;->this$0:Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lexpo/modules/notifications/notifications/categories/serializers/NotificationsCategoriesSerializer;
    .locals 4

    .line 55
    iget-object v0, p0, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$serializer$2;->this$0:Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;

    invoke-virtual {v0}, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    .local v0, "this_$iv":Lexpo/modules/kotlin/AppContext;
    const/4 v1, 0x0

    .line 151
    .local v1, "$i$f$legacyModule":I
    nop

    .line 152
    :try_start_0
    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getLegacyModuleRegistry()Lexpo/modules/core/ModuleRegistry;

    move-result-object v2

    const-class v3, Lexpo/modules/notifications/notifications/categories/serializers/NotificationsCategoriesSerializer;

    invoke-virtual {v2, v3}, Lexpo/modules/core/ModuleRegistry;->getModule(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v2

    .line 154
    .local v2, "_$iv":Ljava/lang/Exception;
    const/4 v3, 0x0

    move-object v2, v3

    .line 151
    .end local v2    # "_$iv":Ljava/lang/Exception;
    :goto_0
    nop

    .line 55
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/AppContext;
    .end local v1    # "$i$f$legacyModule":I
    check-cast v2, Lexpo/modules/notifications/notifications/categories/serializers/NotificationsCategoriesSerializer;

    if-eqz v2, :cond_0

    return-object v2

    .line 56
    :cond_0
    new-instance v0, Lexpo/modules/notifications/ModuleNotFoundException;

    const-class v1, Lexpo/modules/notifications/notifications/categories/serializers/NotificationsCategoriesSerializer;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-direct {v0, v1}, Lexpo/modules/notifications/ModuleNotFoundException;-><init>(Lkotlin/reflect/KClass;)V

    throw v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/categories/ExpoNotificationCategoriesModule$serializer$2;->invoke()Lexpo/modules/notifications/notifications/categories/serializers/NotificationsCategoriesSerializer;

    move-result-object v0

    return-object v0
.end method
