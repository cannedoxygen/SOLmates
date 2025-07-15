.class public Lcom/facebook/react/uimanager/TransformHelper;
.super Ljava/lang/Object;
.source "TransformHelper.java"


# static fields
.field private static sHelperMatrix:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[D>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/facebook/react/uimanager/TransformHelper$1;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/TransformHelper$1;-><init>()V

    sput-object v0, Lcom/facebook/react/uimanager/TransformHelper;->sHelperMatrix:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertToRadians(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)D
    .locals 5
    .param p0, "transformMap"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p1, "key"    # Ljava/lang/String;

    .line 32
    const/4 v0, 0x1

    .line 33
    .local v0, "inRadians":Z
    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v1

    sget-object v2, Lcom/facebook/react/bridge/ReadableType;->String:Lcom/facebook/react/bridge/ReadableType;

    if-ne v1, v2, :cond_2

    .line 34
    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, "stringValue":Ljava/lang/String;
    const-string/jumbo v2, "rad"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 36
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 37
    :cond_0
    const-string v2, "deg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 41
    :cond_1
    :goto_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    float-to-double v1, v2

    .line 42
    .local v1, "value":D
    goto :goto_1

    .line 43
    .end local v1    # "value":D
    :cond_2
    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 45
    .restart local v1    # "value":D
    :goto_1
    if-eqz v0, :cond_3

    move-wide v3, v1

    goto :goto_2

    :cond_3
    invoke-static {v1, v2}, Lcom/facebook/react/uimanager/MatrixMathHelper;->degreesToRadians(D)D

    move-result-wide v3

    :goto_2
    return-wide v3
.end method

.method private static getTranslateForTransformOrigin(FFLcom/facebook/react/bridge/ReadableArray;Z)[F
    .locals 12
    .param p0, "viewWidth"    # F
    .param p1, "viewHeight"    # F
    .param p2, "transformOrigin"    # Lcom/facebook/react/bridge/ReadableArray;
    .param p3, "allowPercentageResolution"    # Z

    .line 198
    if-eqz p2, :cond_4

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    cmpl-float v1, p0, v0

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 201
    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, p0, v1

    .line 202
    .local v2, "viewCenterX":F
    div-float v1, p1, v1

    .line 204
    .local v1, "viewCenterY":F
    const/4 v3, 0x3

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput v2, v4, v5

    const/4 v6, 0x1

    aput v1, v4, v6

    const/4 v7, 0x2

    aput v0, v4, v7

    move-object v0, v4

    .line 206
    .local v0, "origin":[F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v8

    if-ge v4, v8, :cond_3

    if-ge v4, v3, :cond_3

    .line 207
    sget-object v8, Lcom/facebook/react/uimanager/TransformHelper$2;->$SwitchMap$com$facebook$react$bridge$ReadableType:[I

    invoke-interface {p2, v4}, Lcom/facebook/react/bridge/ReadableArray;->getType(I)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/facebook/react/bridge/ReadableType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    goto :goto_2

    .line 213
    :pswitch_0
    if-eqz p3, :cond_2

    .line 214
    invoke-interface {p2, v4}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 215
    .local v8, "part":Ljava/lang/String;
    const-string v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 216
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v6

    invoke-virtual {v8, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    .line 217
    .local v9, "val":F
    if-nez v4, :cond_1

    move v10, p0

    goto :goto_1

    :cond_1
    move v10, p1

    :goto_1
    mul-float/2addr v10, v9

    const/high16 v11, 0x42c80000    # 100.0f

    div-float/2addr v10, v11

    aput v10, v0, v4

    goto :goto_2

    .line 209
    .end local v8    # "part":Ljava/lang/String;
    .end local v9    # "val":F
    :pswitch_1
    invoke-interface {p2, v4}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v8

    double-to-float v8, v8

    aput v8, v0, v4

    .line 210
    nop

    .line 206
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 225
    .end local v4    # "i":I
    :cond_3
    neg-float v4, v2

    aget v8, v0, v5

    add-float/2addr v4, v8

    .line 226
    .local v4, "newTranslateX":F
    neg-float v8, v1

    aget v9, v0, v6

    add-float/2addr v8, v9

    .line 227
    .local v8, "newTranslateY":F
    aget v9, v0, v7

    .line 229
    .local v9, "newTranslateZ":F
    new-array v3, v3, [F

    aput v4, v3, v5

    aput v8, v3, v6

    aput v9, v3, v7

    return-object v3

    .line 199
    .end local v0    # "origin":[F
    .end local v1    # "viewCenterY":F
    .end local v2    # "viewCenterX":F
    .end local v4    # "newTranslateX":F
    .end local v8    # "newTranslateY":F
    .end local v9    # "newTranslateZ":F
    :cond_4
    :goto_3
    const/4 v0, 0x0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseTranslateValue(Ljava/lang/String;D)D
    .locals 6
    .param p0, "stringValue"    # Ljava/lang/String;
    .param p1, "dimension"    # D

    .line 181
    :try_start_0
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 183
    .local v0, "percentage":D
    mul-double v2, v0, p1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    return-wide v2

    .line 185
    .end local v0    # "percentage":D
    :cond_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid translate value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReactNative"

    invoke-static {v2, v1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static processTransform(Lcom/facebook/react/bridge/ReadableArray;[D)V
    .locals 6
    .param p0, "transforms"    # Lcom/facebook/react/bridge/ReadableArray;
    .param p1, "result"    # [D
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "0.75"
    .end annotation

    .line 54
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/facebook/react/uimanager/TransformHelper;->processTransform(Lcom/facebook/react/bridge/ReadableArray;[DFFLcom/facebook/react/bridge/ReadableArray;Z)V

    .line 55
    return-void
.end method

.method public static processTransform(Lcom/facebook/react/bridge/ReadableArray;[DFFLcom/facebook/react/bridge/ReadableArray;)V
    .locals 6
    .param p0, "transforms"    # Lcom/facebook/react/bridge/ReadableArray;
    .param p1, "result"    # [D
    .param p2, "viewWidth"    # F
    .param p3, "viewHeight"    # F
    .param p4, "transformOrigin"    # Lcom/facebook/react/bridge/ReadableArray;
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "0.75"
    .end annotation

    .line 68
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/facebook/react/uimanager/TransformHelper;->processTransform(Lcom/facebook/react/bridge/ReadableArray;[DFFLcom/facebook/react/bridge/ReadableArray;Z)V

    .line 69
    return-void
.end method

.method public static processTransform(Lcom/facebook/react/bridge/ReadableArray;[DFFLcom/facebook/react/bridge/ReadableArray;Z)V
    .locals 23
    .param p0, "transforms"    # Lcom/facebook/react/bridge/ReadableArray;
    .param p1, "result"    # [D
    .param p2, "viewWidth"    # F
    .param p3, "viewHeight"    # F
    .param p4, "transformOrigin"    # Lcom/facebook/react/bridge/ReadableArray;
    .param p5, "allowPercentageResolution"    # Z

    .line 78
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    sget-object v4, Lcom/facebook/react/uimanager/TransformHelper;->sHelperMatrix:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    .line 79
    .local v4, "helperMatrix":[D
    invoke-static/range {p1 .. p1}, Lcom/facebook/react/uimanager/MatrixMathHelper;->resetIdentityMatrix([D)V

    .line 80
    nop

    .line 81
    invoke-static/range {p2 .. p5}, Lcom/facebook/react/uimanager/TransformHelper;->getTranslateForTransformOrigin(FFLcom/facebook/react/bridge/ReadableArray;Z)[F

    move-result-object v12

    .line 84
    .local v12, "offsets":[F
    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v12, :cond_0

    .line 85
    invoke-static {v4}, Lcom/facebook/react/uimanager/MatrixMathHelper;->resetIdentityMatrix([D)V

    .line 86
    aget v5, v12, v14

    float-to-double v6, v5

    aget v5, v12, v15

    float-to-double v8, v5

    aget v5, v12, v13

    float-to-double v10, v5

    move-object v5, v4

    invoke-static/range {v5 .. v11}, Lcom/facebook/react/uimanager/MatrixMathHelper;->applyTranslate3D([DDDD)V

    .line 87
    invoke-static {v1, v1, v4}, Lcom/facebook/react/uimanager/MatrixMathHelper;->multiplyInto([D[D[D)V

    .line 93
    :cond_0
    invoke-interface/range {p0 .. p0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v5

    const/16 v8, 0x10

    if-ne v5, v8, :cond_2

    invoke-interface {v0, v14}, Lcom/facebook/react/bridge/ReadableArray;->getType(I)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v5

    sget-object v6, Lcom/facebook/react/bridge/ReadableType;->Number:Lcom/facebook/react/bridge/ReadableType;

    if-ne v5, v6, :cond_2

    .line 94
    invoke-static {v4}, Lcom/facebook/react/uimanager/MatrixMathHelper;->resetIdentityMatrix([D)V

    .line 95
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface/range {p0 .. p0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 96
    invoke-interface {v0, v5}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 95
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 98
    .end local v5    # "i":I
    :cond_1
    invoke-static {v1, v1, v4}, Lcom/facebook/react/uimanager/MatrixMathHelper;->multiplyInto([D[D[D)V

    move-object/from16 v19, v12

    goto/16 :goto_a

    .line 100
    :cond_2
    const/4 v5, 0x0

    .local v5, "transformIdx":I
    invoke-interface/range {p0 .. p0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v9

    move v6, v5

    .end local v5    # "transformIdx":I
    .local v6, "transformIdx":I
    .local v9, "size":I
    :goto_1
    if-ge v6, v9, :cond_17

    .line 101
    invoke-interface {v0, v6}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v7

    .line 102
    .local v7, "transform":Lcom/facebook/react/bridge/ReadableMap;
    invoke-interface {v7}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v5

    invoke-interface {v5}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v5

    .line 104
    .local v5, "transformType":Ljava/lang/String;
    invoke-static {v4}, Lcom/facebook/react/uimanager/MatrixMathHelper;->resetIdentityMatrix([D)V

    .line 105
    const-string v10, "matrix"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 106
    invoke-interface {v7, v5}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v10

    .line 107
    .local v10, "matrix":Lcom/facebook/react/bridge/ReadableArray;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    if-ge v11, v8, :cond_3

    .line 108
    invoke-interface {v10, v11}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v16

    aput-wide v16, v4, v11

    .line 107
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 110
    .end local v10    # "matrix":Lcom/facebook/react/bridge/ReadableArray;
    .end local v11    # "i":I
    :cond_3
    move/from16 v22, v6

    move-object v0, v7

    move/from16 v17, v8

    move/from16 v16, v9

    move-object/from16 v19, v12

    move-object v12, v5

    goto/16 :goto_9

    :cond_4
    const-string/jumbo v10, "perspective"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 111
    invoke-interface {v7, v5}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-static {v4, v10, v11}, Lcom/facebook/react/uimanager/MatrixMathHelper;->applyPerspective([DD)V

    move/from16 v22, v6

    move-object v0, v7

    move/from16 v17, v8

    move/from16 v16, v9

    move-object/from16 v19, v12

    move-object v12, v5

    goto/16 :goto_9

    .line 112
    :cond_5
    const-string/jumbo v10, "rotateX"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 113
    invoke-static {v7, v5}, Lcom/facebook/react/uimanager/TransformHelper;->convertToRadians(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)D

    move-result-wide v10

    invoke-static {v4, v10, v11}, Lcom/facebook/react/uimanager/MatrixMathHelper;->applyRotateX([DD)V

    move/from16 v22, v6

    move-object v0, v7

    move/from16 v17, v8

    move/from16 v16, v9

    move-object/from16 v19, v12

    move-object v12, v5

    goto/16 :goto_9

    .line 114
    :cond_6
    const-string/jumbo v10, "rotateY"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 115
    invoke-static {v7, v5}, Lcom/facebook/react/uimanager/TransformHelper;->convertToRadians(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)D

    move-result-wide v10

    invoke-static {v4, v10, v11}, Lcom/facebook/react/uimanager/MatrixMathHelper;->applyRotateY([DD)V

    move/from16 v22, v6

    move-object v0, v7

    move/from16 v17, v8

    move/from16 v16, v9

    move-object/from16 v19, v12

    move-object v12, v5

    goto/16 :goto_9

    .line 116
    :cond_7
    const-string/jumbo v10, "rotate"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_16

    const-string/jumbo v10, "rotateZ"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    move/from16 v22, v6

    move-object v0, v7

    move/from16 v17, v8

    move/from16 v16, v9

    move-object/from16 v19, v12

    move-object v12, v5

    goto/16 :goto_8

    .line 118
    :cond_8
    const-string/jumbo v10, "scale"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 119
    invoke-interface {v7, v5}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    .line 120
    .local v10, "scale":D
    invoke-static {v4, v10, v11}, Lcom/facebook/react/uimanager/MatrixMathHelper;->applyScaleX([DD)V

    .line 121
    invoke-static {v4, v10, v11}, Lcom/facebook/react/uimanager/MatrixMathHelper;->applyScaleY([DD)V

    .line 122
    .end local v10    # "scale":D
    move/from16 v22, v6

    move-object v0, v7

    move/from16 v17, v8

    move/from16 v16, v9

    move-object/from16 v19, v12

    move-object v12, v5

    goto/16 :goto_9

    :cond_9
    const-string/jumbo v10, "scaleX"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 123
    invoke-interface {v7, v5}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-static {v4, v10, v11}, Lcom/facebook/react/uimanager/MatrixMathHelper;->applyScaleX([DD)V

    move/from16 v22, v6

    move-object v0, v7

    move/from16 v17, v8

    move/from16 v16, v9

    move-object/from16 v19, v12

    move-object v12, v5

    goto/16 :goto_9

    .line 124
    :cond_a
    const-string/jumbo v10, "scaleY"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 125
    invoke-interface {v7, v5}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-static {v4, v10, v11}, Lcom/facebook/react/uimanager/MatrixMathHelper;->applyScaleY([DD)V

    move/from16 v22, v6

    move-object v0, v7

    move/from16 v17, v8

    move/from16 v16, v9

    move-object/from16 v19, v12

    move-object v12, v5

    goto/16 :goto_9

    .line 126
    :cond_b
    const-string/jumbo v10, "translate"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    move/from16 v17, v9

    .end local v9    # "size":I
    .local v17, "size":I
    if-eqz v10, :cond_f

    .line 127
    invoke-interface {v7, v5}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v10

    .line 128
    .local v10, "value":Lcom/facebook/react/bridge/ReadableArray;
    const-wide/16 v18, 0x0

    .line 129
    .local v18, "x":D
    invoke-interface {v10, v14}, Lcom/facebook/react/bridge/ReadableArray;->getType(I)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v11

    sget-object v8, Lcom/facebook/react/bridge/ReadableType;->String:Lcom/facebook/react/bridge/ReadableType;

    if-ne v11, v8, :cond_c

    if-eqz p5, :cond_c

    .line 130
    invoke-interface {v10, v14}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    float-to-double v13, v2

    invoke-static {v8, v13, v14}, Lcom/facebook/react/uimanager/TransformHelper;->parseTranslateValue(Ljava/lang/String;D)D

    move-result-wide v8

    move-wide v13, v8

    .end local v18    # "x":D
    .local v8, "x":D
    goto :goto_3

    .line 132
    .end local v8    # "x":D
    .restart local v18    # "x":D
    :cond_c
    const/4 v8, 0x0

    invoke-interface {v10, v8}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v13

    .line 134
    .end local v18    # "x":D
    .local v13, "x":D
    :goto_3
    const-wide/16 v8, 0x0

    .line 135
    .local v8, "y":D
    invoke-interface {v10, v15}, Lcom/facebook/react/bridge/ReadableArray;->getType(I)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v11

    sget-object v15, Lcom/facebook/react/bridge/ReadableType;->String:Lcom/facebook/react/bridge/ReadableType;

    if-ne v11, v15, :cond_d

    if-eqz p5, :cond_d

    .line 136
    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v19, v12

    .end local v12    # "offsets":[F
    .local v19, "offsets":[F
    float-to-double v11, v3

    invoke-static {v15, v11, v12}, Lcom/facebook/react/uimanager/TransformHelper;->parseTranslateValue(Ljava/lang/String;D)D

    move-result-wide v8

    move-wide/from16 v20, v8

    goto :goto_4

    .line 135
    .end local v19    # "offsets":[F
    .restart local v12    # "offsets":[F
    :cond_d
    move-object/from16 v19, v12

    .line 138
    .end local v12    # "offsets":[F
    .restart local v19    # "offsets":[F
    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v8

    move-wide/from16 v20, v8

    .line 140
    .end local v8    # "y":D
    .local v20, "y":D
    :goto_4
    invoke-interface {v10}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v8

    const/4 v9, 0x2

    if-le v8, v9, :cond_e

    invoke-interface {v10, v9}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v11

    goto :goto_5

    :cond_e
    const-wide/16 v11, 0x0

    :goto_5
    move-object v15, v10

    .end local v10    # "value":Lcom/facebook/react/bridge/ReadableArray;
    .local v15, "value":Lcom/facebook/react/bridge/ReadableArray;
    move-wide v10, v11

    .line 141
    .local v10, "z":D
    move-object v12, v5

    .end local v5    # "transformType":Ljava/lang/String;
    .local v12, "transformType":Ljava/lang/String;
    move-object v5, v4

    move/from16 v22, v6

    move-object v8, v7

    .end local v6    # "transformIdx":I
    .end local v7    # "transform":Lcom/facebook/react/bridge/ReadableMap;
    .local v8, "transform":Lcom/facebook/react/bridge/ReadableMap;
    .local v22, "transformIdx":I
    move-wide v6, v13

    move-object v0, v8

    move/from16 v16, v17

    const/16 v17, 0x10

    .end local v8    # "transform":Lcom/facebook/react/bridge/ReadableMap;
    .end local v17    # "size":I
    .local v0, "transform":Lcom/facebook/react/bridge/ReadableMap;
    .local v16, "size":I
    move-wide/from16 v8, v20

    invoke-static/range {v5 .. v11}, Lcom/facebook/react/uimanager/MatrixMathHelper;->applyTranslate3D([DDDD)V

    .line 142
    .end local v10    # "z":D
    .end local v13    # "x":D
    .end local v15    # "value":Lcom/facebook/react/bridge/ReadableArray;
    .end local v20    # "y":D
    goto/16 :goto_9

    .end local v0    # "transform":Lcom/facebook/react/bridge/ReadableMap;
    .end local v16    # "size":I
    .end local v19    # "offsets":[F
    .end local v22    # "transformIdx":I
    .restart local v5    # "transformType":Ljava/lang/String;
    .restart local v6    # "transformIdx":I
    .restart local v7    # "transform":Lcom/facebook/react/bridge/ReadableMap;
    .local v12, "offsets":[F
    .restart local v17    # "size":I
    :cond_f
    move/from16 v22, v6

    move-object v0, v7

    move-object/from16 v19, v12

    move/from16 v16, v17

    const/16 v17, 0x10

    move-object v12, v5

    .end local v5    # "transformType":Ljava/lang/String;
    .end local v6    # "transformIdx":I
    .end local v7    # "transform":Lcom/facebook/react/bridge/ReadableMap;
    .end local v17    # "size":I
    .restart local v0    # "transform":Lcom/facebook/react/bridge/ReadableMap;
    .local v12, "transformType":Ljava/lang/String;
    .restart local v16    # "size":I
    .restart local v19    # "offsets":[F
    .restart local v22    # "transformIdx":I
    const-string/jumbo v5, "translateX"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 143
    const-wide/16 v5, 0x0

    .line 144
    .local v5, "translateValue":D
    invoke-interface {v0, v12}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v7

    sget-object v8, Lcom/facebook/react/bridge/ReadableType;->String:Lcom/facebook/react/bridge/ReadableType;

    if-ne v7, v8, :cond_10

    if-eqz p5, :cond_10

    .line 146
    invoke-interface {v0, v12}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    float-to-double v8, v2

    invoke-static {v7, v8, v9}, Lcom/facebook/react/uimanager/TransformHelper;->parseTranslateValue(Ljava/lang/String;D)D

    move-result-wide v5

    goto :goto_6

    .line 148
    :cond_10
    invoke-interface {v0, v12}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 150
    :goto_6
    const-wide/16 v7, 0x0

    invoke-static {v4, v5, v6, v7, v8}, Lcom/facebook/react/uimanager/MatrixMathHelper;->applyTranslate2D([DDD)V

    .line 151
    .end local v5    # "translateValue":D
    goto/16 :goto_9

    :cond_11
    const-string/jumbo v5, "translateY"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 152
    const-wide/16 v5, 0x0

    .line 153
    .restart local v5    # "translateValue":D
    invoke-interface {v0, v12}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v7

    sget-object v8, Lcom/facebook/react/bridge/ReadableType;->String:Lcom/facebook/react/bridge/ReadableType;

    if-ne v7, v8, :cond_12

    if-eqz p5, :cond_12

    .line 155
    invoke-interface {v0, v12}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    float-to-double v8, v3

    invoke-static {v7, v8, v9}, Lcom/facebook/react/uimanager/TransformHelper;->parseTranslateValue(Ljava/lang/String;D)D

    move-result-wide v5

    goto :goto_7

    .line 157
    :cond_12
    invoke-interface {v0, v12}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 159
    :goto_7
    const-wide/16 v7, 0x0

    invoke-static {v4, v7, v8, v5, v6}, Lcom/facebook/react/uimanager/MatrixMathHelper;->applyTranslate2D([DDD)V

    .line 160
    .end local v5    # "translateValue":D
    goto :goto_9

    :cond_13
    const-string/jumbo v5, "skewX"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 161
    invoke-static {v0, v12}, Lcom/facebook/react/uimanager/TransformHelper;->convertToRadians(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/facebook/react/uimanager/MatrixMathHelper;->applySkewX([DD)V

    goto :goto_9

    .line 162
    :cond_14
    const-string/jumbo v5, "skewY"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 163
    invoke-static {v0, v12}, Lcom/facebook/react/uimanager/TransformHelper;->convertToRadians(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/facebook/react/uimanager/MatrixMathHelper;->applySkewY([DD)V

    goto :goto_9

    .line 165
    :cond_15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported transform type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ReactNative"

    invoke-static {v6, v5}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 116
    .end local v0    # "transform":Lcom/facebook/react/bridge/ReadableMap;
    .end local v16    # "size":I
    .end local v19    # "offsets":[F
    .end local v22    # "transformIdx":I
    .local v5, "transformType":Ljava/lang/String;
    .restart local v6    # "transformIdx":I
    .restart local v7    # "transform":Lcom/facebook/react/bridge/ReadableMap;
    .restart local v9    # "size":I
    .local v12, "offsets":[F
    :cond_16
    move/from16 v22, v6

    move-object v0, v7

    move/from16 v17, v8

    move/from16 v16, v9

    move-object/from16 v19, v12

    move-object v12, v5

    .line 117
    .end local v5    # "transformType":Ljava/lang/String;
    .end local v6    # "transformIdx":I
    .end local v7    # "transform":Lcom/facebook/react/bridge/ReadableMap;
    .end local v9    # "size":I
    .restart local v0    # "transform":Lcom/facebook/react/bridge/ReadableMap;
    .local v12, "transformType":Ljava/lang/String;
    .restart local v16    # "size":I
    .restart local v19    # "offsets":[F
    .restart local v22    # "transformIdx":I
    :goto_8
    invoke-static {v0, v12}, Lcom/facebook/react/uimanager/TransformHelper;->convertToRadians(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/facebook/react/uimanager/MatrixMathHelper;->applyRotateZ([DD)V

    .line 168
    :goto_9
    invoke-static {v1, v1, v4}, Lcom/facebook/react/uimanager/MatrixMathHelper;->multiplyInto([D[D[D)V

    .line 100
    .end local v0    # "transform":Lcom/facebook/react/bridge/ReadableMap;
    .end local v12    # "transformType":Ljava/lang/String;
    add-int/lit8 v6, v22, 0x1

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v0, p0

    move/from16 v9, v16

    move/from16 v8, v17

    move-object/from16 v12, v19

    .end local v22    # "transformIdx":I
    .restart local v6    # "transformIdx":I
    goto/16 :goto_1

    .end local v16    # "size":I
    .end local v19    # "offsets":[F
    .restart local v9    # "size":I
    .local v12, "offsets":[F
    :cond_17
    move/from16 v22, v6

    move/from16 v16, v9

    move-object/from16 v19, v12

    .line 172
    .end local v6    # "transformIdx":I
    .end local v9    # "size":I
    .end local v12    # "offsets":[F
    .restart local v19    # "offsets":[F
    :goto_a
    if-eqz v19, :cond_18

    .line 173
    invoke-static {v4}, Lcom/facebook/react/uimanager/MatrixMathHelper;->resetIdentityMatrix([D)V

    .line 174
    const/4 v0, 0x0

    aget v0, v19, v0

    neg-float v0, v0

    float-to-double v6, v0

    const/4 v0, 0x1

    aget v0, v19, v0

    neg-float v0, v0

    float-to-double v8, v0

    const/4 v0, 0x2

    aget v0, v19, v0

    neg-float v0, v0

    float-to-double v10, v0

    move-object v5, v4

    invoke-static/range {v5 .. v11}, Lcom/facebook/react/uimanager/MatrixMathHelper;->applyTranslate3D([DDDD)V

    .line 175
    invoke-static {v1, v1, v4}, Lcom/facebook/react/uimanager/MatrixMathHelper;->multiplyInto([D[D[D)V

    .line 177
    :cond_18
    return-void
.end method
