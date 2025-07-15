.class public final LPublicKeyCredentialRequestOptions;
.super Ljava/lang/Object;
.source "PasskeyOptions.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R,\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0006\u0010\u0002\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR$\u0010\u000b\u001a\u00020\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\r\u0010\u0002\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R$\u0010\u0012\u001a\u00020\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0013\u0010\u0002\u001a\u0004\u0008\u0014\u0010\u000f\"\u0004\u0008\u0015\u0010\u0011R(\u0010\u0016\u001a\u0004\u0018\u00010\u00178\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0016\n\u0002\u0010\u001d\u0012\u0004\u0008\u0018\u0010\u0002\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR&\u0010\u001e\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u001f\u0010\u0002\u001a\u0004\u0008 \u0010\u000f\"\u0004\u0008!\u0010\u0011\u00a8\u0006\""
    }
    d2 = {
        "LPublicKeyCredentialRequestOptions;",
        "Lexpo/modules/kotlin/records/Record;",
        "()V",
        "allowCredentials",
        "",
        "LPublicKeyCredentialDescriptor;",
        "getAllowCredentials$annotations",
        "getAllowCredentials",
        "()Ljava/util/List;",
        "setAllowCredentials",
        "(Ljava/util/List;)V",
        "challenge",
        "",
        "getChallenge$annotations",
        "getChallenge",
        "()Ljava/lang/String;",
        "setChallenge",
        "(Ljava/lang/String;)V",
        "rpId",
        "getRpId$annotations",
        "getRpId",
        "setRpId",
        "timeout",
        "",
        "getTimeout$annotations",
        "getTimeout",
        "()Ljava/lang/Integer;",
        "setTimeout",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
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
.field private allowCredentials:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LPublicKeyCredentialDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private challenge:Ljava/lang/String;

.field private rpId:Ljava/lang/String;

.field private timeout:Ljava/lang/Integer;

.field private userVerification:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const-string v0, ""

    iput-object v0, p0, LPublicKeyCredentialRequestOptions;->challenge:Ljava/lang/String;

    .line 71
    iput-object v0, p0, LPublicKeyCredentialRequestOptions;->rpId:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public static synthetic getAllowCredentials$annotations()V
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

.method public static synthetic getRpId$annotations()V
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

.method public static synthetic getUserVerification$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getAllowCredentials()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LPublicKeyCredentialDescriptor;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, LPublicKeyCredentialRequestOptions;->allowCredentials:Ljava/util/List;

    return-object v0
.end method

.method public final getChallenge()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, LPublicKeyCredentialRequestOptions;->challenge:Ljava/lang/String;

    return-object v0
.end method

.method public final getRpId()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, LPublicKeyCredentialRequestOptions;->rpId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTimeout()Ljava/lang/Integer;
    .locals 1

    .line 75
    iget-object v0, p0, LPublicKeyCredentialRequestOptions;->timeout:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getUserVerification()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, LPublicKeyCredentialRequestOptions;->userVerification:Ljava/lang/String;

    return-object v0
.end method

.method public final setAllowCredentials(Ljava/util/List;)V
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

    .line 78
    iput-object p1, p0, LPublicKeyCredentialRequestOptions;->allowCredentials:Ljava/util/List;

    return-void
.end method

.method public final setChallenge(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iput-object p1, p0, LPublicKeyCredentialRequestOptions;->challenge:Ljava/lang/String;

    return-void
.end method

.method public final setRpId(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iput-object p1, p0, LPublicKeyCredentialRequestOptions;->rpId:Ljava/lang/String;

    return-void
.end method

.method public final setTimeout(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/Integer;

    .line 75
    iput-object p1, p0, LPublicKeyCredentialRequestOptions;->timeout:Ljava/lang/Integer;

    return-void
.end method

.method public final setUserVerification(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 81
    iput-object p1, p0, LPublicKeyCredentialRequestOptions;->userVerification:Ljava/lang/String;

    return-void
.end method
