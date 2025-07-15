.class public Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;
.super Lcom/facebook/soloader/UnpackingSoSource$Unpacker;
.source "ExtractFromZipSoSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/soloader/ExtractFromZipSoSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ZipUnpacker"
.end annotation


# instance fields
.field protected mDsos:[Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mSoSource:Lcom/facebook/soloader/UnpackingSoSource;

.field private final mZipFile:Ljava/util/zip/ZipFile;

.field final synthetic this$0:Lcom/facebook/soloader/ExtractFromZipSoSource;


# direct methods
.method constructor <init>(Lcom/facebook/soloader/ExtractFromZipSoSource;Lcom/facebook/soloader/UnpackingSoSource;)V
    .locals 2
    .param p1, "this$0"    # Lcom/facebook/soloader/ExtractFromZipSoSource;
    .param p2, "soSource"    # Lcom/facebook/soloader/UnpackingSoSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->this$0:Lcom/facebook/soloader/ExtractFromZipSoSource;

    invoke-direct {p0}, Lcom/facebook/soloader/UnpackingSoSource$Unpacker;-><init>()V

    .line 87
    new-instance v0, Ljava/util/zip/ZipFile;

    iget-object v1, p1, Lcom/facebook/soloader/ExtractFromZipSoSource;->mZipFileName:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->mZipFile:Ljava/util/zip/ZipFile;

    .line 88
    iput-object p2, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->mSoSource:Lcom/facebook/soloader/UnpackingSoSource;

    .line 89
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    .line 142
    return-void
.end method

.method computeDsosFromZip()[Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;
    .locals 13

    .line 92
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 93
    .local v0, "librariesAbiSet":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 94
    .local v1, "providedLibraries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;>;"
    iget-object v2, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->this$0:Lcom/facebook/soloader/ExtractFromZipSoSource;

    iget-object v2, v2, Lcom/facebook/soloader/ExtractFromZipSoSource;->mZipSearchPattern:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 95
    .local v2, "zipSearchPattern":Ljava/util/regex/Pattern;
    invoke-static {}, Lcom/facebook/soloader/SysUtil;->getSupportedAbis()[Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, "supportedAbis":[Ljava/lang/String;
    iget-object v4, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    .line 97
    .local v4, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 98
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    .line 99
    .local v5, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 100
    .local v6, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-nez v7, :cond_0

    .line 101
    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v7

    .line 104
    .local v7, "soNameIdx":I
    add-int/lit8 v8, v7, -0x1

    invoke-virtual {v6, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 105
    .local v8, "libraryAbi":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 106
    .local v9, "soName":Ljava/lang/String;
    invoke-static {v3, v8}, Lcom/facebook/soloader/SysUtil;->findAbiScore([Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 107
    .local v10, "abiScore":I
    if-gez v10, :cond_1

    .line 108
    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {v0, v8}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    .line 112
    .local v11, "so":Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;
    if-eqz v11, :cond_2

    iget v12, v11, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;->abiScore:I

    if-ge v10, v12, :cond_3

    .line 113
    :cond_2
    new-instance v12, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    invoke-direct {v12, v9, v5, v10}, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;-><init>(Ljava/lang/String;Ljava/util/zip/ZipEntry;I)V

    invoke-virtual {v1, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .end local v5    # "entry":Ljava/util/zip/ZipEntry;
    .end local v6    # "m":Ljava/util/regex/Matcher;
    .end local v7    # "soNameIdx":I
    .end local v8    # "libraryAbi":Ljava/lang/String;
    .end local v9    # "soName":Ljava/lang/String;
    .end local v10    # "abiScore":I
    .end local v11    # "so":Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;
    :cond_3
    goto :goto_0

    .line 117
    :cond_4
    iget-object v5, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->mSoSource:Lcom/facebook/soloader/UnpackingSoSource;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/facebook/soloader/UnpackingSoSource;->setSoSourceAbis([Ljava/lang/String;)V

    .line 119
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v6

    new-array v6, v6, [Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    invoke-interface {v5, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    .line 120
    .local v5, "dsos":[Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;
    invoke-static {v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 121
    return-object v5
.end method

.method public final getDsos()[Lcom/facebook/soloader/UnpackingSoSource$Dso;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    invoke-virtual {p0}, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->getExtractableDsosFromZip()[Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    move-result-object v0

    return-object v0
.end method

.method getExtractableDsosFromZip()[Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->mDsos:[Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->mDsos:[Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    return-object v0

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->computeDsosFromZip()[Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->mDsos:[Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    .line 136
    iget-object v0, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->mDsos:[Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

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

    .line 151
    invoke-virtual {p0}, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->getExtractableDsosFromZip()[Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    move-result-object v0

    .line 152
    .local v0, "dsos":[Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;
    const v1, 0x8000

    new-array v1, v1, [B

    .line 153
    .local v1, "ioBuffer":[B
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 154
    .local v4, "zipDso":Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;
    iget-object v5, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->mZipFile:Ljava/util/zip/ZipFile;

    iget-object v6, v4, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;->backingEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v5, v6}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    .line 155
    .local v5, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v6, Lcom/facebook/soloader/UnpackingSoSource$InputDso;

    invoke-direct {v6, v4, v5}, Lcom/facebook/soloader/UnpackingSoSource$InputDso;-><init>(Lcom/facebook/soloader/UnpackingSoSource$Dso;Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 156
    .local v6, "inputDso":Lcom/facebook/soloader/UnpackingSoSource$InputDso;
    const/4 v5, 0x0

    .line 157
    :try_start_1
    invoke-virtual {p0, v6, v1, p1}, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->extractDso(Lcom/facebook/soloader/UnpackingSoSource$InputDso;[BLjava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    :try_start_2
    invoke-virtual {v6}, Lcom/facebook/soloader/UnpackingSoSource$InputDso;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 159
    .end local v6    # "inputDso":Lcom/facebook/soloader/UnpackingSoSource$InputDso;
    if-eqz v5, :cond_0

    .line 160
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 153
    .end local v4    # "zipDso":Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;
    .end local v5    # "is":Ljava/io/InputStream;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 155
    .restart local v4    # "zipDso":Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "inputDso":Lcom/facebook/soloader/UnpackingSoSource$InputDso;
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v6}, Lcom/facebook/soloader/UnpackingSoSource$InputDso;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "dsos":[Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;
    .end local v1    # "ioBuffer":[B
    .end local v4    # "zipDso":Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local p1    # "soDirectory":Ljava/io/File;
    :goto_1
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 159
    .end local v6    # "inputDso":Lcom/facebook/soloader/UnpackingSoSource$InputDso;
    .restart local v0    # "dsos":[Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;
    .restart local v1    # "ioBuffer":[B
    .restart local v4    # "zipDso":Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local p1    # "soDirectory":Ljava/io/File;
    :catchall_2
    move-exception v2

    if-eqz v5, :cond_1

    .line 160
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 162
    :cond_1
    throw v2

    .line 164
    .end local v4    # "zipDso":Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;
    .end local v5    # "is":Ljava/io/InputStream;
    :cond_2
    return-void
.end method
