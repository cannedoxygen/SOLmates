.class Lcom/horcrux/svg/PropHelper;
.super Ljava/lang/Object;
.source "PropHelper.java"


# static fields
.field private static final inputMatrixDataSize:I = 0x6


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromRelative(Lcom/horcrux/svg/SVGLength;DDDD)D
    .locals 7
    .param p0, "length"    # Lcom/horcrux/svg/SVGLength;
    .param p1, "relative"    # D
    .param p3, "offset"    # D
    .param p5, "scale"    # D
    .param p7, "fontSize"    # D

    .line 173
    if-nez p0, :cond_0

    .line 174
    return-wide p3

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/horcrux/svg/SVGLength;->unit:Lcom/horcrux/svg/SVGLength$UnitType;

    .line 177
    .local v0, "unitType":Lcom/horcrux/svg/SVGLength$UnitType;
    iget-wide v1, p0, Lcom/horcrux/svg/SVGLength;->value:D

    .line 178
    .local v1, "value":D
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 179
    .local v3, "unit":D
    sget-object v5, Lcom/horcrux/svg/PropHelper$1;->$SwitchMap$com$horcrux$svg$SVGLength$UnitType:[I

    invoke-virtual {v0}, Lcom/horcrux/svg/SVGLength$UnitType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 212
    mul-double v5, v1, p5

    add-double/2addr v5, p3

    return-wide v5

    .line 207
    :pswitch_0
    const-wide/high16 v3, 0x402e000000000000L    # 15.0

    .line 208
    goto :goto_0

    .line 204
    :pswitch_1
    const-wide/high16 v3, 0x3ff4000000000000L    # 1.25

    .line 205
    goto :goto_0

    .line 201
    :pswitch_2
    const-wide v3, 0x4056800000000000L    # 90.0

    .line 202
    goto :goto_0

    .line 198
    :pswitch_3
    const-wide v3, 0x400c58b1572580c3L    # 3.543307

    .line 199
    goto :goto_0

    .line 195
    :pswitch_4
    const-wide v3, 0x4041b76ed677707aL    # 35.43307

    .line 196
    goto :goto_0

    .line 191
    :pswitch_5
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double v3, p7, v5

    .line 192
    goto :goto_0

    .line 188
    :pswitch_6
    move-wide v3, p7

    .line 189
    goto :goto_0

    .line 185
    :pswitch_7
    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    div-double v5, v1, v5

    mul-double/2addr v5, p1

    add-double/2addr v5, p3

    return-wide v5

    .line 182
    :pswitch_8
    nop

    .line 214
    :goto_0
    mul-double v5, v1, v3

    mul-double/2addr v5, p5

    add-double/2addr v5, p3

    return-wide v5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static fromRelative(Ljava/lang/String;DDD)D
    .locals 11
    .param p0, "length"    # Ljava/lang/String;
    .param p1, "relative"    # D
    .param p3, "scale"    # D
    .param p5, "fontSize"    # D

    .line 79
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 80
    .end local p0    # "length":Ljava/lang/String;
    .local v0, "length":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 81
    .local v1, "stringLength":I
    add-int/lit8 v2, v1, -0x1

    .line 82
    .local v2, "percentIndex":I
    if-eqz v1, :cond_4

    const-string v3, "normal"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 84
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    const/16 v4, 0x25

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    .line 85
    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    div-double/2addr v3, v5

    mul-double/2addr v3, p1

    return-wide v3

    .line 87
    :cond_1
    add-int/lit8 v3, v1, -0x2

    .line 88
    .local v3, "twoLetterUnitIndex":I
    if-lez v3, :cond_3

    .line 89
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, "lastTwo":Ljava/lang/String;
    move v6, v3

    .line 91
    .local v6, "end":I
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 93
    .local v7, "unit":D
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_2
    goto :goto_0

    :sswitch_0
    const-string v9, "px"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move v9, v5

    goto :goto_1

    :sswitch_1
    const-string v9, "pt"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x2

    goto :goto_1

    :sswitch_2
    const-string v9, "pc"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x3

    goto :goto_1

    :sswitch_3
    const-string v9, "mm"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x4

    goto :goto_1

    :sswitch_4
    const-string v9, "in"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x6

    goto :goto_1

    :sswitch_5
    const-string v9, "em"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    goto :goto_1

    :sswitch_6
    const-string v9, "cm"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x5

    goto :goto_1

    :goto_0
    const/4 v9, -0x1

    :goto_1
    packed-switch v9, :pswitch_data_0

    .line 130
    move v6, v1

    goto :goto_2

    .line 126
    :pswitch_0
    const-wide v7, 0x4056800000000000L    # 90.0

    .line 127
    goto :goto_2

    .line 122
    :pswitch_1
    const-wide v7, 0x4041b76ed677707aL    # 35.43307

    .line 123
    goto :goto_2

    .line 118
    :pswitch_2
    const-wide v7, 0x400c58b1572580c3L    # 3.543307

    .line 119
    goto :goto_2

    .line 114
    :pswitch_3
    const-wide/high16 v7, 0x402e000000000000L    # 15.0

    .line 115
    goto :goto_2

    .line 110
    :pswitch_4
    const-wide/high16 v7, 0x3ff4000000000000L    # 1.25

    .line 111
    goto :goto_2

    .line 98
    :pswitch_5
    move-wide/from16 v7, p5

    .line 99
    goto :goto_2

    .line 95
    :pswitch_6
    nop

    .line 133
    :goto_2
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    mul-double/2addr v9, v7

    mul-double/2addr v9, p3

    return-wide v9

    .line 135
    .end local v4    # "lastTwo":Ljava/lang/String;
    .end local v6    # "end":I
    .end local v7    # "unit":D
    :cond_3
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double/2addr v4, p3

    return-wide v4

    .line 83
    .end local v3    # "twoLetterUnitIndex":I
    :cond_4
    :goto_3
    const-wide/16 v3, 0x0

    return-wide v3

    nop

    :sswitch_data_0
    .sparse-switch
        0xc6a -> :sswitch_6
        0xca8 -> :sswitch_5
        0xd25 -> :sswitch_4
        0xda0 -> :sswitch_3
        0xdf3 -> :sswitch_2
        0xe04 -> :sswitch_1
        0xe08 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static toMatrixData(Lcom/facebook/react/bridge/ReadableArray;[FF)I
    .locals 7
    .param p0, "value"    # Lcom/facebook/react/bridge/ReadableArray;
    .param p1, "sRawMatrix"    # [F
    .param p2, "mScale"    # F

    .line 32
    invoke-interface {p0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    .line 33
    .local v0, "fromSize":I
    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 34
    return v0

    .line 37
    :cond_0
    const/4 v2, 0x0

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, p1, v2

    .line 38
    const/4 v2, 0x2

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v3

    double-to-float v3, v3

    const/4 v4, 0x1

    aput v3, p1, v4

    .line 39
    const/4 v3, 0x4

    invoke-interface {p0, v3}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float/2addr v5, p2

    aput v5, p1, v2

    .line 40
    invoke-interface {p0, v4}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v4

    double-to-float v2, v4

    const/4 v4, 0x3

    aput v2, p1, v4

    .line 41
    invoke-interface {p0, v4}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v4

    double-to-float v2, v4

    aput v2, p1, v3

    .line 42
    const/4 v2, 0x5

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, p2

    aput v3, p1, v2

    .line 44
    return v1
.end method
