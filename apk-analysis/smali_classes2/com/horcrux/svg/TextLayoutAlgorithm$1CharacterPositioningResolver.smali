.class Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;
.super Ljava/lang/Object;
.source "TextLayoutAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/horcrux/svg/TextLayoutAlgorithm;->layoutText(Lcom/horcrux/svg/TextLayoutAlgorithm$LayoutInput;)[Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CharacterPositioningResolver"
.end annotation


# instance fields
.field private global:I

.field private horizontal:Z

.field private in_text_path:Z

.field private resolve_dx:[Ljava/lang/String;

.field private resolve_dy:[Ljava/lang/String;

.field private resolve_x:[Ljava/lang/String;

.field private resolve_y:[Ljava/lang/String;

.field private result:[Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;

.field final synthetic this$0:Lcom/horcrux/svg/TextLayoutAlgorithm;


# direct methods
.method private constructor <init>(Lcom/horcrux/svg/TextLayoutAlgorithm;[Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "this$0"    # Lcom/horcrux/svg/TextLayoutAlgorithm;
    .param p2, "result"    # [Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;
    .param p3, "resolve_x"    # [Ljava/lang/String;
    .param p4, "resolve_y"    # [Ljava/lang/String;
    .param p5, "resolve_dx"    # [Ljava/lang/String;
    .param p6, "resolve_dy"    # [Ljava/lang/String;

    .line 268
    iput-object p1, p0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->this$0:Lcom/horcrux/svg/TextLayoutAlgorithm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    const/4 v0, 0x0

    iput v0, p0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->global:I

    .line 255
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->horizontal:Z

    .line 256
    iput-boolean v0, p0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->in_text_path:Z

    .line 269
    iput-object p2, p0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->result:[Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;

    .line 270
    iput-object p3, p0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->resolve_x:[Ljava/lang/String;

    .line 271
    iput-object p4, p0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->resolve_y:[Ljava/lang/String;

    .line 272
    iput-object p5, p0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->resolve_dx:[Ljava/lang/String;

    .line 273
    iput-object p6, p0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->resolve_dy:[Ljava/lang/String;

    .line 274
    return-void
.end method

.method synthetic constructor <init>(Lcom/horcrux/svg/TextLayoutAlgorithm;[Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;-><init>(Lcom/horcrux/svg/TextLayoutAlgorithm;[Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private resolveCharacterPositioning(Lcom/horcrux/svg/TextView;)V
    .locals 19
    .param p1, "node"    # Lcom/horcrux/svg/TextView;

    .line 280
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/horcrux/svg/TextView;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/horcrux/svg/TSpanView;

    if-ne v2, v3, :cond_0

    goto :goto_2

    .line 467
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/horcrux/svg/TextPathView;

    if-ne v2, v3, :cond_2

    .line 468
    iget v2, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->global:I

    .line 475
    .local v2, "index":I
    iget-object v3, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->result:[Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;

    aget-object v3, v3, v2

    iput-boolean v4, v3, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->anchoredChunk:Z

    .line 479
    iput-boolean v4, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->in_text_path:Z

    .line 485
    const/4 v3, 0x0

    .local v3, "child":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/horcrux/svg/TextView;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 486
    invoke-virtual {v1, v3}, Lcom/horcrux/svg/TextView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/horcrux/svg/TextView;

    invoke-direct {v0, v4}, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->resolveCharacterPositioning(Lcom/horcrux/svg/TextView;)V

    .line 485
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 494
    .end local v3    # "child":I
    :cond_1
    instance-of v3, v1, Lcom/horcrux/svg/TextPathView;

    if-eqz v3, :cond_12

    .line 495
    iput-boolean v5, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->in_text_path:Z

    goto/16 :goto_7

    .line 467
    .end local v2    # "index":I
    :cond_2
    :goto_1
    goto/16 :goto_7

    .line 285
    :cond_3
    :goto_2
    iget v2, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->global:I

    .line 294
    .restart local v2    # "index":I
    new-array v3, v5, [Ljava/lang/String;

    .line 297
    .local v3, "x":[Ljava/lang/String;
    new-array v6, v5, [Ljava/lang/String;

    .line 303
    .local v6, "y":[Ljava/lang/String;
    new-array v7, v5, [Ljava/lang/String;

    .line 306
    .local v7, "dx":[Ljava/lang/String;
    new-array v8, v5, [Ljava/lang/String;

    .line 312
    .local v8, "dy":[Ljava/lang/String;
    new-array v9, v5, [D

    .line 320
    .local v9, "rotate":[D
    iget-boolean v10, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->in_text_path:Z

    if-nez v10, :cond_4

    .line 321
    array-length v10, v3

    array-length v11, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    .local v10, "new_chunk_count":I
    goto :goto_3

    .line 332
    .end local v10    # "new_chunk_count":I
    :cond_4
    iget-boolean v10, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->horizontal:Z

    if-eqz v10, :cond_5

    .line 333
    array-length v10, v3

    .restart local v10    # "new_chunk_count":I
    goto :goto_3

    .line 341
    .end local v10    # "new_chunk_count":I
    :cond_5
    array-length v10, v6

    .line 349
    .restart local v10    # "new_chunk_count":I
    :goto_3
    move-object v11, v1

    check-cast v11, Lcom/horcrux/svg/TSpanView;

    iget-object v11, v11, Lcom/horcrux/svg/TSpanView;->mContent:Ljava/lang/String;

    .line 350
    .local v11, "content":Ljava/lang/String;
    if-nez v11, :cond_6

    move v12, v5

    goto :goto_4

    :cond_6
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    .line 357
    .local v12, "length":I
    :goto_4
    const/4 v13, 0x0

    .line 358
    .local v13, "i":I
    const/4 v14, 0x0

    .line 362
    .local v14, "j":I
    :goto_5
    if-ge v14, v12, :cond_11

    .line 370
    iget-object v15, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->result:[Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;

    add-int v16, v2, v14

    aget-object v15, v15, v16

    iget-boolean v15, v15, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->addressable:Z

    if-eqz v15, :cond_f

    .line 382
    iget-object v15, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->result:[Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;

    add-int v16, v2, v14

    aget-object v15, v15, v16

    if-ge v13, v10, :cond_7

    move v5, v4

    :cond_7
    iput-boolean v5, v15, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->anchoredChunk:Z

    .line 389
    array-length v5, v3

    if-ge v13, v5, :cond_8

    .line 390
    iget-object v5, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->resolve_x:[Ljava/lang/String;

    add-int v15, v2, v14

    aget-object v17, v3, v13

    aput-object v17, v5, v15

    .line 401
    :cond_8
    iget-boolean v5, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->in_text_path:Z

    const-string v15, ""

    if-eqz v5, :cond_9

    iget-boolean v5, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->horizontal:Z

    if-nez v5, :cond_9

    .line 402
    iget-object v5, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->resolve_x:[Ljava/lang/String;

    aput-object v15, v5, v2

    .line 410
    :cond_9
    array-length v5, v6

    if-ge v13, v5, :cond_a

    .line 411
    iget-object v5, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->resolve_y:[Ljava/lang/String;

    add-int v17, v2, v14

    aget-object v18, v6, v13

    aput-object v18, v5, v17

    .line 421
    :cond_a
    iget-boolean v5, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->in_text_path:Z

    if-eqz v5, :cond_b

    iget-boolean v5, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->horizontal:Z

    if-eqz v5, :cond_b

    .line 422
    iget-object v5, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->resolve_y:[Ljava/lang/String;

    aput-object v15, v5, v2

    .line 429
    :cond_b
    array-length v5, v7

    if-ge v13, v5, :cond_c

    .line 430
    iget-object v5, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->resolve_dx:[Ljava/lang/String;

    add-int v15, v2, v14

    aget-object v17, v7, v13

    aput-object v17, v5, v15

    .line 437
    :cond_c
    array-length v5, v8

    if-ge v13, v5, :cond_d

    .line 438
    iget-object v5, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->resolve_dy:[Ljava/lang/String;

    add-int v15, v2, v14

    aget-object v17, v8, v13

    aput-object v17, v5, v15

    .line 448
    :cond_d
    array-length v5, v9

    if-ge v13, v5, :cond_e

    .line 449
    iget-object v5, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->result:[Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;

    add-int v15, v2, v14

    aget-object v5, v5, v15

    move-object v15, v6

    move-object/from16 v17, v7

    .end local v6    # "y":[Ljava/lang/String;
    .end local v7    # "dx":[Ljava/lang/String;
    .local v15, "y":[Ljava/lang/String;
    .local v17, "dx":[Ljava/lang/String;
    aget-wide v6, v9, v13

    iput-wide v6, v5, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->rotate:D

    goto :goto_6

    .line 450
    .end local v15    # "y":[Ljava/lang/String;
    .end local v17    # "dx":[Ljava/lang/String;
    .restart local v6    # "y":[Ljava/lang/String;
    .restart local v7    # "dx":[Ljava/lang/String;
    :cond_e
    move-object v15, v6

    move-object/from16 v17, v7

    .end local v6    # "y":[Ljava/lang/String;
    .end local v7    # "dx":[Ljava/lang/String;
    .restart local v15    # "y":[Ljava/lang/String;
    .restart local v17    # "dx":[Ljava/lang/String;
    array-length v5, v9

    if-eqz v5, :cond_10

    .line 451
    iget-object v5, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->result:[Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;

    add-int v6, v2, v14

    aget-object v5, v5, v6

    iget-object v6, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->result:[Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;

    add-int v7, v2, v14

    sub-int/2addr v7, v4

    aget-object v6, v6, v7

    iget-wide v6, v6, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->rotate:D

    iput-wide v6, v5, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->rotate:D

    goto :goto_6

    .line 370
    .end local v15    # "y":[Ljava/lang/String;
    .end local v17    # "dx":[Ljava/lang/String;
    .restart local v6    # "y":[Ljava/lang/String;
    .restart local v7    # "dx":[Ljava/lang/String;
    :cond_f
    move-object v15, v6

    move-object/from16 v17, v7

    .line 458
    .end local v6    # "y":[Ljava/lang/String;
    .end local v7    # "dx":[Ljava/lang/String;
    .restart local v15    # "y":[Ljava/lang/String;
    .restart local v17    # "dx":[Ljava/lang/String;
    :cond_10
    :goto_6
    add-int/lit8 v13, v13, 0x1

    .line 459
    add-int/lit8 v14, v14, 0x1

    move-object v6, v15

    move-object/from16 v7, v17

    const/4 v5, 0x0

    goto/16 :goto_5

    .line 362
    .end local v15    # "y":[Ljava/lang/String;
    .end local v17    # "dx":[Ljava/lang/String;
    .restart local v6    # "y":[Ljava/lang/String;
    .restart local v7    # "dx":[Ljava/lang/String;
    :cond_11
    move-object v15, v6

    move-object/from16 v17, v7

    .end local v2    # "index":I
    .end local v3    # "x":[Ljava/lang/String;
    .end local v6    # "y":[Ljava/lang/String;
    .end local v7    # "dx":[Ljava/lang/String;
    .end local v8    # "dy":[Ljava/lang/String;
    .end local v9    # "rotate":[D
    .end local v10    # "new_chunk_count":I
    .end local v11    # "content":Ljava/lang/String;
    .end local v12    # "length":I
    .end local v13    # "i":I
    .end local v14    # "j":I
    goto/16 :goto_1

    .line 498
    :cond_12
    :goto_7
    return-void
.end method
