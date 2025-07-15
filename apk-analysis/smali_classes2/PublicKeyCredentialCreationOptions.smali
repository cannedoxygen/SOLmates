.class public final LPublicKeyCredentialCreationOptions;
.super Ljava/lang/Object;
.source "PasskeyOptions.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R&\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR&\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u000c\u0010\u0002\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R$\u0010\u0011\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0012\u0010\u0002\u001a\u0004\u0008\u0013\u0010\u0007\"\u0004\u0008\u0014\u0010\tR,\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0018\u0010\u0002\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR*\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u00168\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u001f\u0010\u0002\u001a\u0004\u0008 \u0010\u001a\"\u0004\u0008!\u0010\u001cR$\u0010\"\u001a\u00020#8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008$\u0010\u0002\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R(\u0010)\u001a\u0004\u0018\u00010*8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0016\n\u0002\u00100\u0012\u0004\u0008+\u0010\u0002\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R$\u00101\u001a\u0002028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u00083\u0010\u0002\u001a\u0004\u00084\u00105\"\u0004\u00086\u00107\u00a8\u00068"
    }
    d2 = {
        "LPublicKeyCredentialCreationOptions;",
        "Lexpo/modules/kotlin/records/Record;",
        "()V",
        "attestation",
        "",
        "getAttestation$annotations",
        "getAttestation",
        "()Ljava/lang/String;",
        "setAttestation",
        "(Ljava/lang/String;)V",
        "authenticatorSelection",
        "LAuthenticatorSelectionCriteria;",
        "getAuthenticatorSelection$annotations",
        "getAuthenticatorSelection",
        "()LAuthenticatorSelectionCriteria;",
        "setAuthenticatorSelection",
        "(LAuthenticatorSelectionCriteria;)V",
        "challenge",
        "getChallenge$annotations",
        "getChallenge",
        "setChallenge",
        "excludeCredentials",
        "",
        "LPublicKeyCredentialDescriptor;",
        "getExcludeCredentials$annotations",
        "getExcludeCredentials",
        "()Ljava/util/List;",
        "setExcludeCredentials",
        "(Ljava/util/List;)V",
        "pubKeyCredParams",
        "LPublicKeyCredentialParameters;",
        "getPubKeyCredParams$annotations",
        "getPubKeyCredParams",
        "setPubKeyCredParams",
        "rp",
        "LPublicKeyCredentialRpEntity;",
        "getRp$annotations",
        "getRp",
        "()LPublicKeyCredentialRpEntity;",
        "setRp",
        "(LPublicKeyCredentialRpEntity;)V",
        "timeout",
        "",
        "getTimeout$annotations",
        "getTimeout",
        "()Ljava/lang/Integer;",
        "setTimeout",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "user",
        "LPublicKeyCredentialUserEntity;",
        "getUser$annotations",
        "getUser",
        "()LPublicKeyCredentialUserEntity;",
        "setUser",
        "(LPublicKeyCredentialUserEntity;)V",
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
.field private attestation:Ljava/lang/String;

.field private authenticatorSelection:LAuthenticatorSelectionCriteria;

.field private challenge:Ljava/lang/String;

.field private excludeCredentials:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LPublicKeyCredentialDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private pubKeyCredParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LPublicKeyCredentialParameters;",
            ">;"
        }
    .end annotation
.end field

.field private rp:LPublicKeyCredentialRpEntity;

.field private timeout:Ljava/lang/Integer;

.field private user:LPublicKeyCredentialUserEntity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, LPublicKeyCredentialRpEntity;

    invoke-direct {v0}, LPublicKeyCredentialRpEntity;-><init>()V

    iput-object v0, p0, LPublicKeyCredentialCreationOptions;->rp:LPublicKeyCredentialRpEntity;

    .line 16
    new-instance v0, LPublicKeyCredentialUserEntity;

    invoke-direct {v0}, LPublicKeyCredentialUserEntity;-><init>()V

    iput-object v0, p0, LPublicKeyCredentialCreationOptions;->user:LPublicKeyCredentialUserEntity;

    .line 19
    const-string v0, ""

    iput-object v0, p0, LPublicKeyCredentialCreationOptions;->challenge:Ljava/lang/String;

    .line 22
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LPublicKeyCredentialCreationOptions;->pubKeyCredParams:Ljava/util/List;

    .line 10
    return-void
.end method

.method public static synthetic getAttestation$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getAuthenticatorSelection$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getChallenge$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getExcludeCredentials$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getPubKeyCredParams$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getRp$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getTimeout$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getUser$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getAttestation()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, LPublicKeyCredentialCreationOptions;->attestation:Ljava/lang/String;

    return-object v0
.end method

.method public final getAuthenticatorSelection()LAuthenticatorSelectionCriteria;
    .locals 1

    .line 31
    iget-object v0, p0, LPublicKeyCredentialCreationOptions;->authenticatorSelection:LAuthenticatorSelectionCriteria;

    return-object v0
.end method

.method public final getChallenge()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, LPublicKeyCredentialCreationOptions;->challenge:Ljava/lang/String;

    return-object v0
.end method

.method public final getExcludeCredentials()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LPublicKeyCredentialDescriptor;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, LPublicKeyCredentialCreationOptions;->excludeCredentials:Ljava/util/List;

    return-object v0
.end method

.method public final getPubKeyCredParams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LPublicKeyCredentialParameters;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, LPublicKeyCredentialCreationOptions;->pubKeyCredParams:Ljava/util/List;

    return-object v0
.end method

.method public final getRp()LPublicKeyCredentialRpEntity;
    .locals 1

    .line 13
    iget-object v0, p0, LPublicKeyCredentialCreationOptions;->rp:LPublicKeyCredentialRpEntity;

    return-object v0
.end method

.method public final getTimeout()Ljava/lang/Integer;
    .locals 1

    .line 25
    iget-object v0, p0, LPublicKeyCredentialCreationOptions;->timeout:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getUser()LPublicKeyCredentialUserEntity;
    .locals 1

    .line 16
    iget-object v0, p0, LPublicKeyCredentialCreationOptions;->user:LPublicKeyCredentialUserEntity;

    return-object v0
.end method

.method public final setAttestation(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 34
    iput-object p1, p0, LPublicKeyCredentialCreationOptions;->attestation:Ljava/lang/String;

    return-void
.end method

.method public final setAuthenticatorSelection(LAuthenticatorSelectionCriteria;)V
    .locals 0
    .param p1, "<set-?>"    # LAuthenticatorSelectionCriteria;

    .line 31
    iput-object p1, p0, LPublicKeyCredentialCreationOptions;->authenticatorSelection:LAuthenticatorSelectionCriteria;

    return-void
.end method

.method public final setChallenge(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, LPublicKeyCredentialCreationOptions;->challenge:Ljava/lang/String;

    return-void
.end method

.method public final setExcludeCredentials(Ljava/util/List;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LPublicKeyCredentialDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, LPublicKeyCredentialCreationOptions;->excludeCredentials:Ljava/util/List;

    return-void
.end method

.method public final setPubKeyCredParams(Ljava/util/List;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LPublicKeyCredentialParameters;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, LPublicKeyCredentialCreationOptions;->pubKeyCredParams:Ljava/util/List;

    return-void
.end method

.method public final setRp(LPublicKeyCredentialRpEntity;)V
    .locals 1
    .param p1, "<set-?>"    # LPublicKeyCredentialRpEntity;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, LPublicKeyCredentialCreationOptions;->rp:LPublicKeyCredentialRpEntity;

    return-void
.end method

.method public final setTimeout(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/Integer;

    .line 25
    iput-object p1, p0, LPublicKeyCredentialCreationOptions;->timeout:Ljava/lang/Integer;

    return-void
.end method

.method public final setUser(LPublicKeyCredentialUserEntity;)V
    .locals 1
    .param p1, "<set-?>"    # LPublicKeyCredentialUserEntity;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, LPublicKeyCredentialCreationOptions;->user:LPublicKeyCredentialUserEntity;

    return-void
.end method
