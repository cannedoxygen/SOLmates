.class public final Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule$definition$lambda$5$$inlined$AsyncFunction$7;
.super Lkotlin/jvm/internal/Lambda;
.source "ObjectDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
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
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$8\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 NotificationChannelGroupManagerModule.kt\nexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule\n*L\n1#1,611:1\n15#2,4:612\n49#3,9:616\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$8\n*L\n260#1:612,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0010\u0000\u001a\u0002H\u0001\"\u0006\u0008\u0000\u0010\u0001\u0018\u0001\"\u0006\u0008\u0001\u0010\u0002\u0018\u0001\"\u0006\u0008\u0002\u0010\u0003\u0018\u00012\u0010\u0010\u0004\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00060\u0005H\n\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "<anonymous>",
        "R",
        "P0",
        "P1",
        "<name for destructuring parameter 0>",
        "",
        "",
        "invoke",
        "([Ljava/lang/Object;)Ljava/lang/Object;",
        "expo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$8"
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
.field final synthetic this$0:Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;


# direct methods
.method public constructor <init>(Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule$definition$lambda$5$$inlined$AsyncFunction$7;->this$0:Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 259
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule$definition$lambda$5$$inlined$AsyncFunction$7;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

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
            "Landroid/os/Bundle;"
        }
    .end annotation

    const-string v0, "<name for destructuring parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .local v0, "p0":Ljava/lang/Object;
    const/4 v1, 0x1

    aget-object p1, p1, v1

    .line 260
    .local p1, "p1":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 612
    .local v1, "$i$f$enforceType":I
    nop

    .line 615
    nop

    .line 261
    .end local v1    # "$i$f$enforceType":I
    move-object v1, p1

    check-cast v1, Lexpo/modules/core/arguments/ReadableArguments;

    .local v1, "groupOptions":Lexpo/modules/core/arguments/ReadableArguments;
    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .local v2, "groupId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 616
    .local v3, "$i$a$-AsyncFunction-NotificationChannelGroupManagerModule$definition$1$4":I
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    const/4 v6, 0x0

    if-lt v4, v5, :cond_2

    .line 617
    iget-object v4, p0, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule$definition$lambda$5$$inlined$AsyncFunction$7;->this$0:Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;

    invoke-static {v4}, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;->access$getGroupManager$p(Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;)Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelGroupManager;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v4, "groupManager"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v6

    .line 618
    :cond_0
    nop

    .line 619
    iget-object v5, p0, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule$definition$lambda$5$$inlined$AsyncFunction$7;->this$0:Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;

    invoke-static {v5, v1}, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;->access$getNameFromOptions(Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;Lexpo/modules/core/arguments/ReadableArguments;)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    .line 620
    nop

    .line 617
    invoke-interface {v4, v2, v5, v1}, Lexpo/modules/notifications/notifications/channels/managers/NotificationsChannelGroupManager;->createNotificationChannelGroup(Ljava/lang/String;Ljava/lang/CharSequence;Lexpo/modules/core/arguments/ReadableArguments;)Landroid/app/NotificationChannelGroup;

    move-result-object v4

    .line 622
    .local v4, "group":Landroid/app/NotificationChannelGroup;
    iget-object v5, p0, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule$definition$lambda$5$$inlined$AsyncFunction$7;->this$0:Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;

    invoke-static {v5}, Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;->access$getGroupSerializer$p(Lexpo/modules/notifications/notifications/channels/NotificationChannelGroupManagerModule;)Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelGroupSerializer;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v5, "groupSerializer"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v6, v5

    :goto_0
    invoke-interface {v6, v4}, Lexpo/modules/notifications/notifications/channels/serializers/NotificationsChannelGroupSerializer;->toBundle(Landroid/app/NotificationChannelGroup;)Landroid/os/Bundle;

    move-result-object v6

    .end local v4    # "group":Landroid/app/NotificationChannelGroup;
    goto :goto_1

    .line 624
    :cond_2
    nop

    .line 616
    :goto_1
    nop

    .line 261
    .end local v1    # "groupOptions":Lexpo/modules/core/arguments/ReadableArguments;
    .end local v2    # "groupId":Ljava/lang/String;
    .end local v3    # "$i$a$-AsyncFunction-NotificationChannelGroupManagerModule$definition$1$4":I
    return-object v6
.end method
