.class public Lcom/facebook/soloader/Manifest;
.super Ljava/lang/Object;
.source "Manifest.java"


# instance fields
.field public final arch:Ljava/lang/String;

.field public final libs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "arch"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 31
    .local p2, "libs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/facebook/soloader/Manifest;->arch:Ljava/lang/String;

    .line 33
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/soloader/Manifest;->libs:Ljava/util/List;

    .line 34
    return-void
.end method

.method public static read(Ljava/io/DataInputStream;)Lcom/facebook/soloader/Manifest;
    .locals 5
    .param p0, "data"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lcom/facebook/soloader/Manifest;->readArch(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "arch":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    .line 44
    .local v1, "numOfLibs":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v2, "libs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 46
    invoke-static {p0}, Lcom/facebook/soloader/Manifest;->readLib(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 49
    .end local v3    # "i":I
    :cond_0
    new-instance v3, Lcom/facebook/soloader/Manifest;

    invoke-direct {v3, v0, v2}, Lcom/facebook/soloader/Manifest;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v3
.end method

.method public static read(Ljava/io/InputStream;)Lcom/facebook/soloader/Manifest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/facebook/soloader/Manifest;->read(Ljava/io/DataInputStream;)Lcom/facebook/soloader/Manifest;

    move-result-object v0

    return-object v0
.end method

.method private static readArch(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 54
    .local v0, "arch":I
    packed-switch v0, :pswitch_data_0

    .line 64
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized arch id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    :pswitch_0
    const-string/jumbo v1, "x86"

    return-object v1

    .line 60
    :pswitch_1
    const-string/jumbo v1, "x86_64"

    return-object v1

    .line 58
    :pswitch_2
    const-string v1, "armeabi-v7a"

    return-object v1

    .line 56
    :pswitch_3
    const-string v1, "arm64-v8a"

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static readLib(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    .line 69
    .local v0, "nameLength":I
    new-array v1, v0, [B

    .line 70
    .local v1, "name":[B
    invoke-virtual {p0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 71
    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v2
.end method
