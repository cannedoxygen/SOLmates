.class Lcom/horcrux/svg/GlyphPathBag;
.super Ljava/lang/Object;
.source "GlyphPathBag.java"


# instance fields
.field private final data:[[I

.field private final paint:Landroid/graphics/Paint;

.field private final paths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/GlyphPathBag;->paths:Ljava/util/ArrayList;

    .line 9
    const/16 v0, 0x100

    new-array v0, v0, [[I

    iput-object v0, p0, Lcom/horcrux/svg/GlyphPathBag;->data:[[I

    .line 13
    iput-object p1, p0, Lcom/horcrux/svg/GlyphPathBag;->paint:Landroid/graphics/Paint;

    .line 15
    iget-object v0, p0, Lcom/horcrux/svg/GlyphPathBag;->paths:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    return-void
.end method

.method private getIndex(C)I
    .locals 2
    .param p1, "ch"    # C

    .line 43
    iget-object v0, p0, Lcom/horcrux/svg/GlyphPathBag;->data:[[I

    shr-int/lit8 v1, p1, 0x8

    aget-object v0, v0, v1

    .line 44
    .local v0, "bin":[I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 45
    :cond_0
    and-int/lit16 v1, p1, 0xff

    aget v1, v0, v1

    return v1
.end method


# virtual methods
.method getOrCreateAndCache(CLjava/lang/String;)Landroid/graphics/Path;
    .locals 9
    .param p1, "ch"    # C
    .param p2, "current"    # Ljava/lang/String;

    .line 19
    invoke-direct {p0, p1}, Lcom/horcrux/svg/GlyphPathBag;->getIndex(C)I

    move-result v0

    .line 22
    .local v0, "index":I
    if-eqz v0, :cond_0

    .line 23
    iget-object v1, p0, Lcom/horcrux/svg/GlyphPathBag;->paths:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Path;

    .local v1, "cached":Landroid/graphics/Path;
    goto :goto_0

    .line 25
    .end local v1    # "cached":Landroid/graphics/Path;
    :cond_0
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 26
    .restart local v1    # "cached":Landroid/graphics/Path;
    iget-object v2, p0, Lcom/horcrux/svg/GlyphPathBag;->paint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v3, p2

    move-object v8, v1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Paint;->getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V

    .line 28
    iget-object v2, p0, Lcom/horcrux/svg/GlyphPathBag;->data:[[I

    shr-int/lit8 v3, p1, 0x8

    aget-object v2, v2, v3

    .line 29
    .local v2, "bin":[I
    if-nez v2, :cond_1

    .line 30
    iget-object v3, p0, Lcom/horcrux/svg/GlyphPathBag;->data:[[I

    shr-int/lit8 v4, p1, 0x8

    const/16 v5, 0x100

    new-array v5, v5, [I

    aput-object v5, v3, v4

    move-object v2, v5

    .line 32
    :cond_1
    and-int/lit16 v3, p1, 0xff

    iget-object v4, p0, Lcom/horcrux/svg/GlyphPathBag;->paths:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    aput v4, v2, v3

    .line 34
    iget-object v3, p0, Lcom/horcrux/svg/GlyphPathBag;->paths:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .end local v2    # "bin":[I
    :goto_0
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 38
    .local v2, "glyph":Landroid/graphics/Path;
    invoke-virtual {v2, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 39
    return-object v2
.end method
