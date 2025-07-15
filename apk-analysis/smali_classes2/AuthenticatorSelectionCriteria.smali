.class public final LAuthenticatorSelectionCriteria;
.super Ljava/lang/Object;
.source "PasskeyOptions.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u000f\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R&\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR(\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0016\n\u0002\u0010\u0011\u0012\u0004\u0008\u000c\u0010\u0002\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R&\u0010\u0012\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0013\u0010\u0002\u001a\u0004\u0008\u0014\u0010\u0007\"\u0004\u0008\u0015\u0010\tR&\u0010\u0016\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0017\u0010\u0002\u001a\u0004\u0008\u0018\u0010\u0007\"\u0004\u0008\u0019\u0010\t\u00a8\u0006\u001a"
    }
    d2 = {
        "LAuthenticatorSelectionCriteria;",
        "Lexpo/modules/kotlin/records/Record;",
        "()V",
        "authenticatorAttachment",
        "",
        "getAuthenticatorAttachment$annotations",
        "getAuthenticatorAttachment",
        "()Ljava/lang/String;",
        "setAuthenticatorAttachment",
        "(Ljava/lang/String;)V",
        "requireResidentKey",
        "",
        "getRequireResidentKey$annotations",
        "getRequireResidentKey",
        "()Ljava/lang/Boolean;",
        "setRequireResidentKey",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "residentKey",
        "getResidentKey$annotations",
        "getResidentKey",
        "setResidentKey",
        "userVerification",
        "getUserVerification$annotations",
        "getUserVerification",
        "setUserVerification",
        "react-native-passkeys_debug"
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
.field private authenticatorAttachment:Ljava/lang/String;

.field private requireResidentKey:Ljava/lang/Boolean;

.field private residentKey:Ljava/lang/String;

.field private userVerification:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getAuthenticatorAttachment$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getRequireResidentKey$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getResidentKey$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getUserVerification$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getAuthenticatorAttachment()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, LAuthenticatorSelectionCriteria;->authenticatorAttachment:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequireResidentKey()Ljava/lang/Boolean;
    .locals 1

    .line 47
    iget-object v0, p0, LAuthenticatorSelectionCriteria;->requireResidentKey:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getResidentKey()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, LAuthenticatorSelectionCriteria;->residentKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserVerification()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, LAuthenticatorSelectionCriteria;->userVerification:Ljava/lang/String;

    return-object v0
.end method

.method public final setAuthenticatorAttachment(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 41
    iput-object p1, p0, LAuthenticatorSelectionCriteria;->authenticatorAttachment:Ljava/lang/String;

    return-void
.end method

.method public final setRequireResidentKey(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/Boolean;

    .line 47
    iput-object p1, p0, LAuthenticatorSelectionCriteria;->requireResidentKey:Ljava/lang/Boolean;

    return-void
.end method

.method public final setResidentKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 44
    iput-object p1, p0, LAuthenticatorSelectionCriteria;->residentKey:Ljava/lang/String;

    return-void
.end method

.method public final setUserVerification(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 50
    iput-object p1, p0, LAuthenticatorSelectionCriteria;->userVerification:Ljava/lang/String;

    return-void
.end method
