.class public final Lexpo/modules/notifications/badge/BadgeHelper;
.super Ljava/lang/Object;
.source "BadgeHelper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBadgeHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BadgeHelper.kt\nexpo/modules/notifications/badge/BadgeHelper\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,30:1\n1#2:31\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0008\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u0004R&\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00048F@BX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\r"
    }
    d2 = {
        "Lexpo/modules/notifications/badge/BadgeHelper;",
        "",
        "()V",
        "value",
        "",
        "badgeCount",
        "getBadgeCount",
        "()I",
        "setBadgeCount",
        "(I)V",
        "",
        "context",
        "Landroid/content/Context;",
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
.field public static final INSTANCE:Lexpo/modules/notifications/badge/BadgeHelper;

.field private static badgeCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/notifications/badge/BadgeHelper;

    invoke-direct {v0}, Lexpo/modules/notifications/badge/BadgeHelper;-><init>()V

    sput-object v0, Lexpo/modules/notifications/badge/BadgeHelper;->INSTANCE:Lexpo/modules/notifications/badge/BadgeHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final setBadgeCount(I)V
    .locals 1
    .param p1, "value"    # I

    .line 11
    monitor-enter p0

    .line 31
    const/4 v0, 0x0

    .line 11
    .local v0, "$i$a$-synchronized-BadgeHelper$badgeCount$2":I
    :try_start_0
    sput p1, Lexpo/modules/notifications/badge/BadgeHelper;->badgeCount:I

    .end local v0    # "$i$a$-synchronized-BadgeHelper$badgeCount$2":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final getBadgeCount()I
    .locals 2

    .line 10
    monitor-enter p0

    .line 31
    const/4 v0, 0x0

    .line 10
    .local v0, "$i$a$-synchronized-BadgeHelper$badgeCount$1":I
    :try_start_0
    sget v1, Lexpo/modules/notifications/badge/BadgeHelper;->badgeCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "$i$a$-synchronized-BadgeHelper$badgeCount$1":I
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setBadgeCount(Landroid/content/Context;I)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "badgeCount"    # I

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    nop

    .line 15
    if-nez p2, :cond_0

    .line 16
    :try_start_0
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/NotificationManager;

    .line 17
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .end local v0    # "notificationManager":Landroid/app/NotificationManager;
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lme/leolin/shortcutbadger/ShortcutBadger;->applyCountOrThrow(Landroid/content/Context;I)V

    .line 21
    :goto_0
    sget-object v0, Lexpo/modules/notifications/badge/BadgeHelper;->INSTANCE:Lexpo/modules/notifications/badge/BadgeHelper;

    invoke-direct {v0, p2}, Lexpo/modules/notifications/badge/BadgeHelper;->setBadgeCount(I)V
    :try_end_0
    .catch Lme/leolin/shortcutbadger/ShortcutBadgeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    const/4 v0, 0x1

    goto :goto_1

    .line 23
    :catch_0
    move-exception v0

    .line 24
    .local v0, "e":Lme/leolin/shortcutbadger/ShortcutBadgeException;
    invoke-virtual {v0}, Lme/leolin/shortcutbadger/ShortcutBadgeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not have set badge count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    const-string v3, "expo-notifications"

    invoke-static {v3, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    invoke-virtual {v0}, Lme/leolin/shortcutbadger/ShortcutBadgeException;->printStackTrace()V

    .line 26
    const/4 v1, 0x0

    move v0, v1

    .line 14
    .end local v0    # "e":Lme/leolin/shortcutbadger/ShortcutBadgeException;
    :goto_1
    return v0
.end method
