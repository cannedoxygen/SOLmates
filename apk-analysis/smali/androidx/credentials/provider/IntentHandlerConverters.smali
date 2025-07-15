.class public final Landroidx/credentials/provider/IntentHandlerConverters;
.super Ljava/lang/Object;
.source "IntentHandlerConverters.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u0007\u001a\u000e\u0010\u0003\u001a\u0004\u0018\u00010\u0004*\u00020\u0002H\u0007\u001a\u000e\u0010\u0005\u001a\u0004\u0018\u00010\u0006*\u00020\u0002H\u0007\u001a\u000e\u0010\u0007\u001a\u0004\u0018\u00010\u0008*\u00020\u0002H\u0007\u001a\u000e\u0010\t\u001a\u0004\u0018\u00010\n*\u00020\u0002H\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "getBeginGetResponse",
        "Landroidx/credentials/provider/BeginGetCredentialResponse;",
        "Landroid/content/Intent;",
        "getCreateCredentialCredentialResponse",
        "Landroid/credentials/CreateCredentialResponse;",
        "getCreateCredentialException",
        "Landroid/credentials/CreateCredentialException;",
        "getGetCredentialException",
        "Landroid/credentials/GetCredentialException;",
        "getGetCredentialResponse",
        "Landroid/credentials/GetCredentialResponse;",
        "credentials_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getBeginGetResponse(Landroid/content/Intent;)Landroidx/credentials/provider/BeginGetCredentialResponse;
    .locals 3
    .param p0, "$this$getBeginGetResponse"    # Landroid/content/Intent;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    const-string v0, "android.service.credentials.extra.BEGIN_GET_CREDENTIAL_RESPONSE"

    .line 75
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 76
    return-object v2

    .line 79
    :cond_0
    nop

    .line 80
    const-class v1, Landroid/service/credentials/BeginGetCredentialResponse;

    .line 79
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/credentials/BeginGetCredentialResponse;

    .line 82
    .local v1, "res":Landroid/service/credentials/BeginGetCredentialResponse;
    if-nez v1, :cond_1

    .line 83
    return-object v2

    .line 86
    :cond_1
    sget-object v2, Landroidx/credentials/provider/utils/BeginGetCredentialUtil;->Companion:Landroidx/credentials/provider/utils/BeginGetCredentialUtil$Companion;

    invoke-virtual {v2, v1}, Landroidx/credentials/provider/utils/BeginGetCredentialUtil$Companion;->convertToJetpackResponse(Landroid/service/credentials/BeginGetCredentialResponse;)Landroidx/credentials/provider/BeginGetCredentialResponse;

    move-result-object v2

    return-object v2
.end method

.method public static final getCreateCredentialCredentialResponse(Landroid/content/Intent;)Landroid/credentials/CreateCredentialResponse;
    .locals 2
    .param p0, "$this$getCreateCredentialCredentialResponse"    # Landroid/content/Intent;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    const-string v0, "android.service.credentials.extra.CREATE_CREDENTIAL_RESPONSE"

    .line 111
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    const/4 v1, 0x0

    return-object v1

    .line 115
    :cond_0
    nop

    .line 116
    const-class v1, Landroid/credentials/CreateCredentialResponse;

    .line 115
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/credentials/CreateCredentialResponse;

    return-object v1
.end method

.method public static final getCreateCredentialException(Landroid/content/Intent;)Landroid/credentials/CreateCredentialException;
    .locals 2
    .param p0, "$this$getCreateCredentialException"    # Landroid/content/Intent;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    const-string v0, "android.service.credentials.extra.CREATE_CREDENTIAL_EXCEPTION"

    .line 45
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    const/4 v1, 0x0

    return-object v1

    .line 49
    :cond_0
    nop

    .line 50
    const-class v1, Landroid/credentials/CreateCredentialException;

    .line 49
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/credentials/CreateCredentialException;

    return-object v1
.end method

.method public static final getGetCredentialException(Landroid/content/Intent;)Landroid/credentials/GetCredentialException;
    .locals 2
    .param p0, "$this$getGetCredentialException"    # Landroid/content/Intent;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    const-string v0, "android.service.credentials.extra.GET_CREDENTIAL_EXCEPTION"

    .line 60
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    const/4 v1, 0x0

    return-object v1

    .line 64
    :cond_0
    nop

    .line 65
    const-class v1, Landroid/credentials/GetCredentialException;

    .line 64
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/credentials/GetCredentialException;

    return-object v1
.end method

.method public static final getGetCredentialResponse(Landroid/content/Intent;)Landroid/credentials/GetCredentialResponse;
    .locals 2
    .param p0, "$this$getGetCredentialResponse"    # Landroid/content/Intent;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    const-string v0, "android.service.credentials.extra.GET_CREDENTIAL_RESPONSE"

    .line 95
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    const/4 v1, 0x0

    return-object v1

    .line 99
    :cond_0
    nop

    .line 100
    const-class v1, Landroid/credentials/GetCredentialResponse;

    .line 99
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/credentials/GetCredentialResponse;

    return-object v1
.end method
