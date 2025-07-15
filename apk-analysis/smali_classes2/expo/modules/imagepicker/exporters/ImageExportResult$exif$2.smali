.class final Lexpo/modules/imagepicker/exporters/ImageExportResult$exif$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ImageExporter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/imagepicker/exporters/ImageExportResult;->exif$suspendImpl(Lexpo/modules/imagepicker/exporters/ImageExportResult;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImageExporter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageExporter.kt\nexpo/modules/imagepicker/exporters/ImageExportResult$exif$2\n+ 2 Uri.kt\nandroidx/core/net/UriKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,72:1\n36#2:73\n766#3:74\n857#3,2:75\n1855#3,2:77\n*S KotlinDebug\n*F\n+ 1 ImageExporter.kt\nexpo/modules/imagepicker/exporters/ImageExportResult$exif$2\n*L\n49#1:73\n54#1:74\n54#1:75,2\n55#1:77,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Landroid/os/Bundle;",
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

.field final synthetic this$0:Lexpo/modules/imagepicker/exporters/ImageExportResult;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Lexpo/modules/imagepicker/exporters/ImageExportResult;)V
    .locals 1

    iput-object p1, p0, Lexpo/modules/imagepicker/exporters/ImageExportResult$exif$2;->$contentResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lexpo/modules/imagepicker/exporters/ImageExportResult$exif$2;->this$0:Lexpo/modules/imagepicker/exporters/ImageExportResult;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/os/Bundle;
    .locals 20

    .line 49
    move-object/from16 v1, p0

    iget-object v0, v1, Lexpo/modules/imagepicker/exporters/ImageExportResult$exif$2;->$contentResolver:Landroid/content/ContentResolver;

    iget-object v2, v1, Lexpo/modules/imagepicker/exporters/ImageExportResult$exif$2;->this$0:Lexpo/modules/imagepicker/exporters/ImageExportResult;

    invoke-static {v2}, Lexpo/modules/imagepicker/exporters/ImageExportResult;->access$getImageFile$p(Lexpo/modules/imagepicker/exporters/ImageExportResult;)Ljava/io/File;

    move-result-object v2

    .local v2, "$this$toUri$iv":Ljava/io/File;
    const/4 v3, 0x0

    .line 73
    .local v3, "$i$f$toUri":I
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 49
    .end local v2    # "$this$toUri$iv":Ljava/io/File;
    .end local v3    # "$i$f$toUri":I
    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_8

    move-object v3, v0

    check-cast v3, Ljava/io/Closeable;

    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/io/InputStream;

    .local v0, "inputStream":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 50
    .local v4, "$i$a$-use-ImageExportResult$exif$2$1":I
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object v6, v5

    .local v6, "$this$invoke_u24lambda_u244_u24lambda_u243":Landroid/os/Bundle;
    const/4 v7, 0x0

    .line 51
    .local v7, "$i$a$-apply-ImageExportResult$exif$2$1$1":I
    new-instance v8, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v8, v0}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    .line 53
    .local v8, "exifInterface":Landroidx/exifinterface/media/ExifInterface;
    sget-object v9, Lexpo/modules/imagepicker/ImagePickerConstants;->INSTANCE:Lexpo/modules/imagepicker/ImagePickerConstants;

    invoke-virtual {v9}, Lexpo/modules/imagepicker/ImagePickerConstants;->getEXIF_TAGS()Ljava/lang/Iterable;

    move-result-object v9

    .line 54
    nop

    .local v9, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v10, 0x0

    .line 74
    .local v10, "$i$f$filter":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    check-cast v11, Ljava/util/Collection;

    .local v11, "destination$iv$iv":Ljava/util/Collection;
    move-object v12, v9

    .local v12, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v13, 0x0

    .line 75
    .local v13, "$i$f$filterTo":I
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    const/16 v16, 0x1

    if-eqz v15, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .local v15, "element$iv$iv":Ljava/lang/Object;
    move-object/from16 v17, v15

    check-cast v17, Lkotlin/Pair;

    const/16 v18, 0x0

    .line 54
    .local v18, "$i$a$-filter-ImageExportResult$exif$2$1$1$1":I
    invoke-virtual/range {v17 .. v17}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v19, v17

    move-object/from16 v2, v19

    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {v8, v2}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_1

    goto :goto_1

    :cond_1
    const/16 v16, 0x0

    .line 75
    .end local v2    # "tag":Ljava/lang/String;
    .end local v18    # "$i$a$-filter-ImageExportResult$exif$2$1$1$1":I
    :goto_1
    if-eqz v16, :cond_0

    invoke-interface {v11, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 76
    .end local v15    # "element$iv$iv":Ljava/lang/Object;
    :cond_2
    nop

    .end local v11    # "destination$iv$iv":Ljava/util/Collection;
    .end local v12    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v13    # "$i$f$filterTo":I
    move-object v2, v11

    check-cast v2, Ljava/util/List;

    .line 74
    nop

    .end local v9    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v10    # "$i$f$filter":I
    check-cast v2, Ljava/lang/Iterable;

    .line 55
    nop

    .local v2, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 77
    .local v9, "$i$f$forEach":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .local v11, "element$iv":Ljava/lang/Object;
    move-object v14, v11

    check-cast v14, Lkotlin/Pair;

    const/4 v15, 0x0

    .line 55
    .local v15, "$i$a$-forEach-ImageExportResult$exif$2$1$1$2":I
    invoke-virtual {v14}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v19, v18

    .local v19, "type":Ljava/lang/String;
    invoke-virtual {v14}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 56
    .local v14, "tag":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_0

    move-object/from16 v18, v0

    move-object/from16 v0, v19

    .end local v19    # "type":Ljava/lang/String;
    .local v0, "type":Ljava/lang/String;
    .local v18, "inputStream":Ljava/io/InputStream;
    goto :goto_3

    .end local v18    # "inputStream":Ljava/io/InputStream;
    .local v0, "inputStream":Ljava/io/InputStream;
    .restart local v19    # "type":Ljava/lang/String;
    :sswitch_0
    const-string v12, "int"

    move-object/from16 v13, v19

    .end local v19    # "type":Ljava/lang/String;
    .local v13, "type":Ljava/lang/String;
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    move-object/from16 v18, v0

    move-object v0, v13

    goto :goto_3

    .line 58
    :cond_3
    move-object/from16 v18, v0

    const/4 v12, 0x0

    .end local v0    # "inputStream":Ljava/io/InputStream;
    .restart local v18    # "inputStream":Ljava/io/InputStream;
    invoke-virtual {v8, v14, v12}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v6, v14, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v0, v13

    goto :goto_3

    .line 56
    .end local v13    # "type":Ljava/lang/String;
    .end local v18    # "inputStream":Ljava/io/InputStream;
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    .restart local v19    # "type":Ljava/lang/String;
    :sswitch_1
    move-object/from16 v18, v0

    move-object/from16 v13, v19

    .end local v0    # "inputStream":Ljava/io/InputStream;
    .end local v19    # "type":Ljava/lang/String;
    .restart local v13    # "type":Ljava/lang/String;
    .restart local v18    # "inputStream":Ljava/io/InputStream;
    const-string v0, "string"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move-object v0, v13

    goto :goto_3

    .line 57
    :cond_4
    invoke-virtual {v8, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v14, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v13

    goto :goto_3

    .line 56
    .end local v13    # "type":Ljava/lang/String;
    .end local v18    # "inputStream":Ljava/io/InputStream;
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    .restart local v19    # "type":Ljava/lang/String;
    :sswitch_2
    move-object/from16 v18, v0

    move-object/from16 v0, v19

    .end local v19    # "type":Ljava/lang/String;
    .local v0, "type":Ljava/lang/String;
    .restart local v18    # "inputStream":Ljava/io/InputStream;
    const-string v12, "double"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    goto :goto_3

    .line 59
    :cond_5
    const-wide/16 v12, 0x0

    invoke-virtual {v8, v14, v12, v13}, Landroidx/exifinterface/media/ExifInterface;->getAttributeDouble(Ljava/lang/String;D)D

    move-result-wide v12

    invoke-virtual {v6, v14, v12, v13}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 61
    :goto_3
    nop

    .line 77
    .end local v0    # "type":Ljava/lang/String;
    .end local v14    # "tag":Ljava/lang/String;
    .end local v15    # "$i$a$-forEach-ImageExportResult$exif$2$1$1$2":I
    move-object/from16 v0, v18

    .end local v11    # "element$iv":Ljava/lang/Object;
    goto :goto_2

    .line 78
    .end local v18    # "inputStream":Ljava/io/InputStream;
    .local v0, "inputStream":Ljava/io/InputStream;
    :cond_6
    move-object/from16 v18, v0

    .line 63
    .end local v0    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$forEach":I
    .restart local v18    # "inputStream":Ljava/io/InputStream;
    invoke-virtual {v8}, Landroidx/exifinterface/media/ExifInterface;->getLatLong()[D

    move-result-object v0

    if-eqz v0, :cond_7

    .local v0, "latLong":[D
    const/4 v2, 0x0

    .line 64
    .local v2, "$i$a$-let-ImageExportResult$exif$2$1$1$3":I
    const-string v9, "GPSLatitude"

    const/4 v10, 0x0

    aget-wide v10, v0, v10

    invoke-virtual {v6, v9, v10, v11}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 65
    const-string v9, "GPSLongitude"

    aget-wide v10, v0, v16

    invoke-virtual {v6, v9, v10, v11}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 66
    const-string v9, "GPSAltitude"

    const-wide/16 v10, 0x0

    invoke-virtual {v8, v10, v11}, Landroidx/exifinterface/media/ExifInterface;->getAltitude(D)D

    move-result-wide v10

    invoke-virtual {v6, v9, v10, v11}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    nop

    .line 63
    .end local v0    # "latLong":[D
    .end local v2    # "$i$a$-let-ImageExportResult$exif$2$1$1$3":I
    :cond_7
    nop

    .line 68
    nop

    .line 50
    .end local v6    # "$this$invoke_u24lambda_u244_u24lambda_u243":Landroid/os/Bundle;
    .end local v7    # "$i$a$-apply-ImageExportResult$exif$2$1$1":I
    .end local v8    # "exifInterface":Landroidx/exifinterface/media/ExifInterface;
    const/4 v0, 0x0

    .end local v4    # "$i$a$-use-ImageExportResult$exif$2$1":I
    .end local v18    # "inputStream":Ljava/io/InputStream;
    invoke-static {v3, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v5

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v4, v0

    invoke-static {v3, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4

    .line 69
    :cond_8
    new-instance v0, Lexpo/modules/imagepicker/FailedToReadFileException;

    iget-object v2, v1, Lexpo/modules/imagepicker/exporters/ImageExportResult$exif$2;->this$0:Lexpo/modules/imagepicker/exporters/ImageExportResult;

    invoke-static {v2}, Lexpo/modules/imagepicker/exporters/ImageExportResult;->access$getImageFile$p(Lexpo/modules/imagepicker/exporters/ImageExportResult;)Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4, v3, v4}, Lexpo/modules/imagepicker/FailedToReadFileException;-><init>(Ljava/io/File;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x4f08842f -> :sswitch_2
        -0x352a9fef -> :sswitch_1
        0x197ef -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lexpo/modules/imagepicker/exporters/ImageExportResult$exif$2;->invoke()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
