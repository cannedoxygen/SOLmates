.class public final Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;
.super Lcom/facebook/soloader/UnpackingSoSource$Dso;
.source "ExtractFromZipSoSource.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/soloader/ExtractFromZipSoSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "ZipDso"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/soloader/UnpackingSoSource$Dso;",
        "Ljava/lang/Comparable<",
        "Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;",
        ">;"
    }
.end annotation


# instance fields
.field final abiScore:I

.field final backingEntry:Ljava/util/zip/ZipEntry;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/zip/ZipEntry;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "backingEntry"    # Ljava/util/zip/ZipEntry;
    .param p3, "abiScore"    # I

    .line 189
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/soloader/UnpackingSoSource$Dso;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iput-object p2, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;->backingEntry:Ljava/util/zip/ZipEntry;

    .line 191
    iput p3, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;->abiScore:I

    .line 192
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;)I
    .locals 2
    .param p1, "other"    # Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    .line 196
    iget-object v0, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 183
    check-cast p1, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    invoke-virtual {p0, p1}, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;->compareTo(Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 201
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 202
    return v0

    .line 204
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 208
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    .line 210
    .local v2, "that":Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;
    iget-object v3, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;->backingEntry:Ljava/util/zip/ZipEntry;

    iget-object v4, v2, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;->backingEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;->abiScore:I

    iget v4, v2, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;->abiScore:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 205
    .end local v2    # "that":Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 215
    iget v0, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;->abiScore:I

    .line 216
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;->backingEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method
