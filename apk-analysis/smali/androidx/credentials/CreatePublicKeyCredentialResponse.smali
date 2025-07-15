.class public final Landroidx/credentials/CreatePublicKeyCredentialResponse;
.super Landroidx/credentials/CreateCredentialResponse;
.source "CreatePublicKeyCredentialResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/CreatePublicKeyCredentialResponse$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Landroidx/credentials/CreatePublicKeyCredentialResponse;",
        "Landroidx/credentials/CreateCredentialResponse;",
        "registrationResponseJson",
        "",
        "(Ljava/lang/String;)V",
        "data",
        "Landroid/os/Bundle;",
        "(Ljava/lang/String;Landroid/os/Bundle;)V",
        "getRegistrationResponseJson",
        "()Ljava/lang/String;",
        "Companion",
        "credentials_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final BUNDLE_KEY_REGISTRATION_RESPONSE_JSON:Ljava/lang/String; = "androidx.credentials.BUNDLE_KEY_REGISTRATION_RESPONSE_JSON"

.field public static final Companion:Landroidx/credentials/CreatePublicKeyCredentialResponse$Companion;


# instance fields
.field private final registrationResponseJson:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/credentials/CreatePublicKeyCredentialResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/credentials/CreatePublicKeyCredentialResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/credentials/CreatePublicKeyCredentialResponse;->Companion:Landroidx/credentials/CreatePublicKeyCredentialResponse$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "registrationResponseJson"    # Ljava/lang/String;

    const-string/jumbo v0, "registrationResponseJson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget-object v0, Landroidx/credentials/CreatePublicKeyCredentialResponse;->Companion:Landroidx/credentials/CreatePublicKeyCredentialResponse$Companion;

    invoke-virtual {v0, p1}, Landroidx/credentials/CreatePublicKeyCredentialResponse$Companion;->toBundle$credentials_release(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/credentials/CreatePublicKeyCredentialResponse;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "registrationResponseJson"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 31
    nop

    .line 32
    nop

    .line 33
    nop

    .line 31
    const-string v0, "androidx.credentials.TYPE_PUBLIC_KEY_CREDENTIAL"

    invoke-direct {p0, v0, p2}, Landroidx/credentials/CreateCredentialResponse;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 29
    iput-object p1, p0, Landroidx/credentials/CreatePublicKeyCredentialResponse;->registrationResponseJson:Ljava/lang/String;

    .line 47
    nop

    .line 48
    sget-object v0, Landroidx/credentials/internal/RequestValidationHelper;->Companion:Landroidx/credentials/internal/RequestValidationHelper$Companion;

    iget-object v1, p0, Landroidx/credentials/CreatePublicKeyCredentialResponse;->registrationResponseJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/credentials/internal/RequestValidationHelper$Companion;->isValidJSON(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    nop

    .line 28
    return-void

    .line 48
    :cond_0
    const/4 v0, 0x0

    .line 49
    .local v0, "$i$a$-require-CreatePublicKeyCredentialResponse$1":I
    nop

    .line 48
    .end local v0    # "$i$a$-require-CreatePublicKeyCredentialResponse$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "registrationResponseJson must not be empty, and must be a valid JSON"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/credentials/CreatePublicKeyCredentialResponse;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static final createFrom$credentials_release(Landroid/os/Bundle;)Landroidx/credentials/CreatePublicKeyCredentialResponse;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/CreatePublicKeyCredentialResponse;->Companion:Landroidx/credentials/CreatePublicKeyCredentialResponse$Companion;

    invoke-virtual {v0, p0}, Landroidx/credentials/CreatePublicKeyCredentialResponse$Companion;->createFrom$credentials_release(Landroid/os/Bundle;)Landroidx/credentials/CreatePublicKeyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method public static final toBundle$credentials_release(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/CreatePublicKeyCredentialResponse;->Companion:Landroidx/credentials/CreatePublicKeyCredentialResponse$Companion;

    invoke-virtual {v0, p0}, Landroidx/credentials/CreatePublicKeyCredentialResponse$Companion;->toBundle$credentials_release(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getRegistrationResponseJson()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Landroidx/credentials/CreatePublicKeyCredentialResponse;->registrationResponseJson:Ljava/lang/String;

    return-object v0
.end method
