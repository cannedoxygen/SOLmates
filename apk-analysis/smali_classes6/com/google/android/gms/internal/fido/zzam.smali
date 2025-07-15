.class public final Lcom/google/android/gms/internal/fido/zzam;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fido@@20.1.0"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/android/gms/internal/fido/zzak;

.field private zzc:Lcom/google/android/gms/internal/fido/zzak;


# direct methods
.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/fido/zzal;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lcom/google/android/gms/internal/fido/zzak;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/fido/zzak;-><init>(Lcom/google/android/gms/internal/fido/zzaj;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/fido/zzam;->zzb:Lcom/google/android/gms/internal/fido/zzak;

    iget-object p2, p0, Lcom/google/android/gms/internal/fido/zzam;->zzb:Lcom/google/android/gms/internal/fido/zzak;

    iput-object p2, p0, Lcom/google/android/gms/internal/fido/zzam;->zzc:Lcom/google/android/gms/internal/fido/zzak;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/fido/zzam;->zza:Ljava/lang/String;

    return-void

    :cond_0
    throw v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzam;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzam;->zzb:Lcom/google/android/gms/internal/fido/zzak;

    iget-object v1, v1, Lcom/google/android/gms/internal/fido/zzak;->zzc:Lcom/google/android/gms/internal/fido/zzak;

    const-string v2, ""

    :goto_0
    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/google/android/gms/internal/fido/zzak;->zzb:Ljava/lang/Object;

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/google/android/gms/internal/fido/zzak;->zza:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_1

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 6
    invoke-static {v2}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 7
    :goto_1
    iget-object v1, v1, Lcom/google/android/gms/internal/fido/zzak;->zzc:Lcom/google/android/gms/internal/fido/zzak;

    const-string v2, ", "

    goto :goto_0

    .line 5
    :cond_2
    nop

    .line 8
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Ljava/lang/String;I)Lcom/google/android/gms/internal/fido/zzam;
    .locals 1

    .line 1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/fido/zzai;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/fido/zzai;-><init>(Lcom/google/android/gms/internal/fido/zzah;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzam;->zzc:Lcom/google/android/gms/internal/fido/zzak;

    .line 2
    iput-object p2, v0, Lcom/google/android/gms/internal/fido/zzak;->zzc:Lcom/google/android/gms/internal/fido/zzak;

    iput-object p2, p0, Lcom/google/android/gms/internal/fido/zzam;->zzc:Lcom/google/android/gms/internal/fido/zzak;

    iput-object p1, p2, Lcom/google/android/gms/internal/fido/zzai;->zzb:Ljava/lang/Object;

    const-string p1, "errorCode"

    iput-object p1, p2, Lcom/google/android/gms/internal/fido/zzai;->zza:Ljava/lang/String;

    return-object p0
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/fido/zzam;
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/fido/zzak;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/fido/zzak;-><init>(Lcom/google/android/gms/internal/fido/zzaj;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzam;->zzc:Lcom/google/android/gms/internal/fido/zzak;

    iput-object v0, v1, Lcom/google/android/gms/internal/fido/zzak;->zzc:Lcom/google/android/gms/internal/fido/zzak;

    iput-object v0, p0, Lcom/google/android/gms/internal/fido/zzam;->zzc:Lcom/google/android/gms/internal/fido/zzak;

    iput-object p2, v0, Lcom/google/android/gms/internal/fido/zzak;->zzb:Ljava/lang/Object;

    iput-object p1, v0, Lcom/google/android/gms/internal/fido/zzak;->zza:Ljava/lang/String;

    return-object p0
.end method
