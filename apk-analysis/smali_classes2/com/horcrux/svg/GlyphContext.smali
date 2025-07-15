.class Lcom/horcrux/svg/GlyphContext;
.super Ljava/lang/Object;
.source "GlyphContext.java"


# instance fields
.field private mDX:D

.field private mDXIndex:I

.field private final mDXIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDXs:[Lcom/horcrux/svg/SVGLength;

.field private final mDXsContext:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[",
            "Lcom/horcrux/svg/SVGLength;",
            ">;"
        }
    .end annotation
.end field

.field private mDXsIndex:I

.field private final mDXsIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDY:D

.field private mDYIndex:I

.field private final mDYIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDYs:[Lcom/horcrux/svg/SVGLength;

.field private final mDYsContext:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[",
            "Lcom/horcrux/svg/SVGLength;",
            ">;"
        }
    .end annotation
.end field

.field private mDYsIndex:I

.field private final mDYsIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mFontContext:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/horcrux/svg/FontData;",
            ">;"
        }
    .end annotation
.end field

.field private mFontSize:D

.field private final mHeight:F

.field private mRIndex:I

.field private final mRIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRs:[D

.field private final mRsContext:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[D>;"
        }
    .end annotation
.end field

.field private mRsIndex:I

.field private final mRsIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mScale:F

.field private mTop:I

.field private final mWidth:F

.field private mX:D

.field private mXIndex:I

.field private final mXIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mXs:[Lcom/horcrux/svg/SVGLength;

.field private final mXsContext:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[",
            "Lcom/horcrux/svg/SVGLength;",
            ">;"
        }
    .end annotation
.end field

.field private mXsIndex:I

.field private final mXsIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mY:D

.field private mYIndex:I

.field private final mYIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mYs:[Lcom/horcrux/svg/SVGLength;

.field private final mYsContext:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[",
            "Lcom/horcrux/svg/SVGLength;",
            ">;"
        }
    .end annotation
.end field

.field private mYsIndex:I

.field private final mYsIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private topFont:Lcom/horcrux/svg/FontData;


# direct methods
.method constructor <init>(FFF)V
    .locals 4
    .param p1, "scale"    # F
    .param p2, "width"    # F
    .param p3, "height"    # F

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mFontContext:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mXsContext:Ljava/util/ArrayList;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mYsContext:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mDXsContext:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mDYsContext:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mRsContext:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mXIndices:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mYIndices:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mDXIndices:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mDYIndices:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mRIndices:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mXsIndices:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mYsIndices:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mDXsIndices:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mDYsIndices:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mRsIndices:Ljava/util/ArrayList;

    .line 43
    const-wide/high16 v0, 0x4028000000000000L    # 12.0

    iput-wide v0, p0, Lcom/horcrux/svg/GlyphContext;->mFontSize:D

    .line 44
    sget-object v0, Lcom/horcrux/svg/FontData;->Defaults:Lcom/horcrux/svg/FontData;

    iput-object v0, p0, Lcom/horcrux/svg/GlyphContext;->topFont:Lcom/horcrux/svg/FontData;

    .line 61
    const/4 v0, 0x0

    new-array v1, v0, [Lcom/horcrux/svg/SVGLength;

    iput-object v1, p0, Lcom/horcrux/svg/GlyphContext;->mXs:[Lcom/horcrux/svg/SVGLength;

    .line 64
    new-array v1, v0, [Lcom/horcrux/svg/SVGLength;

    iput-object v1, p0, Lcom/horcrux/svg/GlyphContext;->mYs:[Lcom/horcrux/svg/SVGLength;

    .line 70
    new-array v1, v0, [Lcom/horcrux/svg/SVGLength;

    iput-object v1, p0, Lcom/horcrux/svg/GlyphContext;->mDXs:[Lcom/horcrux/svg/SVGLength;

    .line 73
    new-array v1, v0, [Lcom/horcrux/svg/SVGLength;

    iput-object v1, p0, Lcom/horcrux/svg/GlyphContext;->mDYs:[Lcom/horcrux/svg/SVGLength;

    .line 79
    const/4 v1, 0x1

    new-array v1, v1, [D

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    iput-object v1, p0, Lcom/horcrux/svg/GlyphContext;->mRs:[D

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/horcrux/svg/GlyphContext;->mXIndex:I

    .line 90
    iput v0, p0, Lcom/horcrux/svg/GlyphContext;->mYIndex:I

    .line 91
    iput v0, p0, Lcom/horcrux/svg/GlyphContext;->mDXIndex:I

    .line 92
    iput v0, p0, Lcom/horcrux/svg/GlyphContext;->mDYIndex:I

    .line 93
    iput v0, p0, Lcom/horcrux/svg/GlyphContext;->mRIndex:I

    .line 112
    iput p1, p0, Lcom/horcrux/svg/GlyphContext;->mScale:F

    .line 113
    iput p2, p0, Lcom/horcrux/svg/GlyphContext;->mWidth:F

    .line 114
    iput p3, p0, Lcom/horcrux/svg/GlyphContext;->mHeight:F

    .line 116
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mXsContext:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/horcrux/svg/GlyphContext;->mXs:[Lcom/horcrux/svg/SVGLength;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mYsContext:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/horcrux/svg/GlyphContext;->mYs:[Lcom/horcrux/svg/SVGLength;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mDXsContext:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/horcrux/svg/GlyphContext;->mDXs:[Lcom/horcrux/svg/SVGLength;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mDYsContext:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/horcrux/svg/GlyphContext;->mDYs:[Lcom/horcrux/svg/SVGLength;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mRsContext:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/horcrux/svg/GlyphContext;->mRs:[D

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mXIndices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/horcrux/svg/GlyphContext;->mXIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mYIndices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/horcrux/svg/GlyphContext;->mYIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mDXIndices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/horcrux/svg/GlyphContext;->mDXIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mDYIndices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/horcrux/svg/GlyphContext;->mDYIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mRIndices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/horcrux/svg/GlyphContext;->mRIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mFontContext:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/horcrux/svg/GlyphContext;->topFont:Lcom/horcrux/svg/FontData;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-direct {p0}, Lcom/horcrux/svg/GlyphContext;->pushIndices()V

    .line 131
    return-void
.end method

.method private getDoubleArrayFromReadableArray(Ljava/util/ArrayList;)[D
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/horcrux/svg/SVGLength;",
            ">;)[D"
        }
    .end annotation

    .line 191
    .local p1, "readableArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/horcrux/svg/SVGLength;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 192
    .local v0, "size":I
    new-array v1, v0, [D

    .line 193
    .local v1, "doubles":[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 194
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/horcrux/svg/SVGLength;

    .line 195
    .local v3, "length":Lcom/horcrux/svg/SVGLength;
    iget-wide v4, v3, Lcom/horcrux/svg/SVGLength;->value:D

    aput-wide v4, v1, v2

    .line 193
    .end local v3    # "length":Lcom/horcrux/svg/SVGLength;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 197
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private getStringArrayFromReadableArray(Ljava/util/ArrayList;)[Lcom/horcrux/svg/SVGLength;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/horcrux/svg/SVGLength;",
            ">;)[",
            "Lcom/horcrux/svg/SVGLength;"
        }
    .end annotation

    .line 182
    .local p1, "readableArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/horcrux/svg/SVGLength;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 183
    .local v0, "size":I
    new-array v1, v0, [Lcom/horcrux/svg/SVGLength;

    .line 184
    .local v1, "strings":[Lcom/horcrux/svg/SVGLength;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 185
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/horcrux/svg/SVGLength;

    aput-object v3, v1, v2

    .line 184
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private getTopOrParentFont(Lcom/horcrux/svg/GroupView;)Lcom/horcrux/svg/FontData;
    .locals 3
    .param p1, "child"    # Lcom/horcrux/svg/GroupView;

    .line 144
    iget v0, p0, Lcom/horcrux/svg/GlyphContext;->mTop:I

    if-lez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->topFont:Lcom/horcrux/svg/FontData;

    return-object v0

    .line 147
    :cond_0
    invoke-virtual {p1}, Lcom/horcrux/svg/GroupView;->getParentTextRoot()Lcom/horcrux/svg/GroupView;

    move-result-object v0

    .line 149
    .local v0, "parentRoot":Lcom/horcrux/svg/GroupView;
    :goto_0
    if-eqz v0, :cond_2

    .line 150
    invoke-virtual {v0}, Lcom/horcrux/svg/GroupView;->getGlyphContext()Lcom/horcrux/svg/GlyphContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/horcrux/svg/GlyphContext;->getFont()Lcom/horcrux/svg/FontData;

    move-result-object v1

    .line 151
    .local v1, "map":Lcom/horcrux/svg/FontData;
    sget-object v2, Lcom/horcrux/svg/FontData;->Defaults:Lcom/horcrux/svg/FontData;

    if-eq v1, v2, :cond_1

    .line 152
    return-object v1

    .line 154
    :cond_1
    invoke-virtual {v0}, Lcom/horcrux/svg/GroupView;->getParentTextRoot()Lcom/horcrux/svg/GroupView;

    move-result-object v0

    .line 155
    .end local v1    # "map":Lcom/horcrux/svg/FontData;
    goto :goto_0

    .line 157
    :cond_2
    sget-object v1, Lcom/horcrux/svg/FontData;->Defaults:Lcom/horcrux/svg/FontData;

    return-object v1
.end method

.method private static incrementIndices(Ljava/util/ArrayList;I)V
    .locals 3
    .param p1, "topIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 309
    .local p0, "indices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move v0, p1

    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_0

    .line 310
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 311
    .local v1, "xIndex":I
    add-int/lit8 v2, v1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 309
    .end local v1    # "xIndex":I
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 313
    .end local v0    # "index":I
    :cond_0
    return-void
.end method

.method private pushIndices()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mXsIndices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/horcrux/svg/GlyphContext;->mXsIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mYsIndices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/horcrux/svg/GlyphContext;->mYsIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mDXsIndices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/horcrux/svg/GlyphContext;->mDXsIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mDYsIndices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/horcrux/svg/GlyphContext;->mDYsIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mRsIndices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/horcrux/svg/GlyphContext;->mRsIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method private pushNodeAndFont(Lcom/horcrux/svg/GroupView;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 4
    .param p1, "node"    # Lcom/horcrux/svg/GroupView;
    .param p2, "font"    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 162
    invoke-direct {p0, p1}, Lcom/horcrux/svg/GlyphContext;->getTopOrParentFont(Lcom/horcrux/svg/GroupView;)Lcom/horcrux/svg/FontData;

    move-result-object v0

    .line 163
    .local v0, "parent":Lcom/horcrux/svg/FontData;
    iget v1, p0, Lcom/horcrux/svg/GlyphContext;->mTop:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/horcrux/svg/GlyphContext;->mTop:I

    .line 165
    if-nez p2, :cond_0

    .line 166
    iget-object v1, p0, Lcom/horcrux/svg/GlyphContext;->mFontContext:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    return-void

    .line 170
    :cond_0
    new-instance v1, Lcom/horcrux/svg/FontData;

    iget v2, p0, Lcom/horcrux/svg/GlyphContext;->mScale:F

    float-to-double v2, v2

    invoke-direct {v1, p2, v0, v2, v3}, Lcom/horcrux/svg/FontData;-><init>(Lcom/facebook/react/bridge/ReadableMap;Lcom/horcrux/svg/FontData;D)V

    .line 171
    .local v1, "data":Lcom/horcrux/svg/FontData;
    iget-wide v2, v1, Lcom/horcrux/svg/FontData;->fontSize:D

    iput-wide v2, p0, Lcom/horcrux/svg/GlyphContext;->mFontSize:D

    .line 172
    iget-object v2, p0, Lcom/horcrux/svg/GlyphContext;->mFontContext:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    iput-object v1, p0, Lcom/horcrux/svg/GlyphContext;->topFont:Lcom/horcrux/svg/FontData;

    .line 174
    return-void
.end method

.method private reset()V
    .locals 2

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lcom/horcrux/svg/GlyphContext;->mRsIndex:I

    iput v0, p0, Lcom/horcrux/svg/GlyphContext;->mDYsIndex:I

    iput v0, p0, Lcom/horcrux/svg/GlyphContext;->mDXsIndex:I

    iput v0, p0, Lcom/horcrux/svg/GlyphContext;->mYsIndex:I

    iput v0, p0, Lcom/horcrux/svg/GlyphContext;->mXsIndex:I

    .line 135
    const/4 v0, -0x1

    iput v0, p0, Lcom/horcrux/svg/GlyphContext;->mRIndex:I

    iput v0, p0, Lcom/horcrux/svg/GlyphContext;->mDYIndex:I

    iput v0, p0, Lcom/horcrux/svg/GlyphContext;->mDXIndex:I

    iput v0, p0, Lcom/horcrux/svg/GlyphContext;->mYIndex:I

    iput v0, p0, Lcom/horcrux/svg/GlyphContext;->mXIndex:I

    .line 136
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/horcrux/svg/GlyphContext;->mDY:D

    iput-wide v0, p0, Lcom/horcrux/svg/GlyphContext;->mDX:D

    iput-wide v0, p0, Lcom/horcrux/svg/GlyphContext;->mY:D

    iput-wide v0, p0, Lcom/horcrux/svg/GlyphContext;->mX:D

    .line 137
    return-void
.end method


# virtual methods
.method getFont()Lcom/horcrux/svg/FontData;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->topFont:Lcom/horcrux/svg/FontData;

    return-object v0
.end method

.method getFontSize()D
    .locals 2

    .line 339
    iget-wide v0, p0, Lcom/horcrux/svg/GlyphContext;->mFontSize:D

    return-wide v0
.end method

.method getHeight()F
    .locals 1

    .line 413
    iget v0, p0, Lcom/horcrux/svg/GlyphContext;->mHeight:F

    return v0
.end method

.method getWidth()F
    .locals 1

    .line 409
    iget v0, p0, Lcom/horcrux/svg/GlyphContext;->mWidth:F

    return v0
.end method

.method nextDeltaX()D
    .locals 11

    .line 373
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mDXIndices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/horcrux/svg/GlyphContext;->mDXsIndex:I

    invoke-static {v0, v1}, Lcom/horcrux/svg/GlyphContext;->incrementIndices(Ljava/util/ArrayList;I)V

    .line 375
    iget v0, p0, Lcom/horcrux/svg/GlyphContext;->mDXIndex:I

    add-int/lit8 v0, v0, 0x1

    .line 376
    .local v0, "nextIndex":I
    iget-object v1, p0, Lcom/horcrux/svg/GlyphContext;->mDXs:[Lcom/horcrux/svg/SVGLength;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 377
    iput v0, p0, Lcom/horcrux/svg/GlyphContext;->mDXIndex:I

    .line 378
    iget-object v1, p0, Lcom/horcrux/svg/GlyphContext;->mDXs:[Lcom/horcrux/svg/SVGLength;

    aget-object v1, v1, v0

    .line 379
    .local v1, "string":Lcom/horcrux/svg/SVGLength;
    iget v2, p0, Lcom/horcrux/svg/GlyphContext;->mWidth:F

    float-to-double v3, v2

    iget v2, p0, Lcom/horcrux/svg/GlyphContext;->mScale:F

    float-to-double v7, v2

    iget-wide v9, p0, Lcom/horcrux/svg/GlyphContext;->mFontSize:D

    const-wide/16 v5, 0x0

    move-object v2, v1

    invoke-static/range {v2 .. v10}, Lcom/horcrux/svg/PropHelper;->fromRelative(Lcom/horcrux/svg/SVGLength;DDDD)D

    move-result-wide v2

    .line 380
    .local v2, "val":D
    iget-wide v4, p0, Lcom/horcrux/svg/GlyphContext;->mDX:D

    add-double/2addr v4, v2

    iput-wide v4, p0, Lcom/horcrux/svg/GlyphContext;->mDX:D

    .line 383
    .end local v1    # "string":Lcom/horcrux/svg/SVGLength;
    .end local v2    # "val":D
    :cond_0
    iget-wide v1, p0, Lcom/horcrux/svg/GlyphContext;->mDX:D

    return-wide v1
.end method

.method nextDeltaY()D
    .locals 11

    .line 387
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mDYIndices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/horcrux/svg/GlyphContext;->mDYsIndex:I

    invoke-static {v0, v1}, Lcom/horcrux/svg/GlyphContext;->incrementIndices(Ljava/util/ArrayList;I)V

    .line 389
    iget v0, p0, Lcom/horcrux/svg/GlyphContext;->mDYIndex:I

    add-int/lit8 v0, v0, 0x1

    .line 390
    .local v0, "nextIndex":I
    iget-object v1, p0, Lcom/horcrux/svg/GlyphContext;->mDYs:[Lcom/horcrux/svg/SVGLength;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 391
    iput v0, p0, Lcom/horcrux/svg/GlyphContext;->mDYIndex:I

    .line 392
    iget-object v1, p0, Lcom/horcrux/svg/GlyphContext;->mDYs:[Lcom/horcrux/svg/SVGLength;

    aget-object v1, v1, v0

    .line 393
    .local v1, "string":Lcom/horcrux/svg/SVGLength;
    iget v2, p0, Lcom/horcrux/svg/GlyphContext;->mHeight:F

    float-to-double v3, v2

    iget v2, p0, Lcom/horcrux/svg/GlyphContext;->mScale:F

    float-to-double v7, v2

    iget-wide v9, p0, Lcom/horcrux/svg/GlyphContext;->mFontSize:D

    const-wide/16 v5, 0x0

    move-object v2, v1

    invoke-static/range {v2 .. v10}, Lcom/horcrux/svg/PropHelper;->fromRelative(Lcom/horcrux/svg/SVGLength;DDDD)D

    move-result-wide v2

    .line 394
    .local v2, "val":D
    iget-wide v4, p0, Lcom/horcrux/svg/GlyphContext;->mDY:D

    add-double/2addr v4, v2

    iput-wide v4, p0, Lcom/horcrux/svg/GlyphContext;->mDY:D

    .line 397
    .end local v1    # "string":Lcom/horcrux/svg/SVGLength;
    .end local v2    # "val":D
    :cond_0
    iget-wide v1, p0, Lcom/horcrux/svg/GlyphContext;->mDY:D

    return-wide v1
.end method

.method nextRotation()D
    .locals 3

    .line 401
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mRIndices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/horcrux/svg/GlyphContext;->mRsIndex:I

    invoke-static {v0, v1}, Lcom/horcrux/svg/GlyphContext;->incrementIndices(Ljava/util/ArrayList;I)V

    .line 403
    iget v0, p0, Lcom/horcrux/svg/GlyphContext;->mRIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/horcrux/svg/GlyphContext;->mRs:[D

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/horcrux/svg/GlyphContext;->mRIndex:I

    .line 405
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mRs:[D

    iget v1, p0, Lcom/horcrux/svg/GlyphContext;->mRIndex:I

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method nextX(D)D
    .locals 11
    .param p1, "advance"    # D

    .line 343
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mXIndices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/horcrux/svg/GlyphContext;->mXsIndex:I

    invoke-static {v0, v1}, Lcom/horcrux/svg/GlyphContext;->incrementIndices(Ljava/util/ArrayList;I)V

    .line 345
    iget v0, p0, Lcom/horcrux/svg/GlyphContext;->mXIndex:I

    add-int/lit8 v0, v0, 0x1

    .line 346
    .local v0, "nextIndex":I
    iget-object v1, p0, Lcom/horcrux/svg/GlyphContext;->mXs:[Lcom/horcrux/svg/SVGLength;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 347
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/horcrux/svg/GlyphContext;->mDX:D

    .line 348
    iput v0, p0, Lcom/horcrux/svg/GlyphContext;->mXIndex:I

    .line 349
    iget-object v1, p0, Lcom/horcrux/svg/GlyphContext;->mXs:[Lcom/horcrux/svg/SVGLength;

    aget-object v1, v1, v0

    .line 350
    .local v1, "string":Lcom/horcrux/svg/SVGLength;
    iget v2, p0, Lcom/horcrux/svg/GlyphContext;->mWidth:F

    float-to-double v3, v2

    iget v2, p0, Lcom/horcrux/svg/GlyphContext;->mScale:F

    float-to-double v7, v2

    iget-wide v9, p0, Lcom/horcrux/svg/GlyphContext;->mFontSize:D

    const-wide/16 v5, 0x0

    move-object v2, v1

    invoke-static/range {v2 .. v10}, Lcom/horcrux/svg/PropHelper;->fromRelative(Lcom/horcrux/svg/SVGLength;DDDD)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/horcrux/svg/GlyphContext;->mX:D

    .line 353
    .end local v1    # "string":Lcom/horcrux/svg/SVGLength;
    :cond_0
    iget-wide v1, p0, Lcom/horcrux/svg/GlyphContext;->mX:D

    add-double/2addr v1, p1

    iput-wide v1, p0, Lcom/horcrux/svg/GlyphContext;->mX:D

    .line 355
    iget-wide v1, p0, Lcom/horcrux/svg/GlyphContext;->mX:D

    return-wide v1
.end method

.method nextY()D
    .locals 11

    .line 359
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mYIndices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/horcrux/svg/GlyphContext;->mYsIndex:I

    invoke-static {v0, v1}, Lcom/horcrux/svg/GlyphContext;->incrementIndices(Ljava/util/ArrayList;I)V

    .line 361
    iget v0, p0, Lcom/horcrux/svg/GlyphContext;->mYIndex:I

    add-int/lit8 v0, v0, 0x1

    .line 362
    .local v0, "nextIndex":I
    iget-object v1, p0, Lcom/horcrux/svg/GlyphContext;->mYs:[Lcom/horcrux/svg/SVGLength;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 363
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/horcrux/svg/GlyphContext;->mDY:D

    .line 364
    iput v0, p0, Lcom/horcrux/svg/GlyphContext;->mYIndex:I

    .line 365
    iget-object v1, p0, Lcom/horcrux/svg/GlyphContext;->mYs:[Lcom/horcrux/svg/SVGLength;

    aget-object v1, v1, v0

    .line 366
    .local v1, "string":Lcom/horcrux/svg/SVGLength;
    iget v2, p0, Lcom/horcrux/svg/GlyphContext;->mHeight:F

    float-to-double v3, v2

    iget v2, p0, Lcom/horcrux/svg/GlyphContext;->mScale:F

    float-to-double v7, v2

    iget-wide v9, p0, Lcom/horcrux/svg/GlyphContext;->mFontSize:D

    const-wide/16 v5, 0x0

    move-object v2, v1

    invoke-static/range {v2 .. v10}, Lcom/horcrux/svg/PropHelper;->fromRelative(Lcom/horcrux/svg/SVGLength;DDDD)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/horcrux/svg/GlyphContext;->mY:D

    .line 369
    .end local v1    # "string":Lcom/horcrux/svg/SVGLength;
    :cond_0
    iget-wide v1, p0, Lcom/horcrux/svg/GlyphContext;->mY:D

    return-wide v1
.end method

.method popContext()V
    .locals 7

    .line 259
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mFontContext:Ljava/util/ArrayList;

    iget v1, p0, Lcom/horcrux/svg/GlyphContext;->mTop:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 260
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mXsIndices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/horcrux/svg/GlyphContext;->mTop:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 261
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mYsIndices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/horcrux/svg/GlyphContext;->mTop:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 262
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mDXsIndices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/horcrux/svg/GlyphContext;->mTop:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 263
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mDYsIndices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/horcrux/svg/GlyphContext;->mTop:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 264
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mRsIndices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/horcrux/svg/GlyphContext;->mTop:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 266
    iget v0, p0, Lcom/horcrux/svg/GlyphContext;->mTop:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/horcrux/svg/GlyphContext;->mTop:I

    .line 268
    iget v0, p0, Lcom/horcrux/svg/GlyphContext;->mXsIndex:I

    .line 269
    .local v0, "x":I
    iget v1, p0, Lcom/horcrux/svg/GlyphContext;->mYsIndex:I

    .line 270
    .local v1, "y":I
    iget v2, p0, Lcom/horcrux/svg/GlyphContext;->mDXsIndex:I

    .line 271
    .local v2, "dx":I
    iget v3, p0, Lcom/horcrux/svg/GlyphContext;->mDYsIndex:I

    .line 272
    .local v3, "dy":I
    iget v4, p0, Lcom/horcrux/svg/GlyphContext;->mRsIndex:I

    .line 274
    .local v4, "r":I
    iget-object v5, p0, Lcom/horcrux/svg/GlyphContext;->mFontContext:Ljava/util/ArrayList;

    iget v6, p0, Lcom/horcrux/svg/GlyphContext;->mTop:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/horcrux/svg/FontData;

    iput-object v5, p0, Lcom/horcrux/svg/GlyphContext;->topFont:Lcom/horcrux/svg/FontData;

    .line 275
    iget-object v5, p0, Lcom/horcrux/svg/GlyphContext;->mXsIndices:Ljava/util/ArrayList;

    iget v6, p0, Lcom/horcrux/svg/GlyphContext;->mTop:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/horcrux/svg/GlyphContext;->mXsIndex:I

    .line 276
    iget-object v5, p0, Lcom/horcrux/svg/GlyphContext;->mYsIndices:Ljava/util/ArrayList;

    iget v6, p0, Lcom/horcrux/svg/GlyphContext;->mTop:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/horcrux/svg/GlyphContext;->mYsIndex:I

    .line 277
    iget-object v5, p0, Lcom/horcrux/svg/GlyphContext;->mDXsIndices:Ljava/util/ArrayList;

    iget v6, p0, Lcom/horcrux/svg/GlyphContext;->mTop:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/horcrux/svg/GlyphContext;->mDXsIndex:I

    .line 278
    iget-object v5, p0, Lcom/horcrux/svg/GlyphContext;->mDYsIndices:Ljava/util/ArrayList;

    iget v6, p0, Lcom/horcrux/svg/GlyphContext;->mTop:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/horcrux/svg/GlyphContext;->mDYsIndex:I

    .line 279
    iget-object v5, p0, Lcom/horcrux/svg/GlyphContext;->mRsIndices:Ljava/util/ArrayList;

    iget v6, p0, Lcom/horcrux/svg/GlyphContext;->mTop:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/horcrux/svg/GlyphContext;->mRsIndex:I

    .line 281
    iget v5, p0, Lcom/horcrux/svg/GlyphContext;->mXsIndex:I

    if-eq v0, v5, :cond_0

    .line 282
    iget-object v5, p0, Lcom/horcrux/svg/GlyphContext;->mXsContext:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 283
    iget-object v5, p0, Lcom/horcrux/svg/GlyphContext;->mXsContext:Ljava/util/ArrayList;

    iget v6, p0, Lcom/horcrux/svg/GlyphContext;->mXsIndex:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/horcrux/svg/SVGLength;

    iput-object v5, p0, Lcom/horcrux/svg/GlyphContext;->mXs:[Lcom/horcrux/svg/SVGLength;

    .line 284
    iget-object v5, p0, Lcom/horcrux/svg/GlyphContext;->mXIndices:Ljava/util/ArrayList;

    iget v6, p0, Lcom/horcrux/svg/GlyphContext;->mXsIndex:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/horcrux/svg/GlyphContext;->mXIndex:I

    .line 286
    :cond_0
    iget v5, p0, Lcom/horcrux/svg/GlyphContext;->mYsIndex:I

    if-eq v1, v5, :cond_1

    .line 287
    iget-object v5, p0, Lcom/horcrux/svg/GlyphContext;->mYsContext:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 288
    iget-object v5, p0, Lcom/horcrux/svg/GlyphContext;->mYsContext:Ljava/util/ArrayList;

    iget v6, p0, Lcom/horcrux/svg/GlyphContext;->mYsIndex:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/horcrux/svg/SVGLength;

    iput-object v5, p0, Lcom/horcrux/svg/GlyphContext;->mYs:[Lcom/horcrux/svg/SVGLength;

    .line 289
    iget-object v5, p0, Lcom/horcrux/svg/GlyphContext;->mYIndices:Ljava/util/ArrayList;

    iget v6, p0, Lcom/horcrux/svg/GlyphContext;->mYsIndex:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/horcrux/svg/GlyphContext;->mYIndex:I

    .line 291
    :cond_1
    iget v5, p0, Lcom/horcrux/svg/GlyphContext;->mDXsIndex:I

    if-eq v2, v5, :cond_2

    .line 292
    iget-object v5, p0, Lcom/horcrux/svg/GlyphContext;->mDXsContext:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 293
    iget-object v5, p0, Lcom/horcrux/svg/GlyphContext;->mDXsContext:Ljava/util/ArrayList;

    iget v6, p0, Lcom/horcrux/svg/GlyphContext;->mDXsIndex:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/horcrux/svg/SVGLength;

    iput-object v5, p0, Lcom/horcrux/svg/GlyphContext;->mDXs:[Lcom/horcrux/svg/SVGLength;

    .line 294
    iget-object v5, p0, Lcom/horcrux/svg/GlyphContext;->mDXIndices:Ljava/util/ArrayList;

    iget v6, p0, Lcom/horcrux/svg/GlyphContext;->mDXsIndex:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/horcrux/svg/GlyphContext;->mDXIndex:I

    .line 296
    :cond_2
    iget v5, p0, Lcom/horcrux/svg/GlyphContext;->mDYsIndex:I

    if-eq v3, v5, :cond_3

    .line 297
    iget-object v5, p0, Lcom/horcrux/svg/GlyphContext;->mDYsContext:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 298
    iget-object v5, p0, Lcom/horcrux/svg/GlyphContext;->mDYsContext:Ljava/util/ArrayList;

    iget v6, p0, Lcom/horcrux/svg/GlyphContext;->mDYsIndex:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/horcrux/svg/SVGLength;

    iput-object v5, p0, Lcom/horcrux/svg/GlyphContext;->mDYs:[Lcom/horcrux/svg/SVGLength;

    .line 299
    iget-object v5, p0, Lcom/horcrux/svg/GlyphContext;->mDYIndices:Ljava/util/ArrayList;

    iget v6, p0, Lcom/horcrux/svg/GlyphContext;->mDYsIndex:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/horcrux/svg/GlyphContext;->mDYIndex:I

    .line 301
    :cond_3
    iget v5, p0, Lcom/horcrux/svg/GlyphContext;->mRsIndex:I

    if-eq v4, v5, :cond_4

    .line 302
    iget-object v5, p0, Lcom/horcrux/svg/GlyphContext;->mRsContext:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 303
    iget-object v5, p0, Lcom/horcrux/svg/GlyphContext;->mRsContext:Ljava/util/ArrayList;

    iget v6, p0, Lcom/horcrux/svg/GlyphContext;->mRsIndex:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [D

    iput-object v5, p0, Lcom/horcrux/svg/GlyphContext;->mRs:[D

    .line 304
    iget-object v5, p0, Lcom/horcrux/svg/GlyphContext;->mRIndices:Ljava/util/ArrayList;

    iget v6, p0, Lcom/horcrux/svg/GlyphContext;->mRsIndex:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/horcrux/svg/GlyphContext;->mRIndex:I

    .line 306
    :cond_4
    return-void
.end method

.method pushContext(Lcom/horcrux/svg/GroupView;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0
    .param p1, "node"    # Lcom/horcrux/svg/GroupView;
    .param p2, "font"    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 177
    invoke-direct {p0, p1, p2}, Lcom/horcrux/svg/GlyphContext;->pushNodeAndFont(Lcom/horcrux/svg/GroupView;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 178
    invoke-direct {p0}, Lcom/horcrux/svg/GlyphContext;->pushIndices()V

    .line 179
    return-void
.end method

.method pushContext(ZLcom/horcrux/svg/TextView;Lcom/facebook/react/bridge/ReadableMap;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "reset"    # Z
    .param p2, "node"    # Lcom/horcrux/svg/TextView;
    .param p3, "font"    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/ArrayList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/ArrayList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/util/ArrayList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/ArrayList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/util/ArrayList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/horcrux/svg/TextView;",
            "Lcom/facebook/react/bridge/ReadableMap;",
            "Ljava/util/ArrayList<",
            "Lcom/horcrux/svg/SVGLength;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/horcrux/svg/SVGLength;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/horcrux/svg/SVGLength;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/horcrux/svg/SVGLength;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/horcrux/svg/SVGLength;",
            ">;)V"
        }
    .end annotation

    .line 209
    .local p4, "x":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/horcrux/svg/SVGLength;>;"
    .local p5, "y":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/horcrux/svg/SVGLength;>;"
    .local p6, "deltaX":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/horcrux/svg/SVGLength;>;"
    .local p7, "deltaY":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/horcrux/svg/SVGLength;>;"
    .local p8, "rotate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/horcrux/svg/SVGLength;>;"
    if-eqz p1, :cond_0

    .line 210
    invoke-direct {p0}, Lcom/horcrux/svg/GlyphContext;->reset()V

    .line 213
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/horcrux/svg/GlyphContext;->pushNodeAndFont(Lcom/horcrux/svg/GroupView;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 215
    const/4 v0, -0x1

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 216
    iget v1, p0, Lcom/horcrux/svg/GlyphContext;->mXsIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/horcrux/svg/GlyphContext;->mXsIndex:I

    .line 217
    iput v0, p0, Lcom/horcrux/svg/GlyphContext;->mXIndex:I

    .line 218
    iget-object v1, p0, Lcom/horcrux/svg/GlyphContext;->mXIndices:Ljava/util/ArrayList;

    iget v2, p0, Lcom/horcrux/svg/GlyphContext;->mXIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    invoke-direct {p0, p4}, Lcom/horcrux/svg/GlyphContext;->getStringArrayFromReadableArray(Ljava/util/ArrayList;)[Lcom/horcrux/svg/SVGLength;

    move-result-object v1

    iput-object v1, p0, Lcom/horcrux/svg/GlyphContext;->mXs:[Lcom/horcrux/svg/SVGLength;

    .line 220
    iget-object v1, p0, Lcom/horcrux/svg/GlyphContext;->mXsContext:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/horcrux/svg/GlyphContext;->mXs:[Lcom/horcrux/svg/SVGLength;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    :cond_1
    if-eqz p5, :cond_2

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 224
    iget v1, p0, Lcom/horcrux/svg/GlyphContext;->mYsIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/horcrux/svg/GlyphContext;->mYsIndex:I

    .line 225
    iput v0, p0, Lcom/horcrux/svg/GlyphContext;->mYIndex:I

    .line 226
    iget-object v1, p0, Lcom/horcrux/svg/GlyphContext;->mYIndices:Ljava/util/ArrayList;

    iget v2, p0, Lcom/horcrux/svg/GlyphContext;->mYIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-direct {p0, p5}, Lcom/horcrux/svg/GlyphContext;->getStringArrayFromReadableArray(Ljava/util/ArrayList;)[Lcom/horcrux/svg/SVGLength;

    move-result-object v1

    iput-object v1, p0, Lcom/horcrux/svg/GlyphContext;->mYs:[Lcom/horcrux/svg/SVGLength;

    .line 228
    iget-object v1, p0, Lcom/horcrux/svg/GlyphContext;->mYsContext:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/horcrux/svg/GlyphContext;->mYs:[Lcom/horcrux/svg/SVGLength;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_2
    if-eqz p6, :cond_3

    invoke-virtual {p6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_3

    .line 232
    iget v1, p0, Lcom/horcrux/svg/GlyphContext;->mDXsIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/horcrux/svg/GlyphContext;->mDXsIndex:I

    .line 233
    iput v0, p0, Lcom/horcrux/svg/GlyphContext;->mDXIndex:I

    .line 234
    iget-object v1, p0, Lcom/horcrux/svg/GlyphContext;->mDXIndices:Ljava/util/ArrayList;

    iget v2, p0, Lcom/horcrux/svg/GlyphContext;->mDXIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    invoke-direct {p0, p6}, Lcom/horcrux/svg/GlyphContext;->getStringArrayFromReadableArray(Ljava/util/ArrayList;)[Lcom/horcrux/svg/SVGLength;

    move-result-object v1

    iput-object v1, p0, Lcom/horcrux/svg/GlyphContext;->mDXs:[Lcom/horcrux/svg/SVGLength;

    .line 236
    iget-object v1, p0, Lcom/horcrux/svg/GlyphContext;->mDXsContext:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/horcrux/svg/GlyphContext;->mDXs:[Lcom/horcrux/svg/SVGLength;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_3
    if-eqz p7, :cond_4

    invoke-virtual {p7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_4

    .line 240
    iget v1, p0, Lcom/horcrux/svg/GlyphContext;->mDYsIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/horcrux/svg/GlyphContext;->mDYsIndex:I

    .line 241
    iput v0, p0, Lcom/horcrux/svg/GlyphContext;->mDYIndex:I

    .line 242
    iget-object v1, p0, Lcom/horcrux/svg/GlyphContext;->mDYIndices:Ljava/util/ArrayList;

    iget v2, p0, Lcom/horcrux/svg/GlyphContext;->mDYIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    invoke-direct {p0, p7}, Lcom/horcrux/svg/GlyphContext;->getStringArrayFromReadableArray(Ljava/util/ArrayList;)[Lcom/horcrux/svg/SVGLength;

    move-result-object v1

    iput-object v1, p0, Lcom/horcrux/svg/GlyphContext;->mDYs:[Lcom/horcrux/svg/SVGLength;

    .line 244
    iget-object v1, p0, Lcom/horcrux/svg/GlyphContext;->mDYsContext:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/horcrux/svg/GlyphContext;->mDYs:[Lcom/horcrux/svg/SVGLength;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    :cond_4
    if-eqz p8, :cond_5

    invoke-virtual {p8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_5

    .line 248
    iget v1, p0, Lcom/horcrux/svg/GlyphContext;->mRsIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/horcrux/svg/GlyphContext;->mRsIndex:I

    .line 249
    iput v0, p0, Lcom/horcrux/svg/GlyphContext;->mRIndex:I

    .line 250
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mRIndices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/horcrux/svg/GlyphContext;->mRIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    invoke-direct {p0, p8}, Lcom/horcrux/svg/GlyphContext;->getDoubleArrayFromReadableArray(Ljava/util/ArrayList;)[D

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mRs:[D

    .line 252
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mRsContext:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/horcrux/svg/GlyphContext;->mRs:[D

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    :cond_5
    invoke-direct {p0}, Lcom/horcrux/svg/GlyphContext;->pushIndices()V

    .line 256
    return-void
.end method
