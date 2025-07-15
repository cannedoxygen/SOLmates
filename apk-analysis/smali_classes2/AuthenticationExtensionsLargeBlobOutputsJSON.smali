.class public final LAuthenticationExtensionsLargeBlobOutputsJSON;
.super Ljava/lang/Object;
.source "PasskeyOptions.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R&\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR(\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0016\n\u0002\u0010\u0011\u0012\u0004\u0008\u000c\u0010\u0002\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R(\u0010\u0012\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0016\n\u0002\u0010\u0011\u0012\u0004\u0008\u0013\u0010\u0002\u001a\u0004\u0008\u0014\u0010\u000e\"\u0004\u0008\u0015\u0010\u0010\u00a8\u0006\u0016"
    }
    d2 = {
        "LAuthenticationExtensionsLargeBlobOutputsJSON;",
        "Lexpo/modules/kotlin/records/Record;",
        "()V",
        "blob",
        "",
        "getBlob$annotations",
        "getBlob",
        "()Ljava/lang/String;",
        "setBlob",
        "(Ljava/lang/String;)V",
        "supported",
        "",
        "getSupported$annotations",
        "getSupported",
        "()Ljava/lang/Boolean;",
        "setSupported",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "written",
        "getWritten$annotations",
        "getWritten",
        "setWritten",
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
.field private blob:Ljava/lang/String;

.field private supported:Ljava/lang/Boolean;

.field private written:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getBlob$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getSupported$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getWritten$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getBlob()Ljava/lang/String;
    .locals 1

    .line 235
    iget-object v0, p0, LAuthenticationExtensionsLargeBlobOutputsJSON;->blob:Ljava/lang/String;

    return-object v0
.end method

.method public final getSupported()Ljava/lang/Boolean;
    .locals 1

    .line 232
    iget-object v0, p0, LAuthenticationExtensionsLargeBlobOutputsJSON;->supported:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getWritten()Ljava/lang/Boolean;
    .locals 1

    .line 238
    iget-object v0, p0, LAuthenticationExtensionsLargeBlobOutputsJSON;->written:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final setBlob(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 235
    iput-object p1, p0, LAuthenticationExtensionsLargeBlobOutputsJSON;->blob:Ljava/lang/String;

    return-void
.end method

.method public final setSupported(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/Boolean;

    .line 232
    iput-object p1, p0, LAuthenticationExtensionsLargeBlobOutputsJSON;->supported:Ljava/lang/Boolean;

    return-void
.end method

.method public final setWritten(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/Boolean;

    .line 238
    iput-object p1, p0, LAuthenticationExtensionsLargeBlobOutputsJSON;->written:Ljava/lang/Boolean;

    return-void
.end method
