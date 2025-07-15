.class final Lexpo/modules/notifications/tokens/PushTokenModule$definition$1$3$1;
.super Ljava/lang/Object;
.source "PushTokenModule.kt"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/notifications/tokens/PushTokenModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0014\u0010\u0002\u001a\u0010\u0012\u000c\u0012\n \u0005*\u0004\u0018\u00010\u00040\u00040\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "task",
        "Lcom/google/android/gms/tasks/Task;",
        "",
        "kotlin.jvm.PlatformType",
        "onComplete"
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

.field final synthetic $this_ModuleDefinition:Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

.field final synthetic this$0:Lexpo/modules/notifications/tokens/PushTokenModule;


# direct methods
.method constructor <init>(Lexpo/modules/kotlin/Promise;Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;Lexpo/modules/notifications/tokens/PushTokenModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/notifications/tokens/PushTokenModule$definition$1$3$1;->$promise:Lexpo/modules/kotlin/Promise;

    iput-object p2, p0, Lexpo/modules/notifications/tokens/PushTokenModule$definition$1$3$1;->$this_ModuleDefinition:Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    iput-object p3, p0, Lexpo/modules/notifications/tokens/PushTokenModule$definition$1$3$1;->this$0:Lexpo/modules/notifications/tokens/PushTokenModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 6
    .param p1, "task"    # Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    const-string v1, "E_REGISTRATION_FAILED"

    if-nez v0, :cond_2

    .line 51
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    .line 52
    .local v0, "exception":Ljava/lang/Exception;
    iget-object v2, p0, Lexpo/modules/notifications/tokens/PushTokenModule$definition$1$3$1;->$promise:Lexpo/modules/kotlin/Promise;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    const-string v3, "unknown"

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fetching the token failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    invoke-interface {v2, v1, v3, v4}, Lexpo/modules/kotlin/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    return-void

    .line 55
    .end local v0    # "exception":Ljava/lang/Exception;
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Lexpo/modules/notifications/tokens/PushTokenModule$definition$1$3$1;->$this_ModuleDefinition:Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    .local v0, "$this$onComplete_u24lambda_u240":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    iget-object v2, p0, Lexpo/modules/notifications/tokens/PushTokenModule$definition$1$3$1;->$promise:Lexpo/modules/kotlin/Promise;

    const/4 v3, 0x0

    .line 56
    .local v3, "$i$a$-run-PushTokenModule$definition$1$3$1$token$1":I
    const-string v4, "Fetching the token failed. Invalid token."

    const/4 v5, 0x0

    invoke-interface {v2, v1, v4, v5}, Lexpo/modules/kotlin/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    return-void

    .end local v0    # "$this$onComplete_u24lambda_u240":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v3    # "$i$a$-run-PushTokenModule$definition$1$3$1$token$1":I
    :cond_3
    nop

    .line 60
    .local v0, "token":Ljava/lang/String;
    iget-object v1, p0, Lexpo/modules/notifications/tokens/PushTokenModule$definition$1$3$1;->$promise:Lexpo/modules/kotlin/Promise;

    invoke-interface {v1, v0}, Lexpo/modules/kotlin/Promise;->resolve(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lexpo/modules/notifications/tokens/PushTokenModule$definition$1$3$1;->this$0:Lexpo/modules/notifications/tokens/PushTokenModule;

    invoke-virtual {v1, v0}, Lexpo/modules/notifications/tokens/PushTokenModule;->onNewToken(Ljava/lang/String;)V

    .line 62
    return-void
.end method
