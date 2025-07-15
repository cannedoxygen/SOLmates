.class public final Lcom/google/android/gms/internal/fido/zzdu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fido@@20.1.0"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final zza:Ljava/io/InputStream;

.field private zzb:Lcom/google/android/gms/internal/fido/zzdt;

.field private final zzc:[B

.field private final zzd:Lcom/google/android/gms/internal/fido/zzdv;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/fido/zzdu;->zzc:[B

    invoke-static {}, Lcom/google/android/gms/internal/fido/zzdv;->zza()Lcom/google/android/gms/internal/fido/zzdv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/fido/zzdu;->zzd:Lcom/google/android/gms/internal/fido/zzdv;

    iput-object p1, p0, Lcom/google/android/gms/internal/fido/zzdu;->zza:Ljava/io/InputStream;

    return-void
.end method

.method private final zzh()J
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/fido/zzdu;->zzb:Lcom/google/android/gms/internal/fido/zzdt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/fido/zzdt;->zza()B

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x18

    if-ge v1, v3, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/internal/fido/zzdu;->zzb:Lcom/google/android/gms/internal/fido/zzdt;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/fido/zzdt;->zza()B

    move-result v1

    int-to-long v3, v1

    iput-object v2, v0, Lcom/google/android/gms/internal/fido/zzdu;->zzb:Lcom/google/android/gms/internal/fido/zzdt;

    return-wide v3

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/fido/zzdu;->zzb:Lcom/google/android/gms/internal/fido/zzdt;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/fido/zzdt;->zza()B

    move-result v1

    const-wide/16 v4, 0xff

    if-ne v1, v3, :cond_2

    iget-object v1, v0, Lcom/google/android/gms/internal/fido/zzdu;->zza:Ljava/io/InputStream;

    .line 4
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 5
    iput-object v2, v0, Lcom/google/android/gms/internal/fido/zzdu;->zzb:Lcom/google/android/gms/internal/fido/zzdt;

    int-to-long v1, v1

    and-long/2addr v1, v4

    return-wide v1

    :cond_1
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    :cond_2
    iget-object v1, v0, Lcom/google/android/gms/internal/fido/zzdu;->zzb:Lcom/google/android/gms/internal/fido/zzdt;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/fido/zzdt;->zza()B

    move-result v1

    const/16 v2, 0x19

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/16 v9, 0x8

    if-ne v1, v2, :cond_3

    iget-object v1, v0, Lcom/google/android/gms/internal/fido/zzdu;->zzc:[B

    .line 7
    invoke-direct {v0, v1, v8}, Lcom/google/android/gms/internal/fido/zzdu;->zzk([BI)V

    iget-object v1, v0, Lcom/google/android/gms/internal/fido/zzdu;->zzc:[B

    aget-byte v2, v1, v7

    int-to-long v2, v2

    aget-byte v1, v1, v6

    int-to-long v6, v1

    and-long v1, v2, v4

    shl-long/2addr v1, v9

    and-long v3, v6, v4

    or-long/2addr v1, v3

    return-wide v1

    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/internal/fido/zzdu;->zzb:Lcom/google/android/gms/internal/fido/zzdt;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/fido/zzdt;->zza()B

    move-result v1

    const/16 v2, 0x1a

    const/16 v10, 0x10

    const/4 v11, 0x3

    const/4 v12, 0x4

    if-ne v1, v2, :cond_4

    iget-object v1, v0, Lcom/google/android/gms/internal/fido/zzdu;->zzc:[B

    .line 9
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/fido/zzdu;->zzk([BI)V

    iget-object v1, v0, Lcom/google/android/gms/internal/fido/zzdu;->zzc:[B

    aget-byte v2, v1, v7

    int-to-long v12, v2

    aget-byte v2, v1, v6

    int-to-long v6, v2

    aget-byte v2, v1, v8

    int-to-long v14, v2

    aget-byte v1, v1, v11

    int-to-long v1, v1

    and-long v11, v12, v4

    and-long/2addr v6, v4

    and-long v13, v14, v4

    shl-long/2addr v11, v3

    shl-long/2addr v6, v10

    or-long/2addr v6, v11

    shl-long v8, v13, v9

    or-long/2addr v6, v8

    and-long/2addr v1, v4

    or-long/2addr v1, v6

    return-wide v1

    :cond_4
    iget-object v1, v0, Lcom/google/android/gms/internal/fido/zzdu;->zzb:Lcom/google/android/gms/internal/fido/zzdt;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/fido/zzdt;->zza()B

    move-result v1

    const/16 v2, 0x1b

    if-ne v1, v2, :cond_5

    .line 13
    iget-object v1, v0, Lcom/google/android/gms/internal/fido/zzdu;->zzc:[B

    .line 11
    invoke-direct {v0, v1, v9}, Lcom/google/android/gms/internal/fido/zzdu;->zzk([BI)V

    iget-object v1, v0, Lcom/google/android/gms/internal/fido/zzdu;->zzc:[B

    aget-byte v2, v1, v7

    int-to-long v13, v2

    aget-byte v2, v1, v6

    int-to-long v6, v2

    aget-byte v2, v1, v8

    int-to-long v9, v2

    aget-byte v2, v1, v11

    move-wide/from16 v16, v9

    int-to-long v8, v2

    aget-byte v2, v1, v12

    int-to-long v11, v2

    const/4 v2, 0x5

    aget-byte v2, v1, v2

    move-wide/from16 v18, v11

    int-to-long v10, v2

    const/4 v2, 0x6

    aget-byte v2, v1, v2

    int-to-long v3, v2

    const/4 v2, 0x7

    aget-byte v1, v1, v2

    int-to-long v1, v1

    const-wide/16 v20, 0xff

    and-long v13, v13, v20

    and-long v5, v6, v20

    and-long v16, v16, v20

    and-long v7, v8, v20

    and-long v18, v18, v20

    and-long v9, v10, v20

    and-long v3, v3, v20

    const/16 v11, 0x38

    shl-long/2addr v13, v11

    const/16 v11, 0x30

    shl-long/2addr v5, v11

    or-long/2addr v5, v13

    const/16 v11, 0x28

    shl-long v13, v16, v11

    or-long/2addr v5, v13

    const/16 v11, 0x20

    shl-long/2addr v7, v11

    or-long/2addr v5, v7

    const/16 v7, 0x18

    shl-long v7, v18, v7

    or-long/2addr v5, v7

    const/16 v7, 0x10

    shl-long v7, v9, v7

    or-long/2addr v5, v7

    const/16 v7, 0x8

    shl-long/2addr v3, v7

    or-long/2addr v3, v5

    const-wide/16 v5, 0xff

    and-long/2addr v1, v5

    or-long/2addr v1, v3

    return-wide v1

    .line 10
    :cond_5
    new-instance v1, Ljava/io/IOException;

    iget-object v2, v0, Lcom/google/android/gms/internal/fido/zzdu;->zzb:Lcom/google/android/gms/internal/fido/zzdt;

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/internal/fido/zzdt;->zza()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/internal/fido/zzdu;->zzb:Lcom/google/android/gms/internal/fido/zzdt;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/fido/zzdt;->zzc()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 13
    const-string v3, "invalid additional information %s for major type %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final zzi()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzdu;->zzd()Lcom/google/android/gms/internal/fido/zzdt;

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzdu;->zzb:Lcom/google/android/gms/internal/fido/zzdt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzdt;->zza()B

    move-result v0

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_0

    .line 4
    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzdu;->zzb:Lcom/google/android/gms/internal/fido/zzdt;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/fido/zzdt;->zza()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 4
    const-string v2, "expected definite length but found %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzj(B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzdu;->zzd()Lcom/google/android/gms/internal/fido/zzdt;

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzdu;->zzb:Lcom/google/android/gms/internal/fido/zzdt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzdt;->zzb()B

    move-result v0

    if-ne v0, p1, :cond_0

    .line 4
    return-void

    .line 2
    :cond_0
    shr-int/lit8 p1, p1, 0x5

    new-instance v0, Ljava/lang/IllegalStateException;

    and-int/lit8 p1, p1, 0x7

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzdu;->zzb:Lcom/google/android/gms/internal/fido/zzdt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/fido/zzdt;->zzc()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    .line 4
    const-string v1, "expected major type %s but found %s"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzk([BI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    :goto_0
    if-eq v0, p2, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzdu;->zza:Ljava/io/InputStream;

    sub-int v2, p2, v0

    invoke-virtual {v1, p1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2
    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/fido/zzdu;->zzb:Lcom/google/android/gms/internal/fido/zzdt;

    return-void
.end method

.method private final zzl()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/fido/zzdu;->zzi()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/fido/zzdu;->zzh()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/fido/zzdu;->zza:Ljava/io/InputStream;

    .line 5
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v2, v0

    if-ltz v2, :cond_0

    .line 6
    long-to-int v0, v0

    new-array v1, v0, [B

    .line 7
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/fido/zzdu;->zzk([BI)V

    return-object v1

    .line 6
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const v1, 0x7fffffff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 4
    const-string/jumbo v2, "the maximum supported byte/text string length is %s bytes"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzdu;->zza:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzdu;->zzd:Lcom/google/android/gms/internal/fido/zzdv;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzdv;->zzb()V

    return-void
.end method

.method public final zza()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/16 v0, -0x80

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/fido/zzdu;->zzj(B)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/fido/zzdu;->zzi()V

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/fido/zzdu;->zzh()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 4
    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/fido/zzdu;->zzd:Lcom/google/android/gms/internal/fido/zzdv;

    .line 5
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/fido/zzdv;->zzg(J)V

    :cond_0
    return-wide v0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 4
    const-wide v1, 0x7fffffffffffffffL

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "the maximum supported array length is %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzb()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzdu;->zzd()Lcom/google/android/gms/internal/fido/zzdt;

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzdu;->zzb:Lcom/google/android/gms/internal/fido/zzdt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzdt;->zzb()B

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzdu;->zzb:Lcom/google/android/gms/internal/fido/zzdt;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzdt;->zzb()B

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    .line 6
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/fido/zzdu;->zzh()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_2

    .line 5
    if-eqz v0, :cond_1

    return-wide v1

    :cond_1
    not-long v0, v1

    return-wide v0

    .line 4
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 5
    const-wide v1, 0x7fffffffffffffffL

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "the maximum supported unsigned/negative integer is %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzdu;->zzb:Lcom/google/android/gms/internal/fido/zzdt;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/fido/zzdt;->zzc()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "expected major type 0 or 1 but found %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzc()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/16 v0, -0x60

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/fido/zzdu;->zzj(B)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/fido/zzdu;->zzi()V

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/fido/zzdu;->zzh()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    const-wide v3, 0x3fffffffffffffffL    # 1.9999999999999998

    cmp-long v3, v0, v3

    if-gtz v3, :cond_1

    .line 4
    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/fido/zzdu;->zzd:Lcom/google/android/gms/internal/fido/zzdv;

    add-long v3, v0, v0

    .line 5
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/fido/zzdv;->zzg(J)V

    :cond_0
    return-wide v0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 4
    const-string/jumbo v1, "the maximum supported map length is 4611686018427387903L"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/fido/zzdt;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzdu;->zzb:Lcom/google/android/gms/internal/fido/zzdt;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzdu;->zza:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzdu;->zzd:Lcom/google/android/gms/internal/fido/zzdv;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzdv;->zzb()V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/fido/zzdt;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/fido/zzdt;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/internal/fido/zzdu;->zzb:Lcom/google/android/gms/internal/fido/zzdt;

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzdu;->zzb:Lcom/google/android/gms/internal/fido/zzdt;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzdt;->zzb()B

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 7
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzdu;->zzb:Lcom/google/android/gms/internal/fido/zzdt;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/fido/zzdt;->zzc()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "invalid major type: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :sswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzdu;->zzd:Lcom/google/android/gms/internal/fido/zzdv;

    .line 4
    const-wide/16 v1, -0x2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/fido/zzdv;->zze(J)V

    goto :goto_0

    .line 9
    :sswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzdu;->zzd:Lcom/google/android/gms/internal/fido/zzdv;

    .line 5
    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/fido/zzdv;->zze(J)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzdu;->zzb:Lcom/google/android/gms/internal/fido/zzdt;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzdt;->zza()B

    move-result v0

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzdu;->zzd:Lcom/google/android/gms/internal/fido/zzdv;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzdv;->zzc()V

    goto :goto_1

    .line 10
    :cond_1
    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzdu;->zzd:Lcom/google/android/gms/internal/fido/zzdv;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzdv;->zzd()V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzdu;->zzd:Lcom/google/android/gms/internal/fido/zzdv;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzdv;->zzf()V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzdu;->zzb:Lcom/google/android/gms/internal/fido/zzdt;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80 -> :sswitch_3
        -0x60 -> :sswitch_3
        -0x40 -> :sswitch_3
        -0x20 -> :sswitch_2
        0x0 -> :sswitch_3
        0x20 -> :sswitch_3
        0x40 -> :sswitch_1
        0x60 -> :sswitch_0
    .end sparse-switch
.end method

.method public final zze()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/16 v0, 0x60

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/fido/zzdu;->zzj(B)V

    new-instance v0, Ljava/lang/String;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/fido/zzdu;->zzl()[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public final zzf()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/16 v0, -0x20

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/fido/zzdu;->zzj(B)V

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzdu;->zzb:Lcom/google/android/gms/internal/fido/zzdt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzdt;->zza()B

    move-result v0

    const/16 v1, 0x18

    if-gt v0, v1, :cond_2

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/fido/zzdu;->zzh()J

    move-result-wide v0

    long-to-int v0, v0

    const/16 v1, 0x14

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/16 v1, 0x15

    if-ne v0, v1, :cond_1

    .line 5
    const/4 v0, 0x1

    return v0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-array v1, v2, [Ljava/lang/Object;

    .line 5
    const-string v2, "expected FALSE or TRUE"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 3
    const-string v1, "expected simple value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzg()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/fido/zzdu;->zzj(B)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/fido/zzdu;->zzl()[B

    move-result-object v0

    return-object v0
.end method
