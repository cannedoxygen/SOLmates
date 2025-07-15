.class public final Lexpo/modules/imagepicker/contracts/ImageLibraryContract;
.super Ljava/lang/Object;
.source "ImageLibraryContract.kt"

# interfaces
.implements Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/imagepicker/contracts/ImageLibraryContract$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract<",
        "Lexpo/modules/imagepicker/contracts/ImageLibraryContractOptions;",
        "Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImageLibraryContract.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageLibraryContract.kt\nexpo/modules/imagepicker/contracts/ImageLibraryContract\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,133:1\n1#2:134\n1549#3:135\n1620#3,3:136\n*S KotlinDebug\n*F\n+ 1 ImageLibraryContract.kt\nexpo/modules/imagepicker/contracts/ImageLibraryContract\n*L\n86#1:135\n86#1:136,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0018\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0002H\u0016J\u0010\u0010\u0010\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\"\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u000cH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u00020\u00088BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0017"
    }
    d2 = {
        "Lexpo/modules/imagepicker/contracts/ImageLibraryContract;",
        "Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract;",
        "Lexpo/modules/imagepicker/contracts/ImageLibraryContractOptions;",
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
        "createLegacyIntent",
        "options",
        "Lexpo/modules/imagepicker/ImagePickerOptions;",
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

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lexpo/modules/imagepicker/contracts/ImageLibraryContract;->appContextProvider:Lexpo/modules/kotlin/providers/AppContextProvider;

    .line 28
    return-void
.end method

.method private final createLegacyIntent(Lexpo/modules/imagepicker/ImagePickerOptions;)Landroid/content/Intent;
    .locals 6
    .param p1, "options"    # Lexpo/modules/imagepicker/ImagePickerOptions;

    .line 113
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 115
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 117
    nop

    .line 118
    invoke-virtual {p1}, Lexpo/modules/imagepicker/ImagePickerOptions;->getNativeMediaTypes()Lexpo/modules/imagepicker/MediaTypes;

    move-result-object v1

    sget-object v2, Lexpo/modules/imagepicker/contracts/ImageLibraryContract$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lexpo/modules/imagepicker/MediaTypes;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const-string v2, "image/*"

    const-string v3, "video/*"

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_0

    .line 121
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    aput-object v2, v1, v4

    aput-object v3, v1, v5

    goto :goto_0

    .line 119
    :pswitch_0
    new-array v1, v5, [Ljava/lang/String;

    aput-object v2, v1, v4

    goto :goto_0

    .line 120
    :pswitch_1
    new-array v1, v5, [Ljava/lang/String;

    aput-object v3, v1, v4

    .line 116
    :goto_0
    const-string v2, "android.intent.extra.MIME_TYPES"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 123
    move-object v1, v0

    .local v1, "$this$createLegacyIntent_u24lambda_u246":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 124
    .local v2, "$i$a$-apply-ImageLibraryContract$createLegacyIntent$1":I
    invoke-virtual {p1}, Lexpo/modules/imagepicker/ImagePickerOptions;->getAllowsMultipleSelection()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    const-string v3, "android.intent.extra.ALLOW_MULTIPLE"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 127
    :cond_0
    nop

    .line 123
    .end local v1    # "$this$createLegacyIntent_u24lambda_u246":Landroid/content/Intent;
    .end local v2    # "$i$a$-apply-ImageLibraryContract$createLegacyIntent$1":I
    const-string v1, "apply(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .line 32
    iget-object v0, p0, Lexpo/modules/imagepicker/contracts/ImageLibraryContract;->appContextProvider:Lexpo/modules/kotlin/providers/AppContextProvider;

    invoke-interface {v0}, Lexpo/modules/kotlin/providers/AppContextProvider;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getReactContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 33
    return-object v0

    :cond_1
    new-instance v0, Lexpo/modules/kotlin/exception/Exceptions$ReactContextLost;

    invoke-direct {v0}, Lexpo/modules/kotlin/exception/Exceptions$ReactContextLost;-><init>()V

    throw v0
.end method


# virtual methods
.method public createIntent(Landroid/content/Context;Lexpo/modules/imagepicker/contracts/ImageLibraryContractOptions;)Landroid/content/Intent;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "input"    # Lexpo/modules/imagepicker/contracts/ImageLibraryContractOptions;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p2}, Lexpo/modules/imagepicker/contracts/ImageLibraryContractOptions;->getOptions()Lexpo/modules/imagepicker/ImagePickerOptions;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/imagepicker/ImagePickerOptions;->getLegacy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p2}, Lexpo/modules/imagepicker/contracts/ImageLibraryContractOptions;->getOptions()Lexpo/modules/imagepicker/ImagePickerOptions;

    move-result-object v0

    invoke-direct {p0, v0}, Lexpo/modules/imagepicker/contracts/ImageLibraryContract;->createLegacyIntent(Lexpo/modules/imagepicker/ImagePickerOptions;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 40
    :cond_0
    new-instance v0, Landroidx/activity/result/PickVisualMediaRequest$Builder;

    invoke-direct {v0}, Landroidx/activity/result/PickVisualMediaRequest$Builder;-><init>()V

    .line 42
    invoke-virtual {p2}, Lexpo/modules/imagepicker/contracts/ImageLibraryContractOptions;->getOptions()Lexpo/modules/imagepicker/ImagePickerOptions;

    move-result-object v1

    invoke-virtual {v1}, Lexpo/modules/imagepicker/ImagePickerOptions;->getNativeMediaTypes()Lexpo/modules/imagepicker/MediaTypes;

    move-result-object v1

    sget-object v2, Lexpo/modules/imagepicker/contracts/ImageLibraryContract$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lexpo/modules/imagepicker/MediaTypes;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 52
    sget-object v1, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageAndVideo;->INSTANCE:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageAndVideo;

    check-cast v1, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;

    goto :goto_0

    .line 48
    :pswitch_0
    sget-object v1, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageOnly;->INSTANCE:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageOnly;

    check-cast v1, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;

    goto :goto_0

    .line 44
    :pswitch_1
    sget-object v1, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VideoOnly;->INSTANCE:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VideoOnly;

    check-cast v1, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;

    .line 41
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/activity/result/PickVisualMediaRequest$Builder;->setMediaType(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;)Landroidx/activity/result/PickVisualMediaRequest$Builder;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Landroidx/activity/result/PickVisualMediaRequest$Builder;->build()Landroidx/activity/result/PickVisualMediaRequest;

    move-result-object v0

    .line 40
    nop

    .line 58
    .local v0, "request":Landroidx/activity/result/PickVisualMediaRequest;
    invoke-virtual {p2}, Lexpo/modules/imagepicker/contracts/ImageLibraryContractOptions;->getOptions()Lexpo/modules/imagepicker/ImagePickerOptions;

    move-result-object v1

    invoke-virtual {v1}, Lexpo/modules/imagepicker/ImagePickerOptions;->getAllowsMultipleSelection()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 59
    invoke-virtual {p2}, Lexpo/modules/imagepicker/contracts/ImageLibraryContractOptions;->getOptions()Lexpo/modules/imagepicker/ImagePickerOptions;

    move-result-object v1

    invoke-virtual {v1}, Lexpo/modules/imagepicker/ImagePickerOptions;->getSelectionLimit()I

    move-result v1

    .line 61
    .local v1, "selectionLimit":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 64
    new-instance v2, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia;

    invoke-direct {v2}, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia;-><init>()V

    invoke-virtual {v2, p1, v0}, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia;->createIntent(Landroid/content/Context;Landroidx/activity/result/PickVisualMediaRequest;)Landroid/content/Intent;

    move-result-object v2

    return-object v2

    .line 67
    :cond_1
    if-le v1, v2, :cond_2

    .line 68
    new-instance v2, Landroidx/activity/result/contract/ActivityResultContracts$PickMultipleVisualMedia;

    invoke-direct {v2, v1}, Landroidx/activity/result/contract/ActivityResultContracts$PickMultipleVisualMedia;-><init>(I)V

    invoke-virtual {v2, p1, v0}, Landroidx/activity/result/contract/ActivityResultContracts$PickMultipleVisualMedia;->createIntent(Landroid/content/Context;Landroidx/activity/result/PickVisualMediaRequest;)Landroid/content/Intent;

    move-result-object v2

    return-object v2

    .line 72
    :cond_2
    if-nez v1, :cond_3

    .line 73
    new-instance v3, Landroidx/activity/result/contract/ActivityResultContracts$PickMultipleVisualMedia;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v2, v5}, Landroidx/activity/result/contract/ActivityResultContracts$PickMultipleVisualMedia;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v3, p1, v0}, Landroidx/activity/result/contract/ActivityResultContracts$PickMultipleVisualMedia;->createIntent(Landroid/content/Context;Landroidx/activity/result/PickVisualMediaRequest;)Landroid/content/Intent;

    move-result-object v2

    return-object v2

    .line 77
    .end local v1    # "selectionLimit":I
    :cond_3
    new-instance v1, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia;

    invoke-direct {v1}, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia;-><init>()V

    invoke-virtual {v1, p1, v0}, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia;->createIntent(Landroid/content/Context;Landroidx/activity/result/PickVisualMediaRequest;)Landroid/content/Intent;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic createIntent(Landroid/content/Context;Ljava/io/Serializable;)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "input"    # Ljava/io/Serializable;

    .line 28
    move-object v0, p2

    check-cast v0, Lexpo/modules/imagepicker/contracts/ImageLibraryContractOptions;

    invoke-virtual {p0, p1, v0}, Lexpo/modules/imagepicker/contracts/ImageLibraryContract;->createIntent(Landroid/content/Context;Lexpo/modules/imagepicker/contracts/ImageLibraryContractOptions;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public parseResult(Lexpo/modules/imagepicker/contracts/ImageLibraryContractOptions;ILandroid/content/Intent;)Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;
    .locals 12
    .param p1, "input"    # Lexpo/modules/imagepicker/contracts/ImageLibraryContractOptions;
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    if-nez p2, :cond_0

    .line 82
    sget-object v0, Lexpo/modules/imagepicker/contracts/ImagePickerContractResult$Cancelled;->INSTANCE:Lexpo/modules/imagepicker/contracts/ImagePickerContractResult$Cancelled;

    check-cast v0, Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;

    goto/16 :goto_5

    .line 84
    :cond_0
    if-eqz p3, :cond_9

    move-object v0, p3

    .line 134
    .local v0, "it":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 84
    .local v1, "$i$a$-takeIf-ImageLibraryContract$parseResult$1":I
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .end local v0    # "it":Landroid/content/Intent;
    .end local v1    # "$i$a$-takeIf-ImageLibraryContract$parseResult$1":I
    :goto_0
    const/4 v0, 0x0

    if-eqz v2, :cond_2

    move-object v1, p3

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_9

    invoke-static {v1}, Lexpo/modules/imagepicker/ImagePickerUtilsKt;->getAllDataUris(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9

    .local v1, "uris":Ljava/util/List;
    const/4 v2, 0x0

    .line 85
    .local v2, "$i$a$-let-ImageLibraryContract$parseResult$2":I
    invoke-virtual {p1}, Lexpo/modules/imagepicker/contracts/ImageLibraryContractOptions;->getOptions()Lexpo/modules/imagepicker/ImagePickerOptions;

    move-result-object v3

    invoke-virtual {v3}, Lexpo/modules/imagepicker/ImagePickerOptions;->getAllowsMultipleSelection()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 86
    move-object v0, v1

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 135
    .local v3, "$i$f$map":I
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v0

    .local v5, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 136
    .local v6, "$i$f$mapTo":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 137
    .local v8, "item$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Landroid/net/Uri;

    .local v9, "uri":Landroid/net/Uri;
    const/4 v10, 0x0

    .line 87
    .local v10, "$i$a$-map-ImageLibraryContract$parseResult$2$results$1":I
    invoke-direct {p0}, Lexpo/modules/imagepicker/contracts/ImageLibraryContract;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-static {v9, v11}, Lexpo/modules/imagepicker/ImagePickerUtilsKt;->toMediaType(Landroid/net/Uri;Landroid/content/ContentResolver;)Lexpo/modules/imagepicker/MediaType;

    move-result-object v11

    invoke-static {v11, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    .line 137
    .end local v9    # "uri":Landroid/net/Uri;
    .end local v10    # "$i$a$-map-ImageLibraryContract$parseResult$2$results$1":I
    invoke-interface {v4, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 138
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    :cond_3
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$mapTo":I
    check-cast v4, Ljava/util/List;

    .line 135
    nop

    .line 88
    .end local v0    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$map":I
    move-object v0, v4

    .local v0, "it":Ljava/util/List;
    const/4 v3, 0x0

    .line 89
    .local v3, "$i$a$-let-ImageLibraryContract$parseResult$2$results$2":I
    invoke-virtual {p1}, Lexpo/modules/imagepicker/contracts/ImageLibraryContractOptions;->getOptions()Lexpo/modules/imagepicker/ImagePickerOptions;

    move-result-object v4

    invoke-virtual {v4}, Lexpo/modules/imagepicker/ImagePickerOptions;->getSelectionLimit()I

    move-result v4

    if-lez v4, :cond_4

    .line 90
    move-object v4, v0

    check-cast v4, Ljava/lang/Iterable;

    invoke-virtual {p1}, Lexpo/modules/imagepicker/contracts/ImageLibraryContractOptions;->getOptions()Lexpo/modules/imagepicker/ImagePickerOptions;

    move-result-object v5

    invoke-virtual {v5}, Lexpo/modules/imagepicker/ImagePickerOptions;->getSelectionLimit()I

    move-result v5

    invoke-static {v4, v5}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v4

    goto :goto_3

    .line 92
    :cond_4
    move-object v4, v0

    .line 89
    :goto_3
    nop

    .line 88
    .end local v0    # "it":Ljava/util/List;
    .end local v3    # "$i$a$-let-ImageLibraryContract$parseResult$2$results$2":I
    nop

    .line 86
    move-object v0, v4

    .line 96
    .local v0, "results":Ljava/util/List;
    new-instance v3, Lexpo/modules/imagepicker/contracts/ImagePickerContractResult$Success;

    invoke-direct {v3, v0}, Lexpo/modules/imagepicker/contracts/ImagePickerContractResult$Success;-><init>(Ljava/util/List;)V

    .end local v0    # "results":Ljava/util/List;
    check-cast v3, Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;

    move-object v0, v3

    goto :goto_4

    .line 98
    :cond_5
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 99
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_6

    move-object v0, v3

    .local v0, "uri":Landroid/net/Uri;
    const/4 v3, 0x0

    .line 100
    .local v3, "$i$a$-let-ImageLibraryContract$parseResult$2$1":I
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0}, Lexpo/modules/imagepicker/contracts/ImageLibraryContract;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v0, v4}, Lexpo/modules/imagepicker/ImagePickerUtilsKt;->toMediaType(Landroid/net/Uri;Landroid/content/ContentResolver;)Lexpo/modules/imagepicker/MediaType;

    move-result-object v4

    .line 101
    .local v4, "type":Lexpo/modules/imagepicker/MediaType;
    new-instance v5, Lexpo/modules/imagepicker/contracts/ImagePickerContractResult$Success;

    invoke-static {v4, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Lexpo/modules/imagepicker/contracts/ImagePickerContractResult$Success;-><init>(Ljava/util/List;)V

    .line 99
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v3    # "$i$a$-let-ImageLibraryContract$parseResult$2$1":I
    .end local v4    # "type":Lexpo/modules/imagepicker/MediaType;
    move-object v0, v5

    :cond_6
    check-cast v0, Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;

    goto :goto_4

    .line 104
    :cond_7
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_8

    .restart local v0    # "uri":Landroid/net/Uri;
    const/4 v3, 0x0

    .line 105
    .local v3, "$i$a$-let-ImageLibraryContract$parseResult$2$2":I
    invoke-direct {p0}, Lexpo/modules/imagepicker/contracts/ImageLibraryContract;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v0, v4}, Lexpo/modules/imagepicker/ImagePickerUtilsKt;->toMediaType(Landroid/net/Uri;Landroid/content/ContentResolver;)Lexpo/modules/imagepicker/MediaType;

    move-result-object v4

    .line 106
    .restart local v4    # "type":Lexpo/modules/imagepicker/MediaType;
    new-instance v5, Lexpo/modules/imagepicker/contracts/ImagePickerContractResult$Success;

    invoke-static {v4, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Lexpo/modules/imagepicker/contracts/ImagePickerContractResult$Success;-><init>(Ljava/util/List;)V

    .line 104
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v3    # "$i$a$-let-ImageLibraryContract$parseResult$2$2":I
    .end local v4    # "type":Lexpo/modules/imagepicker/MediaType;
    check-cast v5, Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;

    move-object v0, v5

    goto :goto_4

    .line 107
    :cond_8
    sget-object v0, Lexpo/modules/imagepicker/contracts/ImagePickerContractResult$Error;->INSTANCE:Lexpo/modules/imagepicker/contracts/ImagePickerContractResult$Error;

    check-cast v0, Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;

    .line 85
    :goto_4
    nop

    .line 84
    .end local v1    # "uris":Ljava/util/List;
    .end local v2    # "$i$a$-let-ImageLibraryContract$parseResult$2":I
    if-nez v0, :cond_a

    .line 110
    :cond_9
    sget-object v0, Lexpo/modules/imagepicker/contracts/ImagePickerContractResult$Error;->INSTANCE:Lexpo/modules/imagepicker/contracts/ImagePickerContractResult$Error;

    check-cast v0, Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;

    .line 111
    :cond_a
    :goto_5
    return-object v0
.end method

.method public bridge synthetic parseResult(Ljava/io/Serializable;ILandroid/content/Intent;)Ljava/lang/Object;
    .locals 1
    .param p1, "input"    # Ljava/io/Serializable;
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .line 28
    move-object v0, p1

    check-cast v0, Lexpo/modules/imagepicker/contracts/ImageLibraryContractOptions;

    invoke-virtual {p0, v0, p2, p3}, Lexpo/modules/imagepicker/contracts/ImageLibraryContract;->parseResult(Lexpo/modules/imagepicker/contracts/ImageLibraryContractOptions;ILandroid/content/Intent;)Lexpo/modules/imagepicker/contracts/ImagePickerContractResult;

    move-result-object v0

    return-object v0
.end method
