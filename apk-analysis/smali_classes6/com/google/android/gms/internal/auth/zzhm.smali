.class final Lcom/google/android/gms/internal/auth/zzhm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-base@@18.0.4"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/auth/zzhk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzhi;->zzu()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/auth/zzhi;->zzv()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget v0, Lcom/google/android/gms/internal/auth/zzdr;->zza:I

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/auth/zzhl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/auth/zzhl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/auth/zzhm;->zza:Lcom/google/android/gms/internal/auth/zzhk;

    return-void
.end method

.method static bridge synthetic zza([BII)I
    .locals 4

    .line 1
    add-int/lit8 v0, p1, -0x1

    aget-byte v0, p0, v0

    sub-int/2addr p2, p1

    const/16 v1, -0x41

    const/16 v2, -0xc

    const/4 v3, -0x1

    packed-switch p2, :pswitch_data_0

    .line 3
    new-instance p0, Ljava/lang/AssertionError;

    .line 4
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 2
    :pswitch_0
    aget-byte p2, p0, p1

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    if-gt v0, v2, :cond_3

    if-gt p2, v1, :cond_3

    if-le p0, v1, :cond_0

    goto :goto_0

    :cond_0
    shl-int/lit8 p1, p2, 0x8

    xor-int/2addr p1, v0

    shl-int/lit8 p0, p0, 0x10

    xor-int v0, p1, p0

    goto :goto_1

    .line 3
    :pswitch_1
    aget-byte p0, p0, p1

    if-gt v0, v2, :cond_2

    if-le p0, v1, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    shl-int/lit8 p0, p0, 0x8

    xor-int/2addr v0, p0

    goto :goto_1

    .line 4
    :cond_2
    move v0, v3

    goto :goto_1

    .line 2
    :pswitch_2
    if-le v0, v2, :cond_4

    :cond_3
    :goto_0
    move v0, v3

    :cond_4
    :goto_1
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static zzb([BII)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/auth/zzfa;
        }
    .end annotation

    .line 1
    array-length v0, p0

    or-int v1, p1, p2

    sub-int v2, v0, p1

    sub-int/2addr v2, p2

    or-int/2addr v1, v2

    if-ltz v1, :cond_b

    .line 2
    add-int v0, p1, p2

    new-array p2, p2, [C

    const/4 v7, 0x0

    move v1, v7

    :goto_0
    if-ge p1, v0, :cond_1

    .line 3
    aget-byte v2, p0, p1

    invoke-static {v2}, Lcom/google/android/gms/internal/auth/zzhj;->zzd(B)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v3, v1, 0x1

    int-to-char v2, v2

    .line 4
    aput-char v2, p2, v1

    move v1, v3

    goto :goto_0

    :cond_1
    nop

    .line 3
    :goto_1
    move v8, v1

    :goto_2
    if-ge p1, v0, :cond_a

    add-int/lit8 v1, p1, 0x1

    .line 5
    aget-byte p1, p0, p1

    invoke-static {p1}, Lcom/google/android/gms/internal/auth/zzhj;->zzd(B)Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 v2, v8, 0x1

    int-to-char p1, p1

    .line 9
    aput-char p1, p2, v8

    move p1, v1

    move v8, v2

    :goto_3
    if-ge p1, v0, :cond_3

    .line 10
    aget-byte v1, p0, p1

    invoke-static {v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzd(B)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v2, v8, 0x1

    int-to-char v1, v1

    .line 11
    aput-char v1, p2, v8

    move v8, v2

    goto :goto_3

    :cond_3
    goto :goto_2

    :cond_4
    const/16 v2, -0x20

    if-ge p1, v2, :cond_6

    if-ge v1, v0, :cond_5

    .line 14
    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v3, v8, 0x1

    .line 8
    aget-byte v1, p0, v1

    invoke-static {p1, v1, p2, v8}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(BB[CI)V

    move p1, v2

    move v8, v3

    goto :goto_2

    .line 14
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfa;->zzb()Lcom/google/android/gms/internal/auth/zzfa;

    move-result-object p0

    throw p0

    .line 8
    :cond_6
    const/16 v2, -0x10

    if-ge p1, v2, :cond_8

    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_7

    .line 13
    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v8, 0x1

    .line 7
    aget-byte v1, p0, v1

    aget-byte v2, p0, v2

    invoke-static {p1, v1, v2, p2, v8}, Lcom/google/android/gms/internal/auth/zzhj;->zzb(BBB[CI)V

    move p1, v3

    move v8, v4

    goto :goto_2

    .line 13
    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfa;->zzb()Lcom/google/android/gms/internal/auth/zzfa;

    move-result-object p0

    throw p0

    .line 7
    :cond_8
    add-int/lit8 v2, v0, -0x2

    if-ge v1, v2, :cond_9

    .line 12
    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v9, v3, 0x1

    .line 6
    aget-byte v4, p0, v1

    aget-byte v5, p0, v2

    aget-byte v6, p0, v3

    move v1, p1

    move v2, v4

    move v3, v5

    move v4, v6

    move-object v5, p2

    move v6, v8

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/auth/zzhj;->zza(BBBB[CI)V

    add-int/lit8 v8, v8, 0x2

    move p1, v9

    goto :goto_2

    .line 12
    :cond_9
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfa;->zzb()Lcom/google/android/gms/internal/auth/zzfa;

    move-result-object p0

    throw p0

    .line 6
    :cond_a
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2, v7, v8}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    .line 1
    :cond_b
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "buffer length=%d, index=%d, size=%d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static zzc([B)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/auth/zzhm;->zza:Lcom/google/android/gms/internal/auth/zzhk;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/gms/internal/auth/zzhk;->zzb([BII)Z

    move-result p0

    return p0
.end method

.method static zzd([BII)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/auth/zzhm;->zza:Lcom/google/android/gms/internal/auth/zzhk;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/auth/zzhk;->zzb([BII)Z

    move-result p0

    return p0
.end method
