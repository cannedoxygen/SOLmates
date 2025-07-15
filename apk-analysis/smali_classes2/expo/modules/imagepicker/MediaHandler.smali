.class public final Lexpo/modules/imagepicker/MediaHandler;
.super Ljava/lang/Object;
.source "MediaHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/imagepicker/MediaHandler$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaHandler.kt\nexpo/modules/imagepicker/MediaHandler\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Uri.kt\nandroidx/core/net/UriKt\n*L\n1#1,126:1\n1#2:127\n1549#3:128\n1620#3,3:129\n36#4:132\n*S KotlinDebug\n*F\n+ 1 MediaHandler.kt\nexpo/modules/imagepicker/MediaHandler\n*L\n25#1:128\n25#1:129,3\n94#1:132\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u001e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0015H\u0082@\u00a2\u0006\u0002\u0010\u0016J\u0016\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0010H\u0082@\u00a2\u0006\u0002\u0010\u0018J2\u0010\u0019\u001a\u00020\u001a2\u0018\u0010\u001b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u00100\u001d0\u001c2\u0006\u0010\u0014\u001a\u00020\u0015H\u0080@\u00a2\u0006\u0004\u0008\u001f\u0010 R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u00068BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u00020\n8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006!"
    }
    d2 = {
        "Lexpo/modules/imagepicker/MediaHandler;",
        "",
        "appContextProvider",
        "Lexpo/modules/kotlin/providers/AppContextProvider;",
        "(Lexpo/modules/kotlin/providers/AppContextProvider;)V",
        "cacheDirectory",
        "Ljava/io/File;",
        "getCacheDirectory",
        "()Ljava/io/File;",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "getAdditionalFileData",
        "Lexpo/modules/imagepicker/AdditionalFileData;",
        "uri",
        "Landroid/net/Uri;",
        "handleImage",
        "Lexpo/modules/imagepicker/ImagePickerAsset;",
        "sourceUri",
        "options",
        "Lexpo/modules/imagepicker/ImagePickerOptions;",
        "(Landroid/net/Uri;Lexpo/modules/imagepicker/ImagePickerOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "handleVideo",
        "(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "readExtras",
        "Lexpo/modules/imagepicker/ImagePickerResponse;",
        "bareResult",
        "",
        "Lkotlin/Pair;",
        "Lexpo/modules/imagepicker/MediaType;",
        "readExtras$expo_image_picker_debug",
        "(Ljava/util/List;Lexpo/modules/imagepicker/ImagePickerOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lexpo/modules/imagepicker/MediaHandler;->appContextProvider:Lexpo/modules/kotlin/providers/AppContextProvider;

    .line 15
    return-void
.end method

.method public static final synthetic access$handleImage(Lexpo/modules/imagepicker/MediaHandler;Landroid/net/Uri;Lexpo/modules/imagepicker/ImagePickerOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/imagepicker/MediaHandler;
    .param p1, "sourceUri"    # Landroid/net/Uri;
    .param p2, "options"    # Lexpo/modules/imagepicker/ImagePickerOptions;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lexpo/modules/imagepicker/MediaHandler;->handleImage(Landroid/net/Uri;Lexpo/modules/imagepicker/ImagePickerOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$handleVideo(Lexpo/modules/imagepicker/MediaHandler;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/imagepicker/MediaHandler;
    .param p1, "sourceUri"    # Landroid/net/Uri;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 15
    invoke-direct {p0, p1, p2}, Lexpo/modules/imagepicker/MediaHandler;->handleVideo(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final getAdditionalFileData(Landroid/net/Uri;)Lexpo/modules/imagepicker/AdditionalFileData;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;

    .line 76
    invoke-direct {p0}, Lexpo/modules/imagepicker/MediaHandler;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/io/Closeable;

    :try_start_0
    move-object v2, v0

    check-cast v2, Landroid/database/Cursor;

    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 77
    .local v3, "$i$a$-use-MediaHandler$getAdditionalFileData$1":I
    const-string v4, "_display_name"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 78
    .local v4, "nameIndex":I
    const-string v5, "_size"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 79
    .local v5, "sizeIndex":I
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 81
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 82
    .local v6, "name":Ljava/lang/String;
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 83
    .local v7, "size":J
    new-instance v9, Lexpo/modules/imagepicker/AdditionalFileData;

    .line 84
    nop

    .line 85
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 83
    invoke-direct {v9, v6, v10}, Lexpo/modules/imagepicker/AdditionalFileData;-><init>(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v3    # "$i$a$-use-MediaHandler$getAdditionalFileData$1":I
    .end local v4    # "nameIndex":I
    .end local v5    # "sizeIndex":I
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "size":J
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object v1, v9

    goto :goto_0

    :catchall_0
    move-exception v1

    .end local p1    # "uri":Landroid/net/Uri;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local p1    # "uri":Landroid/net/Uri;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    .line 87
    :cond_0
    :goto_0
    return-object v1
.end method

.method private final getCacheDirectory()Ljava/io/File;
    .locals 1

    .line 39
    iget-object v0, p0, Lexpo/modules/imagepicker/MediaHandler;->appContextProvider:Lexpo/modules/kotlin/providers/AppContextProvider;

    invoke-interface {v0}, Lexpo/modules/kotlin/providers/AppContextProvider;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getCacheDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private final getContext()Landroid/content/Context;
    .locals 2

    .line 19
    iget-object v0, p0, Lexpo/modules/imagepicker/MediaHandler;->appContextProvider:Lexpo/modules/kotlin/providers/AppContextProvider;

    invoke-interface {v0}, Lexpo/modules/kotlin/providers/AppContextProvider;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getReactContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 127
    :cond_0
    const/4 v0, 0x0

    .line 19
    .local v0, "$i$a$-requireNotNull-MediaHandler$context$1":I
    nop

    .end local v0    # "$i$a$-requireNotNull-MediaHandler$context$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "React Application Context is null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final handleImage(Landroid/net/Uri;Lexpo/modules/imagepicker/ImagePickerOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lexpo/modules/imagepicker/ImagePickerOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/imagepicker/ImagePickerAsset;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p3

    instance-of v1, v0, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;

    iget v2, v1, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->label:I

    move-object v0, v1

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;-><init>(Lexpo/modules/imagepicker/MediaHandler;Lkotlin/coroutines/Continuation;)V

    move-object v0, v1

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 41
    iget v4, v0, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->label:I

    const/4 v5, 0x2

    const-string v7, "getContentResolver(...)"

    const/4 v9, 0x1

    packed-switch v4, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    const/4 v3, 0x0

    .local v3, "$i$a$-let-MediaHandler$handleImage$exif$2":I
    iget-object v4, v0, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$5:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .local v4, "base64":Ljava/lang/String;
    iget-object v5, v0, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$4:Ljava/lang/Object;

    check-cast v5, Lexpo/modules/imagepicker/exporters/ImageExportResult;

    .local v5, "exportedImage":Lexpo/modules/imagepicker/exporters/ImageExportResult;
    iget-object v6, v0, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$3:Ljava/lang/Object;

    check-cast v6, Ljava/io/File;

    .local v6, "outputFile":Ljava/io/File;
    iget-object v7, v0, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$2:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .local v7, "mimeType":Ljava/lang/String;
    iget-object v8, v0, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$1:Ljava/lang/Object;

    check-cast v8, Landroid/net/Uri;

    .local v8, "sourceUri":Landroid/net/Uri;
    iget-object v9, v0, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lexpo/modules/imagepicker/MediaHandler;

    .local v9, "this":Lexpo/modules/imagepicker/MediaHandler;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, v7

    move-object v7, v1

    goto/16 :goto_a

    .end local v3    # "$i$a$-let-MediaHandler$handleImage$exif$2":I
    .end local v4    # "base64":Ljava/lang/String;
    .end local v5    # "exportedImage":Lexpo/modules/imagepicker/exporters/ImageExportResult;
    .end local v6    # "outputFile":Ljava/io/File;
    .end local v7    # "mimeType":Ljava/lang/String;
    .end local v8    # "sourceUri":Landroid/net/Uri;
    .end local v9    # "this":Lexpo/modules/imagepicker/MediaHandler;
    :pswitch_1
    const/4 v4, 0x0

    .local v4, "$i$a$-let-MediaHandler$handleImage$base64$2":I
    iget-object v10, v0, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$5:Ljava/lang/Object;

    check-cast v10, Lexpo/modules/imagepicker/exporters/ImageExportResult;

    .local v10, "exportedImage":Lexpo/modules/imagepicker/exporters/ImageExportResult;
    iget-object v11, v0, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$4:Ljava/lang/Object;

    check-cast v11, Ljava/io/File;

    .local v11, "outputFile":Ljava/io/File;
    iget-object v12, v0, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$3:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    .local v12, "mimeType":Ljava/lang/String;
    iget-object v13, v0, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$2:Ljava/lang/Object;

    check-cast v13, Lexpo/modules/imagepicker/ImagePickerOptions;

    .local v13, "options":Lexpo/modules/imagepicker/ImagePickerOptions;
    iget-object v14, v0, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$1:Ljava/lang/Object;

    check-cast v14, Landroid/net/Uri;

    .local v14, "sourceUri":Landroid/net/Uri;
    iget-object v15, v0, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$0:Ljava/lang/Object;

    check-cast v15, Lexpo/modules/imagepicker/MediaHandler;

    .local v15, "this":Lexpo/modules/imagepicker/MediaHandler;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, v1

    goto/16 :goto_6

    .end local v4    # "$i$a$-let-MediaHandler$handleImage$base64$2":I
    .end local v10    # "exportedImage":Lexpo/modules/imagepicker/exporters/ImageExportResult;
    .end local v11    # "outputFile":Ljava/io/File;
    .end local v12    # "mimeType":Ljava/lang/String;
    .end local v13    # "options":Lexpo/modules/imagepicker/ImagePickerOptions;
    .end local v14    # "sourceUri":Landroid/net/Uri;
    .end local v15    # "this":Lexpo/modules/imagepicker/MediaHandler;
    :pswitch_2
    iget-object v4, v0, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$4:Ljava/lang/Object;

    check-cast v4, Ljava/io/File;

    .local v4, "outputFile":Ljava/io/File;
    iget-object v10, v0, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$3:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .local v10, "mimeType":Ljava/lang/String;
    iget-object v11, v0, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$2:Ljava/lang/Object;

    check-cast v11, Lexpo/modules/imagepicker/ImagePickerOptions;

    .local v11, "options":Lexpo/modules/imagepicker/ImagePickerOptions;
    iget-object v12, v0, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$1:Ljava/lang/Object;

    check-cast v12, Landroid/net/Uri;

    .local v12, "sourceUri":Landroid/net/Uri;
    iget-object v13, v0, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lexpo/modules/imagepicker/MediaHandler;

    .local v13, "this":Lexpo/modules/imagepicker/MediaHandler;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v14, v12

    move-object v15, v13

    move-object v12, v1

    move-object v13, v10

    move-object v10, v11

    move-object v11, v4

    goto/16 :goto_3

    .end local v4    # "outputFile":Ljava/io/File;
    .end local v10    # "mimeType":Ljava/lang/String;
    .end local v11    # "options":Lexpo/modules/imagepicker/ImagePickerOptions;
    .end local v12    # "sourceUri":Landroid/net/Uri;
    .end local v13    # "this":Lexpo/modules/imagepicker/MediaHandler;
    :pswitch_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v4, p0

    .local v4, "this":Lexpo/modules/imagepicker/MediaHandler;
    move-object/from16 v10, p2

    .local v10, "options":Lexpo/modules/imagepicker/ImagePickerOptions;
    move-object/from16 v11, p1

    .line 45
    .local v11, "sourceUri":Landroid/net/Uri;
    invoke-virtual {v10}, Lexpo/modules/imagepicker/ImagePickerOptions;->getQuality()D

    move-result-wide v12

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpg-double v12, v12, v14

    if-nez v12, :cond_1

    move v12, v9

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    :goto_1
    if-eqz v12, :cond_2

    .line 46
    new-instance v12, Lexpo/modules/imagepicker/exporters/RawImageExporter;

    invoke-direct {v12}, Lexpo/modules/imagepicker/exporters/RawImageExporter;-><init>()V

    check-cast v12, Lexpo/modules/imagepicker/exporters/ImageExporter;

    goto :goto_2

    .line 48
    :cond_2
    new-instance v12, Lexpo/modules/imagepicker/exporters/CompressionImageExporter;

    iget-object v13, v4, Lexpo/modules/imagepicker/MediaHandler;->appContextProvider:Lexpo/modules/kotlin/providers/AppContextProvider;

    invoke-virtual {v10}, Lexpo/modules/imagepicker/ImagePickerOptions;->getQuality()D

    move-result-wide v14

    invoke-direct {v12, v13, v14, v15}, Lexpo/modules/imagepicker/exporters/CompressionImageExporter;-><init>(Lexpo/modules/kotlin/providers/AppContextProvider;D)V

    check-cast v12, Lexpo/modules/imagepicker/exporters/ImageExporter;

    .line 45
    :goto_2
    nop

    .line 50
    .local v12, "exporter":Lexpo/modules/imagepicker/exporters/ImageExporter;
    invoke-direct {v4}, Lexpo/modules/imagepicker/MediaHandler;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-static {v13, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v11}, Lexpo/modules/imagepicker/ImagePickerUtilsKt;->getType(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v13

    .line 51
    .local v13, "mimeType":Ljava/lang/String;
    invoke-direct {v4}, Lexpo/modules/imagepicker/MediaHandler;->getCacheDirectory()Ljava/io/File;

    move-result-object v14

    invoke-static {v13}, Lexpo/modules/imagepicker/ImagePickerUtilsKt;->toImageFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lexpo/modules/imagepicker/ImagePickerUtilsKt;->createOutputFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    .line 53
    .local v14, "outputFile":Ljava/io/File;
    invoke-direct {v4}, Lexpo/modules/imagepicker/MediaHandler;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .end local v12    # "exporter":Lexpo/modules/imagepicker/exporters/ImageExporter;
    invoke-static {v15, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v0, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$0:Ljava/lang/Object;

    iput-object v11, v0, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$1:Ljava/lang/Object;

    iput-object v10, v0, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$2:Ljava/lang/Object;

    iput-object v13, v0, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$3:Ljava/lang/Object;

    iput-object v14, v0, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$4:Ljava/lang/Object;

    iput v9, v0, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->label:I

    invoke-interface {v12, v11, v14, v15, v0}, Lexpo/modules/imagepicker/exporters/ImageExporter;->exportAsync(Landroid/net/Uri;Ljava/io/File;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v3, :cond_3

    .line 41
    return-object v3

    .line 53
    :cond_3
    move-object v15, v4

    move-object/from16 v28, v14

    move-object v14, v11

    move-object/from16 v11, v28

    .line 41
    .end local v4    # "this":Lexpo/modules/imagepicker/MediaHandler;
    .local v11, "outputFile":Ljava/io/File;
    .local v14, "sourceUri":Landroid/net/Uri;
    .restart local v15    # "this":Lexpo/modules/imagepicker/MediaHandler;
    :goto_3
    move-object v4, v12

    check-cast v4, Lexpo/modules/imagepicker/exporters/ImageExportResult;

    .line 55
    .local v4, "exportedImage":Lexpo/modules/imagepicker/exporters/ImageExportResult;
    nop

    .line 54
    invoke-virtual {v10}, Lexpo/modules/imagepicker/ImagePickerOptions;->getBase64()Z

    move-result v12

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    .line 127
    .local v16, "it":Z
    const/16 v17, 0x0

    .line 54
    .local v17, "$i$a$-takeIf-MediaHandler$handleImage$base64$1":I
    if-eqz v16, :cond_4

    move/from16 v16, v9

    goto :goto_4

    :cond_4
    const/16 v16, 0x0

    .end local v16    # "it":Z
    .end local v17    # "$i$a$-takeIf-MediaHandler$handleImage$base64$1":I
    :goto_4
    if-eqz v16, :cond_5

    goto :goto_5

    :cond_5
    const/4 v12, 0x0

    .line 55
    :goto_5
    if-eqz v12, :cond_8

    .line 54
    nop

    .line 55
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    .line 127
    const/4 v12, 0x0

    .line 55
    .local v12, "$i$a$-let-MediaHandler$handleImage$base64$2":I
    invoke-direct {v15}, Lexpo/modules/imagepicker/MediaHandler;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v15, v0, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$0:Ljava/lang/Object;

    iput-object v14, v0, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$1:Ljava/lang/Object;

    iput-object v10, v0, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$2:Ljava/lang/Object;

    iput-object v13, v0, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$3:Ljava/lang/Object;

    iput-object v11, v0, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$4:Ljava/lang/Object;

    iput-object v4, v0, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$5:Ljava/lang/Object;

    iput v5, v0, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->label:I

    invoke-virtual {v4, v6, v0}, Lexpo/modules/imagepicker/exporters/ImageExportResult;->data(Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_6

    .line 41
    return-object v3

    .line 55
    :cond_6
    move-object/from16 v28, v10

    move-object v10, v4

    move v4, v12

    move-object v12, v13

    move-object/from16 v13, v28

    .local v4, "$i$a$-let-MediaHandler$handleImage$base64$2":I
    .local v10, "exportedImage":Lexpo/modules/imagepicker/exporters/ImageExportResult;
    .local v12, "mimeType":Ljava/lang/String;
    .local v13, "options":Lexpo/modules/imagepicker/ImagePickerOptions;
    :goto_6
    check-cast v6, Ljava/io/ByteArrayOutputStream;

    .line 56
    .end local v4    # "$i$a$-let-MediaHandler$handleImage$base64$2":I
    if-eqz v6, :cond_7

    .line 55
    nop

    .line 56
    move-object v4, v6

    .line 127
    .local v4, "it":Ljava/io/ByteArrayOutputStream;
    const/4 v6, 0x0

    .line 56
    .local v6, "$i$a$-let-MediaHandler$handleImage$base64$3":I
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-static {v8, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    move-object v5, v10

    move-object v6, v11

    move-object v8, v14

    .end local v4    # "it":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "$i$a$-let-MediaHandler$handleImage$base64$3":I
    goto :goto_7

    :cond_7
    move-object v4, v10

    move-object v10, v13

    move-object v13, v12

    .line 55
    .end local v12    # "mimeType":Ljava/lang/String;
    .local v4, "exportedImage":Lexpo/modules/imagepicker/exporters/ImageExportResult;
    .local v10, "options":Lexpo/modules/imagepicker/ImagePickerOptions;
    .local v13, "mimeType":Ljava/lang/String;
    :cond_8
    move-object v5, v4

    move-object v6, v11

    move-object v12, v13

    move-object v8, v14

    const/4 v4, 0x0

    move-object v13, v10

    .line 54
    .end local v4    # "exportedImage":Lexpo/modules/imagepicker/exporters/ImageExportResult;
    .end local v10    # "options":Lexpo/modules/imagepicker/ImagePickerOptions;
    .end local v11    # "outputFile":Ljava/io/File;
    .end local v14    # "sourceUri":Landroid/net/Uri;
    .restart local v5    # "exportedImage":Lexpo/modules/imagepicker/exporters/ImageExportResult;
    .local v6, "outputFile":Ljava/io/File;
    .restart local v8    # "sourceUri":Landroid/net/Uri;
    .restart local v12    # "mimeType":Ljava/lang/String;
    .local v13, "options":Lexpo/modules/imagepicker/ImagePickerOptions;
    :goto_7
    nop

    .line 58
    .local v4, "base64":Ljava/lang/String;
    nop

    .line 57
    invoke-virtual {v13}, Lexpo/modules/imagepicker/ImagePickerOptions;->getExif()Z

    move-result v10

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v10

    .end local v13    # "options":Lexpo/modules/imagepicker/ImagePickerOptions;
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 127
    .local v11, "it":Z
    const/4 v13, 0x0

    .line 57
    .local v13, "$i$a$-takeIf-MediaHandler$handleImage$exif$1":I
    if-eqz v11, :cond_9

    goto :goto_8

    :cond_9
    const/4 v9, 0x0

    .end local v11    # "it":Z
    .end local v13    # "$i$a$-takeIf-MediaHandler$handleImage$exif$1":I
    :goto_8
    if-eqz v9, :cond_a

    goto :goto_9

    :cond_a
    const/4 v10, 0x0

    .line 58
    :goto_9
    if-eqz v10, :cond_c

    .line 57
    nop

    .line 58
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 127
    const/4 v9, 0x0

    .line 58
    .local v9, "$i$a$-let-MediaHandler$handleImage$exif$2":I
    invoke-direct {v15}, Lexpo/modules/imagepicker/MediaHandler;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {v10, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v15, v0, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$0:Ljava/lang/Object;

    iput-object v8, v0, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$1:Ljava/lang/Object;

    iput-object v12, v0, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$2:Ljava/lang/Object;

    iput-object v6, v0, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$3:Ljava/lang/Object;

    iput-object v5, v0, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$4:Ljava/lang/Object;

    iput-object v4, v0, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->L$5:Ljava/lang/Object;

    const/4 v7, 0x3

    iput v7, v0, Lexpo/modules/imagepicker/MediaHandler$handleImage$1;->label:I

    invoke-virtual {v5, v10, v0}, Lexpo/modules/imagepicker/exporters/ImageExportResult;->exif(Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v3, :cond_b

    .line 41
    return-object v3

    .line 58
    :cond_b
    move v3, v9

    move-object v9, v15

    .end local v15    # "this":Lexpo/modules/imagepicker/MediaHandler;
    .restart local v3    # "$i$a$-let-MediaHandler$handleImage$exif$2":I
    .local v9, "this":Lexpo/modules/imagepicker/MediaHandler;
    :goto_a
    move-object v3, v7

    check-cast v3, Landroid/os/Bundle;

    move-object/from16 v23, v3

    move-object v15, v9

    .end local v3    # "$i$a$-let-MediaHandler$handleImage$exif$2":I
    goto :goto_b

    .end local v9    # "this":Lexpo/modules/imagepicker/MediaHandler;
    .restart local v15    # "this":Lexpo/modules/imagepicker/MediaHandler;
    :cond_c
    const/16 v23, 0x0

    .line 57
    :goto_b
    nop

    .line 60
    .local v23, "exif":Landroid/os/Bundle;
    invoke-direct {v15, v8}, Lexpo/modules/imagepicker/MediaHandler;->getAdditionalFileData(Landroid/net/Uri;)Lexpo/modules/imagepicker/AdditionalFileData;

    move-result-object v3

    .line 63
    .end local v15    # "this":Lexpo/modules/imagepicker/MediaHandler;
    .local v3, "fileData":Lexpo/modules/imagepicker/AdditionalFileData;
    sget-object v15, Lexpo/modules/imagepicker/MediaType;->IMAGE:Lexpo/modules/imagepicker/MediaType;

    .line 64
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v16

    .line 65
    invoke-virtual {v5}, Lexpo/modules/imagepicker/exporters/ImageExportResult;->getWidth()I

    move-result v17

    .line 66
    invoke-virtual {v5}, Lexpo/modules/imagepicker/exporters/ImageExportResult;->getHeight()I

    move-result v18

    .line 67
    .end local v5    # "exportedImage":Lexpo/modules/imagepicker/exporters/ImageExportResult;
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Lexpo/modules/imagepicker/AdditionalFileData;->getFileName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_e

    :cond_d
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    :cond_e
    move-object/from16 v19, v5

    .line 68
    if-eqz v3, :cond_f

    invoke-virtual {v3}, Lexpo/modules/imagepicker/AdditionalFileData;->getFileSize()Ljava/lang/Long;

    move-result-object v3

    .end local v3    # "fileData":Lexpo/modules/imagepicker/AdditionalFileData;
    if-eqz v3, :cond_f

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    goto :goto_c

    :cond_f
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v9

    .line 72
    .end local v6    # "outputFile":Ljava/io/File;
    :goto_c
    invoke-static {v8}, Lexpo/modules/imagepicker/ImagePickerUtilsKt;->getMediaStoreAssetId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v14

    .line 62
    new-instance v3, Lexpo/modules/imagepicker/ImagePickerAsset;

    .line 72
    nop

    .line 63
    nop

    .line 64
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 65
    nop

    .line 66
    nop

    .line 67
    nop

    .line 68
    invoke-static {v9, v10}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v20

    .line 69
    nop

    .line 70
    nop

    .line 71
    nop

    .line 62
    const/16 v26, 0xc00

    const/16 v27, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object v13, v3

    move-object/from16 v21, v12

    move-object/from16 v22, v4

    invoke-direct/range {v13 .. v27}, Lexpo/modules/imagepicker/ImagePickerAsset;-><init>(Ljava/lang/String;Lexpo/modules/imagepicker/MediaType;Ljava/lang/String;IILjava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final handleVideo(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/imagepicker/ImagePickerAsset;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p2

    instance-of v1, v0, Lexpo/modules/imagepicker/MediaHandler$handleVideo$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lexpo/modules/imagepicker/MediaHandler$handleVideo$1;

    iget v2, v1, Lexpo/modules/imagepicker/MediaHandler$handleVideo$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lexpo/modules/imagepicker/MediaHandler$handleVideo$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lexpo/modules/imagepicker/MediaHandler$handleVideo$1;->label:I

    move-object v0, v1

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lexpo/modules/imagepicker/MediaHandler$handleVideo$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lexpo/modules/imagepicker/MediaHandler$handleVideo$1;-><init>(Lexpo/modules/imagepicker/MediaHandler;Lkotlin/coroutines/Continuation;)V

    move-object v0, v1

    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v3, v1, Lexpo/modules/imagepicker/MediaHandler$handleVideo$1;->result:Ljava/lang/Object;

    .local v3, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 89
    iget v4, v1, Lexpo/modules/imagepicker/MediaHandler$handleVideo$1;->label:I

    const-string v5, "getContentResolver(...)"

    packed-switch v4, :pswitch_data_0

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v3    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-object v0, v1, Lexpo/modules/imagepicker/MediaHandler$handleVideo$1;->L$2:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    .local v0, "outputFile":Ljava/io/File;
    iget-object v4, v1, Lexpo/modules/imagepicker/MediaHandler$handleVideo$1;->L$1:Ljava/lang/Object;

    check-cast v4, Landroid/net/Uri;

    .local v4, "sourceUri":Landroid/net/Uri;
    iget-object v6, v1, Lexpo/modules/imagepicker/MediaHandler$handleVideo$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lexpo/modules/imagepicker/MediaHandler;

    .local v6, "this":Lexpo/modules/imagepicker/MediaHandler;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, v0

    goto :goto_1

    .end local v0    # "outputFile":Ljava/io/File;
    .end local v4    # "sourceUri":Landroid/net/Uri;
    .end local v6    # "this":Lexpo/modules/imagepicker/MediaHandler;
    :pswitch_1
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v6, p0

    .restart local v6    # "this":Lexpo/modules/imagepicker/MediaHandler;
    move-object/from16 v4, p1

    .line 92
    .restart local v4    # "sourceUri":Landroid/net/Uri;
    invoke-direct {v6}, Lexpo/modules/imagepicker/MediaHandler;->getCacheDirectory()Ljava/io/File;

    move-result-object v7

    const-string v8, ".mp4"

    invoke-static {v7, v8}, Lexpo/modules/imagepicker/ImagePickerUtilsKt;->createOutputFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 93
    .local v7, "outputFile":Ljava/io/File;
    invoke-direct {v6}, Lexpo/modules/imagepicker/MediaHandler;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v6, v1, Lexpo/modules/imagepicker/MediaHandler$handleVideo$1;->L$0:Ljava/lang/Object;

    iput-object v4, v1, Lexpo/modules/imagepicker/MediaHandler$handleVideo$1;->L$1:Ljava/lang/Object;

    iput-object v7, v1, Lexpo/modules/imagepicker/MediaHandler$handleVideo$1;->L$2:Ljava/lang/Object;

    const/4 v9, 0x1

    iput v9, v1, Lexpo/modules/imagepicker/MediaHandler$handleVideo$1;->label:I

    invoke-static {v4, v7, v8, v1}, Lexpo/modules/imagepicker/ImagePickerUtilsKt;->copyFile(Landroid/net/Uri;Ljava/io/File;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v0, :cond_1

    .line 89
    return-object v0

    .line 94
    :cond_1
    :goto_1
    move-object v0, v7

    .local v0, "$this$toUri$iv":Ljava/io/File;
    const/4 v8, 0x0

    .line 132
    .local v8, "$i$f$toUri":I
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 94
    .end local v0    # "$this$toUri$iv":Ljava/io/File;
    .end local v8    # "$i$f$toUri":I
    nop

    .line 96
    .local v0, "outputUri":Landroid/net/Uri;
    nop

    .line 97
    :try_start_0
    new-instance v8, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v8}, Landroid/media/MediaMetadataRetriever;-><init>()V

    move-object v9, v8

    .local v9, "$this$handleVideo_u24lambda_u248":Landroid/media/MediaMetadataRetriever;
    const/4 v10, 0x0

    .line 98
    .local v10, "$i$a$-apply-MediaHandler$handleVideo$metadataRetriever$1":I
    invoke-direct {v6}, Lexpo/modules/imagepicker/MediaHandler;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v9, v11, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 99
    nop

    .line 97
    .end local v9    # "$this$handleVideo_u24lambda_u248":Landroid/media/MediaMetadataRetriever;
    .end local v10    # "$i$a$-apply-MediaHandler$handleVideo$metadataRetriever$1":I
    nop

    .line 101
    .local v8, "metadataRetriever":Landroid/media/MediaMetadataRetriever;
    invoke-direct {v6, v4}, Lexpo/modules/imagepicker/MediaHandler;->getAdditionalFileData(Landroid/net/Uri;)Lexpo/modules/imagepicker/AdditionalFileData;

    move-result-object v9

    .line 102
    .local v9, "fileData":Lexpo/modules/imagepicker/AdditionalFileData;
    invoke-direct {v6}, Lexpo/modules/imagepicker/MediaHandler;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .end local v6    # "this":Lexpo/modules/imagepicker/MediaHandler;
    invoke-static {v10, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v4}, Lexpo/modules/imagepicker/ImagePickerUtilsKt;->getType(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v19

    .line 105
    .local v19, "mimeType":Ljava/lang/String;
    sget-object v13, Lexpo/modules/imagepicker/MediaType;->VIDEO:Lexpo/modules/imagepicker/MediaType;

    .line 106
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    .line 107
    .end local v0    # "outputUri":Landroid/net/Uri;
    const/16 v0, 0x12

    invoke-static {v8, v0}, Lexpo/modules/imagepicker/ImagePickerUtilsKt;->extractInt(Landroid/media/MediaMetadataRetriever;I)I

    move-result v15

    .line 108
    const/16 v0, 0x13

    invoke-static {v8, v0}, Lexpo/modules/imagepicker/ImagePickerUtilsKt;->extractInt(Landroid/media/MediaMetadataRetriever;I)I

    move-result v16

    .line 109
    const/4 v0, 0x0

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lexpo/modules/imagepicker/AdditionalFileData;->getFileName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v17, v5

    goto :goto_2

    :cond_2
    move-object/from16 v17, v0

    .line 110
    :goto_2
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Lexpo/modules/imagepicker/AdditionalFileData;->getFileSize()Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v18, v0

    goto :goto_3

    .end local v9    # "fileData":Lexpo/modules/imagepicker/AdditionalFileData;
    :cond_3
    move-object/from16 v18, v0

    .line 112
    :goto_3
    const/16 v0, 0x9

    invoke-static {v8, v0}, Lexpo/modules/imagepicker/ImagePickerUtilsKt;->extractInt(Landroid/media/MediaMetadataRetriever;I)I

    move-result v0

    .line 113
    const/16 v5, 0x18

    invoke-static {v8, v5}, Lexpo/modules/imagepicker/ImagePickerUtilsKt;->extractInt(Landroid/media/MediaMetadataRetriever;I)I

    move-result v5

    .line 114
    invoke-static {v4}, Lexpo/modules/imagepicker/ImagePickerUtilsKt;->getMediaStoreAssetId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v12

    .line 104
    .end local v4    # "sourceUri":Landroid/net/Uri;
    new-instance v4, Lexpo/modules/imagepicker/ImagePickerAsset;

    .line 114
    nop

    .line 105
    nop

    .line 106
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 107
    nop

    .line 108
    nop

    .line 109
    nop

    .line 110
    nop

    .line 111
    nop

    .line 104
    nop

    .line 112
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v22

    .line 113
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v23

    .line 104
    const/16 v24, 0x300

    const/16 v25, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v11, v4

    invoke-direct/range {v11 .. v25}, Lexpo/modules/imagepicker/ImagePickerAsset;-><init>(Ljava/lang/String;Lexpo/modules/imagepicker/MediaType;Ljava/lang/String;IILjava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_0
    .catch Lexpo/modules/imagepicker/FailedToExtractVideoMetadataException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 116
    .end local v8    # "metadataRetriever":Landroid/media/MediaMetadataRetriever;
    .end local v19    # "mimeType":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 117
    .local v0, "cause":Lexpo/modules/imagepicker/FailedToExtractVideoMetadataException;
    new-instance v4, Lexpo/modules/imagepicker/FailedToExtractVideoMetadataException;

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    invoke-direct {v4, v7, v5}, Lexpo/modules/imagepicker/FailedToExtractVideoMetadataException;-><init>(Ljava/io/File;Ljava/lang/Throwable;)V

    throw v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final readExtras$expo_image_picker_debug(Ljava/util/List;Lexpo/modules/imagepicker/ImagePickerOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlin/Pair<",
            "+",
            "Lexpo/modules/imagepicker/MediaType;",
            "+",
            "Landroid/net/Uri;",
            ">;>;",
            "Lexpo/modules/imagepicker/ImagePickerOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/imagepicker/ImagePickerResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;

    iget v1, v0, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;

    invoke-direct {v0, p0, p3}, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;-><init>(Lexpo/modules/imagepicker/MediaHandler;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p3, v0

    .local p3, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p3, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 21
    iget v2, p3, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    const/4 p1, 0x0

    .local p1, "$i$f$map":I
    const/4 p2, 0x0

    .local p2, "$i$f$mapTo":I
    const/4 v2, 0x0

    .local v2, "$i$a$-map-MediaHandler$readExtras$results$1":I
    iget-object v3, p3, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->L$4:Ljava/lang/Object;

    check-cast v3, Ljava/util/Collection;

    iget-object v4, p3, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->L$3:Ljava/lang/Object;

    check-cast v4, Ljava/util/Iterator;

    iget-object v5, p3, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->L$2:Ljava/lang/Object;

    check-cast v5, Ljava/util/Collection;

    .local v5, "destination$iv$iv":Ljava/util/Collection;
    iget-object v6, p3, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lexpo/modules/imagepicker/ImagePickerOptions;

    .local v6, "options":Lexpo/modules/imagepicker/ImagePickerOptions;
    iget-object v7, p3, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lexpo/modules/imagepicker/MediaHandler;

    .local v7, "this":Lexpo/modules/imagepicker/MediaHandler;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move v3, v2

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_2

    .end local v2    # "$i$a$-map-MediaHandler$readExtras$results$1":I
    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "options":Lexpo/modules/imagepicker/ImagePickerOptions;
    .end local v7    # "this":Lexpo/modules/imagepicker/MediaHandler;
    .end local p1    # "$i$f$map":I
    .end local p2    # "$i$f$mapTo":I
    :pswitch_1
    const/4 p1, 0x0

    .restart local p1    # "$i$f$map":I
    const/4 p2, 0x0

    .restart local p2    # "$i$f$mapTo":I
    const/4 v2, 0x0

    .restart local v2    # "$i$a$-map-MediaHandler$readExtras$results$1":I
    iget-object v3, p3, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->L$4:Ljava/lang/Object;

    check-cast v3, Ljava/util/Collection;

    iget-object v4, p3, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->L$3:Ljava/lang/Object;

    check-cast v4, Ljava/util/Iterator;

    iget-object v5, p3, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->L$2:Ljava/lang/Object;

    check-cast v5, Ljava/util/Collection;

    .restart local v5    # "destination$iv$iv":Ljava/util/Collection;
    iget-object v6, p3, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lexpo/modules/imagepicker/ImagePickerOptions;

    .restart local v6    # "options":Lexpo/modules/imagepicker/ImagePickerOptions;
    iget-object v7, p3, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lexpo/modules/imagepicker/MediaHandler;

    .restart local v7    # "this":Lexpo/modules/imagepicker/MediaHandler;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move v3, v2

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_3

    .end local v2    # "$i$a$-map-MediaHandler$readExtras$results$1":I
    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "options":Lexpo/modules/imagepicker/ImagePickerOptions;
    .end local v7    # "this":Lexpo/modules/imagepicker/MediaHandler;
    .end local p1    # "$i$f$map":I
    .end local p2    # "$i$f$mapTo":I
    :pswitch_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 25
    .local v2, "this":Lexpo/modules/imagepicker/MediaHandler;
    .local p1, "bareResult":Ljava/util/List;
    .local p2, "options":Lexpo/modules/imagepicker/ImagePickerOptions;
    check-cast p1, Ljava/lang/Iterable;

    .local p1, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 128
    .local v3, "$i$f$map":I
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {p1, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    .local p1, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 129
    .local v5, "$i$f$mapTo":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v7, v2

    move p1, v3

    move-object v3, v4

    move-object v4, v6

    move-object v6, p2

    move p2, v5

    .end local v2    # "this":Lexpo/modules/imagepicker/MediaHandler;
    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$i$f$mapTo":I
    .local v3, "destination$iv$iv":Ljava/util/Collection;
    .restart local v6    # "options":Lexpo/modules/imagepicker/ImagePickerOptions;
    .restart local v7    # "this":Lexpo/modules/imagepicker/MediaHandler;
    .local p1, "$i$f$map":I
    .local p2, "$i$f$mapTo":I
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 130
    .local v2, "item$iv$iv":Ljava/lang/Object;
    move-object v5, v2

    check-cast v5, Lkotlin/Pair;

    .end local v2    # "item$iv$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 25
    .local v2, "$i$a$-map-MediaHandler$readExtras$results$1":I
    invoke-virtual {v5}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/imagepicker/MediaType;

    .local v8, "mediaType":Lexpo/modules/imagepicker/MediaType;
    invoke-virtual {v5}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 26
    .local v5, "uri":Landroid/net/Uri;
    nop

    .end local v8    # "mediaType":Lexpo/modules/imagepicker/MediaType;
    sget-object v9, Lexpo/modules/imagepicker/MediaHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v8}, Lexpo/modules/imagepicker/MediaType;->ordinal()I

    move-result v8

    aget v8, v9, v8

    packed-switch v8, :pswitch_data_1

    .line 28
    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v6    # "options":Lexpo/modules/imagepicker/ImagePickerOptions;
    .end local v7    # "this":Lexpo/modules/imagepicker/MediaHandler;
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .restart local v3    # "destination$iv$iv":Ljava/util/Collection;
    .restart local v5    # "uri":Landroid/net/Uri;
    .restart local v6    # "options":Lexpo/modules/imagepicker/ImagePickerOptions;
    .restart local v7    # "this":Lexpo/modules/imagepicker/MediaHandler;
    :pswitch_3
    iput-object v7, p3, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->L$0:Ljava/lang/Object;

    iput-object v6, p3, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->L$1:Ljava/lang/Object;

    iput-object v3, p3, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->L$2:Ljava/lang/Object;

    iput-object v4, p3, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->L$3:Ljava/lang/Object;

    iput-object v3, p3, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->L$4:Ljava/lang/Object;

    const/4 v8, 0x2

    iput v8, p3, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->label:I

    invoke-direct {v7, v5, v6, p3}, Lexpo/modules/imagepicker/MediaHandler;->handleImage(Landroid/net/Uri;Lexpo/modules/imagepicker/ImagePickerOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "uri":Landroid/net/Uri;
    if-ne v5, v1, :cond_1

    .line 21
    return-object v1

    .line 28
    :cond_1
    move-object v8, v7

    move-object v7, v6

    move-object v6, v3

    move v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v5

    move-object v5, v4

    move-object v4, v6

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v2    # "$i$a$-map-MediaHandler$readExtras$results$1":I
    .local v1, "$result":Ljava/lang/Object;
    .local v3, "$i$a$-map-MediaHandler$readExtras$results$1":I
    .local v6, "destination$iv$iv":Ljava/util/Collection;
    .local v7, "options":Lexpo/modules/imagepicker/ImagePickerOptions;
    .local v8, "this":Lexpo/modules/imagepicker/MediaHandler;
    :goto_2
    check-cast v0, Lexpo/modules/imagepicker/ImagePickerAsset;

    goto :goto_4

    .line 27
    .end local v1    # "$result":Ljava/lang/Object;
    .end local v8    # "this":Lexpo/modules/imagepicker/MediaHandler;
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local v2    # "$i$a$-map-MediaHandler$readExtras$results$1":I
    .local v3, "destination$iv$iv":Ljava/util/Collection;
    .restart local v5    # "uri":Landroid/net/Uri;
    .local v6, "options":Lexpo/modules/imagepicker/ImagePickerOptions;
    .local v7, "this":Lexpo/modules/imagepicker/MediaHandler;
    :pswitch_4
    iput-object v7, p3, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->L$0:Ljava/lang/Object;

    iput-object v6, p3, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->L$1:Ljava/lang/Object;

    iput-object v3, p3, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->L$2:Ljava/lang/Object;

    iput-object v4, p3, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->L$3:Ljava/lang/Object;

    iput-object v3, p3, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->L$4:Ljava/lang/Object;

    const/4 v8, 0x1

    iput v8, p3, Lexpo/modules/imagepicker/MediaHandler$readExtras$1;->label:I

    invoke-direct {v7, v5, p3}, Lexpo/modules/imagepicker/MediaHandler;->handleVideo(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "uri":Landroid/net/Uri;
    if-ne v5, v1, :cond_2

    .line 21
    return-object v1

    .line 27
    :cond_2
    move-object v8, v7

    move-object v7, v6

    move-object v6, v3

    move v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v5

    move-object v5, v4

    move-object v4, v6

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v2    # "$i$a$-map-MediaHandler$readExtras$results$1":I
    .restart local v1    # "$result":Ljava/lang/Object;
    .local v3, "$i$a$-map-MediaHandler$readExtras$results$1":I
    .local v6, "destination$iv$iv":Ljava/util/Collection;
    .local v7, "options":Lexpo/modules/imagepicker/ImagePickerOptions;
    .restart local v8    # "this":Lexpo/modules/imagepicker/MediaHandler;
    :goto_3
    check-cast v0, Lexpo/modules/imagepicker/ImagePickerAsset;

    .line 26
    :goto_4
    nop

    .line 130
    .end local v3    # "$i$a$-map-MediaHandler$readExtras$results$1":I
    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    move-object v1, v2

    move-object v4, v5

    move-object v3, v6

    move-object v6, v7

    move-object v7, v8

    goto :goto_1

    .line 131
    .end local v1    # "$result":Ljava/lang/Object;
    .end local v8    # "this":Lexpo/modules/imagepicker/MediaHandler;
    .restart local v0    # "$result":Ljava/lang/Object;
    .local v3, "destination$iv$iv":Ljava/util/Collection;
    .local v6, "options":Lexpo/modules/imagepicker/ImagePickerOptions;
    .local v7, "this":Lexpo/modules/imagepicker/MediaHandler;
    :cond_3
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local p2    # "$i$f$mapTo":I
    move-object p2, v3

    check-cast p2, Ljava/util/List;

    .line 128
    nop

    .line 25
    .end local p1    # "$i$f$map":I
    move-object p1, p2

    .line 32
    .local p1, "results":Ljava/util/List;
    new-instance p2, Lexpo/modules/imagepicker/ImagePickerResponse;

    .line 33
    nop

    .line 34
    nop

    .line 32
    const/4 v1, 0x0

    invoke-direct {p2, v1, p1}, Lexpo/modules/imagepicker/ImagePickerResponse;-><init>(ZLjava/util/List;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
