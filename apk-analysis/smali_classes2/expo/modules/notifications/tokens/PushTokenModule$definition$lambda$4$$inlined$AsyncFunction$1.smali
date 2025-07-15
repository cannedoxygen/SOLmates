.class public final Lexpo/modules/notifications/tokens/PushTokenModule$definition$lambda$4$$inlined$AsyncFunction$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ObjectDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/notifications/tokens/PushTokenModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
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
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$5\n+ 2 PushTokenModule.kt\nexpo/modules/notifications/tokens/PushTokenModule\n*L\n1#1,611:1\n47#2,3:612\n63#2:615\n*E\n"
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
.field final synthetic $this_ModuleDefinition$inlined:Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

.field final synthetic this$0:Lexpo/modules/notifications/tokens/PushTokenModule;


# direct methods
.method public constructor <init>(Lexpo/modules/notifications/tokens/PushTokenModule;Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/notifications/tokens/PushTokenModule$definition$lambda$4$$inlined$AsyncFunction$1;->this$0:Lexpo/modules/notifications/tokens/PushTokenModule;

    iput-object p2, p0, Lexpo/modules/notifications/tokens/PushTokenModule$definition$lambda$4$$inlined$AsyncFunction$1;->$this_ModuleDefinition$inlined:Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

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

    invoke-virtual {p0, v0, v1}, Lexpo/modules/notifications/tokens/PushTokenModule$definition$lambda$4$$inlined$AsyncFunction$1;->invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V

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
    .local v0, "$i$a$-AsyncFunction-PushTokenModule$definition$1$3":I
    iget-object v1, p0, Lexpo/modules/notifications/tokens/PushTokenModule$definition$lambda$4$$inlined$AsyncFunction$1;->this$0:Lexpo/modules/notifications/tokens/PushTokenModule;

    invoke-static {v1, p1}, Lexpo/modules/notifications/tokens/PushTokenModule;->access$getFirebaseMessagingInstance(Lexpo/modules/notifications/tokens/PushTokenModule;Lexpo/modules/kotlin/Promise;)Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 613
    .local v1, "instance":Lcom/google/firebase/messaging/FirebaseMessaging;
    :cond_0
    invoke-virtual {v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->getToken()Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    .line 614
    new-instance v3, Lexpo/modules/notifications/tokens/PushTokenModule$definition$1$3$1;

    iget-object v4, p0, Lexpo/modules/notifications/tokens/PushTokenModule$definition$lambda$4$$inlined$AsyncFunction$1;->$this_ModuleDefinition$inlined:Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    iget-object v5, p0, Lexpo/modules/notifications/tokens/PushTokenModule$definition$lambda$4$$inlined$AsyncFunction$1;->this$0:Lexpo/modules/notifications/tokens/PushTokenModule;

    invoke-direct {v3, p1, v4, v5}, Lexpo/modules/notifications/tokens/PushTokenModule$definition$1$3$1;-><init>(Lexpo/modules/kotlin/Promise;Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;Lexpo/modules/notifications/tokens/PushTokenModule;)V

    check-cast v3, Lcom/google/android/gms/tasks/OnCompleteListener;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 615
    nop

    .line 244
    .end local v0    # "$i$a$-AsyncFunction-PushTokenModule$definition$1$3":I
    .end local v1    # "instance":Lcom/google/firebase/messaging/FirebaseMessaging;
    .end local p1    # "promise":Lexpo/modules/kotlin/Promise;
    :goto_0
    return-void
.end method
