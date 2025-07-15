.class final Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;
.super Lcom/facebook/soloader/UnpackingSoSource$Unpacker;
.source "ExoSoSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/soloader/ExoSoSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ExoUnpacker"
.end annotation


# instance fields
.field private final mDsos:[Lcom/facebook/soloader/ExoSoSource$FileDso;

.field final synthetic this$0:Lcom/facebook/soloader/ExoSoSource;


# direct methods
.method constructor <init>(Lcom/facebook/soloader/ExoSoSource;Lcom/facebook/soloader/UnpackingSoSource;)V
    .locals 22
    .param p2, "soSource"    # Lcom/facebook/soloader/UnpackingSoSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, ".so"

    iput-object v0, v1, Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;->this$0:Lcom/facebook/soloader/ExoSoSource;

    invoke-direct/range {p0 .. p0}, Lcom/facebook/soloader/UnpackingSoSource$Unpacker;-><init>()V

    .line 60
    iget-object v3, v0, Lcom/facebook/soloader/ExoSoSource;->mContext:Landroid/content/Context;

    .line 61
    .local v3, "context":Landroid/content/Context;
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/local/tmp/exopackage/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 62
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/native-libs/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 64
    .local v4, "exoDir":Ljava/io/File;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 66
    .local v5, "providedLibraries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/soloader/ExoSoSource$FileDso;>;"
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    move-object v6, v0

    .line 68
    .local v6, "librariesAbiSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/facebook/soloader/SysUtil;->getSupportedAbis()[Ljava/lang/String;

    move-result-object v0

    array-length v7, v0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v7, :cond_8

    aget-object v10, v0, v9

    .line 69
    .local v10, "abi":Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v4, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 70
    .local v11, "abiDir":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-nez v12, :cond_0

    .line 71
    move-object/from16 p1, v0

    move-object/from16 v21, v2

    move-object/from16 v17, v3

    move-object/from16 v16, v4

    move/from16 v19, v7

    goto/16 :goto_4

    .line 74
    :cond_0
    invoke-interface {v6, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v12, Ljava/io/File;

    const-string v13, "metadata.txt"

    invoke-direct {v12, v11, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 77
    .local v12, "metadataFileName":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    move-result v13

    if-nez v13, :cond_1

    .line 78
    move-object/from16 p1, v0

    move-object/from16 v21, v2

    move-object/from16 v17, v3

    move-object/from16 v16, v4

    move/from16 v19, v7

    goto/16 :goto_4

    .line 81
    :cond_1
    new-instance v13, Ljava/io/FileReader;

    invoke-direct {v13, v12}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 82
    .local v13, "fr":Ljava/io/FileReader;
    :try_start_0
    new-instance v14, Ljava/io/BufferedReader;

    invoke-direct {v14, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 84
    .local v14, "br":Ljava/io/BufferedReader;
    :goto_1
    :try_start_1
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    move-object/from16 p1, v15

    .local p1, "line":Ljava/lang/String;
    if-eqz v15, :cond_7

    .line 85
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_2

    .line 86
    goto :goto_1

    .line 89
    :cond_2
    const/16 v15, 0x20

    move-object/from16 v8, p1

    .end local p1    # "line":Ljava/lang/String;
    .local v8, "line":Ljava/lang/String;
    invoke-virtual {v8, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    .line 90
    .local v15, "sep":I
    move-object/from16 p1, v0

    const/4 v0, -0x1

    if-eq v15, v0, :cond_6

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v17, v3

    move-object/from16 v16, v4

    const/4 v3, 0x0

    .end local v3    # "context":Landroid/content/Context;
    .end local v4    # "exoDir":Ljava/io/File;
    .local v16, "exoDir":Ljava/io/File;
    .local v17, "context":Landroid/content/Context;
    :try_start_2
    invoke-virtual {v8, v3, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "soName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 96
    .local v4, "nrAlreadyProvided":I
    const/16 v18, 0x0

    .line 97
    .local v18, "found":Z
    const/16 v19, 0x0

    move/from16 v3, v19

    .local v3, "i":I
    :goto_2
    if-ge v3, v4, :cond_4

    .line 98
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move/from16 v20, v4

    .end local v4    # "nrAlreadyProvided":I
    .local v20, "nrAlreadyProvided":I
    move-object/from16 v4, v19

    check-cast v4, Lcom/facebook/soloader/ExoSoSource$FileDso;

    iget-object v4, v4, Lcom/facebook/soloader/ExoSoSource$FileDso;->name:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 99
    const/16 v18, 0x1

    .line 100
    goto :goto_3

    .line 97
    :cond_3
    add-int/lit8 v3, v3, 0x1

    move/from16 v4, v20

    goto :goto_2

    .end local v20    # "nrAlreadyProvided":I
    .restart local v4    # "nrAlreadyProvided":I
    :cond_4
    move/from16 v20, v4

    .line 104
    .end local v3    # "i":I
    .end local v4    # "nrAlreadyProvided":I
    .restart local v20    # "nrAlreadyProvided":I
    :goto_3
    if-eqz v18, :cond_5

    .line 105
    move-object/from16 v0, p1

    move-object/from16 v4, v16

    move-object/from16 v3, v17

    goto :goto_1

    .line 108
    :cond_5
    add-int/lit8 v3, v15, 0x1

    invoke-virtual {v8, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, "backingFileBaseName":Ljava/lang/String;
    nop

    .line 111
    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    move/from16 v19, v7

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 110
    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 112
    .local v4, "hash":Ljava/lang/String;
    new-instance v7, Lcom/facebook/soloader/ExoSoSource$FileDso;

    move-object/from16 v21, v2

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v11, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v7, v0, v4, v2}, Lcom/facebook/soloader/ExoSoSource$FileDso;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    move-object/from16 v0, p1

    move-object/from16 v4, v16

    move-object/from16 v3, v17

    move/from16 v7, v19

    move-object/from16 v2, v21

    .end local v0    # "soName":Ljava/lang/String;
    .end local v3    # "backingFileBaseName":Ljava/lang/String;
    .end local v4    # "hash":Ljava/lang/String;
    .end local v15    # "sep":I
    .end local v18    # "found":Z
    .end local v20    # "nrAlreadyProvided":I
    goto/16 :goto_1

    .line 91
    .end local v16    # "exoDir":Ljava/io/File;
    .end local v17    # "context":Landroid/content/Context;
    .local v3, "context":Landroid/content/Context;
    .local v4, "exoDir":Ljava/io/File;
    .restart local v15    # "sep":I
    :cond_6
    move-object/from16 v17, v3

    move-object/from16 v16, v4

    .end local v3    # "context":Landroid/content/Context;
    .end local v4    # "exoDir":Ljava/io/File;
    .restart local v16    # "exoDir":Ljava/io/File;
    .restart local v17    # "context":Landroid/content/Context;
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal line in exopackage metadata: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v5    # "providedLibraries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/soloader/ExoSoSource$FileDso;>;"
    .end local v6    # "librariesAbiSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v10    # "abi":Ljava/lang/String;
    .end local v11    # "abiDir":Ljava/io/File;
    .end local v12    # "metadataFileName":Ljava/io/File;
    .end local v13    # "fr":Ljava/io/FileReader;
    .end local v14    # "br":Ljava/io/BufferedReader;
    .end local v16    # "exoDir":Ljava/io/File;
    .end local v17    # "context":Landroid/content/Context;
    .end local p2    # "soSource":Lcom/facebook/soloader/UnpackingSoSource;
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    .end local v8    # "line":Ljava/lang/String;
    .end local v15    # "sep":I
    .restart local v5    # "providedLibraries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/soloader/ExoSoSource$FileDso;>;"
    .restart local v6    # "librariesAbiSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v10    # "abi":Ljava/lang/String;
    .restart local v11    # "abiDir":Ljava/io/File;
    .restart local v12    # "metadataFileName":Ljava/io/File;
    .restart local v13    # "fr":Ljava/io/FileReader;
    .restart local v14    # "br":Ljava/io/BufferedReader;
    .restart local v16    # "exoDir":Ljava/io/File;
    .restart local v17    # "context":Landroid/content/Context;
    .restart local p2    # "soSource":Lcom/facebook/soloader/UnpackingSoSource;
    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_5

    .line 84
    .end local v16    # "exoDir":Ljava/io/File;
    .end local v17    # "context":Landroid/content/Context;
    .restart local v3    # "context":Landroid/content/Context;
    .restart local v4    # "exoDir":Ljava/io/File;
    .restart local p1    # "line":Ljava/lang/String;
    :cond_7
    move-object/from16 v8, p1

    move-object/from16 p1, v0

    move-object/from16 v21, v2

    move-object/from16 v17, v3

    move-object/from16 v16, v4

    move/from16 v19, v7

    .line 114
    .end local v3    # "context":Landroid/content/Context;
    .end local v4    # "exoDir":Ljava/io/File;
    .end local p1    # "line":Ljava/lang/String;
    .restart local v16    # "exoDir":Ljava/io/File;
    .restart local v17    # "context":Landroid/content/Context;
    :try_start_3
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v14    # "br":Ljava/io/BufferedReader;
    invoke-virtual {v13}, Ljava/io/FileReader;->close()V

    .line 68
    .end local v10    # "abi":Ljava/lang/String;
    .end local v11    # "abiDir":Ljava/io/File;
    .end local v12    # "metadataFileName":Ljava/io/File;
    .end local v13    # "fr":Ljava/io/FileReader;
    :goto_4
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p1

    move-object/from16 v4, v16

    move-object/from16 v3, v17

    move/from16 v7, v19

    move-object/from16 v2, v21

    goto/16 :goto_0

    .line 81
    .restart local v10    # "abi":Ljava/lang/String;
    .restart local v11    # "abiDir":Ljava/io/File;
    .restart local v12    # "metadataFileName":Ljava/io/File;
    .restart local v13    # "fr":Ljava/io/FileReader;
    :catchall_1
    move-exception v0

    move-object v2, v0

    goto :goto_7

    .end local v16    # "exoDir":Ljava/io/File;
    .end local v17    # "context":Landroid/content/Context;
    .restart local v3    # "context":Landroid/content/Context;
    .restart local v4    # "exoDir":Ljava/io/File;
    .restart local v14    # "br":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v16, v4

    move-object v2, v0

    .end local v3    # "context":Landroid/content/Context;
    .end local v4    # "exoDir":Ljava/io/File;
    .restart local v16    # "exoDir":Ljava/io/File;
    .restart local v17    # "context":Landroid/content/Context;
    :goto_5
    :try_start_4
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v3, v0

    :try_start_5
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v5    # "providedLibraries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/soloader/ExoSoSource$FileDso;>;"
    .end local v6    # "librariesAbiSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v10    # "abi":Ljava/lang/String;
    .end local v11    # "abiDir":Ljava/io/File;
    .end local v12    # "metadataFileName":Ljava/io/File;
    .end local v13    # "fr":Ljava/io/FileReader;
    .end local v16    # "exoDir":Ljava/io/File;
    .end local v17    # "context":Landroid/content/Context;
    .end local p2    # "soSource":Lcom/facebook/soloader/UnpackingSoSource;
    :goto_6
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v14    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "context":Landroid/content/Context;
    .restart local v4    # "exoDir":Ljava/io/File;
    .restart local v5    # "providedLibraries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/soloader/ExoSoSource$FileDso;>;"
    .restart local v6    # "librariesAbiSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v10    # "abi":Ljava/lang/String;
    .restart local v11    # "abiDir":Ljava/io/File;
    .restart local v12    # "metadataFileName":Ljava/io/File;
    .restart local v13    # "fr":Ljava/io/FileReader;
    .restart local p2    # "soSource":Lcom/facebook/soloader/UnpackingSoSource;
    :catchall_4
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v16, v4

    move-object v2, v0

    .end local v3    # "context":Landroid/content/Context;
    .end local v4    # "exoDir":Ljava/io/File;
    .restart local v16    # "exoDir":Ljava/io/File;
    .restart local v17    # "context":Landroid/content/Context;
    :goto_7
    :try_start_6
    invoke-virtual {v13}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_8

    :catchall_5
    move-exception v0

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8
    throw v2

    .line 117
    .end local v10    # "abi":Ljava/lang/String;
    .end local v11    # "abiDir":Ljava/io/File;
    .end local v12    # "metadataFileName":Ljava/io/File;
    .end local v13    # "fr":Ljava/io/FileReader;
    .end local v16    # "exoDir":Ljava/io/File;
    .end local v17    # "context":Landroid/content/Context;
    .restart local v3    # "context":Landroid/content/Context;
    .restart local v4    # "exoDir":Ljava/io/File;
    :cond_8
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v6, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object/from16 v2, p2

    invoke-virtual {v2, v0}, Lcom/facebook/soloader/UnpackingSoSource;->setSoSourceAbis([Ljava/lang/String;)V

    .line 118
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/facebook/soloader/ExoSoSource$FileDso;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/soloader/ExoSoSource$FileDso;

    iput-object v0, v1, Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;->mDsos:[Lcom/facebook/soloader/ExoSoSource$FileDso;

    .line 119
    return-void
.end method


# virtual methods
.method public getDsos()[Lcom/facebook/soloader/UnpackingSoSource$Dso;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;->mDsos:[Lcom/facebook/soloader/ExoSoSource$FileDso;

    return-object v0
.end method

.method public unpack(Ljava/io/File;)V
    .locals 7
    .param p1, "soDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    const v0, 0x8000

    new-array v0, v0, [B

    .line 129
    .local v0, "ioBuffer":[B
    iget-object v1, p0, Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;->mDsos:[Lcom/facebook/soloader/ExoSoSource$FileDso;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 130
    .local v4, "fileDso":Lcom/facebook/soloader/ExoSoSource$FileDso;
    new-instance v5, Ljava/io/FileInputStream;

    iget-object v6, v4, Lcom/facebook/soloader/ExoSoSource$FileDso;->backingFile:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 131
    .local v5, "is":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v6, Lcom/facebook/soloader/UnpackingSoSource$InputDso;

    invoke-direct {v6, v4, v5}, Lcom/facebook/soloader/UnpackingSoSource$InputDso;-><init>(Lcom/facebook/soloader/UnpackingSoSource$Dso;Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 132
    .local v6, "inputDso":Lcom/facebook/soloader/UnpackingSoSource$InputDso;
    const/4 v5, 0x0

    .line 133
    :try_start_1
    invoke-virtual {p0, v6, v0, p1}, Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;->extractDso(Lcom/facebook/soloader/UnpackingSoSource$InputDso;[BLjava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    :try_start_2
    invoke-virtual {v6}, Lcom/facebook/soloader/UnpackingSoSource$InputDso;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 135
    .end local v6    # "inputDso":Lcom/facebook/soloader/UnpackingSoSource$InputDso;
    if-eqz v5, :cond_0

    .line 136
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 129
    .end local v4    # "fileDso":Lcom/facebook/soloader/ExoSoSource$FileDso;
    .end local v5    # "is":Ljava/io/FileInputStream;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 131
    .restart local v4    # "fileDso":Lcom/facebook/soloader/ExoSoSource$FileDso;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "inputDso":Lcom/facebook/soloader/UnpackingSoSource$InputDso;
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v6}, Lcom/facebook/soloader/UnpackingSoSource$InputDso;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "ioBuffer":[B
    .end local v4    # "fileDso":Lcom/facebook/soloader/ExoSoSource$FileDso;
    .end local v5    # "is":Ljava/io/FileInputStream;
    .end local p1    # "soDirectory":Ljava/io/File;
    :goto_1
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 135
    .end local v6    # "inputDso":Lcom/facebook/soloader/UnpackingSoSource$InputDso;
    .restart local v0    # "ioBuffer":[B
    .restart local v4    # "fileDso":Lcom/facebook/soloader/ExoSoSource$FileDso;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    .restart local p1    # "soDirectory":Ljava/io/File;
    :catchall_2
    move-exception v1

    if-eqz v5, :cond_1

    .line 136
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 138
    :cond_1
    throw v1

    .line 140
    .end local v4    # "fileDso":Lcom/facebook/soloader/ExoSoSource$FileDso;
    .end local v5    # "is":Ljava/io/FileInputStream;
    :cond_2
    return-void
.end method
