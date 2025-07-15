.class public Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CSSBackgroundDrawable.java"


# annotations
.annotation runtime Lcom/facebook/react/common/annotations/UnstableReactNativeAPI;
.end annotation


# static fields
.field private static final ALL_BITS_SET:I = -0x1

.field private static final ALL_BITS_UNSET:I = 0x0

.field private static final DEFAULT_BORDER_ALPHA:I = 0xff

.field private static final DEFAULT_BORDER_COLOR:I = -0x1000000

.field private static final DEFAULT_BORDER_RGB:I


# instance fields
.field private mAlpha:I

.field private mBackgroundColorRenderPath:Landroid/graphics/Path;

.field private mBackgroundImageLayers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/style/BackgroundImageLayer;",
            ">;"
        }
    .end annotation
.end field

.field private mBorderAlpha:Lcom/facebook/react/uimanager/Spacing;

.field private mBorderRGB:Lcom/facebook/react/uimanager/Spacing;

.field private mBorderRadius:Lcom/facebook/react/uimanager/style/BorderRadiusStyle;

.field private mBorderStyle:Lcom/facebook/react/uimanager/style/BorderStyle;

.field private mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

.field private mCenterDrawPath:Landroid/graphics/Path;

.field private mColor:I

.field private mComputedBorderRadius:Lcom/facebook/react/uimanager/style/ComputedBorderRadius;

.field private final mContext:Landroid/content/Context;

.field private final mGapBetweenPaths:F

.field private mInnerBottomLeftCorner:Landroid/graphics/PointF;

.field private mInnerBottomRightCorner:Landroid/graphics/PointF;

.field private mInnerClipPathForBorderRadius:Landroid/graphics/Path;

.field private mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

.field private mInnerTopLeftCorner:Landroid/graphics/PointF;

.field private mInnerTopRightCorner:Landroid/graphics/PointF;

.field private mLayoutDirectionOverride:I

.field private mNeedUpdatePathForBorderRadius:Z

.field private mOuterClipPathForBorderRadius:Landroid/graphics/Path;

.field private mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPathForBorder:Landroid/graphics/Path;

.field private mPathForBorderRadiusOutline:Landroid/graphics/Path;

.field private final mPathForSingleBorder:Landroid/graphics/Path;

.field private mTempRectForBorderRadiusOutline:Landroid/graphics/RectF;

.field private mTempRectForCenterDrawPath:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 135
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 104
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForSingleBorder:Landroid/graphics/Path;

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mNeedUpdatePathForBorderRadius:Z

    .line 117
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    .line 118
    iput v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mColor:I

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBackgroundImageLayers:Ljava/util/List;

    .line 120
    const/16 v0, 0xff

    iput v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mAlpha:I

    .line 126
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mGapBetweenPaths:F

    .line 128
    new-instance v0, Lcom/facebook/react/uimanager/style/BorderRadiusStyle;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/style/BorderRadiusStyle;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderRadius:Lcom/facebook/react/uimanager/style/BorderRadiusStyle;

    .line 129
    new-instance v0, Lcom/facebook/react/uimanager/style/ComputedBorderRadius;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/style/ComputedBorderRadius;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mComputedBorderRadius:Lcom/facebook/react/uimanager/style/ComputedBorderRadius;

    .line 133
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mLayoutDirectionOverride:I

    .line 136
    iput-object p1, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mContext:Landroid/content/Context;

    .line 137
    return-void
.end method

.method private static colorFromAlphaAndRGBComponents(FF)I
    .locals 3
    .param p0, "alpha"    # F
    .param p1, "rgb"    # F

    .line 1366
    const v0, 0xffffff

    float-to-int v1, p1

    and-int/2addr v0, v1

    .line 1367
    .local v0, "rgbComponent":I
    float-to-int v1, p0

    shl-int/lit8 v1, v1, 0x18

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    .line 1369
    .local v1, "alphaComponent":I
    or-int v2, v0, v1

    return v2
.end method

.method private drawQuadrilateral(Landroid/graphics/Canvas;IFFFFFFFF)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "fillColor"    # I
    .param p3, "x1"    # F
    .param p4, "y1"    # F
    .param p5, "x2"    # F
    .param p6, "y2"    # F
    .param p7, "x3"    # F
    .param p8, "y3"    # F
    .param p9, "x4"    # F
    .param p10, "y4"    # F

    .line 1347
    if-nez p2, :cond_0

    .line 1348
    return-void

    .line 1351
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForBorder:Landroid/graphics/Path;

    if-nez v0, :cond_1

    .line 1352
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForBorder:Landroid/graphics/Path;

    .line 1355
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1356
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForBorder:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 1357
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForBorder:Landroid/graphics/Path;

    invoke-virtual {v0, p3, p4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1358
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForBorder:Landroid/graphics/Path;

    invoke-virtual {v0, p5, p6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1359
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForBorder:Landroid/graphics/Path;

    invoke-virtual {v0, p7, p8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1360
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForBorder:Landroid/graphics/Path;

    invoke-virtual {v0, p9, p10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1361
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForBorder:Landroid/graphics/Path;

    invoke-virtual {v0, p3, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1362
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForBorder:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1363
    return-void
.end method

.method private drawRectangularBackgroundWithBorders(Landroid/graphics/Canvas;)V
    .locals 43
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1123
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    iget-object v0, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1125
    iget v0, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mColor:I

    iget v1, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mAlpha:I

    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->multiplyColorAlpha(II)I

    move-result v13

    .line 1126
    .local v13, "useColor":I
    invoke-static {v13}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1127
    iget-object v0, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 1128
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1131
    :cond_0
    iget-object v0, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBackgroundImageLayers:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBackgroundImageLayers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1132
    iget-object v0, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-direct/range {p0 .. p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBackgroundImageShader()Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1133
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1134
    iget-object v0, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1137
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getDirectionAwareBorderInsets()Landroid/graphics/RectF;

    move-result-object v14

    .line 1139
    .local v14, "borderWidth":Landroid/graphics/RectF;
    iget v0, v14, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 1140
    .local v15, "borderLeft":I
    iget v0, v14, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v16

    .line 1141
    .local v16, "borderTop":I
    iget v0, v14, Landroid/graphics/RectF;->right:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v17

    .line 1142
    .local v17, "borderRight":I
    iget v0, v14, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v18

    .line 1145
    .local v18, "borderBottom":I
    if-gtz v15, :cond_3

    if-gtz v17, :cond_3

    if-gtz v16, :cond_3

    if-lez v18, :cond_2

    goto :goto_0

    :cond_2
    move/from16 v30, v13

    move-object/from16 v41, v14

    goto/16 :goto_c

    .line 1146
    :cond_3
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    .line 1148
    .local v10, "bounds":Landroid/graphics/Rect;
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderColor(I)I

    move-result v1

    .line 1149
    .local v1, "colorLeft":I
    const/4 v9, 0x1

    invoke-virtual {v11, v9}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderColor(I)I

    move-result v2

    .line 1150
    .local v2, "colorTop":I
    const/4 v3, 0x2

    invoke-virtual {v11, v3}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderColor(I)I

    move-result v3

    .line 1151
    .local v3, "colorRight":I
    const/4 v4, 0x3

    invoke-virtual {v11, v4}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderColor(I)I

    move-result v4

    .line 1153
    .local v4, "colorBottom":I
    const/16 v5, 0x9

    invoke-virtual {v11, v5}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderColor(I)I

    move-result v19

    .line 1154
    .local v19, "colorBlock":I
    const/16 v6, 0xb

    invoke-virtual {v11, v6}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderColor(I)I

    move-result v20

    .line 1155
    .local v20, "colorBlockStart":I
    const/16 v7, 0xa

    invoke-virtual {v11, v7}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderColor(I)I

    move-result v21

    .line 1157
    .local v21, "colorBlockEnd":I
    invoke-direct {v11, v5}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->isBorderColorDefined(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1158
    move/from16 v4, v19

    .line 1159
    move/from16 v2, v19

    .line 1161
    :cond_4
    invoke-direct {v11, v7}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->isBorderColorDefined(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1162
    move/from16 v4, v21

    move/from16 v22, v4

    goto :goto_1

    .line 1161
    :cond_5
    move/from16 v22, v4

    .line 1164
    .end local v4    # "colorBottom":I
    .local v22, "colorBottom":I
    :goto_1
    invoke-direct {v11, v6}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->isBorderColorDefined(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1165
    move/from16 v2, v20

    move/from16 v23, v2

    goto :goto_2

    .line 1164
    :cond_6
    move/from16 v23, v2

    .line 1168
    .end local v2    # "colorTop":I
    .local v23, "colorTop":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getLayoutDirection()I

    move-result v2

    if-ne v2, v9, :cond_7

    move v2, v9

    goto :goto_3

    :cond_7
    move v2, v0

    :goto_3
    move/from16 v24, v2

    .line 1169
    .local v24, "isRTL":Z
    const/4 v2, 0x4

    invoke-virtual {v11, v2}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderColor(I)I

    move-result v4

    .line 1170
    .local v4, "colorStart":I
    const/4 v5, 0x5

    invoke-virtual {v11, v5}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderColor(I)I

    move-result v6

    .line 1172
    .local v6, "colorEnd":I
    invoke-static {}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->getInstance()Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    move-result-object v7

    iget-object v8, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->doLeftAndRightSwapInRTL(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1173
    invoke-direct {v11, v2}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->isBorderColorDefined(I)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1174
    move v4, v1

    .line 1177
    :cond_8
    invoke-direct {v11, v5}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->isBorderColorDefined(I)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1178
    move v6, v3

    .line 1181
    :cond_9
    if-eqz v24, :cond_a

    move v2, v6

    goto :goto_4

    :cond_a
    move v2, v4

    .line 1182
    .local v2, "directionAwareColorLeft":I
    :goto_4
    if-eqz v24, :cond_b

    move v5, v4

    goto :goto_5

    :cond_b
    move v5, v6

    .line 1184
    .local v5, "directionAwareColorRight":I
    :goto_5
    move v1, v2

    .line 1185
    move v3, v5

    .line 1186
    .end local v2    # "directionAwareColorLeft":I
    .end local v5    # "directionAwareColorRight":I
    move/from16 v25, v1

    move/from16 v26, v3

    move/from16 v27, v4

    move/from16 v28, v6

    goto :goto_a

    .line 1187
    :cond_c
    if-eqz v24, :cond_d

    move v7, v6

    goto :goto_6

    :cond_d
    move v7, v4

    .line 1188
    .local v7, "directionAwareColorLeft":I
    :goto_6
    if-eqz v24, :cond_e

    move v8, v4

    goto :goto_7

    :cond_e
    move v8, v6

    .line 1190
    .local v8, "directionAwareColorRight":I
    :goto_7
    invoke-direct {v11, v2}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->isBorderColorDefined(I)Z

    move-result v2

    .line 1191
    .local v2, "isColorStartDefined":Z
    invoke-direct {v11, v5}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->isBorderColorDefined(I)Z

    move-result v5

    .line 1193
    .local v5, "isColorEndDefined":Z
    if-eqz v24, :cond_f

    move/from16 v25, v5

    goto :goto_8

    :cond_f
    move/from16 v25, v2

    .line 1195
    .local v25, "isDirectionAwareColorLeftDefined":Z
    :goto_8
    if-eqz v24, :cond_10

    move/from16 v26, v2

    goto :goto_9

    :cond_10
    move/from16 v26, v5

    .line 1197
    .local v26, "isDirectionAwareColorRightDefined":Z
    :goto_9
    if-eqz v25, :cond_11

    .line 1198
    move v1, v7

    .line 1201
    :cond_11
    if-eqz v26, :cond_12

    .line 1202
    move v3, v8

    move/from16 v25, v1

    move/from16 v26, v3

    move/from16 v27, v4

    move/from16 v28, v6

    goto :goto_a

    .line 1201
    :cond_12
    move/from16 v25, v1

    move/from16 v26, v3

    move/from16 v27, v4

    move/from16 v28, v6

    .line 1206
    .end local v1    # "colorLeft":I
    .end local v2    # "isColorStartDefined":Z
    .end local v3    # "colorRight":I
    .end local v4    # "colorStart":I
    .end local v5    # "isColorEndDefined":Z
    .end local v6    # "colorEnd":I
    .end local v7    # "directionAwareColorLeft":I
    .end local v8    # "directionAwareColorRight":I
    .local v25, "colorLeft":I
    .local v26, "colorRight":I
    .local v27, "colorStart":I
    .local v28, "colorEnd":I
    :goto_a
    iget v8, v10, Landroid/graphics/Rect;->left:I

    .line 1207
    .local v8, "left":I
    iget v7, v10, Landroid/graphics/Rect;->top:I

    .line 1210
    .local v7, "top":I
    nop

    .line 1211
    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    move/from16 v5, v25

    move/from16 v6, v23

    move v0, v7

    .end local v7    # "top":I
    .local v0, "top":I
    move/from16 v7, v26

    move/from16 v30, v13

    move v13, v8

    .end local v8    # "left":I
    .local v13, "left":I
    .local v30, "useColor":I
    move/from16 v8, v22

    invoke-static/range {v1 .. v8}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->fastBorderCompatibleColorOrZero(IIIIIIII)I

    move-result v8

    .line 1221
    .local v8, "fastBorderColor":I
    if-eqz v8, :cond_18

    .line 1222
    invoke-static {v8}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_17

    .line 1224
    iget v1, v10, Landroid/graphics/Rect;->right:I

    .line 1225
    .local v1, "right":I
    iget v2, v10, Landroid/graphics/Rect;->bottom:I

    .line 1227
    .local v2, "bottom":I
    iget-object v3, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 1228
    iget-object v3, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1229
    if-lez v15, :cond_13

    .line 1230
    iget-object v3, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForSingleBorder:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 1231
    iget v3, v14, Landroid/graphics/RectF;->left:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1232
    .local v3, "width":I
    invoke-direct {v11, v3}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->updatePathEffect(I)V

    .line 1233
    iget-object v4, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    int-to-float v5, v3

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1234
    iget-object v4, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForSingleBorder:Landroid/graphics/Path;

    div-int/lit8 v5, v3, 0x2

    add-int/2addr v5, v13

    int-to-float v5, v5

    int-to-float v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1235
    iget-object v4, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForSingleBorder:Landroid/graphics/Path;

    div-int/lit8 v5, v3, 0x2

    add-int/2addr v5, v13

    int-to-float v5, v5

    int-to-float v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1236
    iget-object v4, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForSingleBorder:Landroid/graphics/Path;

    iget-object v5, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1238
    .end local v3    # "width":I
    :cond_13
    if-lez v16, :cond_14

    .line 1239
    iget-object v3, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForSingleBorder:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 1240
    iget v3, v14, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1241
    .restart local v3    # "width":I
    invoke-direct {v11, v3}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->updatePathEffect(I)V

    .line 1242
    iget-object v4, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    int-to-float v5, v3

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1243
    iget-object v4, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForSingleBorder:Landroid/graphics/Path;

    int-to-float v5, v13

    div-int/lit8 v6, v3, 0x2

    add-int v7, v0, v6

    int-to-float v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1244
    iget-object v4, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForSingleBorder:Landroid/graphics/Path;

    int-to-float v5, v1

    div-int/lit8 v6, v3, 0x2

    add-int v7, v0, v6

    int-to-float v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1245
    iget-object v4, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForSingleBorder:Landroid/graphics/Path;

    iget-object v5, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1247
    .end local v3    # "width":I
    :cond_14
    if-lez v17, :cond_15

    .line 1248
    iget-object v3, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForSingleBorder:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 1249
    iget v3, v14, Landroid/graphics/RectF;->right:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1250
    .restart local v3    # "width":I
    invoke-direct {v11, v3}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->updatePathEffect(I)V

    .line 1251
    iget-object v4, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    int-to-float v5, v3

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1252
    iget-object v4, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForSingleBorder:Landroid/graphics/Path;

    div-int/lit8 v5, v3, 0x2

    sub-int v5, v1, v5

    int-to-float v5, v5

    int-to-float v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1253
    iget-object v4, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForSingleBorder:Landroid/graphics/Path;

    div-int/lit8 v5, v3, 0x2

    sub-int v5, v1, v5

    int-to-float v5, v5

    int-to-float v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1254
    iget-object v4, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForSingleBorder:Landroid/graphics/Path;

    iget-object v5, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1256
    .end local v3    # "width":I
    :cond_15
    if-lez v18, :cond_16

    .line 1257
    iget-object v3, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForSingleBorder:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 1258
    iget v3, v14, Landroid/graphics/RectF;->bottom:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1259
    .restart local v3    # "width":I
    invoke-direct {v11, v3}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->updatePathEffect(I)V

    .line 1260
    iget-object v4, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    int-to-float v5, v3

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1261
    iget-object v4, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForSingleBorder:Landroid/graphics/Path;

    int-to-float v5, v13

    div-int/lit8 v6, v3, 0x2

    sub-int v6, v2, v6

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1262
    iget-object v4, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForSingleBorder:Landroid/graphics/Path;

    int-to-float v5, v1

    div-int/lit8 v6, v3, 0x2

    sub-int v6, v2, v6

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1263
    iget-object v4, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForSingleBorder:Landroid/graphics/Path;

    iget-object v5, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1265
    .end local v1    # "right":I
    .end local v2    # "bottom":I
    .end local v3    # "width":I
    :cond_16
    move-object/from16 v41, v14

    goto/16 :goto_c

    .line 1222
    :cond_17
    move-object/from16 v41, v14

    goto/16 :goto_c

    .line 1273
    :cond_18
    iget-object v1, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1275
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v29

    .line 1276
    .local v29, "width":I
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v31

    .line 1278
    .local v31, "height":I
    if-lez v15, :cond_19

    .line 1279
    int-to-float v7, v13

    .line 1280
    .local v7, "x1":F
    int-to-float v6, v0

    .line 1281
    .local v6, "y1":F
    add-int v1, v13, v15

    int-to-float v5, v1

    .line 1282
    .local v5, "x2":F
    add-int v1, v0, v16

    int-to-float v4, v1

    .line 1283
    .local v4, "y2":F
    add-int v1, v13, v15

    int-to-float v3, v1

    .line 1284
    .local v3, "x3":F
    add-int v1, v0, v31

    sub-int v1, v1, v18

    int-to-float v2, v1

    .line 1285
    .local v2, "y3":F
    int-to-float v1, v13

    .line 1286
    .local v1, "x4":F
    add-int v9, v0, v31

    int-to-float v9, v9

    .line 1288
    .local v9, "y4":F
    move v12, v0

    .end local v0    # "top":I
    .local v12, "top":I
    move-object/from16 v0, p0

    move/from16 v33, v1

    .end local v1    # "x4":F
    .local v33, "x4":F
    move-object/from16 v1, p1

    move/from16 v34, v2

    .end local v2    # "y3":F
    .local v34, "y3":F
    move/from16 v2, v25

    move/from16 v35, v3

    .end local v3    # "x3":F
    .local v35, "x3":F
    move v3, v7

    move/from16 v36, v4

    .end local v4    # "y2":F
    .local v36, "y2":F
    move v4, v6

    move/from16 v37, v5

    .end local v5    # "x2":F
    .local v37, "x2":F
    move/from16 v38, v6

    .end local v6    # "y1":F
    .local v38, "y1":F
    move/from16 v6, v36

    move/from16 v39, v7

    .end local v7    # "x1":F
    .local v39, "x1":F
    move/from16 v7, v35

    move/from16 v40, v8

    .end local v8    # "fastBorderColor":I
    .local v40, "fastBorderColor":I
    move/from16 v8, v34

    move/from16 v32, v9

    move-object/from16 v41, v14

    const/4 v14, 0x1

    .end local v9    # "y4":F
    .end local v14    # "borderWidth":Landroid/graphics/RectF;
    .local v32, "y4":F
    .local v41, "borderWidth":Landroid/graphics/RectF;
    move/from16 v9, v33

    move-object/from16 v42, v10

    .end local v10    # "bounds":Landroid/graphics/Rect;
    .local v42, "bounds":Landroid/graphics/Rect;
    move/from16 v10, v32

    invoke-direct/range {v0 .. v10}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->drawQuadrilateral(Landroid/graphics/Canvas;IFFFFFFFF)V

    goto :goto_b

    .line 1278
    .end local v12    # "top":I
    .end local v32    # "y4":F
    .end local v33    # "x4":F
    .end local v34    # "y3":F
    .end local v35    # "x3":F
    .end local v36    # "y2":F
    .end local v37    # "x2":F
    .end local v38    # "y1":F
    .end local v39    # "x1":F
    .end local v40    # "fastBorderColor":I
    .end local v41    # "borderWidth":Landroid/graphics/RectF;
    .end local v42    # "bounds":Landroid/graphics/Rect;
    .restart local v0    # "top":I
    .restart local v8    # "fastBorderColor":I
    .restart local v10    # "bounds":Landroid/graphics/Rect;
    .restart local v14    # "borderWidth":Landroid/graphics/RectF;
    :cond_19
    move v12, v0

    move/from16 v40, v8

    move-object/from16 v42, v10

    move-object/from16 v41, v14

    move v14, v9

    .line 1291
    .end local v0    # "top":I
    .end local v8    # "fastBorderColor":I
    .end local v10    # "bounds":Landroid/graphics/Rect;
    .end local v14    # "borderWidth":Landroid/graphics/RectF;
    .restart local v12    # "top":I
    .restart local v40    # "fastBorderColor":I
    .restart local v41    # "borderWidth":Landroid/graphics/RectF;
    .restart local v42    # "bounds":Landroid/graphics/Rect;
    :goto_b
    if-lez v16, :cond_1a

    .line 1292
    int-to-float v10, v13

    .line 1293
    .local v10, "x1":F
    int-to-float v9, v12

    .line 1294
    .local v9, "y1":F
    add-int v8, v13, v15

    int-to-float v8, v8

    .line 1295
    .local v8, "x2":F
    add-int v7, v12, v16

    int-to-float v7, v7

    .line 1296
    .local v7, "y2":F
    add-int v0, v13, v29

    sub-int v0, v0, v17

    int-to-float v6, v0

    .line 1297
    .local v6, "x3":F
    add-int v0, v12, v16

    int-to-float v5, v0

    .line 1298
    .local v5, "y3":F
    add-int v0, v13, v29

    int-to-float v4, v0

    .line 1299
    .local v4, "x4":F
    int-to-float v3, v12

    .line 1301
    .local v3, "y4":F
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    move/from16 v32, v3

    .end local v3    # "y4":F
    .restart local v32    # "y4":F
    move v3, v10

    move/from16 v33, v4

    .end local v4    # "x4":F
    .restart local v33    # "x4":F
    move v4, v9

    move/from16 v34, v5

    .end local v5    # "y3":F
    .restart local v34    # "y3":F
    move v5, v8

    move/from16 v35, v6

    .end local v6    # "x3":F
    .restart local v35    # "x3":F
    move v6, v7

    move/from16 v36, v7

    .end local v7    # "y2":F
    .restart local v36    # "y2":F
    move/from16 v7, v35

    move/from16 v37, v8

    .end local v8    # "x2":F
    .restart local v37    # "x2":F
    move/from16 v8, v34

    move/from16 v38, v9

    .end local v9    # "y1":F
    .restart local v38    # "y1":F
    move/from16 v9, v33

    move/from16 v39, v10

    .end local v10    # "x1":F
    .restart local v39    # "x1":F
    move/from16 v10, v32

    invoke-direct/range {v0 .. v10}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->drawQuadrilateral(Landroid/graphics/Canvas;IFFFFFFFF)V

    .line 1304
    .end local v32    # "y4":F
    .end local v33    # "x4":F
    .end local v34    # "y3":F
    .end local v35    # "x3":F
    .end local v36    # "y2":F
    .end local v37    # "x2":F
    .end local v38    # "y1":F
    .end local v39    # "x1":F
    :cond_1a
    if-lez v17, :cond_1b

    .line 1305
    add-int v8, v13, v29

    int-to-float v10, v8

    .line 1306
    .restart local v10    # "x1":F
    int-to-float v9, v12

    .line 1307
    .restart local v9    # "y1":F
    add-int v8, v13, v29

    int-to-float v8, v8

    .line 1308
    .restart local v8    # "x2":F
    add-int v7, v12, v31

    int-to-float v7, v7

    .line 1309
    .restart local v7    # "y2":F
    add-int v0, v13, v29

    sub-int v0, v0, v17

    int-to-float v6, v0

    .line 1310
    .restart local v6    # "x3":F
    add-int v0, v12, v31

    sub-int v0, v0, v18

    int-to-float v5, v0

    .line 1311
    .restart local v5    # "y3":F
    add-int v0, v13, v29

    sub-int v0, v0, v17

    int-to-float v4, v0

    .line 1312
    .restart local v4    # "x4":F
    add-int v0, v12, v16

    int-to-float v3, v0

    .line 1314
    .restart local v3    # "y4":F
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v26

    move/from16 v32, v3

    .end local v3    # "y4":F
    .restart local v32    # "y4":F
    move v3, v10

    move/from16 v33, v4

    .end local v4    # "x4":F
    .restart local v33    # "x4":F
    move v4, v9

    move/from16 v34, v5

    .end local v5    # "y3":F
    .restart local v34    # "y3":F
    move v5, v8

    move/from16 v35, v6

    .end local v6    # "x3":F
    .restart local v35    # "x3":F
    move v6, v7

    move/from16 v36, v7

    .end local v7    # "y2":F
    .restart local v36    # "y2":F
    move/from16 v7, v35

    move/from16 v37, v8

    .end local v8    # "x2":F
    .restart local v37    # "x2":F
    move/from16 v8, v34

    move/from16 v38, v9

    .end local v9    # "y1":F
    .restart local v38    # "y1":F
    move/from16 v9, v33

    move/from16 v39, v10

    .end local v10    # "x1":F
    .restart local v39    # "x1":F
    move/from16 v10, v32

    invoke-direct/range {v0 .. v10}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->drawQuadrilateral(Landroid/graphics/Canvas;IFFFFFFFF)V

    .line 1317
    .end local v32    # "y4":F
    .end local v33    # "x4":F
    .end local v34    # "y3":F
    .end local v35    # "x3":F
    .end local v36    # "y2":F
    .end local v37    # "x2":F
    .end local v38    # "y1":F
    .end local v39    # "x1":F
    :cond_1b
    if-lez v18, :cond_1c

    .line 1318
    int-to-float v10, v13

    .line 1319
    .restart local v10    # "x1":F
    add-int v7, v12, v31

    int-to-float v9, v7

    .line 1320
    .restart local v9    # "y1":F
    add-int v8, v13, v29

    int-to-float v8, v8

    .line 1321
    .restart local v8    # "x2":F
    add-int v7, v12, v31

    int-to-float v7, v7

    .line 1322
    .restart local v7    # "y2":F
    add-int v0, v13, v29

    sub-int v0, v0, v17

    int-to-float v6, v0

    .line 1323
    .restart local v6    # "x3":F
    add-int v0, v12, v31

    sub-int v0, v0, v18

    int-to-float v5, v0

    .line 1324
    .restart local v5    # "y3":F
    add-int v0, v13, v15

    int-to-float v4, v0

    .line 1325
    .restart local v4    # "x4":F
    add-int v0, v12, v31

    sub-int v0, v0, v18

    int-to-float v3, v0

    .line 1327
    .restart local v3    # "y4":F
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    move/from16 v32, v3

    .end local v3    # "y4":F
    .restart local v32    # "y4":F
    move v3, v10

    move/from16 v33, v4

    .end local v4    # "x4":F
    .restart local v33    # "x4":F
    move v4, v9

    move/from16 v34, v5

    .end local v5    # "y3":F
    .restart local v34    # "y3":F
    move v5, v8

    move/from16 v35, v6

    .end local v6    # "x3":F
    .restart local v35    # "x3":F
    move v6, v7

    move/from16 v36, v7

    .end local v7    # "y2":F
    .restart local v36    # "y2":F
    move/from16 v7, v35

    move/from16 v37, v8

    .end local v8    # "x2":F
    .restart local v37    # "x2":F
    move/from16 v8, v34

    move/from16 v38, v9

    .end local v9    # "y1":F
    .restart local v38    # "y1":F
    move/from16 v9, v33

    move/from16 v39, v10

    .end local v10    # "x1":F
    .restart local v39    # "x1":F
    move/from16 v10, v32

    invoke-direct/range {v0 .. v10}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->drawQuadrilateral(Landroid/graphics/Canvas;IFFFFFFFF)V

    .line 1331
    .end local v32    # "y4":F
    .end local v33    # "x4":F
    .end local v34    # "y3":F
    .end local v35    # "x3":F
    .end local v36    # "y2":F
    .end local v37    # "x2":F
    .end local v38    # "y1":F
    .end local v39    # "x1":F
    :cond_1c
    iget-object v0, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1334
    .end local v12    # "top":I
    .end local v13    # "left":I
    .end local v19    # "colorBlock":I
    .end local v20    # "colorBlockStart":I
    .end local v21    # "colorBlockEnd":I
    .end local v22    # "colorBottom":I
    .end local v23    # "colorTop":I
    .end local v24    # "isRTL":Z
    .end local v25    # "colorLeft":I
    .end local v26    # "colorRight":I
    .end local v27    # "colorStart":I
    .end local v28    # "colorEnd":I
    .end local v29    # "width":I
    .end local v31    # "height":I
    .end local v40    # "fastBorderColor":I
    .end local v42    # "bounds":Landroid/graphics/Rect;
    :goto_c
    return-void
.end method

.method private drawRoundedBackgroundWithBorders(Landroid/graphics/Canvas;)V
    .locals 42
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 388
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    invoke-direct/range {p0 .. p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->updatePath()V

    .line 389
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 392
    iget-object v0, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mOuterClipPathForBorderRadius:Landroid/graphics/Path;

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 395
    iget v0, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mColor:I

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getOpacity()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v13

    .line 396
    .local v13, "useColor":I
    invoke-static {v13}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 398
    iget-object v0, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 399
    iget-object v0, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBackgroundColorRenderPath:Landroid/graphics/Path;

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    iget-object v1, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 402
    :cond_0
    iget-object v0, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBackgroundImageLayers:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBackgroundImageLayers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 403
    iget-object v0, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-direct/range {p0 .. p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBackgroundImageShader()Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 404
    iget-object v0, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 405
    iget-object v0, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBackgroundColorRenderPath:Landroid/graphics/Path;

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    iget-object v1, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 406
    iget-object v0, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 409
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getDirectionAwareBorderInsets()Landroid/graphics/RectF;

    move-result-object v14

    .line 410
    .local v14, "borderWidth":Landroid/graphics/RectF;
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderColor(I)I

    move-result v1

    .line 411
    .local v1, "colorLeft":I
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderColor(I)I

    move-result v3

    .line 412
    .local v3, "colorTop":I
    const/4 v4, 0x2

    invoke-virtual {v11, v4}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderColor(I)I

    move-result v4

    .line 413
    .local v4, "colorRight":I
    const/4 v5, 0x3

    invoke-virtual {v11, v5}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderColor(I)I

    move-result v5

    .line 415
    .local v5, "colorBottom":I
    const/16 v6, 0x9

    invoke-virtual {v11, v6}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderColor(I)I

    move-result v15

    .line 416
    .local v15, "colorBlock":I
    const/16 v7, 0xb

    invoke-virtual {v11, v7}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderColor(I)I

    move-result v16

    .line 417
    .local v16, "colorBlockStart":I
    const/16 v8, 0xa

    invoke-virtual {v11, v8}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderColor(I)I

    move-result v17

    .line 419
    .local v17, "colorBlockEnd":I
    invoke-direct {v11, v6}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->isBorderColorDefined(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 420
    move v5, v15

    .line 421
    move v3, v15

    .line 423
    :cond_2
    invoke-direct {v11, v8}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->isBorderColorDefined(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 424
    move/from16 v5, v17

    move v10, v5

    goto :goto_0

    .line 423
    :cond_3
    move v10, v5

    .line 426
    .end local v5    # "colorBottom":I
    .local v10, "colorBottom":I
    :goto_0
    invoke-direct {v11, v7}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->isBorderColorDefined(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 427
    move/from16 v3, v16

    move v8, v3

    goto :goto_1

    .line 426
    :cond_4
    move v8, v3

    .line 430
    .end local v3    # "colorTop":I
    .local v8, "colorTop":I
    :goto_1
    iget v3, v14, Landroid/graphics/RectF;->top:F

    const/16 v18, 0x0

    cmpl-float v3, v3, v18

    if-gtz v3, :cond_5

    iget v3, v14, Landroid/graphics/RectF;->bottom:F

    cmpl-float v3, v3, v18

    if-gtz v3, :cond_5

    iget v3, v14, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v3, v18

    if-gtz v3, :cond_5

    iget v3, v14, Landroid/graphics/RectF;->right:F

    cmpl-float v3, v3, v18

    if-lez v3, :cond_6

    .line 436
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getFullBorderWidth()F

    move-result v7

    .line 437
    .local v7, "fullBorderWidth":F
    const/16 v3, 0x8

    invoke-virtual {v11, v3}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderColor(I)I

    move-result v6

    .line 438
    .local v6, "borderColor":I
    iget v3, v14, Landroid/graphics/RectF;->top:F

    cmpl-float v3, v3, v7

    if-nez v3, :cond_7

    iget v3, v14, Landroid/graphics/RectF;->bottom:F

    cmpl-float v3, v3, v7

    if-nez v3, :cond_7

    iget v3, v14, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v3, v7

    if-nez v3, :cond_7

    iget v3, v14, Landroid/graphics/RectF;->right:F

    cmpl-float v3, v3, v7

    if-nez v3, :cond_7

    if-ne v1, v6, :cond_7

    if-ne v8, v6, :cond_7

    if-ne v4, v6, :cond_7

    if-ne v10, v6, :cond_7

    .line 446
    cmpl-float v0, v7, v18

    if-lez v0, :cond_6

    .line 447
    iget-object v0, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    iget v2, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mAlpha:I

    invoke-static {v6, v2}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->multiplyColorAlpha(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 448
    iget-object v0, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 449
    iget-object v0, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 450
    iget-object v0, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mCenterDrawPath:Landroid/graphics/Path;

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    iget-object v2, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 567
    .end local v6    # "borderColor":I
    .end local v7    # "fullBorderWidth":F
    :cond_6
    move/from16 v40, v8

    move/from16 v41, v10

    move/from16 v26, v13

    move/from16 v30, v15

    goto/16 :goto_b

    .line 455
    .restart local v6    # "borderColor":I
    .restart local v7    # "fullBorderWidth":F
    :cond_7
    iget-object v3, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 458
    iget-object v3, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipPathForBorderRadius:Landroid/graphics/Path;

    .line 459
    invoke-static {v3}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Path;

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 458
    invoke-virtual {v12, v3, v5}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 461
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getLayoutDirection()I

    move-result v3

    if-ne v3, v2, :cond_8

    move v0, v2

    :cond_8
    move/from16 v19, v0

    .line 462
    .local v19, "isRTL":Z
    const/4 v0, 0x4

    invoke-virtual {v11, v0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderColor(I)I

    move-result v2

    .line 463
    .local v2, "colorStart":I
    const/4 v3, 0x5

    invoke-virtual {v11, v3}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderColor(I)I

    move-result v5

    .line 465
    .local v5, "colorEnd":I
    invoke-static {}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->getInstance()Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    move-result-object v9

    iget-object v3, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v3}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->doLeftAndRightSwapInRTL(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 466
    invoke-direct {v11, v0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->isBorderColorDefined(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 467
    move v2, v1

    .line 470
    :cond_9
    const/4 v0, 0x5

    invoke-direct {v11, v0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->isBorderColorDefined(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 471
    move v5, v4

    .line 474
    :cond_a
    if-eqz v19, :cond_b

    move v0, v5

    goto :goto_2

    :cond_b
    move v0, v2

    .line 475
    .local v0, "directionAwareColorLeft":I
    :goto_2
    if-eqz v19, :cond_c

    move v3, v2

    goto :goto_3

    :cond_c
    move v3, v5

    .line 477
    .local v3, "directionAwareColorRight":I
    :goto_3
    move v1, v0

    .line 478
    move v4, v3

    .line 479
    .end local v0    # "directionAwareColorLeft":I
    .end local v3    # "directionAwareColorRight":I
    move/from16 v20, v1

    move/from16 v21, v2

    move/from16 v22, v4

    move/from16 v23, v5

    goto :goto_8

    .line 480
    :cond_d
    if-eqz v19, :cond_e

    move v3, v5

    goto :goto_4

    :cond_e
    move v3, v2

    .line 481
    .local v3, "directionAwareColorLeft":I
    :goto_4
    if-eqz v19, :cond_f

    move v9, v2

    goto :goto_5

    :cond_f
    move v9, v5

    .line 483
    .local v9, "directionAwareColorRight":I
    :goto_5
    invoke-direct {v11, v0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->isBorderColorDefined(I)Z

    move-result v0

    .line 484
    .local v0, "isColorStartDefined":Z
    move/from16 v21, v0

    const/4 v0, 0x5

    .end local v0    # "isColorStartDefined":Z
    .local v21, "isColorStartDefined":Z
    invoke-direct {v11, v0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->isBorderColorDefined(I)Z

    move-result v0

    .line 486
    .local v0, "isColorEndDefined":Z
    if-eqz v19, :cond_10

    move/from16 v20, v0

    goto :goto_6

    :cond_10
    move/from16 v20, v21

    .line 488
    .local v20, "isDirectionAwareColorLeftDefined":Z
    :goto_6
    if-eqz v19, :cond_11

    move/from16 v22, v21

    goto :goto_7

    :cond_11
    move/from16 v22, v0

    .line 490
    .local v22, "isDirectionAwareColorRightDefined":Z
    :goto_7
    if-eqz v20, :cond_12

    .line 491
    move v1, v3

    .line 494
    :cond_12
    if-eqz v22, :cond_13

    .line 495
    move v4, v9

    move/from16 v20, v1

    move/from16 v21, v2

    move/from16 v22, v4

    move/from16 v23, v5

    goto :goto_8

    .line 494
    :cond_13
    move/from16 v20, v1

    move/from16 v21, v2

    move/from16 v22, v4

    move/from16 v23, v5

    .line 499
    .end local v0    # "isColorEndDefined":Z
    .end local v1    # "colorLeft":I
    .end local v2    # "colorStart":I
    .end local v3    # "directionAwareColorLeft":I
    .end local v4    # "colorRight":I
    .end local v5    # "colorEnd":I
    .end local v9    # "directionAwareColorRight":I
    .local v20, "colorLeft":I
    .local v21, "colorStart":I
    .local v22, "colorRight":I
    .local v23, "colorEnd":I
    :goto_8
    iget-object v0, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    .line 500
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/graphics/RectF;

    .line 501
    .local v5, "outerClipTempRect":Landroid/graphics/RectF;
    iget v4, v5, Landroid/graphics/RectF;->left:F

    .line 502
    .local v4, "left":F
    iget v2, v5, Landroid/graphics/RectF;->right:F

    .line 503
    .local v2, "right":F
    iget v1, v5, Landroid/graphics/RectF;->top:F

    .line 504
    .local v1, "top":F
    iget v0, v5, Landroid/graphics/RectF;->bottom:F

    .line 506
    .local v0, "bottom":F
    iget-object v3, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerTopLeftCorner:Landroid/graphics/PointF;

    invoke-static {v3}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/graphics/PointF;

    .line 507
    .local v9, "innerTopLeftCorner":Landroid/graphics/PointF;
    iget-object v3, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerTopRightCorner:Landroid/graphics/PointF;

    invoke-static {v3}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    .line 508
    .local v3, "innerTopRightCorner":Landroid/graphics/PointF;
    move/from16 v24, v2

    .end local v2    # "right":F
    .local v24, "right":F
    iget-object v2, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerBottomLeftCorner:Landroid/graphics/PointF;

    invoke-static {v2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 509
    .local v2, "innerBottomLeftCorner":Landroid/graphics/PointF;
    move-object/from16 v25, v3

    .end local v3    # "innerTopRightCorner":Landroid/graphics/PointF;
    .local v25, "innerTopRightCorner":Landroid/graphics/PointF;
    iget-object v3, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerBottomRightCorner:Landroid/graphics/PointF;

    invoke-static {v3}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    .line 513
    .local v3, "innerBottomRightCorner":Landroid/graphics/PointF;
    move-object/from16 v26, v3

    .end local v3    # "innerBottomRightCorner":Landroid/graphics/PointF;
    .local v26, "innerBottomRightCorner":Landroid/graphics/PointF;
    iget v3, v14, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v3, v18

    const v27, 0x3f4ccccd    # 0.8f

    if-lez v3, :cond_14

    .line 514
    move-object/from16 v11, v25

    move-object/from16 v12, v26

    .end local v25    # "innerTopRightCorner":Landroid/graphics/PointF;
    .end local v26    # "innerBottomRightCorner":Landroid/graphics/PointF;
    .local v11, "innerTopRightCorner":Landroid/graphics/PointF;
    .local v12, "innerBottomRightCorner":Landroid/graphics/PointF;
    move v3, v4

    .line 515
    .local v3, "x1":F
    sub-float v25, v1, v27

    .line 516
    .local v25, "y1":F
    move/from16 v26, v13

    .end local v13    # "useColor":I
    .local v26, "useColor":I
    iget v13, v9, Landroid/graphics/PointF;->x:F

    .line 517
    .local v13, "x2":F
    move/from16 v28, v1

    .end local v1    # "top":F
    .local v28, "top":F
    iget v1, v9, Landroid/graphics/PointF;->y:F

    sub-float v29, v1, v27

    .line 518
    .local v29, "y2":F
    iget v1, v2, Landroid/graphics/PointF;->x:F

    .line 519
    .local v1, "x3":F
    move/from16 v30, v1

    .end local v1    # "x3":F
    .local v30, "x3":F
    iget v1, v2, Landroid/graphics/PointF;->y:F

    add-float v31, v1, v27

    .line 520
    .local v31, "y3":F
    move-object v1, v9

    .end local v9    # "innerTopLeftCorner":Landroid/graphics/PointF;
    .local v1, "innerTopLeftCorner":Landroid/graphics/PointF;
    move v9, v4

    .line 521
    .local v9, "x4":F
    add-float v32, v0, v27

    .line 523
    .local v32, "y4":F
    move/from16 v33, v0

    .end local v0    # "bottom":F
    .local v33, "bottom":F
    move-object/from16 v0, p0

    move/from16 v34, v30

    move/from16 v30, v15

    move-object v15, v1

    .end local v1    # "innerTopLeftCorner":Landroid/graphics/PointF;
    .local v15, "innerTopLeftCorner":Landroid/graphics/PointF;
    .local v30, "colorBlock":I
    .local v34, "x3":F
    move-object/from16 v1, p1

    move-object/from16 v35, v2

    .end local v2    # "innerBottomLeftCorner":Landroid/graphics/PointF;
    .local v35, "innerBottomLeftCorner":Landroid/graphics/PointF;
    move/from16 v2, v20

    move/from16 v36, v4

    .end local v4    # "left":F
    .local v36, "left":F
    move/from16 v4, v25

    move-object/from16 v37, v5

    .end local v5    # "outerClipTempRect":Landroid/graphics/RectF;
    .local v37, "outerClipTempRect":Landroid/graphics/RectF;
    move v5, v13

    move/from16 v38, v6

    .end local v6    # "borderColor":I
    .local v38, "borderColor":I
    move/from16 v6, v29

    move/from16 v39, v7

    .end local v7    # "fullBorderWidth":F
    .local v39, "fullBorderWidth":F
    move/from16 v7, v34

    move/from16 v40, v8

    .end local v8    # "colorTop":I
    .local v40, "colorTop":I
    move/from16 v8, v31

    move/from16 v41, v10

    .end local v10    # "colorBottom":I
    .local v41, "colorBottom":I
    move/from16 v10, v32

    invoke-direct/range {v0 .. v10}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->drawQuadrilateral(Landroid/graphics/Canvas;IFFFFFFFF)V

    goto :goto_9

    .line 513
    .end local v3    # "x1":F
    .end local v11    # "innerTopRightCorner":Landroid/graphics/PointF;
    .end local v12    # "innerBottomRightCorner":Landroid/graphics/PointF;
    .end local v28    # "top":F
    .end local v29    # "y2":F
    .end local v30    # "colorBlock":I
    .end local v31    # "y3":F
    .end local v32    # "y4":F
    .end local v33    # "bottom":F
    .end local v34    # "x3":F
    .end local v35    # "innerBottomLeftCorner":Landroid/graphics/PointF;
    .end local v36    # "left":F
    .end local v37    # "outerClipTempRect":Landroid/graphics/RectF;
    .end local v38    # "borderColor":I
    .end local v39    # "fullBorderWidth":F
    .end local v40    # "colorTop":I
    .end local v41    # "colorBottom":I
    .restart local v0    # "bottom":F
    .local v1, "top":F
    .restart local v2    # "innerBottomLeftCorner":Landroid/graphics/PointF;
    .restart local v4    # "left":F
    .restart local v5    # "outerClipTempRect":Landroid/graphics/RectF;
    .restart local v6    # "borderColor":I
    .restart local v7    # "fullBorderWidth":F
    .restart local v8    # "colorTop":I
    .local v9, "innerTopLeftCorner":Landroid/graphics/PointF;
    .restart local v10    # "colorBottom":I
    .local v13, "useColor":I
    .local v15, "colorBlock":I
    .local v25, "innerTopRightCorner":Landroid/graphics/PointF;
    .local v26, "innerBottomRightCorner":Landroid/graphics/PointF;
    :cond_14
    move/from16 v33, v0

    move/from16 v28, v1

    move-object/from16 v35, v2

    move/from16 v36, v4

    move-object/from16 v37, v5

    move/from16 v38, v6

    move/from16 v39, v7

    move/from16 v40, v8

    move/from16 v41, v10

    move/from16 v30, v15

    move-object/from16 v11, v25

    move-object/from16 v12, v26

    move-object v15, v9

    move/from16 v26, v13

    .line 526
    .end local v0    # "bottom":F
    .end local v1    # "top":F
    .end local v2    # "innerBottomLeftCorner":Landroid/graphics/PointF;
    .end local v4    # "left":F
    .end local v5    # "outerClipTempRect":Landroid/graphics/RectF;
    .end local v6    # "borderColor":I
    .end local v7    # "fullBorderWidth":F
    .end local v8    # "colorTop":I
    .end local v9    # "innerTopLeftCorner":Landroid/graphics/PointF;
    .end local v10    # "colorBottom":I
    .end local v13    # "useColor":I
    .end local v25    # "innerTopRightCorner":Landroid/graphics/PointF;
    .restart local v11    # "innerTopRightCorner":Landroid/graphics/PointF;
    .restart local v12    # "innerBottomRightCorner":Landroid/graphics/PointF;
    .local v15, "innerTopLeftCorner":Landroid/graphics/PointF;
    .local v26, "useColor":I
    .restart local v28    # "top":F
    .restart local v30    # "colorBlock":I
    .restart local v33    # "bottom":F
    .restart local v35    # "innerBottomLeftCorner":Landroid/graphics/PointF;
    .restart local v36    # "left":F
    .restart local v37    # "outerClipTempRect":Landroid/graphics/RectF;
    .restart local v38    # "borderColor":I
    .restart local v39    # "fullBorderWidth":F
    .restart local v40    # "colorTop":I
    .restart local v41    # "colorBottom":I
    :goto_9
    iget v0, v14, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v18

    if-lez v0, :cond_15

    .line 527
    sub-float v13, v36, v27

    .line 528
    .local v13, "x1":F
    move/from16 v4, v28

    .line 529
    .local v4, "y1":F
    iget v0, v15, Landroid/graphics/PointF;->x:F

    sub-float v25, v0, v27

    .line 530
    .local v25, "x2":F
    iget v9, v15, Landroid/graphics/PointF;->y:F

    .line 531
    .local v9, "y2":F
    iget v0, v11, Landroid/graphics/PointF;->x:F

    add-float v29, v0, v27

    .line 532
    .local v29, "x3":F
    iget v8, v11, Landroid/graphics/PointF;->y:F

    .line 533
    .local v8, "y3":F
    add-float v31, v24, v27

    .line 534
    .local v31, "x4":F
    move/from16 v10, v28

    .line 536
    .local v10, "y4":F
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v40

    move v3, v13

    move/from16 v5, v25

    move v6, v9

    move/from16 v7, v29

    move/from16 v32, v8

    .end local v8    # "y3":F
    .local v32, "y3":F
    move/from16 v34, v9

    .end local v9    # "y2":F
    .local v34, "y2":F
    move/from16 v9, v31

    invoke-direct/range {v0 .. v10}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->drawQuadrilateral(Landroid/graphics/Canvas;IFFFFFFFF)V

    .line 539
    .end local v4    # "y1":F
    .end local v10    # "y4":F
    .end local v13    # "x1":F
    .end local v25    # "x2":F
    .end local v29    # "x3":F
    .end local v31    # "x4":F
    .end local v32    # "y3":F
    .end local v34    # "y2":F
    :cond_15
    iget v0, v14, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v18

    if-lez v0, :cond_16

    .line 540
    move/from16 v3, v24

    .line 541
    .restart local v3    # "x1":F
    sub-float v13, v28, v27

    .line 542
    .local v13, "y1":F
    iget v10, v11, Landroid/graphics/PointF;->x:F

    .line 543
    .local v10, "x2":F
    iget v0, v11, Landroid/graphics/PointF;->y:F

    sub-float v25, v0, v27

    .line 544
    .local v25, "y2":F
    iget v8, v12, Landroid/graphics/PointF;->x:F

    .line 545
    .local v8, "x3":F
    iget v0, v12, Landroid/graphics/PointF;->y:F

    add-float v29, v0, v27

    .line 546
    .local v29, "y3":F
    move/from16 v9, v24

    .line 547
    .local v9, "x4":F
    add-float v31, v33, v27

    .line 549
    .local v31, "y4":F
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    move v4, v13

    move v5, v10

    move/from16 v6, v25

    move v7, v8

    move/from16 v32, v8

    .end local v8    # "x3":F
    .local v32, "x3":F
    move/from16 v8, v29

    move/from16 v34, v10

    .end local v10    # "x2":F
    .local v34, "x2":F
    move/from16 v10, v31

    invoke-direct/range {v0 .. v10}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->drawQuadrilateral(Landroid/graphics/Canvas;IFFFFFFFF)V

    .line 552
    .end local v3    # "x1":F
    .end local v9    # "x4":F
    .end local v13    # "y1":F
    .end local v25    # "y2":F
    .end local v29    # "y3":F
    .end local v31    # "y4":F
    .end local v32    # "x3":F
    .end local v34    # "x2":F
    :cond_16
    iget v0, v14, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v18

    if-lez v0, :cond_17

    .line 553
    sub-float v13, v36, v27

    .line 554
    .local v13, "x1":F
    move/from16 v4, v33

    .line 555
    .restart local v4    # "y1":F
    move-object/from16 v9, v35

    .end local v35    # "innerBottomLeftCorner":Landroid/graphics/PointF;
    .local v9, "innerBottomLeftCorner":Landroid/graphics/PointF;
    iget v0, v9, Landroid/graphics/PointF;->x:F

    sub-float v18, v0, v27

    .line 556
    .local v18, "x2":F
    iget v8, v9, Landroid/graphics/PointF;->y:F

    .line 557
    .local v8, "y2":F
    iget v0, v12, Landroid/graphics/PointF;->x:F

    add-float v25, v0, v27

    .line 558
    .local v25, "x3":F
    iget v7, v12, Landroid/graphics/PointF;->y:F

    .line 559
    .local v7, "y3":F
    add-float v27, v24, v27

    .line 560
    .local v27, "x4":F
    move/from16 v10, v33

    .line 562
    .local v10, "y4":F
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v41

    move v3, v13

    move/from16 v5, v18

    move v6, v8

    move/from16 v29, v7

    .end local v7    # "y3":F
    .restart local v29    # "y3":F
    move/from16 v7, v25

    move/from16 v31, v8

    .end local v8    # "y2":F
    .local v31, "y2":F
    move/from16 v8, v29

    move-object/from16 v32, v9

    .end local v9    # "innerBottomLeftCorner":Landroid/graphics/PointF;
    .local v32, "innerBottomLeftCorner":Landroid/graphics/PointF;
    move/from16 v9, v27

    invoke-direct/range {v0 .. v10}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->drawQuadrilateral(Landroid/graphics/Canvas;IFFFFFFFF)V

    goto :goto_a

    .line 552
    .end local v4    # "y1":F
    .end local v10    # "y4":F
    .end local v13    # "x1":F
    .end local v18    # "x2":F
    .end local v25    # "x3":F
    .end local v27    # "x4":F
    .end local v29    # "y3":F
    .end local v31    # "y2":F
    .end local v32    # "innerBottomLeftCorner":Landroid/graphics/PointF;
    .restart local v35    # "innerBottomLeftCorner":Landroid/graphics/PointF;
    :cond_17
    move-object/from16 v32, v35

    .line 567
    .end local v11    # "innerTopRightCorner":Landroid/graphics/PointF;
    .end local v12    # "innerBottomRightCorner":Landroid/graphics/PointF;
    .end local v15    # "innerTopLeftCorner":Landroid/graphics/PointF;
    .end local v19    # "isRTL":Z
    .end local v21    # "colorStart":I
    .end local v23    # "colorEnd":I
    .end local v24    # "right":F
    .end local v28    # "top":F
    .end local v33    # "bottom":F
    .end local v35    # "innerBottomLeftCorner":Landroid/graphics/PointF;
    .end local v36    # "left":F
    .end local v37    # "outerClipTempRect":Landroid/graphics/RectF;
    .end local v38    # "borderColor":I
    .end local v39    # "fullBorderWidth":F
    :goto_a
    move/from16 v1, v20

    move/from16 v4, v22

    .end local v20    # "colorLeft":I
    .end local v22    # "colorRight":I
    .local v1, "colorLeft":I
    .local v4, "colorRight":I
    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 568
    return-void
.end method

.method private static fastBorderCompatibleColorOrZero(IIIIIIII)I
    .locals 4
    .param p0, "borderLeft"    # I
    .param p1, "borderTop"    # I
    .param p2, "borderRight"    # I
    .param p3, "borderBottom"    # I
    .param p4, "colorLeft"    # I
    .param p5, "colorTop"    # I
    .param p6, "colorRight"    # I
    .param p7, "colorBottom"    # I

    .line 1110
    const/4 v0, -0x1

    if-lez p0, :cond_0

    move v1, p4

    goto :goto_0

    :cond_0
    move v1, v0

    .line 1111
    :goto_0
    if-lez p1, :cond_1

    move v2, p5

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    and-int/2addr v1, v2

    .line 1112
    if-lez p2, :cond_2

    move v2, p6

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    and-int/2addr v1, v2

    .line 1113
    if-lez p3, :cond_3

    move v0, p7

    :cond_3
    and-int/2addr v0, v1

    .line 1115
    .local v0, "andSmear":I
    const/4 v1, 0x0

    if-lez p0, :cond_4

    move v2, p4

    goto :goto_3

    :cond_4
    move v2, v1

    .line 1116
    :goto_3
    if-lez p1, :cond_5

    move v3, p5

    goto :goto_4

    :cond_5
    move v3, v1

    :goto_4
    or-int/2addr v2, v3

    .line 1117
    if-lez p2, :cond_6

    move v3, p6

    goto :goto_5

    :cond_6
    move v3, v1

    :goto_5
    or-int/2addr v2, v3

    .line 1118
    if-lez p3, :cond_7

    move v3, p7

    goto :goto_6

    :cond_7
    move v3, v1

    :goto_6
    or-int/2addr v2, v3

    .line 1119
    .local v2, "orSmear":I
    if-ne v0, v2, :cond_8

    move v1, v0

    :cond_8
    return v1
.end method

.method private getBackgroundImageShader()Landroid/graphics/Shader;
    .locals 6

    .line 1429
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBackgroundImageLayers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1430
    const/4 v0, 0x0

    return-object v0

    .line 1433
    :cond_0
    const/4 v0, 0x0

    .line 1434
    .local v0, "compositeShader":Landroid/graphics/Shader;
    iget-object v1, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBackgroundImageLayers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/uimanager/style/BackgroundImageLayer;

    .line 1435
    .local v2, "backgroundImageLayer":Lcom/facebook/react/uimanager/style/BackgroundImageLayer;
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/react/uimanager/style/BackgroundImageLayer;->getShader(Landroid/graphics/Rect;)Landroid/graphics/Shader;

    move-result-object v3

    .line 1436
    .local v3, "currentShader":Landroid/graphics/Shader;
    if-nez v3, :cond_1

    .line 1437
    goto :goto_0

    .line 1439
    :cond_1
    if-nez v0, :cond_2

    .line 1440
    move-object v0, v3

    goto :goto_1

    .line 1442
    :cond_2
    new-instance v4, Landroid/graphics/ComposeShader;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v3, v0, v5}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    move-object v0, v4

    .line 1445
    .end local v2    # "backgroundImageLayer":Lcom/facebook/react/uimanager/style/BackgroundImageLayer;
    .end local v3    # "currentShader":Landroid/graphics/Shader;
    :goto_1
    goto :goto_0

    .line 1446
    :cond_3
    return-object v0
.end method

.method private static getEllipseIntersectionWithLine(DDDDDDDDLandroid/graphics/PointF;)V
    .locals 33
    .param p0, "ellipseBoundsLeft"    # D
    .param p2, "ellipseBoundsTop"    # D
    .param p4, "ellipseBoundsRight"    # D
    .param p6, "ellipseBoundsBottom"    # D
    .param p8, "lineStartX"    # D
    .param p10, "lineStartY"    # D
    .param p12, "lineEndX"    # D
    .param p14, "lineEndY"    # D
    .param p16, "result"    # Landroid/graphics/PointF;

    .line 983
    move-object/from16 v0, p16

    add-double v1, p0, p4

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    .line 984
    .local v1, "ellipseCenterX":D
    add-double v5, p2, p6

    div-double/2addr v5, v3

    .line 994
    .local v5, "ellipseCenterY":D
    sub-double v7, p8, v1

    .line 995
    .end local p8    # "lineStartX":D
    .local v7, "lineStartX":D
    sub-double v9, p10, v5

    .line 996
    .end local p10    # "lineStartY":D
    .local v9, "lineStartY":D
    sub-double v11, p12, v1

    .line 997
    .end local p12    # "lineEndX":D
    .local v11, "lineEndX":D
    sub-double v13, p14, v5

    .line 1004
    .end local p14    # "lineEndY":D
    .local v13, "lineEndY":D
    sub-double v15, p4, p0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    div-double/2addr v15, v3

    .line 1005
    .local v15, "a":D
    sub-double v17, p6, p2

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->abs(D)D

    move-result-wide v17

    div-double v17, v17, v3

    .line 1006
    .local v17, "b":D
    sub-double v19, v13, v9

    sub-double v21, v11, v7

    div-double v19, v19, v21

    .line 1007
    .local v19, "m":D
    mul-double v21, v19, v7

    sub-double v21, v9, v21

    .line 1017
    .local v21, "c":D
    mul-double v23, v17, v17

    mul-double v25, v15, v15

    mul-double v25, v25, v19

    mul-double v25, v25, v19

    add-double v23, v23, v25

    .line 1018
    .local v23, "A":D
    mul-double v25, v15, v3

    mul-double v25, v25, v15

    mul-double v25, v25, v21

    mul-double v3, v25, v19

    .line 1019
    .local v3, "B":D
    mul-double v25, v15, v15

    mul-double v29, v21, v21

    mul-double v31, v17, v17

    sub-double v29, v29, v31

    move-wide/from16 p8, v7

    .end local v7    # "lineStartX":D
    .restart local p8    # "lineStartX":D
    mul-double v7, v25, v29

    .line 1026
    .local v7, "C":D
    move-wide/from16 p10, v9

    .end local v9    # "lineStartY":D
    .restart local p10    # "lineStartY":D
    neg-double v9, v7

    div-double v9, v9, v23

    move-wide/from16 p12, v7

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    .end local v7    # "C":D
    .local p12, "C":D
    mul-double v25, v23, v7

    move-wide/from16 v27, v11

    .end local v11    # "lineEndX":D
    .local v27, "lineEndX":D
    div-double v11, v3, v25

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    add-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    .line 1027
    .local v9, "D":D
    neg-double v11, v3

    mul-double v7, v7, v23

    div-double/2addr v11, v7

    sub-double/2addr v11, v9

    .line 1028
    .local v11, "x2":D
    mul-double v7, v19, v11

    add-double v7, v7, v21

    .line 1035
    .local v7, "y2":D
    move-wide/from16 p14, v3

    .end local v3    # "B":D
    .local p14, "B":D
    add-double v3, v11, v1

    .line 1036
    .local v3, "x":D
    move-wide/from16 v25, v1

    .end local v1    # "ellipseCenterX":D
    .local v25, "ellipseCenterX":D
    add-double v1, v7, v5

    .line 1038
    .local v1, "y":D
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v29

    if-nez v29, :cond_0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v29

    if-nez v29, :cond_0

    .line 1039
    move-wide/from16 v29, v5

    .end local v5    # "ellipseCenterY":D
    .local v29, "ellipseCenterY":D
    double-to-float v5, v3

    iput v5, v0, Landroid/graphics/PointF;->x:F

    .line 1040
    double-to-float v5, v1

    iput v5, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 1038
    .end local v29    # "ellipseCenterY":D
    .restart local v5    # "ellipseCenterY":D
    :cond_0
    move-wide/from16 v29, v5

    .line 1042
    .end local v5    # "ellipseCenterY":D
    .restart local v29    # "ellipseCenterY":D
    :goto_0
    return-void
.end method

.method private static getPathEffect(Lcom/facebook/react/uimanager/style/BorderStyle;F)Landroid/graphics/PathEffect;
    .locals 11
    .param p0, "style"    # Lcom/facebook/react/uimanager/style/BorderStyle;
    .param p1, "borderWidth"    # F

    .line 76
    sget-object v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable$1;->$SwitchMap$com$facebook$react$uimanager$style$BorderStyle:[I

    invoke-virtual {p0}, Lcom/facebook/react/uimanager/style/BorderStyle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    packed-switch v0, :pswitch_data_0

    .line 89
    return-object v7

    .line 85
    :pswitch_0
    new-instance v0, Landroid/graphics/DashPathEffect;

    new-array v6, v6, [F

    aput p1, v6, v5

    aput p1, v6, v4

    aput p1, v6, v3

    aput p1, v6, v2

    invoke-direct {v0, v6, v1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    return-object v0

    .line 81
    :pswitch_1
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/high16 v7, 0x40400000    # 3.0f

    mul-float v8, p1, v7

    mul-float v9, p1, v7

    mul-float v10, p1, v7

    mul-float/2addr v7, p1

    new-array v6, v6, [F

    aput v8, v6, v5

    aput v9, v6, v4

    aput v10, v6, v3

    aput v7, v6, v2

    invoke-direct {v0, v6, v1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    return-object v0

    .line 78
    :pswitch_2
    return-object v7

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isBorderColorDefined(I)Z
    .locals 3
    .param p1, "position"    # I

    .line 1373
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderRGB:Lcom/facebook/react/uimanager/Spacing;

    const/high16 v1, 0x7fc00000    # Float.NaN

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderRGB:Lcom/facebook/react/uimanager/Spacing;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/Spacing;->get(I)F

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1374
    .local v0, "rgb":F
    :goto_0
    iget-object v2, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderAlpha:Lcom/facebook/react/uimanager/Spacing;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderAlpha:Lcom/facebook/react/uimanager/Spacing;

    invoke-virtual {v1, p1}, Lcom/facebook/react/uimanager/Spacing;->get(I)F

    move-result v1

    .line 1375
    .local v1, "alpha":F
    :cond_1
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method private static multiplyColorAlpha(II)I
    .locals 4
    .param p0, "color"    # I
    .param p1, "alpha"    # I

    .line 1457
    const/16 v0, 0xff

    if-ne p1, v0, :cond_0

    .line 1458
    return p0

    .line 1460
    :cond_0
    const v0, 0xffffff

    if-nez p1, :cond_1

    .line 1461
    and-int/2addr v0, p0

    return v0

    .line 1463
    :cond_1
    shr-int/lit8 v1, p1, 0x7

    add-int/2addr p1, v1

    .line 1464
    ushr-int/lit8 v1, p0, 0x18

    .line 1465
    .local v1, "colorAlpha":I
    mul-int v2, v1, p1

    shr-int/lit8 v2, v2, 0x8

    .line 1466
    .local v2, "multipliedAlpha":I
    shl-int/lit8 v3, v2, 0x18

    and-int/2addr v0, p0

    or-int/2addr v0, v3

    return v0
.end method

.method private setBorderAlpha(IF)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "alpha"    # F

    .line 249
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderAlpha:Lcom/facebook/react/uimanager/Spacing;

    if-nez v0, :cond_0

    .line 250
    new-instance v0, Lcom/facebook/react/uimanager/Spacing;

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-direct {v0, v1}, Lcom/facebook/react/uimanager/Spacing;-><init>(F)V

    iput-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderAlpha:Lcom/facebook/react/uimanager/Spacing;

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderAlpha:Lcom/facebook/react/uimanager/Spacing;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/Spacing;->getRaw(I)F

    move-result v0

    invoke-static {v0, p2}, Lcom/facebook/react/uimanager/FloatUtil;->floatsEqual(FF)Z

    move-result v0

    if-nez v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderAlpha:Lcom/facebook/react/uimanager/Spacing;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/Spacing;->set(IF)Z

    .line 254
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->invalidateSelf()V

    .line 256
    :cond_1
    return-void
.end method

.method private setBorderRGB(IF)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "rgb"    # F

    .line 238
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderRGB:Lcom/facebook/react/uimanager/Spacing;

    if-nez v0, :cond_0

    .line 239
    new-instance v0, Lcom/facebook/react/uimanager/Spacing;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/react/uimanager/Spacing;-><init>(F)V

    iput-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderRGB:Lcom/facebook/react/uimanager/Spacing;

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderRGB:Lcom/facebook/react/uimanager/Spacing;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/Spacing;->getRaw(I)F

    move-result v0

    invoke-static {v0, p2}, Lcom/facebook/react/uimanager/FloatUtil;->floatsEqual(FF)Z

    move-result v0

    if-nez v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderRGB:Lcom/facebook/react/uimanager/Spacing;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/Spacing;->set(IF)Z

    .line 243
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->invalidateSelf()V

    .line 245
    :cond_1
    return-void
.end method

.method private updatePath()V
    .locals 57

    .line 571
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mNeedUpdatePathForBorderRadius:Z

    if-nez v1, :cond_0

    .line 572
    return-void

    .line 575
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mNeedUpdatePathForBorderRadius:Z

    .line 577
    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipPathForBorderRadius:Landroid/graphics/Path;

    if-nez v2, :cond_1

    .line 578
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipPathForBorderRadius:Landroid/graphics/Path;

    .line 581
    :cond_1
    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBackgroundColorRenderPath:Landroid/graphics/Path;

    if-nez v2, :cond_2

    .line 582
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBackgroundColorRenderPath:Landroid/graphics/Path;

    .line 585
    :cond_2
    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mOuterClipPathForBorderRadius:Landroid/graphics/Path;

    if-nez v2, :cond_3

    .line 586
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mOuterClipPathForBorderRadius:Landroid/graphics/Path;

    .line 589
    :cond_3
    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForBorderRadiusOutline:Landroid/graphics/Path;

    if-nez v2, :cond_4

    .line 590
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForBorderRadiusOutline:Landroid/graphics/Path;

    .line 593
    :cond_4
    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mCenterDrawPath:Landroid/graphics/Path;

    if-nez v2, :cond_5

    .line 594
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mCenterDrawPath:Landroid/graphics/Path;

    .line 597
    :cond_5
    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    if-nez v2, :cond_6

    .line 598
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    .line 601
    :cond_6
    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    if-nez v2, :cond_7

    .line 602
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    .line 605
    :cond_7
    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mTempRectForBorderRadiusOutline:Landroid/graphics/RectF;

    if-nez v2, :cond_8

    .line 606
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mTempRectForBorderRadiusOutline:Landroid/graphics/RectF;

    .line 609
    :cond_8
    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mTempRectForCenterDrawPath:Landroid/graphics/RectF;

    if-nez v2, :cond_9

    .line 610
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mTempRectForCenterDrawPath:Landroid/graphics/RectF;

    .line 613
    :cond_9
    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipPathForBorderRadius:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 614
    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBackgroundColorRenderPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 615
    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mOuterClipPathForBorderRadius:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 616
    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForBorderRadiusOutline:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 617
    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mCenterDrawPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 619
    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 620
    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 621
    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mTempRectForBorderRadiusOutline:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 622
    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mTempRectForCenterDrawPath:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 624
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getDirectionAwareBorderInsets()Landroid/graphics/RectF;

    move-result-object v2

    .line 626
    .local v2, "borderWidth":Landroid/graphics/RectF;
    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderColor(I)I

    move-result v3

    .line 627
    .local v3, "colorLeft":I
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderColor(I)I

    move-result v5

    .line 628
    .local v5, "colorTop":I
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderColor(I)I

    move-result v7

    .line 629
    .local v7, "colorRight":I
    const/4 v8, 0x3

    invoke-virtual {v0, v8}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderColor(I)I

    move-result v9

    .line 630
    .local v9, "colorBottom":I
    const/16 v10, 0x8

    invoke-virtual {v0, v10}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderColor(I)I

    move-result v11

    .line 632
    .local v11, "borderColor":I
    const/16 v12, 0x9

    invoke-virtual {v0, v12}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderColor(I)I

    move-result v13

    .line 633
    .local v13, "colorBlock":I
    const/16 v14, 0xb

    invoke-virtual {v0, v14}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderColor(I)I

    move-result v15

    .line 634
    .local v15, "colorBlockStart":I
    const/16 v8, 0xa

    invoke-virtual {v0, v8}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderColor(I)I

    move-result v16

    .line 636
    .local v16, "colorBlockEnd":I
    invoke-direct {v0, v12}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->isBorderColorDefined(I)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 637
    move v9, v13

    .line 638
    move v5, v13

    .line 640
    :cond_a
    invoke-direct {v0, v8}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->isBorderColorDefined(I)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 641
    move/from16 v9, v16

    .line 643
    :cond_b
    invoke-direct {v0, v14}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->isBorderColorDefined(I)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 644
    move v5, v15

    .line 648
    :cond_c
    const/4 v8, 0x0

    .line 649
    .local v8, "pathAdjustment":F
    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v12

    if-eqz v12, :cond_d

    .line 650
    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v12

    if-eqz v12, :cond_d

    .line 651
    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v12

    if-eqz v12, :cond_d

    .line 652
    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v12

    if-eqz v12, :cond_d

    .line 653
    invoke-static {v11}, Landroid/graphics/Color;->alpha(I)I

    move-result v12

    if-eqz v12, :cond_d

    .line 655
    iget-object v12, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v14, v12, Landroid/graphics/RectF;->top:F

    iget v6, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v14, v6

    iput v14, v12, Landroid/graphics/RectF;->top:F

    .line 656
    iget-object v6, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v12, v6, Landroid/graphics/RectF;->bottom:F

    iget v14, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v12, v14

    iput v12, v6, Landroid/graphics/RectF;->bottom:F

    .line 657
    iget-object v6, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v12, v6, Landroid/graphics/RectF;->left:F

    iget v14, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v12, v14

    iput v12, v6, Landroid/graphics/RectF;->left:F

    .line 658
    iget-object v6, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v12, v6, Landroid/graphics/RectF;->right:F

    iget v14, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v12, v14

    iput v12, v6, Landroid/graphics/RectF;->right:F

    .line 662
    const v8, 0x3f4ccccd    # 0.8f

    .line 665
    :cond_d
    iget-object v6, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mTempRectForCenterDrawPath:Landroid/graphics/RectF;

    iget v12, v6, Landroid/graphics/RectF;->top:F

    iget v14, v2, Landroid/graphics/RectF;->top:F

    const/high16 v17, 0x3f000000    # 0.5f

    mul-float v14, v14, v17

    add-float/2addr v12, v14

    iput v12, v6, Landroid/graphics/RectF;->top:F

    .line 666
    iget-object v6, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mTempRectForCenterDrawPath:Landroid/graphics/RectF;

    iget v12, v6, Landroid/graphics/RectF;->bottom:F

    iget v14, v2, Landroid/graphics/RectF;->bottom:F

    mul-float v14, v14, v17

    sub-float/2addr v12, v14

    iput v12, v6, Landroid/graphics/RectF;->bottom:F

    .line 667
    iget-object v6, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mTempRectForCenterDrawPath:Landroid/graphics/RectF;

    iget v12, v6, Landroid/graphics/RectF;->left:F

    iget v14, v2, Landroid/graphics/RectF;->left:F

    mul-float v14, v14, v17

    add-float/2addr v12, v14

    iput v12, v6, Landroid/graphics/RectF;->left:F

    .line 668
    iget-object v6, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mTempRectForCenterDrawPath:Landroid/graphics/RectF;

    iget v12, v6, Landroid/graphics/RectF;->right:F

    iget v14, v2, Landroid/graphics/RectF;->right:F

    mul-float v14, v14, v17

    sub-float/2addr v12, v14

    iput v12, v6, Landroid/graphics/RectF;->right:F

    .line 670
    iget-object v6, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderRadius:Lcom/facebook/react/uimanager/style/BorderRadiusStyle;

    .line 672
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getLayoutDirection()I

    move-result v12

    iget-object v14, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    .line 674
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-static {v4}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v4

    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    .line 675
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v1

    .line 671
    invoke-virtual {v6, v12, v14, v4, v1}, Lcom/facebook/react/uimanager/style/BorderRadiusStyle;->resolve(ILandroid/content/Context;FF)Lcom/facebook/react/uimanager/style/ComputedBorderRadius;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mComputedBorderRadius:Lcom/facebook/react/uimanager/style/ComputedBorderRadius;

    .line 676
    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mComputedBorderRadius:Lcom/facebook/react/uimanager/style/ComputedBorderRadius;

    invoke-virtual {v1}, Lcom/facebook/react/uimanager/style/ComputedBorderRadius;->getTopLeft()Lcom/facebook/react/uimanager/style/CornerRadii;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/react/uimanager/style/CornerRadii;->toPixelFromDIP()Lcom/facebook/react/uimanager/style/CornerRadii;

    move-result-object v1

    .line 677
    .local v1, "topLeftRadius":Lcom/facebook/react/uimanager/style/CornerRadii;
    iget-object v4, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mComputedBorderRadius:Lcom/facebook/react/uimanager/style/ComputedBorderRadius;

    invoke-virtual {v4}, Lcom/facebook/react/uimanager/style/ComputedBorderRadius;->getTopRight()Lcom/facebook/react/uimanager/style/CornerRadii;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/react/uimanager/style/CornerRadii;->toPixelFromDIP()Lcom/facebook/react/uimanager/style/CornerRadii;

    move-result-object v4

    .line 678
    .local v4, "topRightRadius":Lcom/facebook/react/uimanager/style/CornerRadii;
    iget-object v6, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mComputedBorderRadius:Lcom/facebook/react/uimanager/style/ComputedBorderRadius;

    invoke-virtual {v6}, Lcom/facebook/react/uimanager/style/ComputedBorderRadius;->getBottomLeft()Lcom/facebook/react/uimanager/style/CornerRadii;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/react/uimanager/style/CornerRadii;->toPixelFromDIP()Lcom/facebook/react/uimanager/style/CornerRadii;

    move-result-object v6

    .line 679
    .local v6, "bottomLeftRadius":Lcom/facebook/react/uimanager/style/CornerRadii;
    iget-object v12, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mComputedBorderRadius:Lcom/facebook/react/uimanager/style/ComputedBorderRadius;

    invoke-virtual {v12}, Lcom/facebook/react/uimanager/style/ComputedBorderRadius;->getBottomRight()Lcom/facebook/react/uimanager/style/CornerRadii;

    move-result-object v12

    invoke-virtual {v12}, Lcom/facebook/react/uimanager/style/CornerRadii;->toPixelFromDIP()Lcom/facebook/react/uimanager/style/CornerRadii;

    move-result-object v12

    .line 681
    .local v12, "bottomRightRadius":Lcom/facebook/react/uimanager/style/CornerRadii;
    nop

    .line 682
    invoke-virtual {v1}, Lcom/facebook/react/uimanager/style/CornerRadii;->getHorizontal()F

    move-result v14

    iget v10, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0, v14, v10}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getInnerBorderRadius(FF)F

    move-result v10

    .line 683
    .local v10, "innerTopLeftRadiusX":F
    nop

    .line 684
    invoke-virtual {v1}, Lcom/facebook/react/uimanager/style/CornerRadii;->getVertical()F

    move-result v14

    move/from16 v18, v3

    .end local v3    # "colorLeft":I
    .local v18, "colorLeft":I
    iget v3, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v14, v3}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getInnerBorderRadius(FF)F

    move-result v3

    .line 685
    .local v3, "innerTopLeftRadiusY":F
    nop

    .line 686
    invoke-virtual {v4}, Lcom/facebook/react/uimanager/style/CornerRadii;->getHorizontal()F

    move-result v14

    move/from16 v19, v5

    .end local v5    # "colorTop":I
    .local v19, "colorTop":I
    iget v5, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0, v14, v5}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getInnerBorderRadius(FF)F

    move-result v5

    .line 687
    .local v5, "innerTopRightRadiusX":F
    nop

    .line 688
    invoke-virtual {v4}, Lcom/facebook/react/uimanager/style/CornerRadii;->getVertical()F

    move-result v14

    move/from16 v20, v7

    .end local v7    # "colorRight":I
    .local v20, "colorRight":I
    iget v7, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v14, v7}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getInnerBorderRadius(FF)F

    move-result v7

    .line 689
    .local v7, "innerTopRightRadiusY":F
    nop

    .line 690
    invoke-virtual {v12}, Lcom/facebook/react/uimanager/style/CornerRadii;->getHorizontal()F

    move-result v14

    move/from16 v21, v9

    .end local v9    # "colorBottom":I
    .local v21, "colorBottom":I
    iget v9, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0, v14, v9}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getInnerBorderRadius(FF)F

    move-result v9

    .line 691
    .local v9, "innerBottomRightRadiusX":F
    nop

    .line 692
    invoke-virtual {v12}, Lcom/facebook/react/uimanager/style/CornerRadii;->getVertical()F

    move-result v14

    move/from16 v22, v11

    .end local v11    # "borderColor":I
    .local v22, "borderColor":I
    iget v11, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v14, v11}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getInnerBorderRadius(FF)F

    move-result v11

    .line 693
    .local v11, "innerBottomRightRadiusY":F
    nop

    .line 694
    invoke-virtual {v6}, Lcom/facebook/react/uimanager/style/CornerRadii;->getHorizontal()F

    move-result v14

    move/from16 v23, v13

    .end local v13    # "colorBlock":I
    .local v23, "colorBlock":I
    iget v13, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0, v14, v13}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getInnerBorderRadius(FF)F

    move-result v13

    .line 695
    .local v13, "innerBottomLeftRadiusX":F
    nop

    .line 696
    invoke-virtual {v6}, Lcom/facebook/react/uimanager/style/CornerRadii;->getVertical()F

    move-result v14

    move/from16 v24, v15

    .end local v15    # "colorBlockStart":I
    .local v24, "colorBlockStart":I
    iget v15, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v14, v15}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getInnerBorderRadius(FF)F

    move-result v14

    .line 698
    .local v14, "innerBottomLeftRadiusY":F
    iget-object v15, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipPathForBorderRadius:Landroid/graphics/Path;

    move-object/from16 v25, v2

    .end local v2    # "borderWidth":Landroid/graphics/RectF;
    .local v25, "borderWidth":Landroid/graphics/RectF;
    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    move-object/from16 v26, v6

    move-object/from16 v27, v12

    const/16 v6, 0x8

    .end local v6    # "bottomLeftRadius":Lcom/facebook/react/uimanager/style/CornerRadii;
    .end local v12    # "bottomRightRadius":Lcom/facebook/react/uimanager/style/CornerRadii;
    .local v26, "bottomLeftRadius":Lcom/facebook/react/uimanager/style/CornerRadii;
    .local v27, "bottomRightRadius":Lcom/facebook/react/uimanager/style/CornerRadii;
    new-array v12, v6, [F

    const/4 v6, 0x0

    aput v10, v12, v6

    const/4 v6, 0x1

    aput v3, v12, v6

    const/4 v6, 0x2

    aput v5, v12, v6

    const/4 v6, 0x3

    aput v7, v12, v6

    const/4 v6, 0x4

    aput v9, v12, v6

    const/16 v28, 0x5

    aput v11, v12, v28

    const/16 v29, 0x6

    aput v13, v12, v29

    const/16 v30, 0x7

    aput v14, v12, v30

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v15, v2, v12, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 716
    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBackgroundColorRenderPath:Landroid/graphics/Path;

    iget-object v6, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    sub-float v32, v6, v8

    iget-object v6, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    sub-float v33, v6, v8

    iget-object v6, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    add-float v34, v6, v8

    iget-object v6, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    add-float v35, v6, v8

    const/16 v6, 0x8

    new-array v12, v6, [F

    const/4 v6, 0x0

    aput v10, v12, v6

    const/4 v6, 0x1

    aput v3, v12, v6

    const/4 v6, 0x2

    aput v5, v12, v6

    const/4 v6, 0x3

    aput v7, v12, v6

    const/4 v6, 0x4

    aput v9, v12, v6

    aput v11, v12, v28

    aput v13, v12, v29

    aput v14, v12, v30

    sget-object v37, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v31, v2

    move-object/from16 v36, v12

    invoke-virtual/range {v31 .. v37}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    .line 733
    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mOuterClipPathForBorderRadius:Landroid/graphics/Path;

    iget-object v6, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    .line 736
    invoke-virtual {v1}, Lcom/facebook/react/uimanager/style/CornerRadii;->getHorizontal()F

    move-result v12

    .line 737
    invoke-virtual {v1}, Lcom/facebook/react/uimanager/style/CornerRadii;->getVertical()F

    move-result v15

    .line 738
    invoke-virtual {v4}, Lcom/facebook/react/uimanager/style/CornerRadii;->getHorizontal()F

    move-result v31

    .line 739
    invoke-virtual {v4}, Lcom/facebook/react/uimanager/style/CornerRadii;->getVertical()F

    move-result v32

    .line 740
    invoke-virtual/range {v27 .. v27}, Lcom/facebook/react/uimanager/style/CornerRadii;->getHorizontal()F

    move-result v33

    .line 741
    invoke-virtual/range {v27 .. v27}, Lcom/facebook/react/uimanager/style/CornerRadii;->getVertical()F

    move-result v34

    .line 742
    invoke-virtual/range {v26 .. v26}, Lcom/facebook/react/uimanager/style/CornerRadii;->getHorizontal()F

    move-result v35

    .line 743
    invoke-virtual/range {v26 .. v26}, Lcom/facebook/react/uimanager/style/CornerRadii;->getVertical()F

    move-result v36

    move/from16 v37, v8

    move/from16 v38, v11

    const/16 v8, 0x8

    .end local v8    # "pathAdjustment":F
    .end local v11    # "innerBottomRightRadiusY":F
    .local v37, "pathAdjustment":F
    .local v38, "innerBottomRightRadiusY":F
    new-array v11, v8, [F

    const/4 v8, 0x0

    aput v12, v11, v8

    const/4 v8, 0x1

    aput v15, v11, v8

    const/4 v8, 0x2

    aput v31, v11, v8

    const/4 v8, 0x3

    aput v32, v11, v8

    const/4 v8, 0x4

    aput v33, v11, v8

    aput v34, v11, v28

    aput v35, v11, v29

    aput v36, v11, v30

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 733
    invoke-virtual {v2, v6, v11, v8}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 747
    const/4 v2, 0x0

    .line 749
    .local v2, "extraRadiusForOutline":F
    iget-object v6, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    const/high16 v8, 0x40000000    # 2.0f

    if-eqz v6, :cond_e

    .line 750
    iget-object v6, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    const/16 v11, 0x8

    invoke-virtual {v6, v11}, Lcom/facebook/react/uimanager/Spacing;->get(I)F

    move-result v6

    div-float v2, v6, v8

    .line 753
    :cond_e
    iget-object v6, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForBorderRadiusOutline:Landroid/graphics/Path;

    iget-object v11, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mTempRectForBorderRadiusOutline:Landroid/graphics/RectF;

    .line 756
    invoke-virtual {v1}, Lcom/facebook/react/uimanager/style/CornerRadii;->getHorizontal()F

    move-result v12

    add-float/2addr v12, v2

    .line 757
    invoke-virtual {v1}, Lcom/facebook/react/uimanager/style/CornerRadii;->getVertical()F

    move-result v15

    add-float/2addr v15, v2

    .line 758
    invoke-virtual {v4}, Lcom/facebook/react/uimanager/style/CornerRadii;->getHorizontal()F

    move-result v31

    add-float v31, v31, v2

    .line 759
    invoke-virtual {v4}, Lcom/facebook/react/uimanager/style/CornerRadii;->getVertical()F

    move-result v32

    add-float v32, v32, v2

    .line 760
    invoke-virtual/range {v27 .. v27}, Lcom/facebook/react/uimanager/style/CornerRadii;->getHorizontal()F

    move-result v33

    add-float v33, v33, v2

    .line 761
    invoke-virtual/range {v27 .. v27}, Lcom/facebook/react/uimanager/style/CornerRadii;->getVertical()F

    move-result v34

    add-float v34, v34, v2

    .line 762
    invoke-virtual/range {v26 .. v26}, Lcom/facebook/react/uimanager/style/CornerRadii;->getHorizontal()F

    move-result v35

    add-float v35, v35, v2

    .line 763
    invoke-virtual/range {v26 .. v26}, Lcom/facebook/react/uimanager/style/CornerRadii;->getVertical()F

    move-result v36

    add-float v36, v36, v2

    move/from16 v39, v2

    const/16 v8, 0x8

    .end local v2    # "extraRadiusForOutline":F
    .local v39, "extraRadiusForOutline":F
    new-array v2, v8, [F

    const/4 v8, 0x0

    aput v12, v2, v8

    const/4 v8, 0x1

    aput v15, v2, v8

    const/4 v8, 0x2

    aput v31, v2, v8

    const/4 v8, 0x3

    aput v32, v2, v8

    const/4 v8, 0x4

    aput v33, v2, v8

    aput v34, v2, v28

    aput v35, v2, v29

    aput v36, v2, v30

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 753
    invoke-virtual {v6, v11, v2, v8}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 767
    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mCenterDrawPath:Landroid/graphics/Path;

    iget-object v6, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mTempRectForCenterDrawPath:Landroid/graphics/RectF;

    .line 770
    invoke-virtual {v1}, Lcom/facebook/react/uimanager/style/CornerRadii;->getHorizontal()F

    move-result v8

    move-object/from16 v11, v25

    .end local v25    # "borderWidth":Landroid/graphics/RectF;
    .local v11, "borderWidth":Landroid/graphics/RectF;
    iget v12, v11, Landroid/graphics/RectF;->left:F

    mul-float v12, v12, v17

    sub-float/2addr v8, v12

    .line 771
    invoke-virtual {v1}, Lcom/facebook/react/uimanager/style/CornerRadii;->getVertical()F

    move-result v12

    iget v15, v11, Landroid/graphics/RectF;->top:F

    mul-float v15, v15, v17

    sub-float/2addr v12, v15

    .line 772
    invoke-virtual {v4}, Lcom/facebook/react/uimanager/style/CornerRadii;->getHorizontal()F

    move-result v15

    move-object/from16 v25, v1

    .end local v1    # "topLeftRadius":Lcom/facebook/react/uimanager/style/CornerRadii;
    .local v25, "topLeftRadius":Lcom/facebook/react/uimanager/style/CornerRadii;
    iget v1, v11, Landroid/graphics/RectF;->right:F

    mul-float v1, v1, v17

    sub-float/2addr v15, v1

    .line 773
    invoke-virtual {v4}, Lcom/facebook/react/uimanager/style/CornerRadii;->getVertical()F

    move-result v1

    move-object/from16 v31, v4

    .end local v4    # "topRightRadius":Lcom/facebook/react/uimanager/style/CornerRadii;
    .local v31, "topRightRadius":Lcom/facebook/react/uimanager/style/CornerRadii;
    iget v4, v11, Landroid/graphics/RectF;->top:F

    mul-float v4, v4, v17

    sub-float/2addr v1, v4

    .line 774
    invoke-virtual/range {v27 .. v27}, Lcom/facebook/react/uimanager/style/CornerRadii;->getHorizontal()F

    move-result v4

    move/from16 v32, v9

    .end local v9    # "innerBottomRightRadiusX":F
    .local v32, "innerBottomRightRadiusX":F
    iget v9, v11, Landroid/graphics/RectF;->right:F

    mul-float v9, v9, v17

    sub-float/2addr v4, v9

    .line 775
    invoke-virtual/range {v27 .. v27}, Lcom/facebook/react/uimanager/style/CornerRadii;->getVertical()F

    move-result v9

    move/from16 v33, v7

    .end local v7    # "innerTopRightRadiusY":F
    .local v33, "innerTopRightRadiusY":F
    iget v7, v11, Landroid/graphics/RectF;->bottom:F

    mul-float v7, v7, v17

    sub-float/2addr v9, v7

    .line 776
    invoke-virtual/range {v26 .. v26}, Lcom/facebook/react/uimanager/style/CornerRadii;->getHorizontal()F

    move-result v7

    move/from16 v34, v5

    .end local v5    # "innerTopRightRadiusX":F
    .local v34, "innerTopRightRadiusX":F
    iget v5, v11, Landroid/graphics/RectF;->left:F

    mul-float v5, v5, v17

    sub-float/2addr v7, v5

    .line 777
    invoke-virtual/range {v26 .. v26}, Lcom/facebook/react/uimanager/style/CornerRadii;->getVertical()F

    move-result v5

    move/from16 v35, v13

    .end local v13    # "innerBottomLeftRadiusX":F
    .local v35, "innerBottomLeftRadiusX":F
    iget v13, v11, Landroid/graphics/RectF;->bottom:F

    mul-float v13, v13, v17

    sub-float/2addr v5, v13

    const/16 v13, 0x8

    new-array v13, v13, [F

    const/16 v17, 0x0

    aput v8, v13, v17

    const/4 v8, 0x1

    aput v12, v13, v8

    const/4 v8, 0x2

    aput v15, v13, v8

    const/4 v8, 0x3

    aput v1, v13, v8

    const/4 v1, 0x4

    aput v4, v13, v1

    aput v9, v13, v28

    aput v7, v13, v29

    aput v5, v13, v30

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 767
    invoke-virtual {v2, v6, v13, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 868
    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerTopLeftCorner:Landroid/graphics/PointF;

    if-nez v1, :cond_f

    .line 869
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerTopLeftCorner:Landroid/graphics/PointF;

    .line 873
    :cond_f
    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerTopLeftCorner:Landroid/graphics/PointF;

    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 874
    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerTopLeftCorner:Landroid/graphics/PointF;

    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 876
    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-double v1, v1

    move-wide/from16 v40, v1

    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    move-wide/from16 v42, v1

    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v8, v10, v2

    add-float/2addr v1, v8

    float-to-double v4, v1

    move-wide/from16 v44, v4

    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    mul-float v8, v3, v2

    add-float/2addr v1, v8

    float-to-double v1, v1

    move-wide/from16 v46, v1

    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-double v1, v1

    move-wide/from16 v48, v1

    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    move-wide/from16 v50, v1

    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-double v1, v1

    move-wide/from16 v52, v1

    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    move-wide/from16 v54, v1

    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerTopLeftCorner:Landroid/graphics/PointF;

    move-object/from16 v56, v1

    invoke-static/range {v40 .. v56}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getEllipseIntersectionWithLine(DDDDDDDDLandroid/graphics/PointF;)V

    .line 895
    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerBottomLeftCorner:Landroid/graphics/PointF;

    if-nez v1, :cond_10

    .line 896
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerBottomLeftCorner:Landroid/graphics/PointF;

    .line 899
    :cond_10
    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerBottomLeftCorner:Landroid/graphics/PointF;

    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 900
    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerBottomLeftCorner:Landroid/graphics/PointF;

    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 902
    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-double v1, v1

    move-wide/from16 v40, v1

    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v8, v14, v2

    sub-float/2addr v1, v8

    float-to-double v4, v1

    move-wide/from16 v42, v4

    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    mul-float v13, v35, v2

    add-float/2addr v1, v13

    float-to-double v1, v1

    move-wide/from16 v44, v1

    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-double v1, v1

    move-wide/from16 v46, v1

    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-double v1, v1

    move-wide/from16 v48, v1

    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-double v1, v1

    move-wide/from16 v50, v1

    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-double v1, v1

    move-wide/from16 v52, v1

    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-double v1, v1

    move-wide/from16 v54, v1

    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerBottomLeftCorner:Landroid/graphics/PointF;

    move-object/from16 v56, v1

    invoke-static/range {v40 .. v56}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getEllipseIntersectionWithLine(DDDDDDDDLandroid/graphics/PointF;)V

    .line 921
    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerTopRightCorner:Landroid/graphics/PointF;

    if-nez v1, :cond_11

    .line 922
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerTopRightCorner:Landroid/graphics/PointF;

    .line 925
    :cond_11
    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerTopRightCorner:Landroid/graphics/PointF;

    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 926
    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerTopRightCorner:Landroid/graphics/PointF;

    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 928
    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v5, v34, v2

    sub-float/2addr v1, v5

    float-to-double v1, v1

    move-wide/from16 v40, v1

    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    move-wide/from16 v42, v1

    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-double v1, v1

    move-wide/from16 v44, v1

    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v7, v33, v2

    add-float/2addr v1, v7

    float-to-double v1, v1

    move-wide/from16 v46, v1

    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-double v1, v1

    move-wide/from16 v48, v1

    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    move-wide/from16 v50, v1

    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-double v1, v1

    move-wide/from16 v52, v1

    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    move-wide/from16 v54, v1

    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerTopRightCorner:Landroid/graphics/PointF;

    move-object/from16 v56, v1

    invoke-static/range {v40 .. v56}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getEllipseIntersectionWithLine(DDDDDDDDLandroid/graphics/PointF;)V

    .line 947
    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerBottomRightCorner:Landroid/graphics/PointF;

    if-nez v1, :cond_12

    .line 948
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerBottomRightCorner:Landroid/graphics/PointF;

    .line 951
    :cond_12
    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerBottomRightCorner:Landroid/graphics/PointF;

    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 952
    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerBottomRightCorner:Landroid/graphics/PointF;

    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 954
    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v9, v32, v2

    sub-float/2addr v1, v9

    float-to-double v4, v1

    move-wide/from16 v40, v4

    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    mul-float v2, v2, v38

    sub-float/2addr v1, v2

    float-to-double v1, v1

    move-wide/from16 v42, v1

    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-double v1, v1

    move-wide/from16 v44, v1

    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-double v1, v1

    move-wide/from16 v46, v1

    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-double v1, v1

    move-wide/from16 v48, v1

    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-double v1, v1

    move-wide/from16 v50, v1

    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-double v1, v1

    move-wide/from16 v52, v1

    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-double v1, v1

    move-wide/from16 v54, v1

    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerBottomRightCorner:Landroid/graphics/PointF;

    move-object/from16 v56, v1

    invoke-static/range {v40 .. v56}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getEllipseIntersectionWithLine(DDDDDDDDLandroid/graphics/PointF;)V

    .line 971
    return-void
.end method

.method private updatePathEffect()V
    .locals 2

    .line 1071
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderStyle:Lcom/facebook/react/uimanager/style/BorderStyle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderStyle:Lcom/facebook/react/uimanager/style/BorderStyle;

    invoke-virtual {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getFullBorderWidth()F

    move-result v1

    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getPathEffect(Lcom/facebook/react/uimanager/style/BorderStyle;F)Landroid/graphics/PathEffect;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1073
    .local v0, "mPathEffectForBorderStyle":Landroid/graphics/PathEffect;
    :goto_0
    iget-object v1, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 1074
    return-void
.end method

.method private updatePathEffect(I)V
    .locals 3
    .param p1, "borderWidth"    # I

    .line 1077
    const/4 v0, 0x0

    .line 1078
    .local v0, "pathEffectForBorderStyle":Landroid/graphics/PathEffect;
    iget-object v1, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderStyle:Lcom/facebook/react/uimanager/style/BorderStyle;

    if-eqz v1, :cond_0

    .line 1079
    iget-object v1, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderStyle:Lcom/facebook/react/uimanager/style/BorderStyle;

    int-to-float v2, p1

    invoke-static {v1, v2}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getPathEffect(Lcom/facebook/react/uimanager/style/BorderStyle;F)Landroid/graphics/PathEffect;

    move-result-object v0

    .line 1081
    :cond_0
    iget-object v1, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 1082
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 141
    invoke-direct {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->updatePathEffect()V

    .line 142
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->hasRoundedBorders()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->drawRectangularBackgroundWithBorders(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 145
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->drawRoundedBackgroundWithBorders(Landroid/graphics/Canvas;)V

    .line 147
    :goto_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 169
    iget v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mAlpha:I

    return v0
.end method

.method public getBorderBoxPath()Landroid/graphics/Path;
    .locals 2

    .line 353
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->hasRoundedBorders()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    invoke-direct {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->updatePath()V

    .line 355
    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mOuterClipPathForBorderRadius:Landroid/graphics/Path;

    invoke-static {v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    return-object v0

    .line 358
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBorderBoxRect()Landroid/graphics/RectF;
    .locals 2

    .line 362
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getBorderColor(I)I
    .locals 3
    .param p1, "position"    # I

    .line 1379
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderRGB:Lcom/facebook/react/uimanager/Spacing;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderRGB:Lcom/facebook/react/uimanager/Spacing;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/Spacing;->get(I)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1380
    .local v0, "rgb":F
    :goto_0
    iget-object v1, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderAlpha:Lcom/facebook/react/uimanager/Spacing;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderAlpha:Lcom/facebook/react/uimanager/Spacing;

    invoke-virtual {v1, p1}, Lcom/facebook/react/uimanager/Spacing;->get(I)F

    move-result v1

    goto :goto_1

    :cond_1
    const/high16 v1, 0x437f0000    # 255.0f

    .line 1382
    .local v1, "alpha":F
    :goto_1
    invoke-static {v1, v0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->colorFromAlphaAndRGBComponents(FF)I

    move-result v2

    return v2
.end method

.method public getBorderRadius()Lcom/facebook/react/uimanager/style/BorderRadiusStyle;
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderRadius:Lcom/facebook/react/uimanager/style/BorderRadiusStyle;

    return-object v0
.end method

.method public getBorderStyle()Lcom/facebook/react/uimanager/style/BorderStyle;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderStyle:Lcom/facebook/react/uimanager/style/BorderStyle;

    return-object v0
.end method

.method public getBorderWidth(I)Ljava/lang/Float;
    .locals 3
    .param p1, "spacingType"    # I

    .line 1054
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1055
    return-object v1

    .line 1058
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/Spacing;->getRaw(I)F

    move-result v0

    .line 1060
    .local v0, "width":F
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1061
    return-object v1

    .line 1064
    :cond_1
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1
.end method

.method public getBorderWidthOrDefaultTo(FI)F
    .locals 2
    .param p1, "defaultValue"    # F
    .param p2, "spacingType"    # I

    .line 1045
    invoke-virtual {p0, p2}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderWidth(I)Ljava/lang/Float;

    move-result-object v0

    .line 1046
    .local v0, "width":Ljava/lang/Float;
    if-nez v0, :cond_0

    .line 1047
    return p1

    .line 1050
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1
.end method

.method public getColor()I
    .locals 1
    .annotation runtime Lcom/facebook/react/common/annotations/VisibleForTesting;
    .end annotation

    .line 349
    iget v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mColor:I

    return v0
.end method

.method public getComputedBorderRadius()Lcom/facebook/react/uimanager/style/ComputedBorderRadius;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "0.76.0"
    .end annotation

    .line 334
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mComputedBorderRadius:Lcom/facebook/react/uimanager/style/ComputedBorderRadius;

    return-object v0
.end method

.method public getDirectionAwareBorderInsets()Landroid/graphics/RectF;
    .locals 11

    .line 1386
    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderWidthOrDefaultTo(FI)F

    move-result v0

    .line 1387
    .local v0, "borderWidth":F
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderWidthOrDefaultTo(FI)F

    move-result v2

    .line 1388
    .local v2, "borderTopWidth":F
    const/4 v3, 0x3

    invoke-virtual {p0, v0, v3}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderWidthOrDefaultTo(FI)F

    move-result v3

    .line 1389
    .local v3, "borderBottomWidth":F
    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderWidthOrDefaultTo(FI)F

    move-result v5

    .line 1390
    .local v5, "borderLeftWidth":F
    const/4 v6, 0x2

    invoke-virtual {p0, v0, v6}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderWidthOrDefaultTo(FI)F

    move-result v6

    .line 1392
    .local v6, "borderRightWidth":F
    iget-object v7, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    if-eqz v7, :cond_9

    .line 1393
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getLayoutDirection()I

    move-result v7

    if-ne v7, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    .line 1394
    .local v1, "isRTL":Z
    :goto_0
    iget-object v4, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Lcom/facebook/react/uimanager/Spacing;->getRaw(I)F

    move-result v4

    .line 1395
    .local v4, "borderStartWidth":F
    iget-object v7, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Lcom/facebook/react/uimanager/Spacing;->getRaw(I)F

    move-result v7

    .line 1397
    .local v7, "borderEndWidth":F
    invoke-static {}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->getInstance()Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    move-result-object v8

    iget-object v9, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->doLeftAndRightSwapInRTL(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1398
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1399
    move v4, v5

    .line 1402
    :cond_1
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1403
    move v7, v6

    .line 1406
    :cond_2
    if-eqz v1, :cond_3

    move v8, v7

    goto :goto_1

    :cond_3
    move v8, v4

    .line 1407
    .local v8, "directionAwareBorderLeftWidth":F
    :goto_1
    if-eqz v1, :cond_4

    move v9, v4

    goto :goto_2

    :cond_4
    move v9, v7

    .line 1409
    .local v9, "directionAwareBorderRightWidth":F
    :goto_2
    move v5, v8

    .line 1410
    move v6, v9

    .line 1411
    .end local v8    # "directionAwareBorderLeftWidth":F
    .end local v9    # "directionAwareBorderRightWidth":F
    goto :goto_5

    .line 1412
    :cond_5
    if-eqz v1, :cond_6

    move v8, v7

    goto :goto_3

    :cond_6
    move v8, v4

    .line 1413
    .restart local v8    # "directionAwareBorderLeftWidth":F
    :goto_3
    if-eqz v1, :cond_7

    move v9, v4

    goto :goto_4

    :cond_7
    move v9, v7

    .line 1415
    .restart local v9    # "directionAwareBorderRightWidth":F
    :goto_4
    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-nez v10, :cond_8

    .line 1416
    move v5, v8

    .line 1419
    :cond_8
    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-nez v10, :cond_9

    .line 1420
    move v6, v9

    .line 1425
    .end local v1    # "isRTL":Z
    .end local v4    # "borderStartWidth":F
    .end local v7    # "borderEndWidth":F
    .end local v8    # "directionAwareBorderLeftWidth":F
    .end local v9    # "directionAwareBorderRightWidth":F
    :cond_9
    :goto_5
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v5, v2, v6, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method

.method public getFullBorderWidth()F
    .locals 2

    .line 1086
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/Spacing;->getRaw(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1087
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/Spacing;->getRaw(I)F

    move-result v0

    goto :goto_0

    .line 1088
    :cond_0
    const/4 v0, 0x0

    .line 1086
    :goto_0
    return v0
.end method

.method public getInnerBorderRadius(FF)F
    .locals 2
    .param p1, "computedRadius"    # F
    .param p2, "borderWidth"    # F

    .line 327
    sub-float v0, p1, p2

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public getLayoutDirection()I
    .locals 2

    .line 187
    iget v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mLayoutDirectionOverride:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mLayoutDirectionOverride:I

    :goto_0
    return v0
.end method

.method public getOpacity()I
    .locals 2

    .line 192
    iget v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iget v1, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mAlpha:I

    mul-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1
    .param p1, "outline"    # Landroid/graphics/Outline;

    .line 198
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->hasRoundedBorders()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-direct {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->updatePath()V

    .line 201
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForBorderRadiusOutline:Landroid/graphics/Path;

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setRect(Landroid/graphics/Rect;)V

    .line 205
    :goto_0
    return-void
.end method

.method public getPaddingBoxPath()Landroid/graphics/Path;
    .locals 2

    .line 366
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->hasRoundedBorders()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    invoke-direct {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->updatePath()V

    .line 368
    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipPathForBorderRadius:Landroid/graphics/Path;

    invoke-static {v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    return-object v0

    .line 371
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPaddingBoxRect()Landroid/graphics/RectF;
    .locals 7

    .line 375
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getDirectionAwareBorderInsets()Landroid/graphics/RectF;

    move-result-object v0

    .line 376
    .local v0, "insets":Landroid/graphics/RectF;
    if-nez v0, :cond_0

    .line 377
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1

    .line 380
    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, v0, Landroid/graphics/RectF;->top:F

    .line 383
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    .line 384
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 380
    return-object v1
.end method

.method public hasRoundedBorders()Z
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderRadius:Lcom/facebook/react/uimanager/style/BorderRadiusStyle;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/style/BorderRadiusStyle;->hasRoundedBorders()Z

    move-result v0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 155
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mNeedUpdatePathForBorderRadius:Z

    .line 157
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 161
    iget v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mAlpha:I

    if-eq p1, v0, :cond_0

    .line 162
    iput p1, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mAlpha:I

    .line 163
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->invalidateSelf()V

    .line 165
    :cond_0
    return-void
.end method

.method public setBackgroundImage(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/style/BackgroundImageLayer;",
            ">;)V"
        }
    .end annotation

    .line 343
    .local p1, "backgroundImageLayers":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/style/BackgroundImageLayer;>;"
    iput-object p1, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBackgroundImageLayers:Ljava/util/List;

    .line 344
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->invalidateSelf()V

    .line 345
    return-void
.end method

.method public setBorderColor(ILjava/lang/Integer;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "color"    # Ljava/lang/Integer;

    .line 228
    const/high16 v0, 0x7fc00000    # Float.NaN

    if-nez p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v2, 0xffffff

    and-int/2addr v1, v2

    int-to-float v1, v1

    .line 229
    .local v1, "rgbComponent":F
    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x18

    int-to-float v0, v0

    .line 231
    .local v0, "alphaComponent":F
    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->setBorderRGB(IF)V

    .line 232
    invoke-direct {p0, p1, v0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->setBorderAlpha(IF)V

    .line 233
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mNeedUpdatePathForBorderRadius:Z

    .line 234
    return-void
.end method

.method public setBorderRadius(Lcom/facebook/react/uimanager/style/BorderRadiusProp;Lcom/facebook/react/uimanager/LengthPercentage;)V
    .locals 1
    .param p1, "property"    # Lcom/facebook/react/uimanager/style/BorderRadiusProp;
    .param p2, "radius"    # Lcom/facebook/react/uimanager/LengthPercentage;

    .line 309
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderRadius:Lcom/facebook/react/uimanager/style/BorderRadiusStyle;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/style/BorderRadiusStyle;->get(Lcom/facebook/react/uimanager/style/BorderRadiusProp;)Lcom/facebook/react/uimanager/LengthPercentage;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderRadius:Lcom/facebook/react/uimanager/style/BorderRadiusStyle;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/style/BorderRadiusStyle;->set(Lcom/facebook/react/uimanager/style/BorderRadiusProp;Lcom/facebook/react/uimanager/LengthPercentage;)V

    .line 311
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mNeedUpdatePathForBorderRadius:Z

    .line 312
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->invalidateSelf()V

    .line 314
    :cond_0
    return-void
.end method

.method public setBorderRadius(Lcom/facebook/react/uimanager/style/BorderRadiusStyle;)V
    .locals 0
    .param p1, "radius"    # Lcom/facebook/react/uimanager/style/BorderRadiusStyle;

    .line 317
    iput-object p1, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderRadius:Lcom/facebook/react/uimanager/style/BorderRadiusStyle;

    .line 318
    return-void
.end method

.method public setBorderStyle(Lcom/facebook/react/uimanager/style/BorderStyle;)V
    .locals 1
    .param p1, "borderStyle"    # Lcom/facebook/react/uimanager/style/BorderStyle;

    .line 265
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderStyle:Lcom/facebook/react/uimanager/style/BorderStyle;

    if-eq v0, p1, :cond_0

    .line 266
    iput-object p1, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderStyle:Lcom/facebook/react/uimanager/style/BorderStyle;

    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mNeedUpdatePathForBorderRadius:Z

    .line 268
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->invalidateSelf()V

    .line 270
    :cond_0
    return-void
.end method

.method public setBorderStyle(Ljava/lang/String;)V
    .locals 1
    .param p1, "style"    # Ljava/lang/String;

    .line 260
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/react/uimanager/style/BorderStyle;->valueOf(Ljava/lang/String;)Lcom/facebook/react/uimanager/style/BorderStyle;

    move-result-object v0

    .line 261
    .local v0, "borderStyle":Lcom/facebook/react/uimanager/style/BorderStyle;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->setBorderStyle(Lcom/facebook/react/uimanager/style/BorderStyle;)V

    .line 262
    return-void
.end method

.method public setBorderWidth(IF)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "width"    # F

    .line 208
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Lcom/facebook/react/uimanager/Spacing;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/Spacing;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/Spacing;->getRaw(I)F

    move-result v0

    invoke-static {v0, p2}, Lcom/facebook/react/uimanager/FloatUtil;->floatsEqual(FF)Z

    move-result v0

    if-nez v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/Spacing;->set(IF)Z

    .line 213
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 221
    :pswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mNeedUpdatePathForBorderRadius:Z

    .line 223
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->invalidateSelf()V

    .line 225
    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 338
    iput p1, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mColor:I

    .line 339
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->invalidateSelf()V

    .line 340
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .line 175
    return-void
.end method

.method public setLayoutDirectionOverride(I)V
    .locals 1
    .param p1, "layoutDirection"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 179
    iget v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mLayoutDirectionOverride:I

    if-eq v0, p1, :cond_0

    .line 180
    iput p1, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mLayoutDirectionOverride:I

    .line 182
    :cond_0
    return-void
.end method

.method public setRadius(F)V
    .locals 5
    .param p1, "radius"    # F
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "0.75.0"
    .end annotation

    .line 281
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 282
    .local v0, "boxedRadius":Ljava/lang/Float;
    :goto_0
    if-nez v0, :cond_1

    .line 283
    sget-object v2, Lcom/facebook/react/uimanager/style/BorderRadiusProp;->BORDER_RADIUS:Lcom/facebook/react/uimanager/style/BorderRadiusProp;

    invoke-virtual {p0, v2, v1}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->setBorderRadius(Lcom/facebook/react/uimanager/style/BorderRadiusProp;Lcom/facebook/react/uimanager/LengthPercentage;)V

    goto :goto_1

    .line 285
    :cond_1
    sget-object v1, Lcom/facebook/react/uimanager/style/BorderRadiusProp;->BORDER_RADIUS:Lcom/facebook/react/uimanager/style/BorderRadiusProp;

    new-instance v2, Lcom/facebook/react/uimanager/LengthPercentage;

    .line 287
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sget-object v4, Lcom/facebook/react/uimanager/LengthPercentageType;->POINT:Lcom/facebook/react/uimanager/LengthPercentageType;

    invoke-direct {v2, v3, v4}, Lcom/facebook/react/uimanager/LengthPercentage;-><init>(FLcom/facebook/react/uimanager/LengthPercentageType;)V

    .line 285
    invoke-virtual {p0, v1, v2}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->setBorderRadius(Lcom/facebook/react/uimanager/style/BorderRadiusProp;Lcom/facebook/react/uimanager/LengthPercentage;)V

    .line 289
    :goto_1
    return-void
.end method

.method public setRadius(FI)V
    .locals 5
    .param p1, "radius"    # F
    .param p2, "position"    # I
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "0.75.0"
    .end annotation

    .line 296
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 298
    .local v0, "boxedRadius":Ljava/lang/Float;
    :goto_0
    if-nez v0, :cond_1

    .line 299
    iget-object v2, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderRadius:Lcom/facebook/react/uimanager/style/BorderRadiusStyle;

    invoke-static {}, Lcom/facebook/react/uimanager/style/BorderRadiusProp;->values()[Lcom/facebook/react/uimanager/style/BorderRadiusProp;

    move-result-object v3

    aget-object v3, v3, p2

    invoke-virtual {v2, v3, v1}, Lcom/facebook/react/uimanager/style/BorderRadiusStyle;->set(Lcom/facebook/react/uimanager/style/BorderRadiusProp;Lcom/facebook/react/uimanager/LengthPercentage;)V

    .line 300
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->invalidateSelf()V

    goto :goto_1

    .line 302
    :cond_1
    nop

    .line 303
    invoke-static {}, Lcom/facebook/react/uimanager/style/BorderRadiusProp;->values()[Lcom/facebook/react/uimanager/style/BorderRadiusProp;

    move-result-object v1

    aget-object v1, v1, p2

    new-instance v2, Lcom/facebook/react/uimanager/LengthPercentage;

    .line 304
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sget-object v4, Lcom/facebook/react/uimanager/LengthPercentageType;->POINT:Lcom/facebook/react/uimanager/LengthPercentageType;

    invoke-direct {v2, v3, v4}, Lcom/facebook/react/uimanager/LengthPercentage;-><init>(FLcom/facebook/react/uimanager/LengthPercentageType;)V

    .line 302
    invoke-virtual {p0, v1, v2}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->setBorderRadius(Lcom/facebook/react/uimanager/style/BorderRadiusProp;Lcom/facebook/react/uimanager/LengthPercentage;)V

    .line 306
    :goto_1
    return-void
.end method
