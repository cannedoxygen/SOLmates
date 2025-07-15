.class Lcom/horcrux/svg/TextLayoutAlgorithm;
.super Ljava/lang/Object;
.source "TextLayoutAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/horcrux/svg/TextLayoutAlgorithm$LayoutInput;,
        Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getSubTreeTypographicCharacterPositions(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/StringBuilder;Landroid/view/View;Lcom/horcrux/svg/TextPathView;)V
    .locals 10
    .param p3, "line"    # Ljava/lang/StringBuilder;
    .param p4, "node"    # Landroid/view/View;
    .param p5, "textPath"    # Lcom/horcrux/svg/TextPathView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/horcrux/svg/TextPathView;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/horcrux/svg/TextView;",
            ">;",
            "Ljava/lang/StringBuilder;",
            "Landroid/view/View;",
            "Lcom/horcrux/svg/TextPathView;",
            ")V"
        }
    .end annotation

    .line 52
    .local p1, "inTextPath":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/horcrux/svg/TextPathView;>;"
    .local p2, "subtree":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/horcrux/svg/TextView;>;"
    instance-of v0, p4, Lcom/horcrux/svg/TSpanView;

    if-eqz v0, :cond_3

    .line 53
    move-object v0, p4

    check-cast v0, Lcom/horcrux/svg/TSpanView;

    .line 54
    .local v0, "tSpanView":Lcom/horcrux/svg/TSpanView;
    iget-object v1, v0, Lcom/horcrux/svg/TSpanView;->mContent:Ljava/lang/String;

    .line 55
    .local v1, "content":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 56
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/horcrux/svg/TSpanView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 57
    nop

    .line 58
    invoke-virtual {v0, v2}, Lcom/horcrux/svg/TSpanView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 57
    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/horcrux/svg/TextLayoutAlgorithm;->getSubTreeTypographicCharacterPositions(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/StringBuilder;Landroid/view/View;Lcom/horcrux/svg/TextPathView;)V

    .line 56
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v2    # "i":I
    :cond_0
    goto :goto_2

    .line 61
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 62
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 65
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .end local v0    # "tSpanView":Lcom/horcrux/svg/TSpanView;
    .end local v1    # "content":Ljava/lang/String;
    :goto_2
    goto :goto_5

    .line 68
    :cond_3
    instance-of v0, p4, Lcom/horcrux/svg/TextPathView;

    if-eqz v0, :cond_4

    move-object v0, p4

    check-cast v0, Lcom/horcrux/svg/TextPathView;

    goto :goto_3

    :cond_4
    move-object v0, p5

    :goto_3
    move-object p5, v0

    .line 69
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    invoke-virtual {p5}, Lcom/horcrux/svg/TextPathView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 70
    nop

    .line 71
    invoke-virtual {p5, v0}, Lcom/horcrux/svg/TextPathView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 70
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/horcrux/svg/TextLayoutAlgorithm;->getSubTreeTypographicCharacterPositions(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/StringBuilder;Landroid/view/View;Lcom/horcrux/svg/TextPathView;)V

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 74
    .end local v0    # "i":I
    :cond_5
    :goto_5
    return-void
.end method


# virtual methods
.method layoutText(Lcom/horcrux/svg/TextLayoutAlgorithm$LayoutInput;)[Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;
    .locals 69
    .param p1, "layoutInput"    # Lcom/horcrux/svg/TextLayoutAlgorithm$LayoutInput;

    .line 88
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    iget-object v14, v13, Lcom/horcrux/svg/TextLayoutAlgorithm$LayoutInput;->text:Lcom/horcrux/svg/TextView;

    .line 89
    .local v14, "text":Lcom/horcrux/svg/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .local v3, "line":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v2, "subtree":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/horcrux/svg/TextView;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v0

    .line 92
    .local v15, "inTextPath":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/horcrux/svg/TextPathView;>;"
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move-object v4, v14

    invoke-direct/range {v0 .. v5}, Lcom/horcrux/svg/TextLayoutAlgorithm;->getSubTreeTypographicCharacterPositions(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/StringBuilder;Landroid/view/View;Lcom/horcrux/svg/TextPathView;)V

    .line 93
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 98
    .local v0, "root":[C
    array-length v1, v0

    .line 114
    .local v1, "count":I
    new-array v11, v1, [Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;

    .line 115
    .local v11, "result":[Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_0

    .line 116
    new-instance v5, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;

    aget-char v6, v0, v4

    invoke-direct {v5, v12, v4, v6}, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;-><init>(Lcom/horcrux/svg/TextLayoutAlgorithm;IC)V

    aput-object v5, v11, v4

    .line 115
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 121
    .end local v4    # "i":I
    :cond_0
    if-nez v1, :cond_1

    .line 122
    return-object v11

    .line 132
    :cond_1
    new-array v10, v1, [Landroid/graphics/PointF;

    .line 133
    .local v10, "CSS_positions":[Landroid/graphics/PointF;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    const/4 v9, 0x0

    if-ge v4, v1, :cond_2

    .line 134
    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v9, v9}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v5, v10, v4

    .line 133
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 140
    .end local v4    # "i":I
    :cond_2
    const/16 v16, 0x1

    .line 147
    .local v16, "horizontal":Z
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    const/4 v8, 0x0

    const/4 v7, 0x1

    if-ge v4, v1, :cond_6

    .line 180
    aget-object v5, v11, v4

    iput-boolean v7, v5, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->addressable:Z

    .line 186
    aget-object v5, v11, v4

    iput-boolean v8, v5, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->middle:Z

    .line 195
    aget-object v5, v11, v4

    if-nez v4, :cond_3

    move v8, v7

    :cond_3
    iput-boolean v8, v5, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->anchoredChunk:Z

    .line 206
    aget-object v5, v11, v4

    iget-boolean v5, v5, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->addressable:Z

    if-eqz v5, :cond_4

    aget-object v5, v11, v4

    iget-boolean v5, v5, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->middle:Z

    if-nez v5, :cond_4

    .line 207
    aget-object v5, v10, v4

    invoke-virtual {v5, v9, v9}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_3

    .line 208
    :cond_4
    if-lez v4, :cond_5

    .line 209
    aget-object v5, v10, v4

    add-int/lit8 v6, v4, -0x1

    aget-object v6, v10, v6

    invoke-virtual {v5, v6}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 147
    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 231
    .end local v4    # "i":I
    :cond_6
    new-array v6, v1, [Ljava/lang/String;

    .line 232
    .local v6, "resolve_x":[Ljava/lang/String;
    new-array v5, v1, [Ljava/lang/String;

    .line 233
    .local v5, "resolve_y":[Ljava/lang/String;
    new-array v4, v1, [Ljava/lang/String;

    .line 234
    .local v4, "resolve_dx":[Ljava/lang/String;
    move-object/from16 v17, v0

    .end local v0    # "root":[C
    .local v17, "root":[C
    new-array v0, v1, [Ljava/lang/String;

    .line 243
    .local v0, "resolve_dy":[Ljava/lang/String;
    const/16 v18, 0x0

    .line 501
    .local v18, "in_text_path":Z
    new-instance v19, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;

    const/16 v20, 0x0

    move-object/from16 v21, v4

    .end local v4    # "resolve_dx":[Ljava/lang/String;
    .local v21, "resolve_dx":[Ljava/lang/String;
    move-object/from16 v4, v19

    move-object/from16 v22, v5

    .end local v5    # "resolve_y":[Ljava/lang/String;
    .local v22, "resolve_y":[Ljava/lang/String;
    move-object/from16 v5, p0

    move-object/from16 v23, v6

    .end local v6    # "resolve_x":[Ljava/lang/String;
    .local v23, "resolve_x":[Ljava/lang/String;
    move-object v6, v11

    move-object/from16 v7, v23

    move-object/from16 v8, v22

    move-object/from16 v9, v21

    move-object/from16 v27, v10

    .end local v10    # "CSS_positions":[Landroid/graphics/PointF;
    .local v27, "CSS_positions":[Landroid/graphics/PointF;
    move-object v10, v0

    move-object/from16 v28, v0

    move-object v0, v11

    .end local v11    # "result":[Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;
    .local v0, "result":[Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;
    .local v28, "resolve_dy":[Ljava/lang/String;
    move-object/from16 v11, v20

    invoke-direct/range {v4 .. v11}, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;-><init>(Lcom/horcrux/svg/TextLayoutAlgorithm;[Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver-IA;)V

    .line 515
    .local v4, "resolver":Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;
    new-instance v5, Landroid/graphics/PointF;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 519
    .local v5, "shift":Landroid/graphics/PointF;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4
    if-ge v7, v1, :cond_9

    .line 524
    aget-object v8, v23, v7

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v10, "0"

    if-eqz v8, :cond_7

    .line 525
    aput-object v10, v23, v7

    .line 527
    :cond_7
    aget-object v8, v22, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 528
    aput-object v10, v22, v7

    .line 534
    :cond_8
    iget v8, v5, Landroid/graphics/PointF;->x:F

    aget-object v9, v23, v7

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    add-float/2addr v8, v9

    iput v8, v5, Landroid/graphics/PointF;->x:F

    .line 535
    iget v8, v5, Landroid/graphics/PointF;->y:F

    aget-object v9, v22, v7

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    add-float/2addr v8, v9

    iput v8, v5, Landroid/graphics/PointF;->y:F

    .line 540
    aget-object v8, v0, v7

    aget-object v9, v27, v7

    iget v9, v9, Landroid/graphics/PointF;->x:F

    iget v10, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr v9, v10

    float-to-double v9, v9

    iput-wide v9, v8, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->x:D

    .line 541
    aget-object v8, v0, v7

    aget-object v9, v27, v7

    iget v9, v9, Landroid/graphics/PointF;->y:F

    iget v10, v5, Landroid/graphics/PointF;->y:F

    add-float/2addr v9, v10

    float-to-double v9, v9

    iput-wide v9, v8, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->y:D

    .line 519
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 741
    .end local v7    # "i":I
    :cond_9
    new-instance v7, Lcom/horcrux/svg/TextLayoutAlgorithm$1TextLengthResolver;

    invoke-direct {v7, v12, v0}, Lcom/horcrux/svg/TextLayoutAlgorithm$1TextLengthResolver;-><init>(Lcom/horcrux/svg/TextLayoutAlgorithm;[Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;)V

    .line 742
    .local v7, "lengthResolver":Lcom/horcrux/svg/TextLayoutAlgorithm$1TextLengthResolver;
    invoke-static {v7, v14}, Lcom/horcrux/svg/TextLayoutAlgorithm$1TextLengthResolver;->-$$Nest$mresolveTextLength(Lcom/horcrux/svg/TextLayoutAlgorithm$1TextLengthResolver;Lcom/horcrux/svg/TextView;)V

    .line 757
    invoke-virtual {v5, v6, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 758
    const/4 v8, 0x1

    .line 762
    .local v8, "index":I
    :goto_5
    if-ge v8, v1, :cond_e

    .line 769
    aget-object v9, v23, v8

    if-eqz v9, :cond_a

    .line 770
    aget-object v9, v23, v8

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    aget-object v11, v0, v8

    move-object/from16 v19, v7

    .end local v7    # "lengthResolver":Lcom/horcrux/svg/TextLayoutAlgorithm$1TextLengthResolver;
    .local v19, "lengthResolver":Lcom/horcrux/svg/TextLayoutAlgorithm$1TextLengthResolver;
    iget-wide v6, v11, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->x:D

    sub-double/2addr v9, v6

    double-to-float v6, v9

    iput v6, v5, Landroid/graphics/PointF;->x:F

    goto :goto_6

    .line 769
    .end local v19    # "lengthResolver":Lcom/horcrux/svg/TextLayoutAlgorithm$1TextLengthResolver;
    .restart local v7    # "lengthResolver":Lcom/horcrux/svg/TextLayoutAlgorithm$1TextLengthResolver;
    :cond_a
    move-object/from16 v19, v7

    .line 778
    .end local v7    # "lengthResolver":Lcom/horcrux/svg/TextLayoutAlgorithm$1TextLengthResolver;
    .restart local v19    # "lengthResolver":Lcom/horcrux/svg/TextLayoutAlgorithm$1TextLengthResolver;
    :goto_6
    aget-object v6, v22, v8

    if-eqz v6, :cond_b

    .line 779
    aget-object v6, v22, v8

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    aget-object v9, v0, v8

    iget-wide v9, v9, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->y:D

    sub-double/2addr v6, v9

    double-to-float v6, v6

    iput v6, v5, Landroid/graphics/PointF;->y:F

    .line 787
    :cond_b
    aget-object v6, v0, v8

    iget-wide v9, v6, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->x:D

    iget v7, v5, Landroid/graphics/PointF;->x:F

    move-object/from16 v20, v2

    move-object v11, v3

    .end local v2    # "subtree":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/horcrux/svg/TextView;>;"
    .end local v3    # "line":Ljava/lang/StringBuilder;
    .local v11, "line":Ljava/lang/StringBuilder;
    .local v20, "subtree":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/horcrux/svg/TextView;>;"
    float-to-double v2, v7

    add-double/2addr v9, v2

    iput-wide v9, v6, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->x:D

    .line 788
    aget-object v2, v0, v8

    iget-wide v6, v2, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->y:D

    iget v3, v5, Landroid/graphics/PointF;->y:F

    float-to-double v9, v3

    add-double/2addr v6, v9

    iput-wide v6, v2, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->y:D

    .line 793
    aget-object v2, v0, v8

    iget-boolean v2, v2, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->middle:Z

    if-eqz v2, :cond_c

    aget-object v2, v0, v8

    iget-boolean v2, v2, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->anchoredChunk:Z

    if-eqz v2, :cond_c

    .line 798
    aget-object v2, v0, v8

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->anchoredChunk:Z

    goto :goto_7

    .line 793
    :cond_c
    const/4 v3, 0x0

    .line 806
    :goto_7
    add-int/lit8 v2, v8, 0x1

    if-ge v2, v1, :cond_d

    .line 807
    add-int/lit8 v2, v8, 0x1

    aget-object v2, v0, v2

    const/4 v6, 0x1

    iput-boolean v6, v2, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->anchoredChunk:Z

    goto :goto_8

    .line 806
    :cond_d
    const/4 v6, 0x1

    .line 812
    :goto_8
    add-int/lit8 v8, v8, 0x1

    move-object v3, v11

    move-object/from16 v7, v19

    move-object/from16 v2, v20

    const/4 v6, 0x0

    goto :goto_5

    .line 844
    .end local v11    # "line":Ljava/lang/StringBuilder;
    .end local v19    # "lengthResolver":Lcom/horcrux/svg/TextLayoutAlgorithm$1TextLengthResolver;
    .end local v20    # "subtree":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/horcrux/svg/TextView;>;"
    .restart local v2    # "subtree":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/horcrux/svg/TextView;>;"
    .restart local v3    # "line":Ljava/lang/StringBuilder;
    .restart local v7    # "lengthResolver":Lcom/horcrux/svg/TextLayoutAlgorithm$1TextLengthResolver;
    :cond_e
    move-object/from16 v20, v2

    move-object v11, v3

    move-object/from16 v19, v7

    const/4 v3, 0x0

    const/4 v6, 0x1

    .end local v2    # "subtree":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/horcrux/svg/TextView;>;"
    .end local v3    # "line":Ljava/lang/StringBuilder;
    .end local v7    # "lengthResolver":Lcom/horcrux/svg/TextLayoutAlgorithm$1TextLengthResolver;
    .restart local v11    # "line":Ljava/lang/StringBuilder;
    .restart local v19    # "lengthResolver":Lcom/horcrux/svg/TextLayoutAlgorithm$1TextLengthResolver;
    .restart local v20    # "subtree":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/horcrux/svg/TextView;>;"
    const/4 v2, 0x0

    .line 845
    .local v2, "i":I
    const-wide/high16 v9, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 846
    .local v9, "a":D
    const-wide/high16 v24, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 847
    .local v24, "b":D
    const-wide/high16 v29, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 848
    .local v29, "prevA":D
    const-wide/high16 v31, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 849
    .local v31, "prevB":D
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_9
    const-wide/high16 v33, 0x4000000000000000L    # 2.0

    if-ge v7, v1, :cond_1a

    .line 850
    aget-object v6, v0, v7

    iget-boolean v6, v6, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->addressable:Z

    if-nez v6, :cond_f

    .line 851
    move-object/from16 v36, v4

    move-object/from16 v35, v5

    move/from16 v37, v8

    move-object/from16 v38, v11

    move-object/from16 v41, v14

    goto/16 :goto_e

    .line 853
    :cond_f
    aget-object v6, v0, v7

    iget-boolean v6, v6, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->anchoredChunk:Z

    if-eqz v6, :cond_10

    .line 854
    move-wide/from16 v29, v9

    .line 855
    move-wide/from16 v31, v24

    .line 856
    const-wide/high16 v9, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 857
    const-wide/high16 v24, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    move-object v6, v4

    move-wide/from16 v3, v24

    goto :goto_a

    .line 853
    :cond_10
    move-object v6, v4

    move-wide/from16 v3, v24

    .line 877
    .end local v4    # "resolver":Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;
    .end local v24    # "b":D
    .local v3, "b":D
    .local v6, "resolver":Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;
    :goto_a
    move-object/from16 v35, v5

    .end local v5    # "shift":Landroid/graphics/PointF;
    .local v35, "shift":Landroid/graphics/PointF;
    aget-object v5, v0, v7

    move-object/from16 v36, v6

    .end local v6    # "resolver":Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;
    .local v36, "resolver":Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;
    iget-wide v5, v5, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->x:D

    .line 878
    .local v5, "pos":D
    move/from16 v37, v8

    .end local v8    # "index":I
    .local v37, "index":I
    aget-object v8, v0, v7

    move-object/from16 v38, v11

    .end local v11    # "line":Ljava/lang/StringBuilder;
    .local v38, "line":Ljava/lang/StringBuilder;
    iget-wide v11, v8, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->advance:D

    .line 879
    .local v11, "advance":D
    move-object v8, v14

    .end local v14    # "text":Lcom/horcrux/svg/TextView;
    .local v8, "text":Lcom/horcrux/svg/TextView;
    add-double v13, v5, v11

    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->min(DD)D

    move-result-wide v13

    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->min(DD)D

    move-result-wide v9

    .line 880
    add-double v13, v5, v11

    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v13

    invoke-static {v3, v4, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    .line 901
    if-lez v7, :cond_11

    aget-object v13, v0, v7

    iget-boolean v13, v13, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->anchoredChunk:Z

    if-eqz v13, :cond_11

    const-wide/high16 v13, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v13, v29, v13

    if-nez v13, :cond_12

    :cond_11
    add-int/lit8 v13, v1, -0x1

    if-ne v7, v13, :cond_19

    .line 903
    :cond_12
    sget-object v13, Lcom/horcrux/svg/TextProperties$TextAnchor;->start:Lcom/horcrux/svg/TextProperties$TextAnchor;

    .line 904
    .local v13, "anchor":Lcom/horcrux/svg/TextProperties$TextAnchor;
    sget-object v14, Lcom/horcrux/svg/TextProperties$Direction;->ltr:Lcom/horcrux/svg/TextProperties$Direction;

    .line 906
    .local v14, "direction":Lcom/horcrux/svg/TextProperties$Direction;
    move-wide/from16 v24, v5

    .end local v5    # "pos":D
    .local v24, "pos":D
    add-int/lit8 v5, v1, -0x1

    if-ne v7, v5, :cond_13

    .line 907
    move-wide/from16 v29, v9

    .line 908
    move-wide/from16 v31, v3

    .line 911
    :cond_13
    aget-object v5, v0, v2

    iget-wide v5, v5, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->x:D

    .line 912
    .local v5, "anchorShift":D
    sget-object v39, Lcom/horcrux/svg/TextLayoutAlgorithm$1;->$SwitchMap$com$horcrux$svg$TextProperties$TextAnchor:[I

    invoke-virtual {v13}, Lcom/horcrux/svg/TextProperties$TextAnchor;->ordinal()I

    move-result v40

    aget v39, v39, v40

    packed-switch v39, :pswitch_data_0

    move-wide/from16 v39, v3

    .end local v3    # "b":D
    .local v39, "b":D
    goto :goto_b

    .line 930
    .end local v39    # "b":D
    .restart local v3    # "b":D
    :pswitch_0
    move-wide/from16 v39, v3

    .end local v3    # "b":D
    .restart local v39    # "b":D
    sget-object v3, Lcom/horcrux/svg/TextProperties$Direction;->ltr:Lcom/horcrux/svg/TextProperties$Direction;

    if-ne v14, v3, :cond_14

    .line 931
    sub-double v5, v5, v31

    goto :goto_b

    .line 933
    :cond_14
    sub-double v5, v5, v29

    goto :goto_b

    .line 922
    .end local v39    # "b":D
    .restart local v3    # "b":D
    :pswitch_1
    move-wide/from16 v39, v3

    .end local v3    # "b":D
    .restart local v39    # "b":D
    sget-object v3, Lcom/horcrux/svg/TextProperties$Direction;->ltr:Lcom/horcrux/svg/TextProperties$Direction;

    if-ne v14, v3, :cond_15

    .line 923
    add-double v3, v29, v31

    div-double v3, v3, v33

    sub-double/2addr v5, v3

    goto :goto_b

    .line 925
    :cond_15
    add-double v3, v29, v31

    div-double v3, v3, v33

    sub-double/2addr v5, v3

    .line 927
    goto :goto_b

    .line 914
    .end local v39    # "b":D
    .restart local v3    # "b":D
    :pswitch_2
    move-wide/from16 v39, v3

    .end local v3    # "b":D
    .restart local v39    # "b":D
    sget-object v3, Lcom/horcrux/svg/TextProperties$Direction;->ltr:Lcom/horcrux/svg/TextProperties$Direction;

    if-ne v14, v3, :cond_16

    .line 915
    sub-double v5, v5, v29

    goto :goto_b

    .line 917
    :cond_16
    sub-double v5, v5, v31

    .line 919
    nop

    .line 944
    :goto_b
    add-int/lit8 v3, v1, -0x1

    if-ne v7, v3, :cond_17

    move v3, v7

    goto :goto_c

    :cond_17
    add-int/lit8 v3, v7, -0x1

    .line 945
    .local v3, "j":I
    :goto_c
    move v4, v2

    .local v4, "r":I
    :goto_d
    if-gt v4, v3, :cond_18

    .line 947
    move/from16 v33, v3

    .end local v3    # "j":I
    .local v33, "j":I
    aget-object v3, v0, v4

    move-object/from16 v41, v8

    move-wide/from16 v42, v9

    .end local v8    # "text":Lcom/horcrux/svg/TextView;
    .end local v9    # "a":D
    .local v41, "text":Lcom/horcrux/svg/TextView;
    .local v42, "a":D
    iget-wide v8, v3, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->x:D

    add-double/2addr v8, v5

    iput-wide v8, v3, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->x:D

    .line 945
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v33

    move-object/from16 v8, v41

    move-wide/from16 v9, v42

    goto :goto_d

    .end local v33    # "j":I
    .end local v41    # "text":Lcom/horcrux/svg/TextView;
    .end local v42    # "a":D
    .restart local v3    # "j":I
    .restart local v8    # "text":Lcom/horcrux/svg/TextView;
    .restart local v9    # "a":D
    :cond_18
    move/from16 v33, v3

    move-object/from16 v41, v8

    move-wide/from16 v42, v9

    .line 953
    .end local v3    # "j":I
    .end local v4    # "r":I
    .end local v8    # "text":Lcom/horcrux/svg/TextView;
    .end local v9    # "a":D
    .restart local v33    # "j":I
    .restart local v41    # "text":Lcom/horcrux/svg/TextView;
    .restart local v42    # "a":D
    move v2, v7

    move-wide/from16 v24, v39

    goto :goto_e

    .line 901
    .end local v13    # "anchor":Lcom/horcrux/svg/TextProperties$TextAnchor;
    .end local v14    # "direction":Lcom/horcrux/svg/TextProperties$Direction;
    .end local v24    # "pos":D
    .end local v33    # "j":I
    .end local v39    # "b":D
    .end local v41    # "text":Lcom/horcrux/svg/TextView;
    .end local v42    # "a":D
    .local v3, "b":D
    .local v5, "pos":D
    .restart local v8    # "text":Lcom/horcrux/svg/TextView;
    .restart local v9    # "a":D
    :cond_19
    move-wide/from16 v39, v3

    move-wide/from16 v24, v5

    move-object/from16 v41, v8

    move-wide/from16 v42, v9

    .end local v3    # "b":D
    .end local v5    # "pos":D
    .end local v8    # "text":Lcom/horcrux/svg/TextView;
    .end local v9    # "a":D
    .restart local v24    # "pos":D
    .restart local v39    # "b":D
    .restart local v41    # "text":Lcom/horcrux/svg/TextView;
    .restart local v42    # "a":D
    move-wide/from16 v24, v39

    .line 849
    .end local v11    # "advance":D
    .end local v39    # "b":D
    .end local v42    # "a":D
    .restart local v9    # "a":D
    .local v24, "b":D
    :goto_e
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v5, v35

    move-object/from16 v4, v36

    move/from16 v8, v37

    move-object/from16 v11, v38

    move-object/from16 v14, v41

    const/4 v3, 0x0

    const/4 v6, 0x1

    goto/16 :goto_9

    .end local v35    # "shift":Landroid/graphics/PointF;
    .end local v36    # "resolver":Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;
    .end local v37    # "index":I
    .end local v38    # "line":Ljava/lang/StringBuilder;
    .end local v41    # "text":Lcom/horcrux/svg/TextView;
    .local v4, "resolver":Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;
    .local v5, "shift":Landroid/graphics/PointF;
    .local v8, "index":I
    .local v11, "line":Ljava/lang/StringBuilder;
    .local v14, "text":Lcom/horcrux/svg/TextView;
    :cond_1a
    move-object/from16 v36, v4

    move-object/from16 v35, v5

    move/from16 v37, v8

    move-object/from16 v38, v11

    move-object/from16 v41, v14

    .line 971
    .end local v4    # "resolver":Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;
    .end local v5    # "shift":Landroid/graphics/PointF;
    .end local v7    # "k":I
    .end local v8    # "index":I
    .end local v11    # "line":Ljava/lang/StringBuilder;
    .end local v14    # "text":Lcom/horcrux/svg/TextView;
    .restart local v35    # "shift":Landroid/graphics/PointF;
    .restart local v36    # "resolver":Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;
    .restart local v37    # "index":I
    .restart local v38    # "line":Ljava/lang/StringBuilder;
    .restart local v41    # "text":Lcom/horcrux/svg/TextView;
    const/4 v3, 0x0

    .line 972
    .end local v37    # "index":I
    .local v3, "index":I
    const/4 v4, 0x0

    .line 973
    .local v4, "inPath":Z
    const/4 v5, 0x0

    .line 974
    .local v5, "afterPath":Z
    new-instance v6, Landroid/graphics/PointF;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 975
    .local v6, "path_end":Landroid/graphics/PointF;
    const/4 v7, 0x0

    .line 976
    .local v7, "textPath":Landroid/graphics/Path;
    new-instance v8, Landroid/graphics/PathMeasure;

    invoke-direct {v8}, Landroid/graphics/PathMeasure;-><init>()V

    .line 977
    .local v8, "pm":Landroid/graphics/PathMeasure;
    :goto_f
    if-ge v3, v1, :cond_2e

    .line 984
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/horcrux/svg/TextPathView;

    .line 985
    .local v11, "textPathView":Lcom/horcrux/svg/TextPathView;
    const/4 v12, 0x0

    if-eqz v11, :cond_29

    aget-object v14, v0, v3

    iget-boolean v14, v14, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->addressable:Z

    if-eqz v14, :cond_29

    .line 986
    invoke-virtual {v11, v12, v12}, Lcom/horcrux/svg/TextPathView;->getTextPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;

    move-result-object v7

    .line 987
    const/4 v4, 0x1

    .line 993
    aget-object v14, v0, v3

    iget-boolean v14, v14, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->middle:Z

    if-nez v14, :cond_28

    .line 1007
    move-object v14, v7

    .line 1008
    .local v14, "path":Landroid/graphics/Path;
    invoke-virtual {v11}, Lcom/horcrux/svg/TextPathView;->getSide()Lcom/horcrux/svg/TextProperties$TextPathSide;

    sget-object v26, Lcom/horcrux/svg/TextProperties$TextPathSide;->right:Lcom/horcrux/svg/TextProperties$TextPathSide;

    .line 1014
    const/4 v12, 0x0

    invoke-virtual {v8, v14, v12}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 1015
    invoke-virtual {v8}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v12

    move-object/from16 v39, v14

    .end local v14    # "path":Landroid/graphics/Path;
    .local v39, "path":Landroid/graphics/Path;
    float-to-double v13, v12

    .line 1024
    .local v13, "length":D
    invoke-virtual {v11}, Lcom/horcrux/svg/TextPathView;->getStartOffset()Lcom/horcrux/svg/SVGLength;

    move-result-object v12

    move/from16 v42, v4

    move/from16 v40, v5

    .end local v4    # "inPath":Z
    .end local v5    # "afterPath":Z
    .local v40, "afterPath":Z
    .local v42, "inPath":Z
    iget-wide v4, v12, Lcom/horcrux/svg/SVGLength;->value:D

    .line 1031
    .local v4, "offset":D
    aget-object v12, v0, v3

    move-wide/from16 v43, v9

    .end local v9    # "a":D
    .local v43, "a":D
    iget-wide v9, v12, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->advance:D

    .line 1037
    .local v9, "advance":D
    aget-object v12, v0, v3

    move-object/from16 v45, v6

    move-object/from16 v46, v7

    .end local v6    # "path_end":Landroid/graphics/PointF;
    .end local v7    # "textPath":Landroid/graphics/Path;
    .local v45, "path_end":Landroid/graphics/PointF;
    .local v46, "textPath":Landroid/graphics/Path;
    iget-wide v6, v12, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->x:D

    .line 1038
    .local v6, "x":D
    aget-object v12, v0, v3

    move-object/from16 v47, v11

    .end local v11    # "textPathView":Lcom/horcrux/svg/TextPathView;
    .local v47, "textPathView":Lcom/horcrux/svg/TextPathView;
    iget-wide v11, v12, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->y:D

    .line 1039
    .local v11, "y":D
    move/from16 v48, v1

    .end local v1    # "count":I
    .local v48, "count":I
    aget-object v1, v0, v3

    move-wide/from16 v49, v11

    .end local v11    # "y":D
    .local v49, "y":D
    iget-wide v11, v1, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->rotate:D

    .line 1052
    .local v11, "angle":D
    div-double v51, v9, v33

    add-double v51, v6, v51

    add-double v51, v51, v4

    .line 1066
    .local v51, "mid":D
    invoke-virtual {v8}, Landroid/graphics/PathMeasure;->isClosed()Z

    move-result v1

    const-wide/16 v53, 0x0

    if-nez v1, :cond_1d

    cmpg-double v1, v51, v53

    if-ltz v1, :cond_1c

    cmpl-double v1, v51, v13

    if-lez v1, :cond_1b

    goto :goto_10

    :cond_1b
    move-wide/from16 v55, v4

    goto :goto_11

    .line 1067
    :cond_1c
    :goto_10
    aget-object v1, v0, v3

    move-wide/from16 v55, v4

    const/4 v4, 0x1

    .end local v4    # "offset":D
    .local v55, "offset":D
    iput-boolean v4, v1, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->hidden:Z

    goto :goto_11

    .line 1066
    .end local v55    # "offset":D
    .restart local v4    # "offset":D
    :cond_1d
    move-wide/from16 v55, v4

    .line 1074
    .end local v4    # "offset":D
    .restart local v55    # "offset":D
    :goto_11
    invoke-virtual {v8}, Landroid/graphics/PathMeasure;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1098
    sget-object v1, Lcom/horcrux/svg/TextProperties$TextAnchor;->start:Lcom/horcrux/svg/TextProperties$TextAnchor;

    .line 1099
    .local v1, "anchor":Lcom/horcrux/svg/TextProperties$TextAnchor;
    sget-object v4, Lcom/horcrux/svg/TextProperties$Direction;->ltr:Lcom/horcrux/svg/TextProperties$Direction;

    .line 1101
    .local v4, "direction":Lcom/horcrux/svg/TextProperties$Direction;
    aget-object v5, v0, v2

    move-wide/from16 v57, v6

    .end local v6    # "x":D
    .local v57, "x":D
    iget-wide v5, v5, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->x:D

    .line 1102
    .local v5, "anchorShift":D
    sget-object v7, Lcom/horcrux/svg/TextLayoutAlgorithm$1;->$SwitchMap$com$horcrux$svg$TextProperties$TextAnchor:[I

    invoke-virtual {v1}, Lcom/horcrux/svg/TextProperties$TextAnchor;->ordinal()I

    move-result v59

    aget v7, v7, v59

    packed-switch v7, :pswitch_data_1

    move-object v7, v1

    move/from16 v59, v2

    .end local v1    # "anchor":Lcom/horcrux/svg/TextProperties$TextAnchor;
    .end local v2    # "i":I
    .local v7, "anchor":Lcom/horcrux/svg/TextProperties$TextAnchor;
    .local v59, "i":I
    goto/16 :goto_12

    .line 1122
    .end local v7    # "anchor":Lcom/horcrux/svg/TextProperties$TextAnchor;
    .end local v59    # "i":I
    .restart local v1    # "anchor":Lcom/horcrux/svg/TextProperties$TextAnchor;
    .restart local v2    # "i":I
    :pswitch_3
    sget-object v7, Lcom/horcrux/svg/TextProperties$Direction;->ltr:Lcom/horcrux/svg/TextProperties$Direction;

    if-ne v4, v7, :cond_1f

    .line 1123
    move-object v7, v1

    move/from16 v59, v2

    .end local v1    # "anchor":Lcom/horcrux/svg/TextProperties$TextAnchor;
    .end local v2    # "i":I
    .restart local v7    # "anchor":Lcom/horcrux/svg/TextProperties$TextAnchor;
    .restart local v59    # "i":I
    neg-double v1, v13

    cmpg-double v1, v51, v1

    if-ltz v1, :cond_1e

    cmpl-double v1, v51, v53

    if-lez v1, :cond_26

    .line 1124
    :cond_1e
    aget-object v1, v0, v3

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->hidden:Z

    goto :goto_12

    .line 1127
    .end local v7    # "anchor":Lcom/horcrux/svg/TextProperties$TextAnchor;
    .end local v59    # "i":I
    .restart local v1    # "anchor":Lcom/horcrux/svg/TextProperties$TextAnchor;
    .restart local v2    # "i":I
    :cond_1f
    move-object v7, v1

    move/from16 v59, v2

    .end local v1    # "anchor":Lcom/horcrux/svg/TextProperties$TextAnchor;
    .end local v2    # "i":I
    .restart local v7    # "anchor":Lcom/horcrux/svg/TextProperties$TextAnchor;
    .restart local v59    # "i":I
    cmpg-double v1, v51, v53

    if-ltz v1, :cond_20

    cmpl-double v1, v51, v13

    if-lez v1, :cond_26

    .line 1128
    :cond_20
    aget-object v1, v0, v3

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->hidden:Z

    goto :goto_12

    .line 1116
    .end local v7    # "anchor":Lcom/horcrux/svg/TextProperties$TextAnchor;
    .end local v59    # "i":I
    .restart local v1    # "anchor":Lcom/horcrux/svg/TextProperties$TextAnchor;
    .restart local v2    # "i":I
    :pswitch_4
    move-object v7, v1

    move/from16 v59, v2

    .end local v1    # "anchor":Lcom/horcrux/svg/TextProperties$TextAnchor;
    .end local v2    # "i":I
    .restart local v7    # "anchor":Lcom/horcrux/svg/TextProperties$TextAnchor;
    .restart local v59    # "i":I
    neg-double v1, v13

    div-double v1, v1, v33

    cmpg-double v1, v51, v1

    if-ltz v1, :cond_21

    div-double v1, v13, v33

    cmpl-double v1, v51, v1

    if-lez v1, :cond_26

    .line 1117
    :cond_21
    aget-object v1, v0, v3

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->hidden:Z

    goto :goto_12

    .line 1104
    .end local v7    # "anchor":Lcom/horcrux/svg/TextProperties$TextAnchor;
    .end local v59    # "i":I
    .restart local v1    # "anchor":Lcom/horcrux/svg/TextProperties$TextAnchor;
    .restart local v2    # "i":I
    :pswitch_5
    move-object v7, v1

    move/from16 v59, v2

    .end local v1    # "anchor":Lcom/horcrux/svg/TextProperties$TextAnchor;
    .end local v2    # "i":I
    .restart local v7    # "anchor":Lcom/horcrux/svg/TextProperties$TextAnchor;
    .restart local v59    # "i":I
    sget-object v1, Lcom/horcrux/svg/TextProperties$Direction;->ltr:Lcom/horcrux/svg/TextProperties$Direction;

    if-ne v4, v1, :cond_23

    .line 1105
    cmpg-double v1, v51, v53

    if-ltz v1, :cond_22

    cmpl-double v1, v51, v13

    if-lez v1, :cond_26

    .line 1106
    :cond_22
    aget-object v1, v0, v3

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->hidden:Z

    goto :goto_12

    .line 1109
    :cond_23
    neg-double v1, v13

    cmpg-double v1, v51, v1

    if-ltz v1, :cond_24

    cmpl-double v1, v51, v53

    if-lez v1, :cond_26

    .line 1110
    :cond_24
    aget-object v1, v0, v3

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->hidden:Z

    goto :goto_12

    .line 1074
    .end local v4    # "direction":Lcom/horcrux/svg/TextProperties$Direction;
    .end local v5    # "anchorShift":D
    .end local v7    # "anchor":Lcom/horcrux/svg/TextProperties$TextAnchor;
    .end local v57    # "x":D
    .end local v59    # "i":I
    .restart local v2    # "i":I
    .restart local v6    # "x":D
    :cond_25
    move/from16 v59, v2

    move-wide/from16 v57, v6

    .line 1137
    .end local v2    # "i":I
    .end local v6    # "x":D
    .restart local v57    # "x":D
    .restart local v59    # "i":I
    :cond_26
    :goto_12
    rem-double v1, v51, v13

    .line 1141
    .end local v51    # "mid":D
    .local v1, "mid":D
    aget-object v4, v0, v3

    iget-boolean v4, v4, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->hidden:Z

    if-nez v4, :cond_27

    .line 1148
    const/4 v4, 0x2

    new-array v5, v4, [F

    .line 1149
    .local v5, "point":[F
    new-array v6, v4, [F

    .line 1150
    .local v6, "t":[F
    double-to-float v4, v1

    invoke-virtual {v8, v4, v5, v6}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 1151
    const-wide v51, 0x401921fb54442d18L    # 6.283185307179586

    .line 1152
    .local v51, "tau":D
    const-wide v53, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    .line 1153
    .local v53, "radToDeg":D
    const/4 v4, 0x1

    aget v7, v6, v4

    move-wide/from16 v60, v1

    .end local v1    # "mid":D
    .local v60, "mid":D
    float-to-double v1, v7

    const/4 v4, 0x0

    aget v7, v6, v4

    move-object/from16 v62, v5

    .end local v5    # "point":[F
    .local v62, "point":[F
    float-to-double v4, v7

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    const-wide v4, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr v1, v4

    .line 1164
    .local v1, "r":D
    const-wide v4, 0x4056800000000000L    # 90.0

    add-double/2addr v4, v1

    .line 1165
    .local v4, "normAngle":D
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v63

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v65

    move-wide/from16 v67, v4

    const/4 v7, 0x2

    .end local v4    # "normAngle":D
    .local v67, "normAngle":D
    new-array v4, v7, [D

    const/4 v5, 0x0

    aput-wide v63, v4, v5

    const/4 v5, 0x1

    aput-wide v65, v4, v5

    .line 1170
    .local v4, "n":[D
    const-wide/16 v63, 0x0

    .line 1185
    .local v63, "o":D
    aget-object v5, v0, v3

    move-object/from16 v65, v6

    .end local v6    # "t":[F
    .local v65, "t":[F
    iget-wide v6, v5, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->rotate:D

    add-double/2addr v6, v1

    iput-wide v6, v5, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->rotate:D

    goto :goto_13

    .line 1141
    .end local v4    # "n":[D
    .end local v51    # "tau":D
    .end local v53    # "radToDeg":D
    .end local v60    # "mid":D
    .end local v62    # "point":[F
    .end local v63    # "o":D
    .end local v65    # "t":[F
    .end local v67    # "normAngle":D
    .local v1, "mid":D
    :cond_27
    move-wide/from16 v60, v1

    .line 1227
    .end local v1    # "mid":D
    .end local v9    # "advance":D
    .end local v11    # "angle":D
    .end local v13    # "length":D
    .end local v39    # "path":Landroid/graphics/Path;
    .end local v49    # "y":D
    .end local v55    # "offset":D
    .end local v57    # "x":D
    :goto_13
    goto :goto_14

    .line 1228
    .end local v40    # "afterPath":Z
    .end local v42    # "inPath":Z
    .end local v43    # "a":D
    .end local v45    # "path_end":Landroid/graphics/PointF;
    .end local v46    # "textPath":Landroid/graphics/Path;
    .end local v47    # "textPathView":Lcom/horcrux/svg/TextPathView;
    .end local v48    # "count":I
    .end local v59    # "i":I
    .local v1, "count":I
    .restart local v2    # "i":I
    .local v4, "inPath":Z
    .local v5, "afterPath":Z
    .local v6, "path_end":Landroid/graphics/PointF;
    .local v7, "textPath":Landroid/graphics/Path;
    .local v9, "a":D
    .local v11, "textPathView":Lcom/horcrux/svg/TextPathView;
    :cond_28
    move/from16 v48, v1

    move/from16 v59, v2

    move/from16 v42, v4

    move/from16 v40, v5

    move-object/from16 v45, v6

    move-object/from16 v46, v7

    move-wide/from16 v43, v9

    move-object/from16 v47, v11

    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v4    # "inPath":Z
    .end local v5    # "afterPath":Z
    .end local v6    # "path_end":Landroid/graphics/PointF;
    .end local v7    # "textPath":Landroid/graphics/Path;
    .end local v9    # "a":D
    .end local v11    # "textPathView":Lcom/horcrux/svg/TextPathView;
    .restart local v40    # "afterPath":Z
    .restart local v42    # "inPath":Z
    .restart local v43    # "a":D
    .restart local v45    # "path_end":Landroid/graphics/PointF;
    .restart local v46    # "textPath":Landroid/graphics/Path;
    .restart local v47    # "textPathView":Lcom/horcrux/svg/TextPathView;
    .restart local v48    # "count":I
    .restart local v59    # "i":I
    aget-object v1, v0, v3

    add-int/lit8 v2, v3, -0x1

    aget-object v2, v0, v2

    iget-wide v4, v2, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->x:D

    iput-wide v4, v1, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->x:D

    .line 1229
    aget-object v1, v0, v3

    add-int/lit8 v2, v3, -0x1

    aget-object v2, v0, v2

    iget-wide v4, v2, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->y:D

    iput-wide v4, v1, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->y:D

    .line 1230
    aget-object v1, v0, v3

    add-int/lit8 v2, v3, -0x1

    aget-object v2, v0, v2

    iget-wide v4, v2, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->rotate:D

    iput-wide v4, v1, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->rotate:D

    .line 1240
    :goto_14
    move/from16 v4, v42

    move-object/from16 v7, v46

    goto :goto_15

    .line 985
    .end local v40    # "afterPath":Z
    .end local v42    # "inPath":Z
    .end local v43    # "a":D
    .end local v45    # "path_end":Landroid/graphics/PointF;
    .end local v46    # "textPath":Landroid/graphics/Path;
    .end local v47    # "textPathView":Lcom/horcrux/svg/TextPathView;
    .end local v48    # "count":I
    .end local v59    # "i":I
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v4    # "inPath":Z
    .restart local v5    # "afterPath":Z
    .restart local v6    # "path_end":Landroid/graphics/PointF;
    .restart local v7    # "textPath":Landroid/graphics/Path;
    .restart local v9    # "a":D
    .restart local v11    # "textPathView":Lcom/horcrux/svg/TextPathView;
    :cond_29
    move/from16 v48, v1

    move/from16 v59, v2

    move/from16 v40, v5

    move-object/from16 v45, v6

    move-wide/from16 v43, v9

    move-object/from16 v47, v11

    .line 1240
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v5    # "afterPath":Z
    .end local v6    # "path_end":Landroid/graphics/PointF;
    .end local v9    # "a":D
    .end local v11    # "textPathView":Lcom/horcrux/svg/TextPathView;
    .restart local v40    # "afterPath":Z
    .restart local v43    # "a":D
    .restart local v45    # "path_end":Landroid/graphics/PointF;
    .restart local v47    # "textPathView":Lcom/horcrux/svg/TextPathView;
    .restart local v48    # "count":I
    .restart local v59    # "i":I
    :goto_15
    if-nez v47, :cond_2c

    aget-object v1, v0, v3

    iget-boolean v1, v1, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->addressable:Z

    if-eqz v1, :cond_2c

    .line 1252
    if-eqz v4, :cond_2a

    .line 1253
    const/4 v4, 0x0

    .line 1254
    const/4 v5, 0x1

    .line 1255
    .end local v40    # "afterPath":Z
    .restart local v5    # "afterPath":Z
    const/4 v1, 0x0

    invoke-virtual {v8, v7, v1}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 1256
    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 1257
    .local v2, "pos":[F
    invoke-virtual {v8}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v6

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v2, v9}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 1258
    aget v6, v2, v1

    const/4 v9, 0x1

    aget v10, v2, v9

    move-object/from16 v11, v45

    .end local v45    # "path_end":Landroid/graphics/PointF;
    .local v11, "path_end":Landroid/graphics/PointF;
    invoke-virtual {v11, v6, v10}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_16

    .line 1252
    .end local v2    # "pos":[F
    .end local v5    # "afterPath":Z
    .end local v11    # "path_end":Landroid/graphics/PointF;
    .restart local v40    # "afterPath":Z
    .restart local v45    # "path_end":Landroid/graphics/PointF;
    :cond_2a
    move-object/from16 v11, v45

    const/4 v1, 0x0

    const/4 v9, 0x1

    .end local v45    # "path_end":Landroid/graphics/PointF;
    .restart local v11    # "path_end":Landroid/graphics/PointF;
    move/from16 v5, v40

    .line 1274
    .end local v40    # "afterPath":Z
    .restart local v5    # "afterPath":Z
    :goto_16
    if-eqz v5, :cond_2d

    .line 1275
    aget-object v2, v0, v3

    iget-boolean v2, v2, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->anchoredChunk:Z

    if-eqz v2, :cond_2b

    .line 1276
    const/4 v2, 0x0

    move v5, v2

    .end local v5    # "afterPath":Z
    .local v2, "afterPath":Z
    goto :goto_17

    .line 1278
    .end local v2    # "afterPath":Z
    .restart local v5    # "afterPath":Z
    :cond_2b
    aget-object v2, v0, v3

    iget-wide v12, v2, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->x:D

    iget v6, v11, Landroid/graphics/PointF;->x:F

    float-to-double v9, v6

    add-double/2addr v12, v9

    iput-wide v12, v2, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->x:D

    .line 1279
    aget-object v2, v0, v3

    iget-wide v9, v2, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->y:D

    iget v6, v11, Landroid/graphics/PointF;->y:F

    float-to-double v12, v6

    add-double/2addr v9, v12

    iput-wide v9, v2, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->y:D

    goto :goto_17

    .line 1240
    .end local v5    # "afterPath":Z
    .end local v11    # "path_end":Landroid/graphics/PointF;
    .restart local v40    # "afterPath":Z
    .restart local v45    # "path_end":Landroid/graphics/PointF;
    :cond_2c
    move-object/from16 v11, v45

    const/4 v1, 0x0

    .line 1287
    .end local v45    # "path_end":Landroid/graphics/PointF;
    .restart local v11    # "path_end":Landroid/graphics/PointF;
    move/from16 v5, v40

    .end local v40    # "afterPath":Z
    .restart local v5    # "afterPath":Z
    :cond_2d
    :goto_17
    nop

    .end local v47    # "textPathView":Lcom/horcrux/svg/TextPathView;
    add-int/lit8 v3, v3, 0x1

    .line 1288
    move-object v6, v11

    move-wide/from16 v9, v43

    move/from16 v1, v48

    move/from16 v2, v59

    goto/16 :goto_f

    .line 1292
    .end local v11    # "path_end":Landroid/graphics/PointF;
    .end local v43    # "a":D
    .end local v48    # "count":I
    .end local v59    # "i":I
    .restart local v1    # "count":I
    .local v2, "i":I
    .restart local v6    # "path_end":Landroid/graphics/PointF;
    .restart local v9    # "a":D
    :cond_2e
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
