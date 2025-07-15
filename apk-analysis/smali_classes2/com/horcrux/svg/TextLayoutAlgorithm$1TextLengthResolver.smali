.class Lcom/horcrux/svg/TextLayoutAlgorithm$1TextLengthResolver;
.super Ljava/lang/Object;
.source "TextLayoutAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/horcrux/svg/TextLayoutAlgorithm;->layoutText(Lcom/horcrux/svg/TextLayoutAlgorithm$LayoutInput;)[Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TextLengthResolver"
.end annotation


# instance fields
.field global:I

.field final synthetic this$0:Lcom/horcrux/svg/TextLayoutAlgorithm;

.field final synthetic val$result:[Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;


# direct methods
.method static bridge synthetic -$$Nest$mresolveTextLength(Lcom/horcrux/svg/TextLayoutAlgorithm$1TextLengthResolver;Lcom/horcrux/svg/TextView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/horcrux/svg/TextLayoutAlgorithm$1TextLengthResolver;->resolveTextLength(Lcom/horcrux/svg/TextView;)V

    return-void
.end method

.method constructor <init>(Lcom/horcrux/svg/TextLayoutAlgorithm;[Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/horcrux/svg/TextLayoutAlgorithm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 567
    iput-object p1, p0, Lcom/horcrux/svg/TextLayoutAlgorithm$1TextLengthResolver;->this$0:Lcom/horcrux/svg/TextLayoutAlgorithm;

    iput-object p2, p0, Lcom/horcrux/svg/TextLayoutAlgorithm$1TextLengthResolver;->val$result:[Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private resolveTextLength(Lcom/horcrux/svg/TextView;)V
    .locals 24
    .param p1, "node"    # Lcom/horcrux/svg/TextView;

    .line 576
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 577
    .local v2, "nodeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/horcrux/svg/TextView;>;"
    iget-object v3, v1, Lcom/horcrux/svg/TextView;->mTextLength:Lcom/horcrux/svg/SVGLength;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 578
    .local v3, "validTextLength":Z
    :goto_0
    const-class v6, Lcom/horcrux/svg/TSpanView;

    if-ne v2, v6, :cond_b

    if-eqz v3, :cond_b

    .line 582
    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 583
    .local v6, "a":D
    const-wide/high16 v8, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 591
    .local v8, "b":D
    move-object v10, v1

    check-cast v10, Lcom/horcrux/svg/TSpanView;

    iget-object v10, v10, Lcom/horcrux/svg/TSpanView;->mContent:Ljava/lang/String;

    .line 592
    .local v10, "content":Ljava/lang/String;
    iget v11, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1TextLengthResolver;->global:I

    .line 593
    .local v11, "i":I
    if-nez v10, :cond_1

    const/4 v12, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    :goto_1
    add-int/2addr v12, v11

    .line 603
    .local v12, "j":I
    move v13, v11

    .local v13, "k":I
    :goto_2
    if-gt v13, v12, :cond_3

    .line 604
    iget-object v14, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1TextLengthResolver;->val$result:[Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;

    aget-object v14, v14, v11

    iget-boolean v14, v14, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->addressable:Z

    if-nez v14, :cond_2

    .line 605
    move-object v4, v2

    move-object/from16 v20, v10

    move/from16 v21, v11

    move-wide/from16 v22, v6

    move v7, v3

    move-wide/from16 v2, v22

    goto :goto_3

    .line 613
    :cond_2
    iget-object v14, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1TextLengthResolver;->val$result:[Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;

    aget-object v14, v14, v11

    iget-char v14, v14, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->character:C

    sparse-switch v14, :sswitch_data_0

    .line 623
    iget-object v14, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1TextLengthResolver;->val$result:[Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;

    aget-object v14, v14, v13

    iget-wide v14, v14, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->x:D

    .line 630
    .local v14, "pos":D
    iget-object v4, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1TextLengthResolver;->val$result:[Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;

    aget-object v4, v4, v13

    move-wide/from16 v18, v6

    .end local v6    # "a":D
    .local v18, "a":D
    iget-wide v5, v4, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->advance:D

    .line 641
    .local v5, "advance":D
    move-object v4, v2

    move v7, v3

    .end local v2    # "nodeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/horcrux/svg/TextView;>;"
    .end local v3    # "validTextLength":Z
    .local v4, "nodeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/horcrux/svg/TextView;>;"
    .local v7, "validTextLength":Z
    add-double v2, v14, v5

    invoke-static {v14, v15, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    move-object/from16 v20, v10

    move/from16 v21, v11

    move-wide/from16 v10, v18

    .end local v11    # "i":I
    .end local v18    # "a":D
    .local v10, "a":D
    .local v20, "content":Ljava/lang/String;
    .local v21, "i":I
    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 642
    .end local v10    # "a":D
    .local v2, "a":D
    add-double v10, v14, v5

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    goto :goto_3

    .line 616
    .end local v4    # "nodeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/horcrux/svg/TextView;>;"
    .end local v5    # "advance":D
    .end local v7    # "validTextLength":Z
    .end local v14    # "pos":D
    .end local v20    # "content":Ljava/lang/String;
    .end local v21    # "i":I
    .local v2, "nodeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/horcrux/svg/TextView;>;"
    .restart local v3    # "validTextLength":Z
    .restart local v6    # "a":D
    .local v10, "content":Ljava/lang/String;
    .restart local v11    # "i":I
    :sswitch_0
    return-void

    .line 603
    .end local v3    # "validTextLength":Z
    .end local v6    # "a":D
    .end local v10    # "content":Ljava/lang/String;
    .end local v11    # "i":I
    .local v2, "a":D
    .restart local v4    # "nodeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/horcrux/svg/TextView;>;"
    .restart local v7    # "validTextLength":Z
    .restart local v20    # "content":Ljava/lang/String;
    .restart local v21    # "i":I
    :goto_3
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v10, v20

    move/from16 v11, v21

    move-wide/from16 v22, v2

    move-object v2, v4

    move v3, v7

    move-wide/from16 v6, v22

    goto :goto_2

    .end local v4    # "nodeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/horcrux/svg/TextView;>;"
    .end local v7    # "validTextLength":Z
    .end local v20    # "content":Ljava/lang/String;
    .end local v21    # "i":I
    .local v2, "nodeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/horcrux/svg/TextView;>;"
    .restart local v3    # "validTextLength":Z
    .restart local v6    # "a":D
    .restart local v10    # "content":Ljava/lang/String;
    .restart local v11    # "i":I
    :cond_3
    move-object v4, v2

    move-object/from16 v20, v10

    move/from16 v21, v11

    move-wide v10, v6

    move v7, v3

    .line 649
    .end local v2    # "nodeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/horcrux/svg/TextView;>;"
    .end local v3    # "validTextLength":Z
    .end local v6    # "a":D
    .end local v11    # "i":I
    .end local v13    # "k":I
    .restart local v4    # "nodeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/horcrux/svg/TextView;>;"
    .restart local v7    # "validTextLength":Z
    .local v10, "a":D
    .restart local v20    # "content":Ljava/lang/String;
    .restart local v21    # "i":I
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v2, v10, v2

    if-eqz v2, :cond_a

    .line 655
    iget-object v2, v1, Lcom/horcrux/svg/TextView;->mTextLength:Lcom/horcrux/svg/SVGLength;

    iget-wide v2, v2, Lcom/horcrux/svg/SVGLength;->value:D

    sub-double v5, v8, v10

    sub-double/2addr v2, v5

    .line 681
    .local v2, "delta":D
    const/4 v5, 0x0

    .line 682
    .local v5, "n":I
    const/4 v6, 0x0

    .line 683
    .local v6, "resolvedDescendantNodes":I
    const/4 v13, 0x0

    .local v13, "c":I
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/horcrux/svg/TextView;->getChildCount()I

    move-result v14

    if-ge v13, v14, :cond_6

    .line 684
    invoke-virtual {v1, v13}, Lcom/horcrux/svg/TextView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/horcrux/svg/TextPathView;

    iget-object v14, v14, Lcom/horcrux/svg/TextPathView;->mTextLength:Lcom/horcrux/svg/SVGLength;

    if-nez v14, :cond_5

    .line 685
    move-object v14, v1

    check-cast v14, Lcom/horcrux/svg/TSpanView;

    iget-object v14, v14, Lcom/horcrux/svg/TSpanView;->mContent:Ljava/lang/String;

    .line 686
    .local v14, "ccontent":Ljava/lang/String;
    if-nez v14, :cond_4

    const/4 v15, 0x0

    goto :goto_5

    :cond_4
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    :goto_5
    add-int/2addr v5, v15

    .line 687
    .end local v14    # "ccontent":Ljava/lang/String;
    const/4 v15, 0x1

    goto :goto_6

    .line 688
    :cond_5
    iget-object v14, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1TextLengthResolver;->val$result:[Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;

    aget-object v14, v14, v5

    const/4 v15, 0x1

    iput-boolean v15, v14, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->firstCharacterInResolvedDescendant:Z

    .line 689
    add-int/lit8 v6, v6, 0x1

    .line 683
    :goto_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 696
    .end local v13    # "c":I
    :cond_6
    add-int/lit8 v13, v6, -0x1

    add-int/2addr v5, v13

    .line 708
    int-to-double v13, v5

    div-double v13, v2, v13

    .line 709
    .local v13, "perCharacterAdjustment":D
    const-wide/16 v15, 0x0

    .line 713
    .local v15, "shift":D
    move/from16 v17, v21

    move/from16 v1, v17

    .local v1, "k":I
    :goto_7
    if-gt v1, v12, :cond_9

    .line 721
    move-wide/from16 v17, v2

    .end local v2    # "delta":D
    .local v17, "delta":D
    iget-object v2, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1TextLengthResolver;->val$result:[Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;

    aget-object v2, v2, v1

    move-object/from16 v19, v4

    .end local v4    # "nodeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/horcrux/svg/TextView;>;"
    .local v19, "nodeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/horcrux/svg/TextView;>;"
    iget-wide v3, v2, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->x:D

    add-double/2addr v3, v15

    iput-wide v3, v2, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->x:D

    .line 732
    iget-object v2, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1TextLengthResolver;->val$result:[Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->middle:Z

    if-nez v2, :cond_8

    iget-object v2, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1TextLengthResolver;->val$result:[Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->resolved:Z

    if-eqz v2, :cond_7

    iget-object v2, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1TextLengthResolver;->val$result:[Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->firstCharacterInResolvedDescendant:Z

    if-eqz v2, :cond_8

    .line 734
    :cond_7
    add-double/2addr v15, v13

    .line 713
    :cond_8
    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v2, v17

    move-object/from16 v4, v19

    goto :goto_7

    .end local v17    # "delta":D
    .end local v19    # "nodeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/horcrux/svg/TextView;>;"
    .restart local v2    # "delta":D
    .restart local v4    # "nodeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/horcrux/svg/TextView;>;"
    :cond_9
    move-wide/from16 v17, v2

    move-object/from16 v19, v4

    .end local v2    # "delta":D
    .end local v4    # "nodeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/horcrux/svg/TextView;>;"
    .restart local v17    # "delta":D
    .restart local v19    # "nodeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/horcrux/svg/TextView;>;"
    goto :goto_8

    .line 649
    .end local v1    # "k":I
    .end local v5    # "n":I
    .end local v6    # "resolvedDescendantNodes":I
    .end local v13    # "perCharacterAdjustment":D
    .end local v15    # "shift":D
    .end local v17    # "delta":D
    .end local v19    # "nodeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/horcrux/svg/TextView;>;"
    .restart local v4    # "nodeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/horcrux/svg/TextView;>;"
    :cond_a
    move-object/from16 v19, v4

    .end local v4    # "nodeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/horcrux/svg/TextView;>;"
    .restart local v19    # "nodeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/horcrux/svg/TextView;>;"
    goto :goto_8

    .line 578
    .end local v7    # "validTextLength":Z
    .end local v8    # "b":D
    .end local v10    # "a":D
    .end local v12    # "j":I
    .end local v19    # "nodeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/horcrux/svg/TextView;>;"
    .end local v20    # "content":Ljava/lang/String;
    .end local v21    # "i":I
    .local v2, "nodeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/horcrux/svg/TextView;>;"
    .restart local v3    # "validTextLength":Z
    :cond_b
    move-object/from16 v19, v2

    move v7, v3

    .line 739
    .end local v2    # "nodeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/horcrux/svg/TextView;>;"
    .end local v3    # "validTextLength":Z
    .restart local v7    # "validTextLength":Z
    .restart local v19    # "nodeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/horcrux/svg/TextView;>;"
    :goto_8
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xd -> :sswitch_0
    .end sparse-switch
.end method
