.class final Lexpo/modules/imagepicker/ImagePickerUtilsKt$copyExifData$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ImagePickerUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/imagepicker/ImagePickerUtilsKt;->copyExifData(Landroid/net/Uri;Ljava/io/File;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImagePickerUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImagePickerUtils.kt\nexpo/modules/imagepicker/ImagePickerUtilsKt$copyExifData$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,281:1\n766#2:282\n857#2,2:283\n1549#2:285\n1620#2,3:286\n766#2:289\n857#2,2:290\n1855#2,2:292\n*S KotlinDebug\n*F\n+ 1 ImagePickerUtils.kt\nexpo/modules/imagepicker/ImagePickerUtilsKt$copyExifData$2\n*L\n197#1:282\n197#1:283,2\n198#1:285\n198#1:286,3\n199#1:289\n199#1:290,2\n200#1:292,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $contentResolver:Landroid/content/ContentResolver;

.field final synthetic $sourceUri:Landroid/net/Uri;

.field final synthetic $targetFile:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;Landroid/net/Uri;Landroid/content/ContentResolver;)V
    .locals 1

    iput-object p1, p0, Lexpo/modules/imagepicker/ImagePickerUtilsKt$copyExifData$2;->$targetFile:Ljava/io/File;

    iput-object p2, p0, Lexpo/modules/imagepicker/ImagePickerUtilsKt$copyExifData$2;->$sourceUri:Landroid/net/Uri;

    iput-object p3, p0, Lexpo/modules/imagepicker/ImagePickerUtilsKt$copyExifData$2;->$contentResolver:Landroid/content/ContentResolver;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 178
    invoke-virtual {p0}, Lexpo/modules/imagepicker/ImagePickerUtilsKt$copyExifData$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 23

    .line 179
    move-object/from16 v1, p0

    iget-object v0, v1, Lexpo/modules/imagepicker/ImagePickerUtilsKt$copyExifData$2;->$targetFile:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 180
    .local v2, "targetUri":Landroid/net/Uri;
    iget-object v0, v1, Lexpo/modules/imagepicker/ImagePickerUtilsKt$copyExifData$2;->$sourceUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v0

    if-nez v0, :cond_0

    .line 181
    return-void

    .line 185
    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "ImageLength"

    const/4 v4, 0x0

    aput-object v3, v0, v4

    .line 186
    const-string v3, "ImageWidth"

    const/4 v5, 0x1

    aput-object v3, v0, v5

    .line 185
    nop

    .line 187
    const-string v3, "PixelXDimension"

    const/4 v6, 0x2

    aput-object v3, v0, v6

    .line 185
    nop

    .line 188
    const-string v3, "PixelYDimension"

    const/4 v7, 0x3

    aput-object v3, v0, v7

    .line 185
    nop

    .line 189
    const-string v3, "Orientation"

    const/4 v7, 0x4

    aput-object v3, v0, v7

    .line 185
    nop

    .line 184
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 192
    .local v3, "omittableTags":Ljava/util/List;
    nop

    .line 193
    :try_start_0
    iget-object v0, v1, Lexpo/modules/imagepicker/ImagePickerUtilsKt$copyExifData$2;->$contentResolver:Landroid/content/ContentResolver;

    iget-object v7, v1, Lexpo/modules/imagepicker/ImagePickerUtilsKt$copyExifData$2;->$sourceUri:Landroid/net/Uri;

    invoke-virtual {v0, v7}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_8

    move-object v8, v0

    check-cast v8, Ljava/io/Closeable;

    iget-object v9, v1, Lexpo/modules/imagepicker/ImagePickerUtilsKt$copyExifData$2;->$targetFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    move-object v0, v8

    check-cast v0, Ljava/io/InputStream;

    move-object v10, v0

    .local v10, "inputStream":Ljava/io/InputStream;
    const/4 v11, 0x0

    .line 194
    .local v11, "$i$a$-use-ImagePickerUtilsKt$copyExifData$2$1":I
    new-instance v0, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v0, v10}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    move-object v12, v0

    .line 195
    .local v12, "sourceExif":Landroidx/exifinterface/media/ExifInterface;
    new-instance v0, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v0, v9}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/File;)V

    move-object v13, v0

    .line 196
    .local v13, "targetExif":Landroidx/exifinterface/media/ExifInterface;
    sget-object v0, Lexpo/modules/imagepicker/ImagePickerConstants;->INSTANCE:Lexpo/modules/imagepicker/ImagePickerConstants;

    invoke-virtual {v0}, Lexpo/modules/imagepicker/ImagePickerConstants;->getEXIF_TAGS()Ljava/lang/Iterable;

    move-result-object v0

    .line 197
    nop

    .local v0, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v14, 0x0

    .line 282
    .local v14, "$i$f$filter":I
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    check-cast v15, Ljava/util/Collection;

    .local v15, "destination$iv$iv":Ljava/util/Collection;
    move-object/from16 v16, v0

    .local v16, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/16 v17, 0x0

    .line 283
    .local v17, "$i$f$filterTo":I
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v19

    move-object/from16 v4, v20

    .local v4, "element$iv$iv":Ljava/lang/Object;
    move-object/from16 v20, v4

    check-cast v20, Lkotlin/Pair;

    const/16 v21, 0x0

    .line 197
    .local v21, "$i$a$-filter-ImagePickerUtilsKt$copyExifData$2$1$1":I
    invoke-virtual/range {v20 .. v20}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v22, v20

    move-object/from16 v5, v22

    .local v5, "tag":Ljava/lang/String;
    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v22

    .line 283
    .end local v5    # "tag":Ljava/lang/String;
    .end local v21    # "$i$a$-filter-ImagePickerUtilsKt$copyExifData$2$1$1":I
    if-nez v22, :cond_1

    invoke-interface {v15, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_0

    .line 284
    .end local v4    # "element$iv$iv":Ljava/lang/Object;
    :cond_2
    nop

    .end local v15    # "destination$iv$iv":Ljava/util/Collection;
    .end local v16    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v17    # "$i$f$filterTo":I
    move-object v4, v15

    check-cast v4, Ljava/util/List;

    .line 282
    nop

    .end local v0    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v14    # "$i$f$filter":I
    check-cast v4, Ljava/lang/Iterable;

    .line 198
    move-object v0, v4

    .local v0, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 285
    .local v4, "$i$f$map":I
    new-instance v5, Ljava/util/ArrayList;

    const/16 v14, 0xa

    invoke-static {v0, v14}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v5, v14}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .local v5, "destination$iv$iv":Ljava/util/Collection;
    move-object v14, v0

    .local v14, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v15, 0x0

    .line 286
    .local v15, "$i$f$mapTo":I
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    .line 287
    .local v17, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v18, v17

    check-cast v18, Lkotlin/Pair;

    const/16 v21, 0x0

    .line 198
    .local v21, "$i$a$-map-ImagePickerUtilsKt$copyExifData$2$1$2":I
    invoke-virtual/range {v18 .. v18}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v22, v18

    move-object/from16 v6, v22

    .local v6, "tag":Ljava/lang/String;
    invoke-virtual {v12, v6}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    .line 287
    .end local v6    # "tag":Ljava/lang/String;
    .end local v21    # "$i$a$-map-ImagePickerUtilsKt$copyExifData$2$1$2":I
    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x2

    goto :goto_1

    .line 288
    .end local v17    # "item$iv$iv":Ljava/lang/Object;
    :cond_3
    nop

    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    .end local v14    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v15    # "$i$f$mapTo":I
    check-cast v5, Ljava/util/List;

    .line 285
    nop

    .end local v0    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$map":I
    check-cast v5, Ljava/lang/Iterable;

    .line 199
    move-object v0, v5

    .local v0, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 289
    .local v4, "$i$f$filter":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/Collection;

    .restart local v5    # "destination$iv$iv":Ljava/util/Collection;
    move-object v6, v0

    .local v6, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 290
    .local v7, "$i$f$filterTo":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_4
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .local v15, "element$iv$iv":Ljava/lang/Object;
    move-object/from16 v16, v15

    check-cast v16, Lkotlin/Pair;

    const/16 v17, 0x0

    .line 199
    .local v17, "$i$a$-filter-ImagePickerUtilsKt$copyExifData$2$1$3":I
    invoke-virtual/range {v16 .. v16}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .local v16, "value":Ljava/lang/String;
    if-eqz v16, :cond_5

    const/16 v16, 0x1

    goto :goto_3

    :cond_5
    const/16 v16, 0x0

    .line 290
    .end local v16    # "value":Ljava/lang/String;
    .end local v17    # "$i$a$-filter-ImagePickerUtilsKt$copyExifData$2$1$3":I
    :goto_3
    if-eqz v16, :cond_4

    invoke-interface {v5, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 291
    .end local v15    # "element$iv$iv":Ljava/lang/Object;
    :cond_6
    nop

    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$filterTo":I
    check-cast v5, Ljava/util/List;

    .line 289
    nop

    .end local v0    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$filter":I
    check-cast v5, Ljava/lang/Iterable;

    .line 200
    move-object v0, v5

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 292
    .local v4, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lkotlin/Pair;

    const/4 v14, 0x0

    .line 200
    .local v14, "$i$a$-forEach-ImagePickerUtilsKt$copyExifData$2$1$4":I
    invoke-virtual {v7}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .local v15, "tag":Ljava/lang/String;
    invoke-virtual {v7}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .local v7, "value":Ljava/lang/String;
    invoke-virtual {v13, v15, v7}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 292
    .end local v7    # "value":Ljava/lang/String;
    .end local v14    # "$i$a$-forEach-ImagePickerUtilsKt$copyExifData$2$1$4":I
    .end local v15    # "tag":Ljava/lang/String;
    nop

    .end local v6    # "element$iv":Ljava/lang/Object;
    goto :goto_4

    .line 293
    :cond_7
    nop

    .line 202
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$forEach":I
    nop

    .line 203
    :try_start_2
    invoke-virtual {v13}, Landroidx/exifinterface/media/ExifInterface;->saveAttributes()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 207
    nop

    .end local v10    # "inputStream":Ljava/io/InputStream;
    .end local v11    # "$i$a$-use-ImagePickerUtilsKt$copyExifData$2$1":I
    .end local v12    # "sourceExif":Landroidx/exifinterface/media/ExifInterface;
    .end local v13    # "targetExif":Landroidx/exifinterface/media/ExifInterface;
    :try_start_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 193
    const/4 v0, 0x0

    :try_start_4
    invoke-static {v8, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_5

    .line 204
    .restart local v10    # "inputStream":Ljava/io/InputStream;
    .restart local v11    # "$i$a$-use-ImagePickerUtilsKt$copyExifData$2$1":I
    .restart local v12    # "sourceExif":Landroidx/exifinterface/media/ExifInterface;
    .restart local v13    # "targetExif":Landroidx/exifinterface/media/ExifInterface;
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 205
    .local v0, "cause":Ljava/io/IOException;
    :try_start_5
    new-instance v4, Lexpo/modules/imagepicker/FailedToWriteExifDataToFileException;

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    invoke-direct {v4, v9, v5}, Lexpo/modules/imagepicker/FailedToWriteExifDataToFileException;-><init>(Ljava/io/File;Ljava/lang/Throwable;)V

    .end local v2    # "targetUri":Landroid/net/Uri;
    .end local v3    # "omittableTags":Ljava/util/List;
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 193
    .end local v0    # "cause":Ljava/io/IOException;
    .end local v10    # "inputStream":Ljava/io/InputStream;
    .end local v11    # "$i$a$-use-ImagePickerUtilsKt$copyExifData$2$1":I
    .end local v12    # "sourceExif":Landroidx/exifinterface/media/ExifInterface;
    .end local v13    # "targetExif":Landroidx/exifinterface/media/ExifInterface;
    .restart local v2    # "targetUri":Landroid/net/Uri;
    .restart local v3    # "omittableTags":Ljava/util/List;
    :catchall_0
    move-exception v0

    move-object v4, v0

    .end local v2    # "targetUri":Landroid/net/Uri;
    .end local v3    # "omittableTags":Ljava/util/List;
    :try_start_6
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .restart local v2    # "targetUri":Landroid/net/Uri;
    .restart local v3    # "omittableTags":Ljava/util/List;
    :catchall_1
    move-exception v0

    move-object v5, v0

    :try_start_7
    invoke-static {v8, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v2    # "targetUri":Landroid/net/Uri;
    .end local v3    # "omittableTags":Ljava/util/List;
    throw v5

    .restart local v2    # "targetUri":Landroid/net/Uri;
    .restart local v3    # "omittableTags":Ljava/util/List;
    :cond_8
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_9

    .line 211
    return-void

    .line 207
    :cond_9
    new-instance v0, Lexpo/modules/imagepicker/FailedToReadFileException;

    iget-object v4, v1, Lexpo/modules/imagepicker/ImagePickerUtilsKt$copyExifData$2;->$sourceUri:Landroid/net/Uri;

    invoke-static {v4}, Landroidx/core/net/UriKt;->toFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-direct {v0, v4, v6, v5, v6}, Lexpo/modules/imagepicker/FailedToReadFileException;-><init>(Ljava/io/File;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .end local v2    # "targetUri":Landroid/net/Uri;
    .end local v3    # "omittableTags":Ljava/util/List;
    throw v0
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1

    .line 208
    .restart local v2    # "targetUri":Landroid/net/Uri;
    .restart local v3    # "omittableTags":Ljava/util/List;
    :catch_1
    move-exception v0

    .line 209
    .local v0, "cause":Ljava/io/FileNotFoundException;
    new-instance v4, Lexpo/modules/imagepicker/FailedToWriteFileException;

    iget-object v5, v1, Lexpo/modules/imagepicker/ImagePickerUtilsKt$copyExifData$2;->$targetFile:Ljava/io/File;

    move-object v6, v0

    check-cast v6, Ljava/lang/Throwable;

    invoke-direct {v4, v5, v6}, Lexpo/modules/imagepicker/FailedToWriteFileException;-><init>(Ljava/io/File;Ljava/lang/Throwable;)V

    throw v4
.end method
