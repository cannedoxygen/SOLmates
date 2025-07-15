.class Leightbitlab/com/blurview/SizeScaler$Size;
.super Ljava/lang/Object;
.source "SizeScaler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leightbitlab/com/blurview/SizeScaler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Size"
.end annotation


# instance fields
.field final height:I

.field final scaleFactor:F

.field final width:I


# direct methods
.method constructor <init>(IIF)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "scaleFactor"    # F

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Leightbitlab/com/blurview/SizeScaler$Size;->width:I

    .line 57
    iput p2, p0, Leightbitlab/com/blurview/SizeScaler$Size;->height:I

    .line 58
    iput p3, p0, Leightbitlab/com/blurview/SizeScaler$Size;->scaleFactor:F

    .line 59
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 63
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 64
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 66
    :cond_1
    move-object v2, p1

    check-cast v2, Leightbitlab/com/blurview/SizeScaler$Size;

    .line 68
    .local v2, "size":Leightbitlab/com/blurview/SizeScaler$Size;
    iget v3, p0, Leightbitlab/com/blurview/SizeScaler$Size;->width:I

    iget v4, v2, Leightbitlab/com/blurview/SizeScaler$Size;->width:I

    if-eq v3, v4, :cond_2

    return v1

    .line 69
    :cond_2
    iget v3, p0, Leightbitlab/com/blurview/SizeScaler$Size;->height:I

    iget v4, v2, Leightbitlab/com/blurview/SizeScaler$Size;->height:I

    if-eq v3, v4, :cond_3

    return v1

    .line 70
    :cond_3
    iget v3, v2, Leightbitlab/com/blurview/SizeScaler$Size;->scaleFactor:F

    iget v4, p0, Leightbitlab/com/blurview/SizeScaler$Size;->scaleFactor:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    return v0

    .line 64
    .end local v2    # "size":Leightbitlab/com/blurview/SizeScaler$Size;
    :cond_5
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 75
    iget v0, p0, Leightbitlab/com/blurview/SizeScaler$Size;->width:I

    .line 76
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Leightbitlab/com/blurview/SizeScaler$Size;->height:I

    add-int/2addr v1, v2

    .line 77
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Leightbitlab/com/blurview/SizeScaler$Size;->scaleFactor:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    iget v2, p0, Leightbitlab/com/blurview/SizeScaler$Size;->scaleFactor:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v0, v2

    .line 78
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Size{width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Leightbitlab/com/blurview/SizeScaler$Size;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Leightbitlab/com/blurview/SizeScaler$Size;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scaleFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Leightbitlab/com/blurview/SizeScaler$Size;->scaleFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
