.class public final Landroidx/credentials/exceptions/publickeycredential/CreatePublicKeyCredentialException$Companion;
.super Ljava/lang/Object;
.source "CreatePublicKeyCredentialException.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/exceptions/publickeycredential/CreatePublicKeyCredentialException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Landroidx/credentials/exceptions/publickeycredential/CreatePublicKeyCredentialException$Companion;",
        "",
        "()V",
        "createFrom",
        "Landroidx/credentials/exceptions/CreateCredentialException;",
        "type",
        "",
        "msg",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/credentials/exceptions/publickeycredential/CreatePublicKeyCredentialException$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFrom(Ljava/lang/String;Ljava/lang/String;)Landroidx/credentials/exceptions/CreateCredentialException;
    .locals 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    nop

    .line 47
    move-object v0, p1

    .local v0, "$this$createFrom_u24lambda_u240":Ljava/lang/String;
    const/4 v1, 0x0

    .line 48
    .local v1, "$i$a$-with-CreatePublicKeyCredentialException$Companion$createFrom$1":I
    nop

    .line 49
    :try_start_0
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    .line 50
    const-string v3, "androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION"

    check-cast v3, Ljava/lang/CharSequence;

    .line 49
    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v3, v6, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    sget-object v2, Landroidx/credentials/exceptions/publickeycredential/CreatePublicKeyCredentialDomException;->Companion:Landroidx/credentials/exceptions/publickeycredential/CreatePublicKeyCredentialDomException$Companion;

    invoke-virtual {v2, p1, p2}, Landroidx/credentials/exceptions/publickeycredential/CreatePublicKeyCredentialDomException$Companion;->createFrom(Ljava/lang/String;Ljava/lang/String;)Landroidx/credentials/exceptions/CreateCredentialException;

    move-result-object v2

    .line 48
    nop

    .line 47
    .end local v0    # "$this$createFrom_u24lambda_u240":Ljava/lang/String;
    .end local v1    # "$i$a$-with-CreatePublicKeyCredentialException$Companion$createFrom$1":I
    goto :goto_0

    .line 52
    .restart local v0    # "$this$createFrom_u24lambda_u240":Ljava/lang/String;
    .restart local v1    # "$i$a$-with-CreatePublicKeyCredentialException$Companion$createFrom$1":I
    :cond_0
    new-instance v2, Landroidx/credentials/internal/FrameworkClassParsingException;

    invoke-direct {v2}, Landroidx/credentials/internal/FrameworkClassParsingException;-><init>()V

    .end local p1    # "type":Ljava/lang/String;
    .end local p2    # "msg":Ljava/lang/String;
    throw v2
    :try_end_0
    .catch Landroidx/credentials/internal/FrameworkClassParsingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v0    # "$this$createFrom_u24lambda_u240":Ljava/lang/String;
    .end local v1    # "$i$a$-with-CreatePublicKeyCredentialException$Companion$createFrom$1":I
    .restart local p1    # "type":Ljava/lang/String;
    .restart local p2    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 58
    .local v0, "t":Landroidx/credentials/internal/FrameworkClassParsingException;
    new-instance v1, Landroidx/credentials/exceptions/CreateCredentialCustomException;

    move-object v2, p2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-direct {v1, p1, v2}, Landroidx/credentials/exceptions/CreateCredentialCustomException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    move-object v2, v1

    check-cast v2, Landroidx/credentials/exceptions/CreateCredentialException;

    .line 46
    .end local v0    # "t":Landroidx/credentials/internal/FrameworkClassParsingException;
    :goto_0
    return-object v2
.end method
