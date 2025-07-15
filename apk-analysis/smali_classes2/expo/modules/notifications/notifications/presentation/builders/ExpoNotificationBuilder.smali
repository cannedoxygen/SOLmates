.class public Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;
.super Lexpo/modules/notifications/notifications/presentation/builders/BaseNotificationBuilder;
.source "ExpoNotificationBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExpoNotificationBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExpoNotificationBuilder.kt\nexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,410:1\n1#2:411\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0004\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0016\u0018\u0000 02\u00020\u0001:\u00010B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0018\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0018\u0010\u001d\u001a\u00020\u00182\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u000e\u0010 \u001a\u00020!H\u0096@\u00a2\u0006\u0002\u0010\"J\u0010\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&H\u0004J\u0010\u0010\'\u001a\u00020$2\u0006\u0010%\u001a\u00020(H\u0004J\u0012\u0010)\u001a\u0004\u0018\u00010*2\u0006\u0010+\u001a\u00020,H\u0004J\u0008\u0010-\u001a\u00020.H\u0002J\u0008\u0010/\u001a\u00020.H\u0002R\u0016\u0010\t\u001a\u0004\u0018\u00010\n8TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u00020\u000e8TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0011\u001a\u0004\u0018\u00010\u00128DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u00020\u000e8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0010R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00061"
    }
    d2 = {
        "Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;",
        "Lexpo/modules/notifications/notifications/presentation/builders/BaseNotificationBuilder;",
        "context",
        "Landroid/content/Context;",
        "notification",
        "Lexpo/modules/notifications/notifications/model/Notification;",
        "store",
        "Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationCategoriesStore;",
        "(Landroid/content/Context;Lexpo/modules/notifications/notifications/model/Notification;Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationCategoriesStore;)V",
        "color",
        "",
        "getColor",
        "()Ljava/lang/Number;",
        "icon",
        "",
        "getIcon",
        "()I",
        "largeIcon",
        "Landroid/graphics/Bitmap;",
        "getLargeIcon",
        "()Landroid/graphics/Bitmap;",
        "priority",
        "getPriority",
        "addActionsToBuilder",
        "",
        "builder",
        "Landroidx/core/app/NotificationCompat$Builder;",
        "categoryIdentifier",
        "",
        "applySoundsAndVibrations",
        "content",
        "Lexpo/modules/notifications/notifications/interfaces/INotificationContent;",
        "build",
        "Landroid/app/Notification;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "buildButtonAction",
        "Landroidx/core/app/NotificationCompat$Action;",
        "action",
        "Lexpo/modules/notifications/notifications/model/NotificationAction;",
        "buildTextInputAction",
        "Lexpo/modules/notifications/notifications/model/TextInputNotificationAction;",
        "marshallNotificationRequest",
        "",
        "request",
        "Lexpo/modules/notifications/notifications/model/NotificationRequest;",
        "shouldPlaySound",
        "",
        "shouldVibrate",
        "Companion",
        "expo-notifications_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder$Companion;

.field public static final EXTRAS_BODY_KEY:Ljava/lang/String; = "body"

.field public static final EXTRAS_MARSHALLED_NOTIFICATION_REQUEST_KEY:Ljava/lang/String; = "expo.notification_request"

.field public static final META_DATA_DEFAULT_COLOR_KEY:Ljava/lang/String; = "expo.modules.notifications.default_notification_color"

.field public static final META_DATA_DEFAULT_ICON_KEY:Ljava/lang/String; = "expo.modules.notifications.default_notification_icon"

.field public static final META_DATA_LARGE_ICON_KEY:Ljava/lang/String; = "expo.modules.notifications.large_notification_icon"


# instance fields
.field private final store:Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationCategoriesStore;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;->Companion:Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lexpo/modules/notifications/notifications/model/Notification;Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationCategoriesStore;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notification"    # Lexpo/modules/notifications/notifications/model/Notification;
    .param p3, "store"    # Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationCategoriesStore;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notification"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "store"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0, p1, p2}, Lexpo/modules/notifications/notifications/presentation/builders/BaseNotificationBuilder;-><init>(Landroid/content/Context;Lexpo/modules/notifications/notifications/model/Notification;)V

    .line 36
    iput-object p3, p0, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;->store:Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationCategoriesStore;

    .line 33
    return-void
.end method

.method private final applySoundsAndVibrations(Lexpo/modules/notifications/notifications/interfaces/INotificationContent;Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 6
    .param p1, "content"    # Lexpo/modules/notifications/notifications/interfaces/INotificationContent;
    .param p2, "builder"    # Landroidx/core/app/NotificationCompat$Builder;

    .line 160
    invoke-direct {p0}, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;->shouldPlaySound()Z

    move-result v0

    .line 161
    .local v0, "shouldPlaySound":Z
    invoke-direct {p0}, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;->shouldVibrate()Z

    move-result v1

    .line 163
    .local v1, "shouldVibrate":Z
    const/4 v2, 0x1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 165
    invoke-virtual {p2, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSilent(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 167
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-ge v3, v4, :cond_7

    .line 169
    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lexpo/modules/notifications/notifications/interfaces/INotificationContent;->getShouldPlayDefaultSound()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    .line 170
    .local v4, "shouldPlayDefaultSound":Z
    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {p1}, Lexpo/modules/notifications/notifications/interfaces/INotificationContent;->getShouldUseDefaultVibrationPattern()Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v2

    .line 171
    .local v3, "shouldUseDefaultVibrationPattern":Z
    :cond_2
    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    .line 172
    const/4 v2, -0x1

    invoke-virtual {p2, v2}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_2

    .line 174
    :cond_3
    if-eqz v0, :cond_5

    .line 175
    invoke-interface {p1}, Lexpo/modules/notifications/notifications/interfaces/INotificationContent;->getSoundName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 176
    new-instance v2, Lexpo/modules/notifications/notifications/SoundResolver;

    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Lexpo/modules/notifications/notifications/SoundResolver;-><init>(Landroid/content/Context;)V

    invoke-interface {p1}, Lexpo/modules/notifications/notifications/interfaces/INotificationContent;->getSoundName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lexpo/modules/notifications/notifications/SoundResolver;->resolve(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 177
    .local v2, "soundUri":Landroid/net/Uri;
    invoke-virtual {p2, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_1

    .line 178
    .end local v2    # "soundUri":Landroid/net/Uri;
    :cond_4
    if-eqz v4, :cond_5

    .line 179
    invoke-virtual {p2, v2}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 180
    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {p2, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    .line 183
    :cond_5
    :goto_1
    if-eqz v1, :cond_7

    .line 184
    invoke-interface {p1}, Lexpo/modules/notifications/notifications/interfaces/INotificationContent;->getVibrationPattern()[J

    move-result-object v2

    .line 185
    .local v2, "vibrationPatternOverride":[J
    if-eqz v2, :cond_6

    .line 186
    invoke-virtual {p2, v2}, Landroidx/core/app/NotificationCompat$Builder;->setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_2

    .line 187
    :cond_6
    if-eqz v3, :cond_7

    .line 188
    const/4 v5, 0x2

    invoke-virtual {p2, v5}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 193
    .end local v2    # "vibrationPatternOverride":[J
    .end local v3    # "shouldUseDefaultVibrationPattern":Z
    .end local v4    # "shouldPlayDefaultSound":Z
    :cond_7
    :goto_2
    return-void
.end method

.method static synthetic build$suspendImpl(Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/app/Notification;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder$build$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder$build$1;

    iget v1, v0, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder$build$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder$build$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder$build$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder$build$1;

    invoke-direct {v0, p0, p1}, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder$build$1;-><init>(Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p1, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder$build$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 92
    iget v2, p1, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder$build$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object p0, p1, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder$build$1;->L$0:Ljava/lang/Object;

    check-cast p0, Landroidx/core/app/NotificationCompat$Builder;

    .local p0, "builder":Landroidx/core/app/NotificationCompat$Builder;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    move-object p0, v0

    goto/16 :goto_1

    .end local p0    # "builder":Landroidx/core/app/NotificationCompat$Builder;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 93
    .local p0, "$this":Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;->createBuilder()Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 95
    .local v2, "builder":Landroidx/core/app/NotificationCompat$Builder;
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;->getIcon()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 96
    invoke-direct {p0}, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;->getPriority()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 98
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;->getNotificationContent()Lexpo/modules/notifications/notifications/interfaces/INotificationContent;

    move-result-object v3

    .line 100
    .local v3, "content":Lexpo/modules/notifications/notifications/interfaces/INotificationContent;
    invoke-interface {v3}, Lexpo/modules/notifications/notifications/interfaces/INotificationContent;->isAutoDismiss()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 101
    invoke-interface {v3}, Lexpo/modules/notifications/notifications/interfaces/INotificationContent;->isSticky()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 104
    invoke-interface {v3}, Lexpo/modules/notifications/notifications/interfaces/INotificationContent;->getTitle()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 105
    invoke-interface {v3}, Lexpo/modules/notifications/notifications/interfaces/INotificationContent;->getText()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 106
    invoke-interface {v3}, Lexpo/modules/notifications/notifications/interfaces/INotificationContent;->getSubText()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 109
    new-instance v4, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v4}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-interface {v3}, Lexpo/modules/notifications/notifications/interfaces/INotificationContent;->getText()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v4

    check-cast v4, Landroidx/core/app/NotificationCompat$Style;

    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 111
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;->getColor()Ljava/lang/Number;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 411
    .local v4, "it":Ljava/lang/Number;
    const/4 v5, 0x0

    .line 111
    .local v5, "$i$a$-let-ExpoNotificationBuilder$build$2":I
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-virtual {v2, v6}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 112
    .end local v4    # "it":Ljava/lang/Number;
    .end local v5    # "$i$a$-let-ExpoNotificationBuilder$build$2":I
    :cond_1
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;->getNotificationContent()Lexpo/modules/notifications/notifications/interfaces/INotificationContent;

    move-result-object v4

    invoke-interface {v4}, Lexpo/modules/notifications/notifications/interfaces/INotificationContent;->getBadgeCount()Ljava/lang/Number;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 411
    .local v4, "it":I
    const/4 v5, 0x0

    .line 112
    .local v5, "$i$a$-let-ExpoNotificationBuilder$build$3":I
    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setNumber(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 113
    .end local v4    # "it":I
    .end local v5    # "$i$a$-let-ExpoNotificationBuilder$build$3":I
    :cond_2
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;->getNotificationContent()Lexpo/modules/notifications/notifications/interfaces/INotificationContent;

    move-result-object v4

    invoke-interface {v4}, Lexpo/modules/notifications/notifications/interfaces/INotificationContent;->getCategoryId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 411
    .local v4, "it":Ljava/lang/String;
    const/4 v5, 0x0

    .line 113
    .local v5, "$i$a$-let-ExpoNotificationBuilder$build$4":I
    invoke-virtual {p0, v2, v4}, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;->addActionsToBuilder(Landroidx/core/app/NotificationCompat$Builder;Ljava/lang/String;)V

    .line 115
    .end local v4    # "it":Ljava/lang/String;
    .end local v5    # "$i$a$-let-ExpoNotificationBuilder$build$4":I
    :cond_3
    invoke-direct {p0, v3, v2}, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;->applySoundsAndVibrations(Lexpo/modules/notifications/notifications/interfaces/INotificationContent;Landroidx/core/app/NotificationCompat$Builder;)V

    .line 117
    invoke-interface {v3}, Lexpo/modules/notifications/notifications/interfaces/INotificationContent;->getBody()Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 119
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "getExtras(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    .local v4, "extras":Landroid/os/Bundle;
    invoke-interface {v3}, Lexpo/modules/notifications/notifications/interfaces/INotificationContent;->getBody()Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "body"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .end local v3    # "content":Lexpo/modules/notifications/notifications/interfaces/INotificationContent;
    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Builder;

    .line 128
    .end local v4    # "extras":Landroid/os/Bundle;
    :cond_4
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 132
    .local v3, "requestExtras":Landroid/os/Bundle;
    nop

    .line 133
    nop

    .line 134
    nop

    .line 135
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;->getNotification()Lexpo/modules/notifications/notifications/model/Notification;

    move-result-object v4

    invoke-virtual {v4}, Lexpo/modules/notifications/notifications/model/Notification;->getNotificationRequest()Lexpo/modules/notifications/notifications/model/NotificationRequest;

    move-result-object v4

    const-string v5, "getNotificationRequest(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0, v4}, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;->marshallNotificationRequest(Lexpo/modules/notifications/notifications/model/NotificationRequest;)[B

    move-result-object v4

    .line 132
    const-string v5, "expo.notification_request"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 138
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->addExtras(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Builder;

    .line 141
    .end local v3    # "requestExtras":Landroid/os/Bundle;
    new-instance v3, Lexpo/modules/notifications/notifications/model/NotificationAction;

    const-string v4, "expo.modules.notifications.actions.DEFAULT"

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Lexpo/modules/notifications/notifications/model/NotificationAction;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 140
    nop

    .line 142
    .local v3, "defaultAction":Lexpo/modules/notifications/notifications/model/NotificationAction;
    nop

    .line 143
    sget-object v4, Lexpo/modules/notifications/service/NotificationsService;->Companion:Lexpo/modules/notifications/service/NotificationsService$Companion;

    .line 144
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 145
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;->getNotification()Lexpo/modules/notifications/notifications/model/Notification;

    move-result-object v7

    .line 146
    nop

    .line 143
    .end local v3    # "defaultAction":Lexpo/modules/notifications/notifications/model/NotificationAction;
    invoke-virtual {v4, v5, v7, v3}, Lexpo/modules/notifications/service/NotificationsService$Companion;->createNotificationResponseIntent(Landroid/content/Context;Lexpo/modules/notifications/notifications/model/Notification;Lexpo/modules/notifications/notifications/model/NotificationAction;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 142
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 150
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;->getNotificationContent()Lexpo/modules/notifications/notifications/interfaces/INotificationContent;

    move-result-object v3

    invoke-interface {v3}, Lexpo/modules/notifications/notifications/interfaces/INotificationContent;->containsImage()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 151
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;->getNotificationContent()Lexpo/modules/notifications/notifications/interfaces/INotificationContent;

    move-result-object v3

    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;->getContext()Landroid/content/Context;

    move-result-object v4

    iput-object v2, p1, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder$build$1;->L$0:Ljava/lang/Object;

    iput v6, p1, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder$build$1;->label:I

    invoke-interface {v3, v4, p1}, Lexpo/modules/notifications/notifications/interfaces/INotificationContent;->getImage(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "$this":Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;
    if-ne p0, v1, :cond_5

    .line 92
    return-object v1

    :cond_5
    :goto_1
    check-cast p0, Landroid/graphics/Bitmap;

    .line 152
    .local p0, "bitmap":Landroid/graphics/Bitmap;
    nop

    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_7

    .line 411
    .local p0, "it":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 152
    .local v1, "$i$a$-let-ExpoNotificationBuilder$build$5":I
    invoke-virtual {v2, p0}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    .end local v1    # "$i$a$-let-ExpoNotificationBuilder$build$5":I
    .end local p0    # "it":Landroid/graphics/Bitmap;
    goto :goto_2

    .line 154
    .local p0, "$this":Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;
    :cond_6
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;->getLargeIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    .line 156
    .end local p0    # "$this":Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;
    :cond_7
    :goto_2
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    const-string v1, "build(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final getPriority()I
    .locals 8

    .line 275
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;->getNotificationContent()Lexpo/modules/notifications/notifications/interfaces/INotificationContent;

    move-result-object v0

    invoke-interface {v0}, Lexpo/modules/notifications/notifications/interfaces/INotificationContent;->getPriority()Lexpo/modules/notifications/notifications/enums/NotificationPriority;

    move-result-object v0

    .line 277
    .local v0, "requestPriority":Lexpo/modules/notifications/notifications/enums/NotificationPriority;
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;->getNotificationBehavior()Lexpo/modules/notifications/notifications/model/NotificationBehavior;

    move-result-object v1

    .line 279
    .local v1, "notificationBehavior":Lexpo/modules/notifications/notifications/model/NotificationBehavior;
    if-eqz v1, :cond_3

    .line 281
    invoke-virtual {v1}, Lexpo/modules/notifications/notifications/model/NotificationBehavior;->getPriorityOverride()Lexpo/modules/notifications/notifications/enums/NotificationPriority;

    move-result-object v2

    .line 282
    .local v2, "priorityOverride":Lexpo/modules/notifications/notifications/enums/NotificationPriority;
    if-eqz v2, :cond_0

    .line 283
    invoke-virtual {v2}, Lexpo/modules/notifications/notifications/enums/NotificationPriority;->getNativeValue()I

    move-result v3

    return v3

    .line 289
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lexpo/modules/notifications/notifications/enums/NotificationPriority;->getNativeValue()I

    move-result v3

    goto :goto_0

    :cond_1
    sget-object v3, Lexpo/modules/notifications/notifications/enums/NotificationPriority;->DEFAULT:Lexpo/modules/notifications/notifications/enums/NotificationPriority;

    invoke-virtual {v3}, Lexpo/modules/notifications/notifications/enums/NotificationPriority;->getNativeValue()I

    move-result v3

    .line 288
    :goto_0
    nop

    .line 293
    .local v3, "requestPriorityValue":I
    invoke-virtual {v1}, Lexpo/modules/notifications/notifications/model/NotificationBehavior;->shouldShowAlert()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 296
    nop

    .line 297
    nop

    .line 298
    int-to-double v4, v3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 299
    double-to-int v4, v4

    goto :goto_1

    .line 303
    :cond_2
    nop

    .line 304
    nop

    .line 305
    int-to-double v4, v3

    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 306
    double-to-int v4, v4

    .line 293
    :goto_1
    return v4

    .line 311
    .end local v2    # "priorityOverride":Lexpo/modules/notifications/notifications/enums/NotificationPriority;
    .end local v3    # "requestPriorityValue":I
    :cond_3
    if-eqz v0, :cond_4

    .line 312
    invoke-virtual {v0}, Lexpo/modules/notifications/notifications/enums/NotificationPriority;->getNativeValue()I

    move-result v2

    return v2

    .line 316
    :cond_4
    const/4 v2, 0x1

    return v2
.end method

.method private final shouldPlaySound()Z
    .locals 4

    .line 232
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;->getNotificationBehavior()Lexpo/modules/notifications/notifications/model/NotificationBehavior;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lexpo/modules/notifications/notifications/model/NotificationBehavior;->shouldPlaySound()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 234
    .local v0, "behaviorAllowsSound":Z
    :goto_0
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;->getNotificationContent()Lexpo/modules/notifications/notifications/interfaces/INotificationContent;

    move-result-object v2

    invoke-interface {v2}, Lexpo/modules/notifications/notifications/interfaces/INotificationContent;->getShouldPlayDefaultSound()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;->getNotificationContent()Lexpo/modules/notifications/notifications/interfaces/INotificationContent;

    move-result-object v2

    invoke-interface {v2}, Lexpo/modules/notifications/notifications/interfaces/INotificationContent;->getSoundName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v1

    .line 233
    :goto_2
    nop

    .line 236
    .local v2, "contentAllowsSound":Z
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    move v1, v3

    :goto_3
    return v1
.end method

.method private final shouldVibrate()Z
    .locals 4

    .line 250
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;->getNotificationBehavior()Lexpo/modules/notifications/notifications/model/NotificationBehavior;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lexpo/modules/notifications/notifications/model/NotificationBehavior;->shouldPlaySound()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 253
    .local v0, "behaviorAllowsVibration":Z
    :goto_0
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;->getNotificationContent()Lexpo/modules/notifications/notifications/interfaces/INotificationContent;

    move-result-object v2

    invoke-interface {v2}, Lexpo/modules/notifications/notifications/interfaces/INotificationContent;->getShouldUseDefaultVibrationPattern()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;->getNotificationContent()Lexpo/modules/notifications/notifications/interfaces/INotificationContent;

    move-result-object v2

    invoke-interface {v2}, Lexpo/modules/notifications/notifications/interfaces/INotificationContent;->getVibrationPattern()[J

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v1

    .line 252
    :goto_2
    nop

    .line 255
    .local v2, "contentAllowsVibration":Z
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    move v1, v3

    :goto_3
    return v1
.end method


# virtual methods
.method public addActionsToBuilder(Landroidx/core/app/NotificationCompat$Builder;Ljava/lang/String;)V
    .locals 8
    .param p1, "builder"    # Landroidx/core/app/NotificationCompat$Builder;
    .param p2, "categoryIdentifier"    # Ljava/lang/String;

    const-string v0, "format(...)"

    const-string v1, "Could not read category with identifier: %s. %s"

    const-string v2, "expo-notifications"

    const-string v3, "builder"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "categoryIdentifier"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 44
    .local v3, "actions":Ljava/util/List;
    nop

    .line 45
    const/4 v4, 0x2

    :try_start_0
    iget-object v5, p0, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;->store:Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationCategoriesStore;

    invoke-virtual {v5, p2}, Lexpo/modules/notifications/service/delegates/SharedPreferencesNotificationCategoriesStore;->getNotificationCategory(Ljava/lang/String;)Lexpo/modules/notifications/notifications/model/NotificationCategory;

    move-result-object v5

    .line 46
    .local v5, "category":Lexpo/modules/notifications/notifications/model/NotificationCategory;
    if-eqz v5, :cond_0

    .line 47
    invoke-virtual {v5}, Lexpo/modules/notifications/notifications/model/NotificationCategory;->getActions()Ljava/util/List;

    move-result-object v6

    const-string v7, "getActions(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v6

    .end local v5    # "category":Lexpo/modules/notifications/notifications/model/NotificationCategory;
    goto :goto_0

    .line 58
    :catch_0
    move-exception v5

    .line 60
    .local v5, "e":Ljava/io/IOException;
    nop

    .line 61
    sget-object v6, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 62
    nop

    .line 63
    nop

    .line 64
    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    filled-new-array {p2, v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 63
    nop

    .line 61
    invoke-static {v6, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 49
    .end local v5    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 51
    .local v5, "e":Ljava/lang/ClassNotFoundException;
    nop

    .line 52
    sget-object v6, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 53
    nop

    .line 54
    nop

    .line 55
    invoke-virtual {v5}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    filled-new-array {p2, v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 54
    nop

    .line 52
    invoke-static {v6, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .end local v5    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexpo/modules/notifications/notifications/model/NotificationAction;

    .line 69
    .local v1, "action":Lexpo/modules/notifications/notifications/model/NotificationAction;
    instance-of v2, v1, Lexpo/modules/notifications/notifications/model/TextInputNotificationAction;

    if-eqz v2, :cond_1

    .line 70
    move-object v2, v1

    check-cast v2, Lexpo/modules/notifications/notifications/model/TextInputNotificationAction;

    invoke-virtual {p0, v2}, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;->buildTextInputAction(Lexpo/modules/notifications/notifications/model/TextInputNotificationAction;)Landroidx/core/app/NotificationCompat$Action;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_1

    .line 72
    :cond_1
    invoke-virtual {p0, v1}, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;->buildButtonAction(Lexpo/modules/notifications/notifications/model/NotificationAction;)Landroidx/core/app/NotificationCompat$Action;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_1

    .line 75
    .end local v1    # "action":Lexpo/modules/notifications/notifications/model/NotificationAction;
    :cond_2
    return-void
.end method

.method public build(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/app/Notification;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1}, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;->build$suspendImpl(Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final buildButtonAction(Lexpo/modules/notifications/notifications/model/NotificationAction;)Landroidx/core/app/NotificationCompat$Action;
    .locals 4
    .param p1, "action"    # Lexpo/modules/notifications/notifications/model/NotificationAction;

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    sget-object v0, Lexpo/modules/notifications/service/NotificationsService;->Companion:Lexpo/modules/notifications/service/NotificationsService$Companion;

    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;->getNotification()Lexpo/modules/notifications/notifications/model/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lexpo/modules/notifications/service/NotificationsService$Companion;->createNotificationResponseIntent(Landroid/content/Context;Lexpo/modules/notifications/notifications/model/Notification;Lexpo/modules/notifications/notifications/model/NotificationAction;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 79
    .local v0, "intent":Landroid/app/PendingIntent;
    new-instance v1, Landroidx/core/app/NotificationCompat$Action$Builder;

    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;->getIcon()I

    move-result v2

    invoke-virtual {p1}, Lexpo/modules/notifications/notifications/model/NotificationAction;->getTitle()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-direct {v1, v2, v3, v0}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object v1

    const-string v2, "build(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method protected final buildTextInputAction(Lexpo/modules/notifications/notifications/model/TextInputNotificationAction;)Landroidx/core/app/NotificationCompat$Action;
    .locals 6
    .param p1, "action"    # Lexpo/modules/notifications/notifications/model/TextInputNotificationAction;

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    sget-object v0, Lexpo/modules/notifications/service/NotificationsService;->Companion:Lexpo/modules/notifications/service/NotificationsService$Companion;

    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;->getNotification()Lexpo/modules/notifications/notifications/model/Notification;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Lexpo/modules/notifications/notifications/model/NotificationAction;

    invoke-virtual {v0, v1, v2, v3}, Lexpo/modules/notifications/service/NotificationsService$Companion;->createNotificationResponseIntent(Landroid/content/Context;Lexpo/modules/notifications/notifications/model/Notification;Lexpo/modules/notifications/notifications/model/NotificationAction;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 84
    .local v0, "intent":Landroid/app/PendingIntent;
    new-instance v1, Landroidx/core/app/RemoteInput$Builder;

    const-string v2, "userTextResponse"

    invoke-direct {v1, v2}, Landroidx/core/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Lexpo/modules/notifications/notifications/model/TextInputNotificationAction;->getPlaceholder()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroidx/core/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroidx/core/app/RemoteInput$Builder;

    move-result-object v1

    .line 86
    invoke-virtual {v1}, Landroidx/core/app/RemoteInput$Builder;->build()Landroidx/core/app/RemoteInput;

    move-result-object v1

    const-string v2, "build(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    nop

    .line 88
    .local v1, "remoteInput":Landroidx/core/app/RemoteInput;
    new-instance v3, Landroidx/core/app/NotificationCompat$Action$Builder;

    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;->getIcon()I

    move-result v4

    invoke-virtual {p1}, Lexpo/modules/notifications/notifications/model/TextInputNotificationAction;->getTitle()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-direct {v3, v4, v5, v0}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 89
    invoke-virtual {v3, v1}, Landroidx/core/app/NotificationCompat$Action$Builder;->addRemoteInput(Landroidx/core/app/RemoteInput;)Landroidx/core/app/NotificationCompat$Action$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    return-object v3
.end method

.method protected getColor()Ljava/lang/Number;
    .locals 7

    .line 374
    const-string v0, "expo.modules.notifications.default_notification_color"

    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;->getNotificationContent()Lexpo/modules/notifications/notifications/interfaces/INotificationContent;

    move-result-object v1

    invoke-interface {v1}, Lexpo/modules/notifications/notifications/interfaces/INotificationContent;->getColor()Ljava/lang/Number;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v1, p0

    check-cast v1, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;

    .local v1, "$this$_get_color__u24lambda_u244":Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;
    const/4 v2, 0x0

    .line 375
    .local v2, "$i$a$-run-ExpoNotificationBuilder$color$1":I
    nop

    .line 376
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1}, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 377
    invoke-virtual {v1}, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 378
    nop

    .line 376
    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    const-string v5, "getApplicationInfo(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    .local v4, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 381
    invoke-virtual {v1}, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 382
    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 383
    nop

    .line 381
    invoke-virtual {v5, v0, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 386
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 388
    .local v0, "e":Ljava/lang/Exception;
    nop

    .line 389
    nop

    .line 390
    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    .line 387
    const-string v5, "expo-notifications"

    const-string v6, "Could not have fetched default notification color."

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 395
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v3

    .end local v1    # "$this$_get_color__u24lambda_u244":Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;
    .end local v2    # "$i$a$-run-ExpoNotificationBuilder$color$1":I
    :cond_1
    return-object v1
.end method

.method protected getIcon()I
    .locals 4

    .line 350
    const-string v0, "expo.modules.notifications.default_notification_icon"

    .line 351
    :try_start_0
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 352
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 353
    nop

    .line 351
    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    const-string v2, "getApplicationInfo(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 356
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 358
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 359
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Could not have fetched default notification icon."

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    const-string v3, "expo-notifications"

    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 361
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    return v0
.end method

.method protected final getLargeIcon()Landroid/graphics/Bitmap;
    .locals 4

    .line 327
    const-string v0, "expo.modules.notifications.large_notification_icon"

    .line 328
    :try_start_0
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 329
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 330
    nop

    .line 328
    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    const-string v2, "getApplicationInfo(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 333
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 334
    .local v0, "resourceId":I
    invoke-virtual {p0}, Lexpo/modules/notifications/notifications/presentation/builders/ExpoNotificationBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 336
    .end local v0    # "resourceId":I
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Could not have fetched large notification icon."

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    const-string v3, "expo-notifications"

    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 339
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final marshallNotificationRequest(Lexpo/modules/notifications/notifications/model/NotificationRequest;)[B
    .locals 4
    .param p1, "request"    # Lexpo/modules/notifications/notifications/model/NotificationRequest;

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    nop

    .line 203
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "obtain(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    .local v0, "parcel":Landroid/os/Parcel;
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lexpo/modules/notifications/notifications/model/NotificationRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 205
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    .line 206
    .local v1, "bytes":[B
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    return-object v1

    .line 208
    .end local v0    # "parcel":Landroid/os/Parcel;
    .end local v1    # "bytes":[B
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/Exception;
    nop

    .line 213
    invoke-virtual {p1}, Lexpo/modules/notifications/notifications/model/NotificationRequest;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not marshalled notification request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 214
    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    .line 211
    const-string v3, "expo-notifications"

    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    const/4 v1, 0x0

    return-object v1
.end method
