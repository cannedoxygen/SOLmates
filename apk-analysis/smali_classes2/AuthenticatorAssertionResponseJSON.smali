.class public final LAuthenticatorAssertionResponseJSON;
.super Ljava/lang/Object;
.source "PasskeyOptions.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R&\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR$\u0010\n\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u000b\u0010\u0002\u001a\u0004\u0008\u000c\u0010\u0007\"\u0004\u0008\r\u0010\tR$\u0010\u000e\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u000f\u0010\u0002\u001a\u0004\u0008\u0010\u0010\u0007\"\u0004\u0008\u0011\u0010\tR$\u0010\u0012\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0013\u0010\u0002\u001a\u0004\u0008\u0014\u0010\u0007\"\u0004\u0008\u0015\u0010\tR&\u0010\u0016\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0017\u0010\u0002\u001a\u0004\u0008\u0018\u0010\u0007\"\u0004\u0008\u0019\u0010\t\u00a8\u0006\u001a"
    }
    d2 = {
        "LAuthenticatorAssertionResponseJSON;",
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
        "signature",
        "getSignature$annotations",
        "getSignature",
        "setSignature",
        "userHandle",
        "getUserHandle$annotations",
        "getUserHandle",
        "setUserHandle",
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

.field private signature:Ljava/lang/String;

.field private userHandle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    const-string v0, ""

    iput-object v0, p0, LAuthenticatorAssertionResponseJSON;->authenticatorData:Ljava/lang/String;

    .line 202
    iput-object v0, p0, LAuthenticatorAssertionResponseJSON;->clientDataJSON:Ljava/lang/String;

    .line 205
    iput-object v0, p0, LAuthenticatorAssertionResponseJSON;->signature:Ljava/lang/String;

    .line 196
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

.method public static synthetic getSignature$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getUserHandle$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getAttestationObject()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, LAuthenticatorAssertionResponseJSON;->attestationObject:Ljava/lang/String;

    return-object v0
.end method

.method public final getAuthenticatorData()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, LAuthenticatorAssertionResponseJSON;->authenticatorData:Ljava/lang/String;

    return-object v0
.end method

.method public final getClientDataJSON()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, LAuthenticatorAssertionResponseJSON;->clientDataJSON:Ljava/lang/String;

    return-object v0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 1

    .line 205
    iget-object v0, p0, LAuthenticatorAssertionResponseJSON;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserHandle()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, LAuthenticatorAssertionResponseJSON;->userHandle:Ljava/lang/String;

    return-object v0
.end method

.method public final setAttestationObject(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 211
    iput-object p1, p0, LAuthenticatorAssertionResponseJSON;->attestationObject:Ljava/lang/String;

    return-void
.end method

.method public final setAuthenticatorData(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    iput-object p1, p0, LAuthenticatorAssertionResponseJSON;->authenticatorData:Ljava/lang/String;

    return-void
.end method

.method public final setClientDataJSON(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    iput-object p1, p0, LAuthenticatorAssertionResponseJSON;->clientDataJSON:Ljava/lang/String;

    return-void
.end method

.method public final setSignature(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    iput-object p1, p0, LAuthenticatorAssertionResponseJSON;->signature:Ljava/lang/String;

    return-void
.end method

.method public final setUserHandle(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 208
    iput-object p1, p0, LAuthenticatorAssertionResponseJSON;->userHandle:Ljava/lang/String;

    return-void
.end method
