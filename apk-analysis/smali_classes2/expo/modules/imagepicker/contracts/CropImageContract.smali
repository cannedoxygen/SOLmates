.class public final Lexpo/modules/imagepicker/contracts/CropImageContract;
.super Ljava/lang/Object;
.source "CropImageContract.kt"

# interfaces
.implements Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract<",
        "Lexpo/modules/imagepicker/contracts/CropImageContractOptions;",
        "Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCropImageContract.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CropImageContract.kt\nexpo/modules/imagepicker/contracts/CropImageContract\n+ 2 Uri.kt\nandroidx/core/net/UriKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,75:1\n29#2:76\n36#2:77\n29#2:78\n1#3:79\n*S KotlinDebug\n*F\n+ 1 CropImageContract.kt\nexpo/modules/imagepicker/contracts/CropImageContract\n*L\n28#1:76\n31#1:77\n36#1:78\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0002H\u0016J\"\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0008H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lexpo/modules/imagepicker/contracts/CropImageContract;",
        "Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract;",
        "Lexpo/modules/imagepicker/contracts/CropImageContractOptions;",
        "Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;",
        "appContextProvider",
        "Lexpo/modules/kotlin/providers/AppContextProvider;",
        "(Lexpo/modules/kotlin/providers/AppContextProvider;)V",
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
    iput-object p1, p0, Lexpo/modules/imagepicker/contracts/CropImageContract;->appContextProvider:Lexpo/modules/kotlin/providers/AppContextProvider;

    .line 24
    return-void
.end method


# virtual methods
.method public createIntent(Landroid/content/Context;Lexpo/modules/imagepicker/contracts/CropImageContractOptions;)Landroid/content/Intent;
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "input"    # Lexpo/modules/imagepicker/contracts/CropImageContractOptions;

    move-object/from16 v0, p1

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "input"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/canhub/cropper/CropImageActivity;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v3, v1

    .local v3, "$this$createIntent_u24lambda_u242":Landroid/content/Intent;
    const/4 v4, 0x0

    .line 28
    .local v4, "$i$a$-apply-CropImageContract$createIntent$1":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "getContentResolver(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lexpo/modules/imagepicker/contracts/CropImageContractOptions;->getSourceUri()Ljava/lang/String;

    move-result-object v6

    .local v6, "$this$toUri$iv":Ljava/lang/String;
    const/4 v7, 0x0

    .line 76
    .local v7, "$i$f$toUri":I
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 28
    .end local v6    # "$this$toUri$iv":Ljava/lang/String;
    .end local v7    # "$i$f$toUri":I
    invoke-static {v5, v6}, Lexpo/modules/imagepicker/ImagePickerUtilsKt;->getType(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 29
    .local v5, "mediaType":Ljava/lang/String;
    invoke-static {v5}, Lexpo/modules/imagepicker/ImagePickerUtilsKt;->toBitmapCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v6

    .line 30
    .local v6, "compressFormat":Landroid/graphics/Bitmap$CompressFormat;
    move-object/from16 v7, p0

    iget-object v8, v7, Lexpo/modules/imagepicker/contracts/CropImageContract;->appContextProvider:Lexpo/modules/kotlin/providers/AppContextProvider;

    invoke-interface {v8}, Lexpo/modules/kotlin/providers/AppContextProvider;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v8

    invoke-virtual {v8}, Lexpo/modules/kotlin/AppContext;->getCacheDirectory()Ljava/io/File;

    move-result-object v8

    .line 31
    .local v8, "cacheDirectory":Ljava/io/File;
    invoke-static {v6}, Lexpo/modules/imagepicker/ImagePickerUtilsKt;->toImageFileExtension(Landroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lexpo/modules/imagepicker/ImagePickerUtilsKt;->createOutputFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .local v9, "$this$toUri$iv":Ljava/io/File;
    const/4 v10, 0x0

    .line 77
    .local v10, "$i$f$toUri":I
    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    .line 31
    .end local v9    # "$this$toUri$iv":Ljava/io/File;
    .end local v10    # "$i$f$toUri":I
    nop

    .line 33
    .local v9, "outputUri":Landroid/net/Uri;
    nop

    .line 34
    nop

    .line 36
    const/4 v10, 0x2

    new-array v10, v10, [Lkotlin/Pair;

    invoke-virtual/range {p2 .. p2}, Lexpo/modules/imagepicker/contracts/CropImageContractOptions;->getSourceUri()Ljava/lang/String;

    move-result-object v11

    .local v11, "$this$toUri$iv":Ljava/lang/String;
    const/4 v12, 0x0

    .line 78
    .local v12, "$i$f$toUri":I
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 36
    .end local v11    # "$this$toUri$iv":Ljava/lang/String;
    .end local v12    # "$i$f$toUri":I
    const-string v12, "CROP_IMAGE_EXTRA_SOURCE"

    invoke-static {v12, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 37
    new-instance v11, Lcom/canhub/cropper/CropImageOptions;

    invoke-direct {v11}, Lcom/canhub/cropper/CropImageOptions;-><init>()V

    move-object v12, v11

    .local v12, "$this$createIntent_u24lambda_u242_u24lambda_u241":Lcom/canhub/cropper/CropImageOptions;
    const/4 v13, 0x0

    .line 38
    .local v13, "$i$a$-apply-CropImageContract$createIntent$1$1":I
    iput-object v6, v12, Lcom/canhub/cropper/CropImageOptions;->outputCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 39
    invoke-virtual/range {p2 .. p2}, Lexpo/modules/imagepicker/contracts/CropImageContractOptions;->getOptions()Lexpo/modules/imagepicker/ImagePickerOptions;

    move-result-object v14

    invoke-virtual {v14}, Lexpo/modules/imagepicker/ImagePickerOptions;->getQuality()D

    move-result-wide v14

    const/16 v0, 0x64

    move/from16 v16, v4

    move-object/from16 v17, v5

    .end local v4    # "$i$a$-apply-CropImageContract$createIntent$1":I
    .end local v5    # "mediaType":Ljava/lang/String;
    .local v16, "$i$a$-apply-CropImageContract$createIntent$1":I
    .local v17, "mediaType":Ljava/lang/String;
    int-to-double v4, v0

    mul-double/2addr v14, v4

    double-to-int v0, v14

    iput v0, v12, Lcom/canhub/cropper/CropImageOptions;->outputCompressQuality:I

    .line 41
    iput-object v9, v12, Lcom/canhub/cropper/CropImageOptions;->customOutputUri:Landroid/net/Uri;

    .line 43
    invoke-virtual/range {p2 .. p2}, Lexpo/modules/imagepicker/contracts/CropImageContractOptions;->getOptions()Lexpo/modules/imagepicker/ImagePickerOptions;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/imagepicker/ImagePickerOptions;->getAspect()Lkotlin/Pair;

    move-result-object v0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    .line 79
    const/4 v5, 0x0

    .line 43
    .local v5, "$i$a$-let-CropImageContract$createIntent$1$1$1":I
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v14

    .local v14, "x":I
    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 44
    .local v0, "y":I
    iput v14, v12, Lcom/canhub/cropper/CropImageOptions;->aspectRatioX:I

    .line 45
    iput v0, v12, Lcom/canhub/cropper/CropImageOptions;->aspectRatioY:I

    .line 46
    iput-boolean v4, v12, Lcom/canhub/cropper/CropImageOptions;->fixAspectRatio:Z

    .line 47
    const/4 v15, 0x0

    iput v15, v12, Lcom/canhub/cropper/CropImageOptions;->initialCropWindowPaddingRatio:F

    .line 48
    nop

    .line 43
    .end local v0    # "y":I
    .end local v5    # "$i$a$-let-CropImageContract$createIntent$1$1$1":I
    .end local v14    # "x":I
    :cond_0
    nop

    .line 49
    nop

    .end local v12    # "$this$createIntent_u24lambda_u242_u24lambda_u241":Lcom/canhub/cropper/CropImageOptions;
    .end local v13    # "$i$a$-apply-CropImageContract$createIntent$1$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 37
    const-string v0, "CROP_IMAGE_EXTRA_OPTIONS"

    invoke-static {v0, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v10, v4

    .line 36
    nop

    .line 35
    invoke-static {v10}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v0

    .line 33
    const-string v4, "CROP_IMAGE_EXTRA_BUNDLE"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 52
    nop

    .line 27
    .end local v3    # "$this$createIntent_u24lambda_u242":Landroid/content/Intent;
    .end local v6    # "compressFormat":Landroid/graphics/Bitmap$CompressFormat;
    .end local v8    # "cacheDirectory":Ljava/io/File;
    .end local v9    # "outputUri":Landroid/net/Uri;
    .end local v16    # "$i$a$-apply-CropImageContract$createIntent$1":I
    .end local v17    # "mediaType":Ljava/lang/String;
    nop

    .line 52
    return-object v1
.end method

.method public bridge synthetic createIntent(Landroid/content/Context;Ljava/io/Serializable;)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "input"    # Ljava/io/Serializable;

    .line 24
    move-object v0, p2

    check-cast v0, Lexpo/modules/imagepicker/contracts/CropImageContractOptions;

    invoke-virtual {p0, p1, v0}, Lexpo/modules/imagepicker/contracts/CropImageContract;->createIntent(Landroid/content/Context;Lexpo/modules/imagepicker/contracts/CropImageContractOptions;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public parseResult(Lexpo/modules/imagepicker/contracts/CropImageContractOptions;ILandroid/content/Intent;)Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;
    .locals 6
    .param p1, "input"    # Lexpo/modules/imagepicker/contracts/CropImageContractOptions;
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-string v2, "CROP_IMAGE_EXTRA_RESULT"

    const/4 v3, 0x0

    if-lt v0, v1, :cond_1

    .line 56
    if-eqz p3, :cond_0

    const-class v0, Lcom/canhub/cropper/CropImage$ActivityResult;

    invoke-virtual {p3, v2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/canhub/cropper/CropImage$ActivityResult;

    goto :goto_0

    :cond_0
    move-object v0, v3

    goto :goto_0

    .line 59
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/canhub/cropper/CropImage$ActivityResult;

    goto :goto_0

    :cond_2
    move-object v0, v3

    .line 55
    :goto_0
    nop

    .line 61
    .local v0, "result":Lcom/canhub/cropper/CropImage$ActivityResult;
    if-eqz p2, :cond_6

    if-nez v0, :cond_3

    goto :goto_1

    .line 64
    :cond_3
    invoke-virtual {v0}, Lcom/canhub/cropper/CropImage$ActivityResult;->getUriContent()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 65
    .local v1, "targetUri":Landroid/net/Uri;
    iget-object v2, p0, Lexpo/modules/imagepicker/contracts/CropImageContract;->appContextProvider:Lexpo/modules/kotlin/providers/AppContextProvider;

    invoke-interface {v2}, Lexpo/modules/kotlin/providers/AppContextProvider;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v2

    invoke-virtual {v2}, Lexpo/modules/kotlin/AppContext;->getReactContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 66
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    new-instance v4, Lexpo/modules/imagepicker/contracts/CropImageContract$parseResult$1;

    invoke-direct {v4, p1, v1, v2, v3}, Lexpo/modules/imagepicker/contracts/CropImageContract$parseResult$1;-><init>(Lexpo/modules/imagepicker/contracts/CropImageContractOptions;Landroid/net/Uri;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5, v3}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance v3, Lexpo/modules/imagepicker/contracts/ImagePickerContractResult$Success;

    sget-object v4, Lexpo/modules/imagepicker/MediaType;->IMAGE:Lexpo/modules/imagepicker/MediaType;

    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Lexpo/modules/imagepicker/contracts/ImagePickerContractResult$Success;-><init>(Ljava/util/List;)V

    check-cast v3, Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;

    return-object v3

    .line 79
    .end local v2    # "contentResolver":Landroid/content/ContentResolver;
    :cond_4
    const/4 v2, 0x0

    .line 65
    .local v2, "$i$a$-requireNotNull-CropImageContract$parseResult$contentResolver$1":I
    nop

    .end local v2    # "$i$a$-requireNotNull-CropImageContract$parseResult$contentResolver$1":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "React Application Context is null"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 64
    .end local v1    # "targetUri":Landroid/net/Uri;
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value was null."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    :cond_6
    :goto_1
    sget-object v1, Lexpo/modules/imagepicker/contracts/ImagePickerContractResult$Cancelled;->INSTANCE:Lexpo/modules/imagepicker/contracts/ImagePickerContractResult$Cancelled;

    check-cast v1, Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;

    return-object v1
.end method

.method public bridge synthetic parseResult(Ljava/io/Serializable;ILandroid/content/Intent;)Ljava/lang/Object;
    .locals 1
    .param p1, "input"    # Ljava/io/Serializable;
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .line 24
    move-object v0, p1

    check-cast v0, Lexpo/modules/imagepicker/contracts/CropImageContractOptions;

    invoke-virtual {p0, v0, p2, p3}, Lexpo/modules/imagepicker/contracts/CropImageContract;->parseResult(Lexpo/modules/imagepicker/contracts/CropImageContractOptions;ILandroid/content/Intent;)Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;

    move-result-object v0

    return-object v0
.end method
