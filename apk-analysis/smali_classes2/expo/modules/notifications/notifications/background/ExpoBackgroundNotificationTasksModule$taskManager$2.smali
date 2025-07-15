.class final Lexpo/modules/notifications/notifications/background/ExpoBackgroundNotificationTasksModule$taskManager$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ExpoBackgroundNotificationTasksModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/notifications/notifications/background/ExpoBackgroundNotificationTasksModule;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lexpo/modules/interfaces/taskManager/TaskManagerInterface;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExpoBackgroundNotificationTasksModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExpoBackgroundNotificationTasksModule.kt\nexpo/modules/notifications/notifications/background/ExpoBackgroundNotificationTasksModule$taskManager$2\n+ 2 AppContext.kt\nexpo/modules/kotlin/AppContext\n*L\n1#1,33:1\n134#2,4:34\n*S KotlinDebug\n*F\n+ 1 ExpoBackgroundNotificationTasksModule.kt\nexpo/modules/notifications/notifications/background/ExpoBackgroundNotificationTasksModule$taskManager$2\n*L\n10#1:34,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lexpo/modules/interfaces/taskManager/TaskManagerInterface;",
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
.field final synthetic this$0:Lexpo/modules/notifications/notifications/background/ExpoBackgroundNotificationTasksModule;


# direct methods
.method constructor <init>(Lexpo/modules/notifications/notifications/background/ExpoBackgroundNotificationTasksModule;)V
    .locals 1

    iput-object p1, p0, Lexpo/modules/notifications/notifications/background/ExpoBackgroundNotificationTasksModule$taskManager$2;->this$0:Lexpo/modules/notifications/notifications/background/ExpoBackgroundNotificationTasksModule;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lexpo/modules/interfaces/taskManager/TaskManagerInterface;
    .locals 4

    .line 10
    iget-object v0, p0, Lexpo/modules/notifications/notifications/background/ExpoBackgroundNotificationTasksModule$taskManager$2;->this$0:Lexpo/modules/notifications/notifications/background/ExpoBackgroundNotificationTasksModule;

    invoke-virtual {v0}, Lexpo/modules/notifications/notifications/background/ExpoBackgroundNotificationTasksModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    .local v0, "this_$iv":Lexpo/modules/kotlin/AppContext;
    const/4 v1, 0x0

    .line 34
    .local v1, "$i$f$legacyModule":I
    nop

    .line 35
    :try_start_0
    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getLegacyModuleRegistry()Lexpo/modules/core/ModuleRegistry;

    move-result-object v2

    const-class v3, Lexpo/modules/interfaces/taskManager/TaskManagerInterface;

    invoke-virtual {v2, v3}, Lexpo/modules/core/ModuleRegistry;->getModule(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 36
    :catch_0
    move-exception v2

    .line 37
    .local v2, "_$iv":Ljava/lang/Exception;
    const/4 v3, 0x0

    move-object v2, v3

    .line 34
    .end local v2    # "_$iv":Ljava/lang/Exception;
    :goto_0
    nop

    .line 10
    .end local v0    # "this_$iv":Lexpo/modules/kotlin/AppContext;
    .end local v1    # "$i$f$legacyModule":I
    check-cast v2, Lexpo/modules/interfaces/taskManager/TaskManagerInterface;

    if-eqz v2, :cond_0

    return-object v2

    .line 11
    :cond_0
    new-instance v0, Lexpo/modules/notifications/ModuleNotFoundException;

    const-class v1, Lexpo/modules/interfaces/taskManager/TaskManagerInterface;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-direct {v0, v1}, Lexpo/modules/notifications/ModuleNotFoundException;-><init>(Lkotlin/reflect/KClass;)V

    throw v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/background/ExpoBackgroundNotificationTasksModule$taskManager$2;->invoke()Lexpo/modules/interfaces/taskManager/TaskManagerInterface;

    move-result-object v0

    return-object v0
.end method
