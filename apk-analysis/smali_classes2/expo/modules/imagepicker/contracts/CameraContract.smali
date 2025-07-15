.class public final Lexpo/modules/imagepicker/contracts/CameraContract;
.super Ljava/lang/Object;
.source "CameraContract.kt"

# interfaces
.implements Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract<",
        "Lexpo/modules/imagepicker/contracts/CameraContractOptions;",
        "Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCameraContract.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CameraContract.kt\nexpo/modules/imagepicker/contracts/CameraContract\n+ 2 Uri.kt\nandroidx/core/net/UriKt\n*L\n1#1,67:1\n29#2:68\n*S KotlinDebug\n*F\n+ 1 CameraContract.kt\nexpo/modules/imagepicker/contracts/CameraContract\n*L\n34#1:68\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0018\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0002H\u0016J\"\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u000cH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u00020\u00088BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0014"
    }
    d2 = {
        "Lexpo/modules/imagepicker/contracts/CameraContract;",
        "Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract;",
        "Lexpo/modules/imagepicker/contracts/CameraContractOptions;",
        "Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;",
        "appContextProvider",
        "Lexpo/modules/kotlin/providers/AppContextProvider;",
        "(Lexpo/modules/kotlin/providers/AppContextProvider;)V",
        "contentResolver",
        "Landroid/content/ContentResolver;",
        "getContentResolver",
        "()Landroid/content/ContentResolver;",
        "createIntent",
        "Landroid/content/Intent;",
        "context",
        "Landroid/content/Context;",
        "input",
        "parseResult",
        "resultCode",
        "",
        "intent",
        "expo-image-picker_debug"
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
.field private final appContextProvider:Lexpo/modules/kotlin/providers/AppContextProvider;


# direct methods
.method public constructor <init>(Lexpo/modules/kotlin/providers/AppContextProvider;)V
    .locals 1
    .param p1, "appContextProvider"    # Lexpo/modules/kotlin/providers/AppContextProvider;

    const-string v0, "appContextProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lexpo/modules/imagepicker/contracts/CameraContract;->appContextProvider:Lexpo/modules/kotlin/providers/AppContextProvider;

    .line 24
    return-void
.end method

.method private final getContentResolver()Landroid/content/ContentResolver;
    .locals 2

    .line 28
    iget-object v0, p0, Lexpo/modules/imagepicker/contracts/CameraContract;->appContextProvider:Lexpo/modules/kotlin/providers/AppContextProvider;

    invoke-interface {v0}, Lexpo/modules/kotlin/providers/AppContextProvider;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getReactContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "getContentResolver(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    .local v0, "$i$a$-requireNotNull-CameraContract$contentResolver$1":I
    nop

    .line 28
    .end local v0    # "$i$a$-requireNotNull-CameraContract$contentResolver$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "React Application Context is null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public createIntent(Landroid/content/Context;Lexpo/modules/imagepicker/contracts/CameraContractOptions;)Landroid/content/Intent;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "input"    # Lexpo/modules/imagepicker/contracts/CameraContractOptions;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p2}, Lexpo/modules/imagepicker/contracts/CameraContractOptions;->getOptions()Lexpo/modules/imagepicker/ImagePickerOptions;

    move-result-object v1

    invoke-virtual {v1}, Lexpo/modules/imagepicker/ImagePickerOptions;->getNativeMediaTypes()Lexpo/modules/imagepicker/MediaTypes;

    move-result-object v1

    invoke-virtual {v1}, Lexpo/modules/imagepicker/MediaTypes;->toCameraIntentAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p2}, Lexpo/modules/imagepicker/contracts/CameraContractOptions;->getUri()Ljava/lang/String;

    move-result-object v1

    .local v1, "$this$toUri$iv":Ljava/lang/String;
    const/4 v2, 0x0

    .line 68
    .local v2, "$i$f$toUri":I
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .end local v1    # "$this$toUri$iv":Ljava/lang/String;
    .end local v2    # "$i$f$toUri":I
    check-cast v1, Landroid/os/Parcelable;

    .line 34
    const-string v2, "output"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "putExtra(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    move-object v1, v0

    .local v1, "$this$createIntent_u24lambda_u241":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 36
    .local v2, "$i$a$-apply-CameraContract$createIntent$1":I
    invoke-virtual {p2}, Lexpo/modules/imagepicker/contracts/CameraContractOptions;->getOptions()Lexpo/modules/imagepicker/ImagePickerOptions;

    move-result-object v3

    invoke-virtual {v3}, Lexpo/modules/imagepicker/ImagePickerOptions;->getNativeMediaTypes()Lexpo/modules/imagepicker/MediaTypes;

    move-result-object v3

    invoke-virtual {v3}, Lexpo/modules/imagepicker/MediaTypes;->toCameraIntentAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.media.action.VIDEO_CAPTURE"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 37
    invoke-virtual {p2}, Lexpo/modules/imagepicker/contracts/CameraContractOptions;->getOptions()Lexpo/modules/imagepicker/ImagePickerOptions;

    move-result-object v3

    invoke-virtual {v3}, Lexpo/modules/imagepicker/ImagePickerOptions;->getVideoMaxDuration()I

    move-result v3

    const-string v4, "android.intent.extra.durationLimit"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 39
    :cond_0
    invoke-virtual {p2}, Lexpo/modules/imagepicker/contracts/CameraContractOptions;->getOptions()Lexpo/modules/imagepicker/ImagePickerOptions;

    move-result-object v3

    invoke-virtual {v3}, Lexpo/modules/imagepicker/ImagePickerOptions;->getCameraType()Lexpo/modules/imagepicker/CameraType;

    move-result-object v3

    sget-object v4, Lexpo/modules/imagepicker/CameraType;->FRONT:Lexpo/modules/imagepicker/CameraType;

    const-string v5, "android.intent.extra.USE_FRONT_CAMERA"

    const-string v6, "android.intent.extras.CAMERA_FACING"

    const/4 v7, 0x1

    if-ne v3, v4, :cond_1

    .line 40
    const-string v3, "android.intent.extras.LENS_FACING_FRONT"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 41
    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 42
    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 44
    :cond_1
    const-string v3, "android.intent.extras.LENS_FACING_BACK"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 45
    const/4 v3, 0x0

    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 46
    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 48
    :goto_0
    nop

    .line 35
    .end local v1    # "$this$createIntent_u24lambda_u241":Landroid/content/Intent;
    .end local v2    # "$i$a$-apply-CameraContract$createIntent$1":I
    nop

    .line 48
    return-object v0
.end method

.method public bridge synthetic createIntent(Landroid/content/Context;Ljava/io/Serializable;)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "input"    # Ljava/io/Serializable;

    .line 24
    move-object v0, p2

    check-cast v0, Lexpo/modules/imagepicker/contracts/CameraContractOptions;

    invoke-virtual {p0, p1, v0}, Lexpo/modules/imagepicker/contracts/CameraContract;->createIntent(Landroid/content/Context;Lexpo/modules/imagepicker/contracts/CameraContractOptions;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public parseResult(Lexpo/modules/imagepicker/contracts/CameraContractOptions;ILandroid/content/Intent;)Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;
    .locals 4
    .param p1, "input"    # Lexpo/modules/imagepicker/contracts/CameraContractOptions;
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    if-nez p2, :cond_0

    .line 52
    sget-object v0, Lexpo/modules/imagepicker/contracts/ImagePickerContractResult$Cancelled;->INSTANCE:Lexpo/modules/imagepicker/contracts/ImagePickerContractResult$Cancelled;

    check-cast v0, Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p1}, Lexpo/modules/imagepicker/contracts/CameraContractOptions;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 55
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0}, Lexpo/modules/imagepicker/contracts/CameraContract;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lexpo/modules/imagepicker/ImagePickerUtilsKt;->toMediaType(Landroid/net/Uri;Landroid/content/ContentResolver;)Lexpo/modules/imagepicker/MediaType;

    move-result-object v1

    .line 56
    .local v1, "type":Lexpo/modules/imagepicker/MediaType;
    new-instance v2, Lexpo/modules/imagepicker/contracts/ImagePickerContractResult$Success;

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lexpo/modules/imagepicker/contracts/ImagePickerContractResult$Success;-><init>(Ljava/util/List;)V

    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "type":Lexpo/modules/imagepicker/MediaType;
    move-object v0, v2

    check-cast v0, Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;

    .line 57
    :goto_0
    return-object v0
.end method

.method public bridge synthetic parseResult(Ljava/io/Serializable;ILandroid/content/Intent;)Ljava/lang/Object;
    .locals 1
    .param p1, "input"    # Ljava/io/Serializable;
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .line 24
    move-object v0, p1

    check-cast v0, Lexpo/modules/imagepicker/contracts/CameraContractOptions;

    invoke-virtual {p0, v0, p2, p3}, Lexpo/modules/imagepicker/contracts/CameraContract;->parseResult(Lexpo/modules/imagepicker/contracts/CameraContractOptions;ILandroid/content/Intent;)Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;

    move-result-object v0

    return-object v0
.end method
