.class public final Lexpo/modules/notifications/notifications/handling/NotificationsHandler$definition$lambda$3$$inlined$AsyncFunctionWithPromise$3;
.super Lkotlin/jvm/internal/Lambda;
.source "ObjectDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/notifications/notifications/handling/NotificationsHandler;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
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
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$14\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 NotificationsHandler.kt\nexpo/modules/notifications/notifications/handling/NotificationsHandler\n*L\n1#1,611:1\n15#2,4:612\n85#3:616\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$14\n*L\n298#1:612,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001\"\u0006\u0008\u0001\u0010\u0003\u0018\u0001\"\u0006\u0008\u0002\u0010\u0004\u0018\u00012\u0010\u0010\u0005\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00070\u00062\u0006\u0010\u0008\u001a\u00020\tH\n\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "<anonymous>",
        "",
        "R",
        "P0",
        "P1",
        "<name for destructuring parameter 0>",
        "",
        "",
        "promise",
        "Lexpo/modules/kotlin/Promise;",
        "invoke",
        "([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V",
        "expo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$14"
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
.field final synthetic $receiver$inlined:Lexpo/modules/notifications/notifications/handling/NotificationsHandler;


# direct methods
.method public constructor <init>(Lexpo/modules/notifications/notifications/handling/NotificationsHandler;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/notifications/notifications/handling/NotificationsHandler$definition$lambda$3$$inlined$AsyncFunctionWithPromise$3;->$receiver$inlined:Lexpo/modules/notifications/notifications/handling/NotificationsHandler;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 300
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v1, p2

    check-cast v1, Lexpo/modules/kotlin/Promise;

    invoke-virtual {p0, v0, v1}, Lexpo/modules/notifications/notifications/handling/NotificationsHandler$definition$lambda$3$$inlined$AsyncFunctionWithPromise$3;->invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V
    .locals 6
    .param p2, "promise"    # Lexpo/modules/kotlin/Promise;

    const-string v0, "<name for destructuring parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .local v0, "p0":Ljava/lang/Object;
    const/4 v1, 0x1

    aget-object p1, p1, v1

    .line 298
    .local p1, "p1":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 612
    .local v1, "$i$f$enforceType":I
    nop

    .line 615
    nop

    .line 299
    .end local v1    # "$i$f$enforceType":I
    move-object v1, p1

    check-cast v1, Lexpo/modules/notifications/notifications/handling/NotificationBehaviourRecord;

    .local v1, "p1":Lexpo/modules/notifications/notifications/handling/NotificationBehaviourRecord;
    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .local v2, "p0":Ljava/lang/String;
    move-object v3, p2

    .local v3, "p2":Lexpo/modules/kotlin/Promise;
    const/4 v4, 0x0

    .line 616
    .local v4, "$i$a$-AsyncFunctionWithPromise-NotificationsHandler$definition$1$3":I
    iget-object v5, p0, Lexpo/modules/notifications/notifications/handling/NotificationsHandler$definition$lambda$3$$inlined$AsyncFunctionWithPromise$3;->$receiver$inlined:Lexpo/modules/notifications/notifications/handling/NotificationsHandler;

    invoke-static {v5, v2, v1, v3}, Lexpo/modules/notifications/notifications/handling/NotificationsHandler;->access$handleNotificationAsync(Lexpo/modules/notifications/notifications/handling/NotificationsHandler;Ljava/lang/String;Lexpo/modules/notifications/notifications/handling/NotificationBehaviourRecord;Lexpo/modules/kotlin/Promise;)V

    .line 299
    .end local v1    # "p1":Lexpo/modules/notifications/notifications/handling/NotificationBehaviourRecord;
    .end local v2    # "p0":Ljava/lang/String;
    .end local v3    # "p2":Lexpo/modules/kotlin/Promise;
    .end local v4    # "$i$a$-AsyncFunctionWithPromise-NotificationsHandler$definition$1$3":I
    nop

    .line 300
    return-void
.end method
