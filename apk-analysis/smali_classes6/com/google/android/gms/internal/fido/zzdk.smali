.class public final Lcom/google/android/gms/internal/fido/zzdk;
.super Lcom/google/android/gms/internal/fido/zzdr;
.source "com.google.android.gms:play-services-fido@@20.1.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/fido/zzcz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fido/zzcz;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/fido/zzdr;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/fido/zzdk;->zza:Lcom/google/android/gms/internal/fido/zzcz;

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/fido/zzdr;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzdr;->zza()I

    move-result v0

    const/16 v1, 0x40

    invoke-static {v1}, Lcom/google/android/gms/internal/fido/zzdk;->zzd(B)I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzdr;->zza()I

    move-result p1

    invoke-static {v1}, Lcom/google/android/gms/internal/fido/zzdk;->zzd(B)I

    move-result v0

    sub-int/2addr v0, p1

    goto :goto_0

    .line 4
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/fido/zzdk;

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzdk;->zza:Lcom/google/android/gms/internal/fido/zzcz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzcz;->zzd()I

    move-result v1

    .line 5
    iget-object v2, p1, Lcom/google/android/gms/internal/fido/zzdk;->zza:Lcom/google/android/gms/internal/fido/zzcz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fido/zzcz;->zzd()I

    move-result v3

    if-eq v1, v3, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzcz;->zzd()I

    move-result p1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fido/zzcz;->zzd()I

    move-result v0

    sub-int v0, p1, v0

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzcz;->zzm()[B

    move-result-object v0

    .line 7
    iget-object p1, p1, Lcom/google/android/gms/internal/fido/zzdk;->zza:Lcom/google/android/gms/internal/fido/zzcz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzcz;->zzm()[B

    move-result-object p1

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/fido/zzco;->zza()Ljava/util/Comparator;

    move-result-object v1

    .line 9
    invoke-interface {v1, v0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 3
    :goto_0
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/fido/zzdk;

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzdk;->zza:Lcom/google/android/gms/internal/fido/zzcz;

    iget-object p1, p1, Lcom/google/android/gms/internal/fido/zzdk;->zza:Lcom/google/android/gms/internal/fido/zzcz;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/fido/zzcz;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    const/16 v0, 0x40

    invoke-static {v0}, Lcom/google/android/gms/internal/fido/zzdk;->zzd(B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzdk;->zza:Lcom/google/android/gms/internal/fido/zzcz;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/fido/zzch;->zzf()Lcom/google/android/gms/internal/fido/zzch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzch;->zzd()Lcom/google/android/gms/internal/fido/zzch;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzdk;->zza:Lcom/google/android/gms/internal/fido/zzcz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/fido/zzcz;->zzm()[B

    move-result-object v1

    .line 2
    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/fido/zzch;->zzg([BII)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    .line 1
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "h\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final zza()I
    .locals 1

    const/16 v0, 0x40

    invoke-static {v0}, Lcom/google/android/gms/internal/fido/zzdk;->zzd(B)I

    move-result v0

    return v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/fido/zzcz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzdk;->zza:Lcom/google/android/gms/internal/fido/zzcz;

    return-object v0
.end method
