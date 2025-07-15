.class Lcom/horcrux/svg/RNSVGRenderableManager;
.super Lcom/horcrux/svg/NativeSvgRenderableModuleSpec;
.source "RNSVGRenderableManager.java"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "RNSVGRenderableModule"
.end annotation


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x1000

.field private static final EOF:I = -0x1

.field public static final NAME:Ljava/lang/String; = "RNSVGRenderableModule"


# direct methods
.method constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 34
    invoke-direct {p0, p1}, Lcom/horcrux/svg/NativeSvgRenderableModuleSpec;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 35
    return-void
.end method


# virtual methods
.method public getBBox(Ljava/lang/Double;Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/bridge/WritableMap;
    .locals 16
    .param p1, "tag"    # Ljava/lang/Double;
    .param p2, "options"    # Lcom/facebook/react/bridge/ReadableMap;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
        isBlockingSynchronousMethod = true
    .end annotation

    .line 149
    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Double;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/horcrux/svg/RenderableViewManager;->getRenderableViewByTag(I)Lcom/horcrux/svg/RenderableView;

    move-result-object v2

    .line 150
    .local v2, "svg":Lcom/horcrux/svg/RenderableView;
    if-nez v2, :cond_0

    .line 151
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    return-object v0

    .line 154
    :cond_0
    const-string v0, "fill"

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 155
    .local v3, "fill":Z
    const-string v0, "stroke"

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 156
    .local v4, "stroke":Z
    const-string v0, "markers"

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 157
    .local v5, "markers":Z
    const-string v0, "clipped"

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 160
    .local v6, "clipped":Z
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v2, v0, v0}, Lcom/horcrux/svg/RenderableView;->getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    nop

    .line 166
    iget v0, v2, Lcom/horcrux/svg/RenderableView;->mScale:F

    .line 167
    .local v0, "scale":F
    invoke-virtual {v2}, Lcom/horcrux/svg/RenderableView;->initBounds()V

    .line 169
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    .line 170
    .local v7, "bounds":Landroid/graphics/RectF;
    iget-object v8, v2, Lcom/horcrux/svg/RenderableView;->mFillBounds:Landroid/graphics/RectF;

    .line 171
    .local v8, "fillBounds":Landroid/graphics/RectF;
    iget-object v9, v2, Lcom/horcrux/svg/RenderableView;->mStrokeBounds:Landroid/graphics/RectF;

    .line 172
    .local v9, "strokeBounds":Landroid/graphics/RectF;
    iget-object v10, v2, Lcom/horcrux/svg/RenderableView;->mMarkerBounds:Landroid/graphics/RectF;

    .line 173
    .local v10, "markerBounds":Landroid/graphics/RectF;
    iget-object v11, v2, Lcom/horcrux/svg/RenderableView;->mClipBounds:Landroid/graphics/RectF;

    .line 175
    .local v11, "clipBounds":Landroid/graphics/RectF;
    if-eqz v3, :cond_1

    if-eqz v8, :cond_1

    .line 176
    invoke-virtual {v7, v8}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 178
    :cond_1
    if-eqz v4, :cond_2

    if-eqz v9, :cond_2

    .line 179
    invoke-virtual {v7, v9}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 181
    :cond_2
    if-eqz v5, :cond_3

    if-eqz v10, :cond_3

    .line 182
    invoke-virtual {v7, v10}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 184
    :cond_3
    if-eqz v6, :cond_4

    if-eqz v11, :cond_4

    .line 185
    invoke-virtual {v7, v11}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 188
    :cond_4
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v12

    .line 189
    .local v12, "result":Lcom/facebook/react/bridge/WritableMap;
    iget v13, v7, Landroid/graphics/RectF;->left:F

    div-float/2addr v13, v0

    float-to-double v13, v13

    const-string v15, "x"

    invoke-interface {v12, v15, v13, v14}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 190
    iget v13, v7, Landroid/graphics/RectF;->top:F

    div-float/2addr v13, v0

    float-to-double v13, v13

    const-string v15, "y"

    invoke-interface {v12, v15, v13, v14}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 191
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v13

    div-float/2addr v13, v0

    float-to-double v13, v13

    const-string v15, "width"

    invoke-interface {v12, v15, v13, v14}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 192
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v13

    div-float/2addr v13, v0

    float-to-double v13, v13

    const-string v15, "height"

    invoke-interface {v12, v15, v13, v14}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 193
    return-object v12

    .line 161
    .end local v0    # "scale":F
    .end local v7    # "bounds":Landroid/graphics/RectF;
    .end local v8    # "fillBounds":Landroid/graphics/RectF;
    .end local v9    # "strokeBounds":Landroid/graphics/RectF;
    .end local v10    # "markerBounds":Landroid/graphics/RectF;
    .end local v11    # "clipBounds":Landroid/graphics/RectF;
    .end local v12    # "result":Lcom/facebook/react/bridge/WritableMap;
    :catch_0
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 162
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Lcom/horcrux/svg/RenderableView;->invalidate()V

    .line 163
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v7

    return-object v7
.end method

.method public getCTM(Ljava/lang/Double;)Lcom/facebook/react/bridge/WritableMap;
    .locals 10
    .param p1, "tag"    # Ljava/lang/Double;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
        isBlockingSynchronousMethod = true
    .end annotation

    .line 200
    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/horcrux/svg/RenderableViewManager;->getRenderableViewByTag(I)Lcom/horcrux/svg/RenderableView;

    move-result-object v0

    .line 201
    .local v0, "svg":Lcom/horcrux/svg/RenderableView;
    if-nez v0, :cond_0

    .line 202
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    return-object v1

    .line 205
    :cond_0
    iget v1, v0, Lcom/horcrux/svg/RenderableView;->mScale:F

    .line 206
    .local v1, "scale":F
    new-instance v2, Landroid/graphics/Matrix;

    iget-object v3, v0, Lcom/horcrux/svg/RenderableView;->mCTM:Landroid/graphics/Matrix;

    invoke-direct {v2, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 207
    .local v2, "ctm":Landroid/graphics/Matrix;
    invoke-virtual {v0}, Lcom/horcrux/svg/RenderableView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v3

    .line 208
    .local v3, "svgView":Lcom/horcrux/svg/SvgView;
    if-eqz v3, :cond_1

    .line 211
    iget-object v4, v3, Lcom/horcrux/svg/SvgView;->mInvViewBoxMatrix:Landroid/graphics/Matrix;

    .line 212
    .local v4, "invViewBoxMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 214
    const/16 v5, 0x9

    new-array v5, v5, [F

    .line 215
    .local v5, "values":[F
    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->getValues([F)V

    .line 217
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v6

    .line 218
    .local v6, "result":Lcom/facebook/react/bridge/WritableMap;
    const/4 v7, 0x0

    aget v7, v5, v7

    float-to-double v7, v7

    const-string v9, "a"

    invoke-interface {v6, v9, v7, v8}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 219
    const/4 v7, 0x3

    aget v7, v5, v7

    float-to-double v7, v7

    const-string v9, "b"

    invoke-interface {v6, v9, v7, v8}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 220
    const/4 v7, 0x1

    aget v7, v5, v7

    float-to-double v7, v7

    const-string v9, "c"

    invoke-interface {v6, v9, v7, v8}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 221
    const/4 v7, 0x4

    aget v7, v5, v7

    float-to-double v7, v7

    const-string v9, "d"

    invoke-interface {v6, v9, v7, v8}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 222
    const/4 v7, 0x2

    aget v7, v5, v7

    div-float/2addr v7, v1

    float-to-double v7, v7

    const-string v9, "e"

    invoke-interface {v6, v9, v7, v8}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 223
    const/4 v7, 0x5

    aget v7, v5, v7

    div-float/2addr v7, v1

    float-to-double v7, v7

    const-string v9, "f"

    invoke-interface {v6, v9, v7, v8}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 224
    return-object v6

    .line 209
    .end local v4    # "invViewBoxMatrix":Landroid/graphics/Matrix;
    .end local v5    # "values":[F
    .end local v6    # "result":Lcom/facebook/react/bridge/WritableMap;
    :cond_1
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Did not find parent SvgView for view with tag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 42
    const-string v0, "RNSVGRenderableModule"

    return-object v0
.end method

.method public getPointAtLength(Ljava/lang/Double;Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/bridge/WritableMap;
    .locals 16
    .param p1, "tag"    # Ljava/lang/Double;
    .param p2, "options"    # Lcom/facebook/react/bridge/ReadableMap;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
        isBlockingSynchronousMethod = true
    .end annotation

    .line 114
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Double;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/horcrux/svg/RenderableViewManager;->getRenderableViewByTag(I)Lcom/horcrux/svg/RenderableView;

    move-result-object v1

    .line 115
    .local v1, "svg":Lcom/horcrux/svg/RenderableView;
    if-nez v1, :cond_0

    .line 116
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    return-object v0

    .line 122
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v0}, Lcom/horcrux/svg/RenderableView;->getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .local v0, "path":Landroid/graphics/Path;
    nop

    .line 128
    new-instance v2, Landroid/graphics/PathMeasure;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 129
    .local v2, "pm":Landroid/graphics/PathMeasure;
    const-string v4, "length"

    move-object/from16 v5, p2

    invoke-interface {v5, v4}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v4, v6

    .line 130
    .local v4, "length":F
    iget v6, v1, Lcom/horcrux/svg/RenderableView;->mScale:F

    .line 132
    .local v6, "scale":F
    const/4 v7, 0x2

    new-array v8, v7, [F

    .line 133
    .local v8, "pos":[F
    new-array v7, v7, [F

    .line 134
    .local v7, "tan":[F
    mul-float v9, v4, v6

    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    const/4 v10, 0x0

    invoke-static {v10, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 135
    .local v9, "distance":F
    invoke-virtual {v2, v9, v8, v7}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 137
    const/4 v10, 0x1

    aget v11, v7, v10

    float-to-double v11, v11

    aget v13, v7, v3

    float-to-double v13, v13

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v11

    .line 138
    .local v11, "angle":D
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v13

    .line 139
    .local v13, "result":Lcom/facebook/react/bridge/WritableMap;
    aget v3, v8, v3

    div-float/2addr v3, v6

    float-to-double v14, v3

    const-string v3, "x"

    invoke-interface {v13, v3, v14, v15}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 140
    aget v3, v8, v10

    div-float/2addr v3, v6

    float-to-double v14, v3

    const-string v3, "y"

    invoke-interface {v13, v3, v14, v15}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 141
    const-string v3, "angle"

    invoke-interface {v13, v3, v11, v12}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 142
    return-object v13

    .line 123
    .end local v0    # "path":Landroid/graphics/Path;
    .end local v2    # "pm":Landroid/graphics/PathMeasure;
    .end local v4    # "length":F
    .end local v6    # "scale":F
    .end local v7    # "tan":[F
    .end local v8    # "pos":[F
    .end local v9    # "distance":F
    .end local v11    # "angle":D
    .end local v13    # "result":Lcom/facebook/react/bridge/WritableMap;
    :catch_0
    move-exception v0

    move-object/from16 v5, p2

    move-object v2, v0

    move-object v0, v2

    .line 124
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Lcom/horcrux/svg/RenderableView;->invalidate()V

    .line 125
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    return-object v2
.end method

.method public getRawResource(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 254
    :try_start_0
    invoke-virtual {p0}, Lcom/horcrux/svg/RNSVGRenderableManager;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    .line 255
    .local v0, "context":Lcom/facebook/react/bridge/ReactApplicationContext;
    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 256
    .local v1, "resources":Landroid/content/res/Resources;
    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 257
    .local v2, "packageName":Ljava/lang/String;
    const-string v3, "raw"

    invoke-virtual {v1, p1, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 258
    .local v3, "id":I
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 260
    .local v4, "stream":Ljava/io/InputStream;
    :try_start_1
    new-instance v5, Ljava/io/InputStreamReader;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v4, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 261
    .local v5, "reader":Ljava/io/InputStreamReader;
    const/16 v6, 0x1000

    new-array v7, v6, [C

    .line 262
    .local v7, "buffer":[C
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .local v8, "builder":Ljava/lang/StringBuilder;
    :goto_0
    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9, v6}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v10

    move v11, v10

    .local v11, "n":I
    const/4 v12, -0x1

    if-eq v10, v12, :cond_0

    .line 265
    invoke-virtual {v8, v7, v9, v11}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 267
    :cond_0
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 268
    .local v6, "result":Ljava/lang/String;
    invoke-interface {p2, v6}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    .end local v5    # "reader":Ljava/io/InputStreamReader;
    .end local v6    # "result":Ljava/lang/String;
    .end local v7    # "buffer":[C
    .end local v8    # "builder":Ljava/lang/StringBuilder;
    .end local v11    # "n":I
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 274
    goto :goto_1

    .line 272
    :catch_0
    move-exception v5

    .line 275
    nop

    .line 279
    .end local v0    # "context":Lcom/facebook/react/bridge/ReactApplicationContext;
    .end local v1    # "resources":Landroid/content/res/Resources;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "id":I
    .end local v4    # "stream":Ljava/io/InputStream;
    :goto_1
    goto :goto_3

    .line 270
    .restart local v0    # "context":Lcom/facebook/react/bridge/ReactApplicationContext;
    .restart local v1    # "resources":Landroid/content/res/Resources;
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v3    # "id":I
    .restart local v4    # "stream":Ljava/io/InputStream;
    :catchall_0
    move-exception v5

    .line 271
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 274
    goto :goto_2

    .line 272
    :catch_1
    move-exception v6

    .line 275
    :goto_2
    nop

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "promise":Lcom/facebook/react/bridge/Promise;
    :try_start_4
    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 276
    .end local v0    # "context":Lcom/facebook/react/bridge/ReactApplicationContext;
    .end local v1    # "resources":Landroid/content/res/Resources;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "id":I
    .end local v4    # "stream":Ljava/io/InputStream;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "promise":Lcom/facebook/react/bridge/Promise;
    :catch_2
    move-exception v0

    .line 277
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 278
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/Throwable;)V

    .line 280
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method public getScreenCTM(Ljava/lang/Double;)Lcom/facebook/react/bridge/WritableMap;
    .locals 7
    .param p1, "tag"    # Ljava/lang/Double;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
        isBlockingSynchronousMethod = true
    .end annotation

    .line 231
    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/horcrux/svg/RenderableViewManager;->getRenderableViewByTag(I)Lcom/horcrux/svg/RenderableView;

    move-result-object v0

    .line 232
    .local v0, "svg":Lcom/horcrux/svg/RenderableView;
    if-nez v0, :cond_0

    .line 233
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    return-object v1

    .line 236
    :cond_0
    const/16 v1, 0x9

    new-array v1, v1, [F

    .line 237
    .local v1, "values":[F
    iget-object v2, v0, Lcom/horcrux/svg/RenderableView;->mCTM:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 238
    iget v2, v0, Lcom/horcrux/svg/RenderableView;->mScale:F

    .line 240
    .local v2, "scale":F
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    .line 241
    .local v3, "result":Lcom/facebook/react/bridge/WritableMap;
    const/4 v4, 0x0

    aget v4, v1, v4

    float-to-double v4, v4

    const-string v6, "a"

    invoke-interface {v3, v6, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 242
    const/4 v4, 0x3

    aget v4, v1, v4

    float-to-double v4, v4

    const-string v6, "b"

    invoke-interface {v3, v6, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 243
    const/4 v4, 0x1

    aget v4, v1, v4

    float-to-double v4, v4

    const-string v6, "c"

    invoke-interface {v3, v6, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 244
    const/4 v4, 0x4

    aget v4, v1, v4

    float-to-double v4, v4

    const-string v6, "d"

    invoke-interface {v3, v6, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 245
    const/4 v4, 0x2

    aget v4, v1, v4

    div-float/2addr v4, v2

    float-to-double v4, v4

    const-string v6, "e"

    invoke-interface {v3, v6, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 246
    const/4 v4, 0x5

    aget v4, v1, v4

    div-float/2addr v4, v2

    float-to-double v4, v4

    const-string v6, "f"

    invoke-interface {v3, v6, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 247
    return-object v3
.end method

.method public getTotalLength(Ljava/lang/Double;)D
    .locals 5
    .param p1, "tag"    # Ljava/lang/Double;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
        isBlockingSynchronousMethod = true
    .end annotation

    .line 92
    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/horcrux/svg/RenderableViewManager;->getRenderableViewByTag(I)Lcom/horcrux/svg/RenderableView;

    move-result-object v0

    .line 93
    .local v0, "svg":Lcom/horcrux/svg/RenderableView;
    if-nez v0, :cond_0

    .line 94
    const-wide/16 v1, 0x0

    return-wide v1

    .line 100
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v1}, Lcom/horcrux/svg/RenderableView;->getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .local v1, "path":Landroid/graphics/Path;
    nop

    .line 106
    new-instance v2, Landroid/graphics/PathMeasure;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 107
    .local v2, "pm":Landroid/graphics/PathMeasure;
    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v3

    iget v4, v0, Lcom/horcrux/svg/RenderableView;->mScale:F

    div-float/2addr v3, v4

    float-to-double v3, v3

    return-wide v3

    .line 101
    .end local v1    # "path":Landroid/graphics/Path;
    .end local v2    # "pm":Landroid/graphics/PathMeasure;
    :catch_0
    move-exception v1

    .line 102
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Lcom/horcrux/svg/RenderableView;->invalidate()V

    .line 103
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    return-wide v2
.end method

.method public isPointInFill(Ljava/lang/Double;Lcom/facebook/react/bridge/ReadableMap;)Z
    .locals 8
    .param p1, "tag"    # Ljava/lang/Double;
    .param p2, "options"    # Lcom/facebook/react/bridge/ReadableMap;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
        isBlockingSynchronousMethod = true
    .end annotation

    .line 49
    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/horcrux/svg/RenderableViewManager;->getRenderableViewByTag(I)Lcom/horcrux/svg/RenderableView;

    move-result-object v0

    .line 50
    .local v0, "svg":Lcom/horcrux/svg/RenderableView;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 51
    return v1

    .line 54
    :cond_0
    iget v2, v0, Lcom/horcrux/svg/RenderableView;->mScale:F

    .line 55
    .local v2, "scale":F
    const-string v3, "x"

    invoke-interface {p2, v3}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, v2

    .line 56
    .local v3, "x":F
    const-string v4, "y"

    invoke-interface {p2, v4}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v2

    .line 58
    .local v4, "y":F
    const/4 v5, 0x2

    new-array v5, v5, [F

    aput v3, v5, v1

    const/4 v6, 0x1

    aput v4, v5, v6

    invoke-virtual {v0, v5}, Lcom/horcrux/svg/RenderableView;->hitTest([F)I

    move-result v5

    .line 59
    .local v5, "i":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_1

    move v1, v6

    :cond_1
    return v1
.end method

.method public isPointInStroke(Ljava/lang/Double;Lcom/facebook/react/bridge/ReadableMap;)Z
    .locals 8
    .param p1, "tag"    # Ljava/lang/Double;
    .param p2, "options"    # Lcom/facebook/react/bridge/ReadableMap;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
        isBlockingSynchronousMethod = true
    .end annotation

    .line 66
    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/horcrux/svg/RenderableViewManager;->getRenderableViewByTag(I)Lcom/horcrux/svg/RenderableView;

    move-result-object v0

    .line 67
    .local v0, "svg":Lcom/horcrux/svg/RenderableView;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 68
    return v1

    .line 72
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v2, v2}, Lcom/horcrux/svg/RenderableView;->getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    nop

    .line 78
    invoke-virtual {v0}, Lcom/horcrux/svg/RenderableView;->initBounds()V

    .line 80
    iget v2, v0, Lcom/horcrux/svg/RenderableView;->mScale:F

    .line 81
    .local v2, "scale":F
    const-string v3, "x"

    invoke-interface {p2, v3}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    float-to-double v5, v2

    mul-double/2addr v3, v5

    double-to-int v3, v3

    .line 82
    .local v3, "x":I
    const-string v4, "y"

    invoke-interface {p2, v4}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    float-to-double v6, v2

    mul-double/2addr v4, v6

    double-to-int v4, v4

    .line 84
    .local v4, "y":I
    iget-object v5, v0, Lcom/horcrux/svg/RenderableView;->mStrokeRegion:Landroid/graphics/Region;

    .line 85
    .local v5, "strokeRegion":Landroid/graphics/Region;
    if-eqz v5, :cond_1

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Region;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 73
    .end local v2    # "scale":F
    .end local v3    # "x":I
    .end local v4    # "y":I
    .end local v5    # "strokeRegion":Landroid/graphics/Region;
    :catch_0
    move-exception v2

    .line 74
    .local v2, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Lcom/horcrux/svg/RenderableView;->invalidate()V

    .line 75
    return v1
.end method
