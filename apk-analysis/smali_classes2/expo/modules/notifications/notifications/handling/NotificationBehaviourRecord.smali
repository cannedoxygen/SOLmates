.class public final Lexpo/modules/notifications/notifications/handling/NotificationBehaviourRecord;
.super Ljava/lang/Object;
.source "NotificationsHandler.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001e\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u001a\u0004\u0008\u0006\u0010\u0007R\u001c\u0010\u0008\u001a\u00020\t8\u0006X\u0087D\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\n\u0010\u0002\u001a\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\r\u001a\u00020\t8\u0006X\u0087D\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000e\u0010\u0002\u001a\u0004\u0008\u000f\u0010\u000cR\u001c\u0010\u0010\u001a\u00020\t8\u0006X\u0087D\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0011\u0010\u0002\u001a\u0004\u0008\u0012\u0010\u000c\u00a8\u0006\u0013"
    }
    d2 = {
        "Lexpo/modules/notifications/notifications/handling/NotificationBehaviourRecord;",
        "Lexpo/modules/kotlin/records/Record;",
        "()V",
        "priority",
        "",
        "getPriority$annotations",
        "getPriority",
        "()Ljava/lang/String;",
        "shouldPlaySound",
        "",
        "getShouldPlaySound$annotations",
        "getShouldPlaySound",
        "()Z",
        "shouldSetBadge",
        "getShouldSetBadge$annotations",
        "getShouldSetBadge",
        "shouldShowAlert",
        "getShouldShowAlert$annotations",
        "getShouldShowAlert",
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


# instance fields
.field private final priority:Ljava/lang/String;

.field private final shouldPlaySound:Z

.field private final shouldSetBadge:Z

.field private final shouldShowAlert:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getPriority$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getShouldPlaySound$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getShouldSetBadge$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getShouldShowAlert$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getPriority()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lexpo/modules/notifications/notifications/handling/NotificationBehaviourRecord;->priority:Ljava/lang/String;

    return-object v0
.end method

.method public final getShouldPlaySound()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lexpo/modules/notifications/notifications/handling/NotificationBehaviourRecord;->shouldPlaySound:Z

    return v0
.end method

.method public final getShouldSetBadge()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lexpo/modules/notifications/notifications/handling/NotificationBehaviourRecord;->shouldSetBadge:Z

    return v0
.end method

.method public final getShouldShowAlert()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lexpo/modules/notifications/notifications/handling/NotificationBehaviourRecord;->shouldShowAlert:Z

    return v0
.end method
