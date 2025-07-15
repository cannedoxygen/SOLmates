.class public final LRegistrationResponseJSON;
.super Ljava/lang/Object;
.source "PasskeyOptions.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R&\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR&\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u000c\u0010\u0002\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R$\u0010\u0011\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0012\u0010\u0002\u001a\u0004\u0008\u0013\u0010\u0007\"\u0004\u0008\u0014\u0010\tR$\u0010\u0015\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0016\u0010\u0002\u001a\u0004\u0008\u0017\u0010\u0007\"\u0004\u0008\u0018\u0010\tR$\u0010\u0019\u001a\u00020\u001a8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u001b\u0010\u0002\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR$\u0010 \u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008!\u0010\u0002\u001a\u0004\u0008\"\u0010\u0007\"\u0004\u0008#\u0010\t\u00a8\u0006$"
    }
    d2 = {
        "LRegistrationResponseJSON;",
        "Lexpo/modules/kotlin/records/Record;",
        "()V",
        "authenticatorAttachment",
        "",
        "getAuthenticatorAttachment$annotations",
        "getAuthenticatorAttachment",
        "()Ljava/lang/String;",
        "setAuthenticatorAttachment",
        "(Ljava/lang/String;)V",
        "clientExtensionResults",
        "LAuthenticationExtensionsClientOutputsJSON;",
        "getClientExtensionResults$annotations",
        "getClientExtensionResults",
        "()LAuthenticationExtensionsClientOutputsJSON;",
        "setClientExtensionResults",
        "(LAuthenticationExtensionsClientOutputsJSON;)V",
        "id",
        "getId$annotations",
        "getId",
        "setId",
        "rawId",
        "getRawId$annotations",
        "getRawId",
        "setRawId",
        "response",
        "LAuthenticatorAttestationResponseJSON;",
        "getResponse$annotations",
        "getResponse",
        "()LAuthenticatorAttestationResponseJSON;",
        "setResponse",
        "(LAuthenticatorAttestationResponseJSON;)V",
        "type",
        "getType$annotations",
        "getType",
        "setType",
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

.field private clientExtensionResults:LAuthenticationExtensionsClientOutputsJSON;

.field private id:Ljava/lang/String;

.field private rawId:Ljava/lang/String;

.field private response:LAuthenticatorAttestationResponseJSON;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const-string v0, ""

    iput-object v0, p0, LRegistrationResponseJSON;->id:Ljava/lang/String;

    .line 129
    iput-object v0, p0, LRegistrationResponseJSON;->rawId:Ljava/lang/String;

    .line 132
    new-instance v0, LAuthenticatorAttestationResponseJSON;

    invoke-direct {v0}, LAuthenticatorAttestationResponseJSON;-><init>()V

    iput-object v0, p0, LRegistrationResponseJSON;->response:LAuthenticatorAttestationResponseJSON;

    .line 141
    const-string v0, "public-key"

    iput-object v0, p0, LRegistrationResponseJSON;->type:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public static synthetic getAuthenticatorAttachment$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getClientExtensionResults$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getId$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getRawId$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getResponse$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getType$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getAuthenticatorAttachment()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, LRegistrationResponseJSON;->authenticatorAttachment:Ljava/lang/String;

    return-object v0
.end method

.method public final getClientExtensionResults()LAuthenticationExtensionsClientOutputsJSON;
    .locals 1

    .line 138
    iget-object v0, p0, LRegistrationResponseJSON;->clientExtensionResults:LAuthenticationExtensionsClientOutputsJSON;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, LRegistrationResponseJSON;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getRawId()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, LRegistrationResponseJSON;->rawId:Ljava/lang/String;

    return-object v0
.end method

.method public final getResponse()LAuthenticatorAttestationResponseJSON;
    .locals 1

    .line 132
    iget-object v0, p0, LRegistrationResponseJSON;->response:LAuthenticatorAttestationResponseJSON;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, LRegistrationResponseJSON;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final setAuthenticatorAttachment(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 135
    iput-object p1, p0, LRegistrationResponseJSON;->authenticatorAttachment:Ljava/lang/String;

    return-void
.end method

.method public final setClientExtensionResults(LAuthenticationExtensionsClientOutputsJSON;)V
    .locals 0
    .param p1, "<set-?>"    # LAuthenticationExtensionsClientOutputsJSON;

    .line 138
    iput-object p1, p0, LRegistrationResponseJSON;->clientExtensionResults:LAuthenticationExtensionsClientOutputsJSON;

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    iput-object p1, p0, LRegistrationResponseJSON;->id:Ljava/lang/String;

    return-void
.end method

.method public final setRawId(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    iput-object p1, p0, LRegistrationResponseJSON;->rawId:Ljava/lang/String;

    return-void
.end method

.method public final setResponse(LAuthenticatorAttestationResponseJSON;)V
    .locals 1
    .param p1, "<set-?>"    # LAuthenticatorAttestationResponseJSON;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iput-object p1, p0, LRegistrationResponseJSON;->response:LAuthenticatorAttestationResponseJSON;

    return-void
.end method

.method public final setType(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iput-object p1, p0, LRegistrationResponseJSON;->type:Ljava/lang/String;

    return-void
.end method
