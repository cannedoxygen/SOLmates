.class public final LAuthenticatorAttestationResponseJSON;
.super Ljava/lang/Object;
.source "PasskeyOptions.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0012\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R$\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR&\u0010\n\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u000b\u0010\u0002\u001a\u0004\u0008\u000c\u0010\u0007\"\u0004\u0008\r\u0010\tR$\u0010\u000e\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u000f\u0010\u0002\u001a\u0004\u0008\u0010\u0010\u0007\"\u0004\u0008\u0011\u0010\tR&\u0010\u0012\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0013\u0010\u0002\u001a\u0004\u0008\u0014\u0010\u0007\"\u0004\u0008\u0015\u0010\tR(\u0010\u0016\u001a\u0004\u0018\u00010\u00178\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0016\n\u0002\u0010\u001d\u0012\u0004\u0008\u0018\u0010\u0002\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR,\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u001f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008 \u0010\u0002\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$\u00a8\u0006%"
    }
    d2 = {
        "LAuthenticatorAttestationResponseJSON;",
        "Lexpo/modules/kotlin/records/Record;",
        "()V",
        "attestationObject",
        "",
        "getAttestationObject$annotations",
        "getAttestationObject",
        "()Ljava/lang/String;",
        "setAttestationObject",
        "(Ljava/lang/String;)V",
        "authenticatorData",
        "getAuthenticatorData$annotations",
        "getAuthenticatorData",
        "setAuthenticatorData",
        "clientDataJSON",
        "getClientDataJSON$annotations",
        "getClientDataJSON",
        "setClientDataJSON",
        "publicKey",
        "getPublicKey$annotations",
        "getPublicKey",
        "setPublicKey",
        "publicKeyAlgorithm",
        "",
        "getPublicKeyAlgorithm$annotations",
        "getPublicKeyAlgorithm",
        "()Ljava/lang/Integer;",
        "setPublicKeyAlgorithm",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "transports",
        "",
        "getTransports$annotations",
        "getTransports",
        "()Ljava/util/List;",
        "setTransports",
        "(Ljava/util/List;)V",
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
.field private attestationObject:Ljava/lang/String;

.field private authenticatorData:Ljava/lang/String;

.field private clientDataJSON:Ljava/lang/String;

.field private publicKey:Ljava/lang/String;

.field private publicKeyAlgorithm:Ljava/lang/Integer;

.field private transports:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    const-string v0, ""

    iput-object v0, p0, LAuthenticatorAttestationResponseJSON;->clientDataJSON:Ljava/lang/String;

    .line 167
    iput-object v0, p0, LAuthenticatorAttestationResponseJSON;->attestationObject:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public static synthetic getAttestationObject$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getAuthenticatorData$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getClientDataJSON$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getPublicKey$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getPublicKeyAlgorithm$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getTransports$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getAttestationObject()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, LAuthenticatorAttestationResponseJSON;->attestationObject:Ljava/lang/String;

    return-object v0
.end method

.method public final getAuthenticatorData()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, LAuthenticatorAttestationResponseJSON;->authenticatorData:Ljava/lang/String;

    return-object v0
.end method

.method public final getClientDataJSON()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, LAuthenticatorAttestationResponseJSON;->clientDataJSON:Ljava/lang/String;

    return-object v0
.end method

.method public final getPublicKey()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, LAuthenticatorAttestationResponseJSON;->publicKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getPublicKeyAlgorithm()Ljava/lang/Integer;
    .locals 1

    .line 161
    iget-object v0, p0, LAuthenticatorAttestationResponseJSON;->publicKeyAlgorithm:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getTransports()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 158
    iget-object v0, p0, LAuthenticatorAttestationResponseJSON;->transports:Ljava/util/List;

    return-object v0
.end method

.method public final setAttestationObject(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    iput-object p1, p0, LAuthenticatorAttestationResponseJSON;->attestationObject:Ljava/lang/String;

    return-void
.end method

.method public final setAuthenticatorData(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 154
    iput-object p1, p0, LAuthenticatorAttestationResponseJSON;->authenticatorData:Ljava/lang/String;

    return-void
.end method

.method public final setClientDataJSON(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iput-object p1, p0, LAuthenticatorAttestationResponseJSON;->clientDataJSON:Ljava/lang/String;

    return-void
.end method

.method public final setPublicKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 164
    iput-object p1, p0, LAuthenticatorAttestationResponseJSON;->publicKey:Ljava/lang/String;

    return-void
.end method

.method public final setPublicKeyAlgorithm(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/Integer;

    .line 161
    iput-object p1, p0, LAuthenticatorAttestationResponseJSON;->publicKeyAlgorithm:Ljava/lang/Integer;

    return-void
.end method

.method public final setTransports(Ljava/util/List;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 158
    iput-object p1, p0, LAuthenticatorAttestationResponseJSON;->transports:Ljava/util/List;

    return-void
.end method
