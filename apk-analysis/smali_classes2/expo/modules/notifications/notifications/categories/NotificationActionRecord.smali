.class public final Lexpo/modules/notifications/notifications/categories/NotificationActionRecord;
.super Ljava/lang/Object;
.source "ExpoNotificationCategoriesModule.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/notifications/notifications/categories/NotificationActionRecord$Options;,
        Lexpo/modules/notifications/notifications/categories/NotificationActionRecord$TextInput;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001:\u0002\u0015\u0016B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u001a\u0004\u0008\u0006\u0010\u0007R\u001c\u0010\u0008\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\t\u0010\u0002\u001a\u0004\u0008\n\u0010\u0007R\u001c\u0010\u000b\u001a\u00020\u000c8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\r\u0010\u0002\u001a\u0004\u0008\u000e\u0010\u000fR\u001e\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0012\u0010\u0002\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0017"
    }
    d2 = {
        "Lexpo/modules/notifications/notifications/categories/NotificationActionRecord;",
        "Lexpo/modules/kotlin/records/Record;",
        "()V",
        "buttonTitle",
        "",
        "getButtonTitle$annotations",
        "getButtonTitle",
        "()Ljava/lang/String;",
        "identifier",
        "getIdentifier$annotations",
        "getIdentifier",
        "options",
        "Lexpo/modules/notifications/notifications/categories/NotificationActionRecord$Options;",
        "getOptions$annotations",
        "getOptions",
        "()Lexpo/modules/notifications/notifications/categories/NotificationActionRecord$Options;",
        "textInput",
        "Lexpo/modules/notifications/notifications/categories/NotificationActionRecord$TextInput;",
        "getTextInput$annotations",
        "getTextInput",
        "()Lexpo/modules/notifications/notifications/categories/NotificationActionRecord$TextInput;",
        "Options",
        "TextInput",
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
.field private final buttonTitle:Ljava/lang/String;

.field private final identifier:Ljava/lang/String;

.field private final options:Lexpo/modules/notifications/notifications/categories/NotificationActionRecord$Options;

.field private final textInput:Lexpo/modules/notifications/notifications/categories/NotificationActionRecord$TextInput;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lexpo/modules/notifications/notifications/categories/NotificationActionRecord;->identifier:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lexpo/modules/notifications/notifications/categories/NotificationActionRecord;->buttonTitle:Ljava/lang/String;

    .line 38
    new-instance v0, Lexpo/modules/notifications/notifications/categories/NotificationActionRecord$Options;

    invoke-direct {v0}, Lexpo/modules/notifications/notifications/categories/NotificationActionRecord$Options;-><init>()V

    iput-object v0, p0, Lexpo/modules/notifications/notifications/categories/NotificationActionRecord;->options:Lexpo/modules/notifications/notifications/categories/NotificationActionRecord$Options;

    .line 25
    return-void
.end method

.method public static synthetic getButtonTitle$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    .annotation runtime Lexpo/modules/kotlin/records/Required;
    .end annotation

    return-void
.end method

.method public static synthetic getIdentifier$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    .annotation runtime Lexpo/modules/kotlin/records/Required;
    .end annotation

    return-void
.end method

.method public static synthetic getOptions$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getTextInput$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getButtonTitle()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lexpo/modules/notifications/notifications/categories/NotificationActionRecord;->buttonTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getIdentifier()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lexpo/modules/notifications/notifications/categories/NotificationActionRecord;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public final getOptions()Lexpo/modules/notifications/notifications/categories/NotificationActionRecord$Options;
    .locals 1

    .line 38
    iget-object v0, p0, Lexpo/modules/notifications/notifications/categories/NotificationActionRecord;->options:Lexpo/modules/notifications/notifications/categories/NotificationActionRecord$Options;

    return-object v0
.end method

.method public final getTextInput()Lexpo/modules/notifications/notifications/categories/NotificationActionRecord$TextInput;
    .locals 1

    .line 35
    iget-object v0, p0, Lexpo/modules/notifications/notifications/categories/NotificationActionRecord;->textInput:Lexpo/modules/notifications/notifications/categories/NotificationActionRecord$TextInput;

    return-object v0
.end method
