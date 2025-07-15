.class public final Lexpo/modules/notifications/tokens/PushTokenModule$definition$lambda$4$$inlined$AsyncFunction$3;
.super Lkotlin/jvm/internal/Lambda;
.source "ObjectDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


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
        "Lkotlin/jvm/functions/Function1<",
        "[",
        "Ljava/lang/Object;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$6\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 PushTokenModule.kt\nexpo/modules/notifications/tokens/PushTokenModule\n*L\n1#1,611:1\n8#2,4:612\n47#3,3:616\n63#3:619\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$6\n*L\n247#1:612,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0010\u0000\u001a\u0002H\u0001\"\u0006\u0008\u0000\u0010\u0001\u0018\u0001\"\u0006\u0008\u0001\u0010\u0002\u0018\u00012\u0010\u0010\u0003\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00050\u0004H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "<anonymous>",
        "R",
        "P0",
        "<name for destructuring parameter 0>",
        "",
        "",
        "invoke",
        "([Ljava/lang/Object;)Ljava/lang/Object;",
        "expo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$6"
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

    iput-object p1, p0, Lexpo/modules/notifications/tokens/PushTokenModule$definition$lambda$4$$inlined$AsyncFunction$3;->this$0:Lexpo/modules/notifications/tokens/PushTokenModule;

    iput-object p2, p0, Lexpo/modules/notifications/tokens/PushTokenModule$definition$lambda$4$$inlined$AsyncFunction$3;->$this_ModuleDefinition$inlined:Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 246
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lexpo/modules/notifications/tokens/PushTokenModule$definition$lambda$4$$inlined$AsyncFunction$3;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Lkotlin/Unit;"
        }
    .end annotation

    const-string v0, "<name for destructuring parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    const/4 v0, 0x0

    aget-object p1, p1, v0

    .line 247
    .local p1, "p0":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 612
    .local v0, "$i$f$enforceType":I
    nop

    .line 615
    nop

    .line 248
    .end local v0    # "$i$f$enforceType":I
    move-object v0, p1

    check-cast v0, Lexpo/modules/kotlin/Promise;

    .local v0, "promise":Lexpo/modules/kotlin/Promise;
    const/4 v1, 0x0

    .line 616
    .local v1, "$i$a$-AsyncFunction-PushTokenModule$definition$1$3":I
    iget-object v2, p0, Lexpo/modules/notifications/tokens/PushTokenModule$definition$lambda$4$$inlined$AsyncFunction$3;->this$0:Lexpo/modules/notifications/tokens/PushTokenModule;

    invoke-static {v2, v0}, Lexpo/modules/notifications/tokens/PushTokenModule;->access$getFirebaseMessagingInstance(Lexpo/modules/notifications/tokens/PushTokenModule;Lexpo/modules/kotlin/Promise;)Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 617
    .local v2, "instance":Lcom/google/firebase/messaging/FirebaseMessaging;
    :cond_0
    invoke-virtual {v2}, Lcom/google/firebase/messaging/FirebaseMessaging;->getToken()Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    .line 618
    new-instance v4, Lexpo/modules/notifications/tokens/PushTokenModule$definition$1$3$1;

    iget-object v5, p0, Lexpo/modules/notifications/tokens/PushTokenModule$definition$lambda$4$$inlined$AsyncFunction$3;->$this_ModuleDefinition$inlined:Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    iget-object v6, p0, Lexpo/modules/notifications/tokens/PushTokenModule$definition$lambda$4$$inlined$AsyncFunction$3;->this$0:Lexpo/modules/notifications/tokens/PushTokenModule;

    invoke-direct {v4, v0, v5, v6}, Lexpo/modules/notifications/tokens/PushTokenModule$definition$1$3$1;-><init>(Lexpo/modules/kotlin/Promise;Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;Lexpo/modules/notifications/tokens/PushTokenModule;)V

    check-cast v4, Lcom/google/android/gms/tasks/OnCompleteListener;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 619
    nop

    .end local v0    # "promise":Lexpo/modules/kotlin/Promise;
    .end local v1    # "$i$a$-AsyncFunction-PushTokenModule$definition$1$3":I
    .end local v2    # "instance":Lcom/google/firebase/messaging/FirebaseMessaging;
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 248
    return-object v0
.end method
