.class Lcom/horcrux/svg/TSpanView;
.super Lcom/horcrux/svg/TextView;
.source "TSpanView.java"


# static fields
.field private static final FONTS:Ljava/lang/String; = "fonts/"

.field private static final OTF:Ljava/lang/String; = ".otf"

.field private static final TTF:Ljava/lang/String; = ".ttf"

.field static final additionalLigatures:Ljava/lang/String; = "\'hlig\', \'cala\', "

.field static final defaultFeatures:Ljava/lang/String; = "\'rlig\', \'liga\', \'clig\', \'calt\', \'locl\', \'ccmp\', \'mark\', \'mkmk\',\'kern\', "

.field static final disableDiscretionaryLigatures:Ljava/lang/String; = "\'liga\' 0, \'clig\' 0, \'dlig\' 0, \'hlig\' 0, \'cala\' 0, "

.field static final fontWeightTag:Ljava/lang/String; = "\'wght\' "

.field private static final radToDeg:D = 57.29577951308232

.field static final requiredFontFeatures:Ljava/lang/String; = "\'rlig\', \'liga\', \'clig\', \'calt\', \'locl\', \'ccmp\', \'mark\', \'mkmk\',"

.field private static final tau:D = 6.283185307179586


# instance fields
.field private final assets:Landroid/content/res/AssetManager;

.field private final emoji:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final emojiTransforms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedPath:Landroid/graphics/Path;

.field mContent:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private textPath:Lcom/horcrux/svg/TextPathView;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactContext;

    .line 64
    invoke-direct {p0, p1}, Lcom/horcrux/svg/TextView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/TSpanView;->emoji:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/TSpanView;->emojiTransforms:Ljava/util/ArrayList;

    .line 65
    iget-object v0, p0, Lcom/horcrux/svg/TSpanView;->mContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/TSpanView;->assets:Landroid/content/res/AssetManager;

    .line 66
    return-void
.end method

.method private applySpacingAndFeatures(Landroid/graphics/Paint;Lcom/horcrux/svg/FontData;)V
    .locals 6
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "font"    # Lcom/horcrux/svg/FontData;

    .line 294
    nop

    .line 295
    iget-wide v0, p2, Lcom/horcrux/svg/FontData;->letterSpacing:D

    .line 296
    .local v0, "letterSpacing":D
    iget-wide v2, p2, Lcom/horcrux/svg/FontData;->fontSize:D

    iget v4, p0, Lcom/horcrux/svg/TSpanView;->mScale:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    div-double v2, v0, v2

    double-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 298
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-nez v2, :cond_0

    iget-object v2, p2, Lcom/horcrux/svg/FontData;->fontVariantLigatures:Lcom/horcrux/svg/TextProperties$FontVariantLigatures;

    sget-object v3, Lcom/horcrux/svg/TextProperties$FontVariantLigatures;->normal:Lcom/horcrux/svg/TextProperties$FontVariantLigatures;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 301
    .local v2, "allowOptionalLigatures":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 302
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'rlig\', \'liga\', \'clig\', \'calt\', \'locl\', \'ccmp\', \'mark\', \'mkmk\',\'kern\', \'hlig\', \'cala\', "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/horcrux/svg/FontData;->fontFeatureSettings:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setFontFeatureSettings(Ljava/lang/String;)V

    goto :goto_1

    .line 305
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'rlig\', \'liga\', \'clig\', \'calt\', \'locl\', \'ccmp\', \'mark\', \'mkmk\',\'kern\', \'liga\' 0, \'clig\' 0, \'dlig\' 0, \'hlig\' 0, \'cala\' 0, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/horcrux/svg/FontData;->fontFeatureSettings:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 309
    :goto_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_2

    .line 310
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'wght\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/horcrux/svg/FontData;->absoluteFontWeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/horcrux/svg/FontData;->fontVariationSettings:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setFontVariationSettings(Ljava/lang/String;)Z

    .line 314
    .end local v0    # "letterSpacing":D
    .end local v2    # "allowOptionalLigatures":Z
    :cond_2
    return-void
.end method

.method private applyTextPropertiesToPaint(Landroid/graphics/Paint;Lcom/horcrux/svg/FontData;)V
    .locals 13
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "font"    # Lcom/horcrux/svg/FontData;

    .line 1128
    iget-object v0, p2, Lcom/horcrux/svg/FontData;->fontWeight:Lcom/horcrux/svg/TextProperties$FontWeight;

    sget-object v1, Lcom/horcrux/svg/TextProperties$FontWeight;->Bold:Lcom/horcrux/svg/TextProperties$FontWeight;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p2, Lcom/horcrux/svg/FontData;->absoluteFontWeight:I

    const/16 v1, 0x226

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    .line 1129
    .local v0, "isBold":Z
    :goto_1
    iget-object v1, p2, Lcom/horcrux/svg/FontData;->fontStyle:Lcom/horcrux/svg/TextProperties$FontStyle;

    sget-object v4, Lcom/horcrux/svg/TextProperties$FontStyle;->italic:Lcom/horcrux/svg/TextProperties$FontStyle;

    if-ne v1, v4, :cond_2

    move v2, v3

    :cond_2
    move v1, v2

    .line 1132
    .local v1, "isItalic":Z
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 1133
    const/4 v2, 0x3

    .local v2, "style":I
    goto :goto_2

    .line 1134
    .end local v2    # "style":I
    :cond_3
    if-eqz v0, :cond_4

    .line 1135
    const/4 v2, 0x1

    .restart local v2    # "style":I
    goto :goto_2

    .line 1136
    .end local v2    # "style":I
    :cond_4
    if-eqz v1, :cond_5

    .line 1137
    const/4 v2, 0x2

    .restart local v2    # "style":I
    goto :goto_2

    .line 1139
    .end local v2    # "style":I
    :cond_5
    const/4 v2, 0x0

    .line 1142
    .restart local v2    # "style":I
    :goto_2
    const/4 v4, 0x0

    .line 1143
    .local v4, "typeface":Landroid/graphics/Typeface;
    iget v5, p2, Lcom/horcrux/svg/FontData;->absoluteFontWeight:I

    .line 1144
    .local v5, "weight":I
    iget-object v6, p2, Lcom/horcrux/svg/FontData;->fontFamily:Ljava/lang/String;

    .line 1145
    .local v6, "fontFamily":Ljava/lang/String;
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_8

    .line 1146
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fonts/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ".otf"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1147
    .local v7, "otfpath":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".ttf"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1148
    .local v8, "ttfpath":Ljava/lang/String;
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1a

    if-lt v9, v10, :cond_7

    .line 1149
    new-instance v9, Landroid/graphics/Typeface$Builder;

    iget-object v10, p0, Lcom/horcrux/svg/TSpanView;->assets:Landroid/content/res/AssetManager;

    invoke-direct {v9, v10, v7}, Landroid/graphics/Typeface$Builder;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    .line 1150
    .local v9, "builder":Landroid/graphics/Typeface$Builder;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\'wght\' "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v12, p2, Lcom/horcrux/svg/FontData;->fontVariationSettings:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Typeface$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;

    .line 1151
    invoke-virtual {v9, v5}, Landroid/graphics/Typeface$Builder;->setWeight(I)Landroid/graphics/Typeface$Builder;

    .line 1152
    invoke-virtual {v9, v1}, Landroid/graphics/Typeface$Builder;->setItalic(Z)Landroid/graphics/Typeface$Builder;

    .line 1153
    invoke-virtual {v9}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object v4

    .line 1154
    if-nez v4, :cond_6

    .line 1155
    new-instance v10, Landroid/graphics/Typeface$Builder;

    iget-object v12, p0, Lcom/horcrux/svg/TSpanView;->assets:Landroid/content/res/AssetManager;

    invoke-direct {v10, v12, v8}, Landroid/graphics/Typeface$Builder;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    move-object v9, v10

    .line 1156
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p2, Lcom/horcrux/svg/FontData;->fontVariationSettings:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Typeface$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;

    .line 1157
    invoke-virtual {v9, v5}, Landroid/graphics/Typeface$Builder;->setWeight(I)Landroid/graphics/Typeface$Builder;

    .line 1158
    invoke-virtual {v9, v1}, Landroid/graphics/Typeface$Builder;->setItalic(Z)Landroid/graphics/Typeface$Builder;

    .line 1159
    invoke-virtual {v9}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object v4

    .line 1161
    .end local v9    # "builder":Landroid/graphics/Typeface$Builder;
    :cond_6
    goto :goto_3

    .line 1163
    :cond_7
    :try_start_0
    iget-object v9, p0, Lcom/horcrux/svg/TSpanView;->assets:Landroid/content/res/AssetManager;

    invoke-static {v9, v7}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    move-object v4, v9

    .line 1164
    invoke-static {v4, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v9

    .line 1171
    goto :goto_3

    .line 1165
    :catch_0
    move-exception v9

    .line 1167
    .local v9, "ignored":Ljava/lang/Exception;
    :try_start_1
    iget-object v10, p0, Lcom/horcrux/svg/TSpanView;->assets:Landroid/content/res/AssetManager;

    invoke-static {v10, v8}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v10

    move-object v4, v10

    .line 1168
    invoke-static {v4, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v10

    .line 1170
    goto :goto_3

    .line 1169
    :catch_1
    move-exception v10

    .line 1175
    .end local v7    # "otfpath":Ljava/lang/String;
    .end local v8    # "ttfpath":Ljava/lang/String;
    .end local v9    # "ignored":Ljava/lang/Exception;
    :cond_8
    :goto_3
    if-nez v4, :cond_9

    .line 1177
    :try_start_2
    invoke-static {}, Lcom/facebook/react/views/text/ReactFontManager;->getInstance()Lcom/facebook/react/views/text/ReactFontManager;

    move-result-object v7

    iget-object v8, p0, Lcom/horcrux/svg/TSpanView;->assets:Landroid/content/res/AssetManager;

    invoke-virtual {v7, v6, v2, v8}, Lcom/facebook/react/views/text/ReactFontManager;->getTypeface(Ljava/lang/String;ILandroid/content/res/AssetManager;)Landroid/graphics/Typeface;

    move-result-object v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v4, v7

    .line 1179
    goto :goto_4

    .line 1178
    :catch_2
    move-exception v7

    .line 1182
    :cond_9
    :goto_4
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1c

    if-lt v7, v8, :cond_a

    .line 1183
    invoke-static {v4, v5, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v4

    .line 1186
    :cond_a
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setLinearText(Z)V

    .line 1187
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    .line 1188
    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1189
    iget-wide v7, p2, Lcom/horcrux/svg/FontData;->fontSize:D

    iget v3, p0, Lcom/horcrux/svg/TSpanView;->mScale:F

    float-to-double v9, v3

    mul-double/2addr v7, v9

    double-to-float v3, v7

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1190
    nop

    .line 1191
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 1193
    return-void
.end method

.method private drawWrappedText(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 25
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 118
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p0 .. p0}, Lcom/horcrux/svg/TSpanView;->getTextRootGlyphContext()Lcom/horcrux/svg/GlyphContext;

    move-result-object v8

    .line 119
    .local v8, "gc":Lcom/horcrux/svg/GlyphContext;
    invoke-virtual/range {p0 .. p0}, Lcom/horcrux/svg/TSpanView;->pushGlyphContext()V

    .line 120
    invoke-virtual {v8}, Lcom/horcrux/svg/GlyphContext;->getFont()Lcom/horcrux/svg/FontData;

    move-result-object v9

    .line 121
    .local v9, "font":Lcom/horcrux/svg/FontData;
    new-instance v0, Landroid/text/TextPaint;

    move-object/from16 v10, p2

    invoke-direct {v0, v10}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    move-object v11, v0

    .line 122
    .local v11, "tp":Landroid/text/TextPaint;
    invoke-direct {v6, v11, v9}, Lcom/horcrux/svg/TSpanView;->applyTextPropertiesToPaint(Landroid/graphics/Paint;Lcom/horcrux/svg/FontData;)V

    .line 123
    invoke-direct {v6, v11, v9}, Lcom/horcrux/svg/TSpanView;->applySpacingAndFeatures(Landroid/graphics/Paint;Lcom/horcrux/svg/FontData;)V

    .line 124
    invoke-virtual {v8}, Lcom/horcrux/svg/GlyphContext;->getFontSize()D

    move-result-wide v21

    .line 127
    .local v21, "fontSize":D
    sget-object v0, Lcom/horcrux/svg/TSpanView$1;->$SwitchMap$com$horcrux$svg$TextProperties$TextAnchor:[I

    iget-object v1, v9, Lcom/horcrux/svg/FontData;->textAnchor:Lcom/horcrux/svg/TextProperties$TextAnchor;

    invoke-virtual {v1}, Lcom/horcrux/svg/TextProperties$TextAnchor;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 130
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 131
    .local v0, "align":Landroid/text/Layout$Alignment;
    move-object/from16 v23, v0

    goto :goto_0

    .line 138
    .end local v0    # "align":Landroid/text/Layout$Alignment;
    :pswitch_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    move-object/from16 v23, v0

    .restart local v0    # "align":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 134
    .end local v0    # "align":Landroid/text/Layout$Alignment;
    :pswitch_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 135
    .restart local v0    # "align":Landroid/text/Layout$Alignment;
    move-object/from16 v23, v0

    .line 142
    .end local v0    # "align":Landroid/text/Layout$Alignment;
    .local v23, "align":Landroid/text/Layout$Alignment;
    :goto_0
    const/16 v24, 0x1

    .line 143
    .local v24, "includeFontPadding":Z
    new-instance v4, Landroid/text/SpannableString;

    iget-object v0, v6, Lcom/horcrux/svg/TSpanView;->mContent:Ljava/lang/String;

    invoke-direct {v4, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 144
    .local v4, "text":Landroid/text/SpannableString;
    iget-object v12, v6, Lcom/horcrux/svg/TSpanView;->mInlineSize:Lcom/horcrux/svg/SVGLength;

    .line 145
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-double v13, v0

    iget v0, v6, Lcom/horcrux/svg/TSpanView;->mScale:F

    float-to-double v0, v0

    const-wide/16 v15, 0x0

    move-wide/from16 v17, v0

    move-wide/from16 v19, v21

    invoke-static/range {v12 .. v20}, Lcom/horcrux/svg/PropHelper;->fromRelative(Lcom/horcrux/svg/SVGLength;DDDD)D

    move-result-wide v12

    .line 146
    .local v12, "width":D
    double-to-int v5, v12

    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-direct/range {v0 .. v5}, Lcom/horcrux/svg/TSpanView;->getStaticLayout(Landroid/text/TextPaint;Landroid/text/Layout$Alignment;ZLandroid/text/SpannableString;I)Landroid/text/StaticLayout;

    move-result-object v0

    .line 148
    .local v0, "layout":Landroid/text/StaticLayout;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineAscent(I)I

    move-result v1

    .line 150
    .local v1, "lineAscent":I
    const-wide/16 v2, 0x0

    invoke-virtual {v8, v2, v3}, Lcom/horcrux/svg/GlyphContext;->nextX(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 151
    .local v2, "dx":F
    invoke-virtual {v8}, Lcom/horcrux/svg/GlyphContext;->nextY()D

    move-result-wide v14

    move-object v5, v4

    .end local v4    # "text":Landroid/text/SpannableString;
    .local v5, "text":Landroid/text/SpannableString;
    int-to-double v3, v1

    add-double/2addr v14, v3

    double-to-float v3, v14

    .line 152
    .local v3, "dy":F
    invoke-virtual/range {p0 .. p0}, Lcom/horcrux/svg/TSpanView;->popGlyphContext()V

    .line 154
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 155
    invoke-virtual {v7, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 156
    invoke-virtual {v0, v7}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 157
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 158
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getAbsoluteStartOffset(Lcom/horcrux/svg/SVGLength;DD)D
    .locals 10
    .param p1, "startOffset"    # Lcom/horcrux/svg/SVGLength;
    .param p2, "distance"    # D
    .param p4, "fontSize"    # D

    .line 1110
    iget v0, p0, Lcom/horcrux/svg/TSpanView;->mScale:F

    float-to-double v6, v0

    const-wide/16 v4, 0x0

    move-object v1, p1

    move-wide v2, p2

    move-wide v8, p4

    invoke-static/range {v1 .. v9}, Lcom/horcrux/svg/PropHelper;->fromRelative(Lcom/horcrux/svg/SVGLength;DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method private getLinePath(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)Landroid/graphics/Path;
    .locals 124
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .line 318
    move-object/from16 v6, p0

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    .line 319
    .local v12, "length":I
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    move-object v11, v0

    .line 321
    .local v11, "path":Landroid/graphics/Path;
    iget-object v0, v6, Lcom/horcrux/svg/TSpanView;->emoji:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 322
    iget-object v0, v6, Lcom/horcrux/svg/TSpanView;->emojiTransforms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 324
    if-nez v12, :cond_0

    .line 325
    return-object v11

    .line 328
    :cond_0
    const-wide/16 v0, 0x0

    .line 329
    .local v0, "pathLength":D
    const/4 v2, 0x0

    .line 330
    .local v2, "pm":Landroid/graphics/PathMeasure;
    const/4 v3, 0x0

    .line 331
    .local v3, "isClosed":Z
    iget-object v4, v6, Lcom/horcrux/svg/TSpanView;->textPath:Lcom/horcrux/svg/TextPathView;

    const/4 v10, 0x0

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v10

    :goto_0
    move/from16 v16, v4

    .line 332
    .local v16, "hasTextPath":Z
    const-wide/16 v17, 0x0

    if-eqz v16, :cond_3

    .line 333
    new-instance v4, Landroid/graphics/PathMeasure;

    iget-object v5, v6, Lcom/horcrux/svg/TSpanView;->textPath:Lcom/horcrux/svg/TextPathView;

    invoke-virtual {v5, v15, v14}, Lcom/horcrux/svg/TextPathView;->getTextPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;

    move-result-object v5

    invoke-direct {v4, v5, v10}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    move-object v2, v4

    .line 334
    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v4

    float-to-double v0, v4

    .line 335
    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->isClosed()Z

    move-result v3

    .line 336
    cmpl-double v4, v0, v17

    if-nez v4, :cond_2

    .line 337
    return-object v11

    .line 336
    :cond_2
    move-wide v7, v0

    move-object v13, v2

    move/from16 v19, v3

    goto :goto_1

    .line 332
    :cond_3
    move-wide v7, v0

    move-object v13, v2

    move/from16 v19, v3

    .line 341
    .end local v0    # "pathLength":D
    .end local v2    # "pm":Landroid/graphics/PathMeasure;
    .end local v3    # "isClosed":Z
    .local v7, "pathLength":D
    .local v13, "pm":Landroid/graphics/PathMeasure;
    .local v19, "isClosed":Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/horcrux/svg/TSpanView;->getTextRootGlyphContext()Lcom/horcrux/svg/GlyphContext;

    move-result-object v4

    .line 342
    .local v4, "gc":Lcom/horcrux/svg/GlyphContext;
    invoke-virtual {v4}, Lcom/horcrux/svg/GlyphContext;->getFont()Lcom/horcrux/svg/FontData;

    move-result-object v5

    .line 343
    .local v5, "font":Lcom/horcrux/svg/FontData;
    invoke-direct {v6, v14, v5}, Lcom/horcrux/svg/TSpanView;->applyTextPropertiesToPaint(Landroid/graphics/Paint;Lcom/horcrux/svg/FontData;)V

    .line 344
    new-instance v0, Lcom/horcrux/svg/GlyphPathBag;

    invoke-direct {v0, v14}, Lcom/horcrux/svg/GlyphPathBag;-><init>(Landroid/graphics/Paint;)V

    move-object v2, v0

    .line 345
    .local v2, "bag":Lcom/horcrux/svg/GlyphPathBag;
    new-array v3, v12, [Z

    .line 346
    .local v3, "ligature":[Z
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v20

    .line 367
    .local v20, "chars":[C
    iget-wide v0, v5, Lcom/horcrux/svg/FontData;->kerning:D

    .line 368
    .local v0, "kerning":D
    move-object/from16 v21, v11

    .end local v11    # "path":Landroid/graphics/Path;
    .local v21, "path":Landroid/graphics/Path;
    iget-wide v10, v5, Lcom/horcrux/svg/FontData;->wordSpacing:D

    .line 369
    .local v10, "wordSpacing":D
    move-wide/from16 v24, v10

    .end local v10    # "wordSpacing":D
    .local v24, "wordSpacing":D
    iget-wide v9, v5, Lcom/horcrux/svg/FontData;->letterSpacing:D

    .line 370
    .local v9, "letterSpacing":D
    iget-boolean v11, v5, Lcom/horcrux/svg/FontData;->manualKerning:Z

    const/16 v23, 0x1

    xor-int/lit8 v11, v11, 0x1

    move/from16 v26, v11

    .line 420
    .local v26, "autoKerning":Z
    cmpl-double v11, v9, v17

    if-nez v11, :cond_4

    iget-object v11, v5, Lcom/horcrux/svg/FontData;->fontVariantLigatures:Lcom/horcrux/svg/TextProperties$FontVariantLigatures;

    move-wide/from16 v27, v0

    .end local v0    # "kerning":D
    .local v27, "kerning":D
    sget-object v0, Lcom/horcrux/svg/TextProperties$FontVariantLigatures;->normal:Lcom/horcrux/svg/TextProperties$FontVariantLigatures;

    if-ne v11, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    .end local v27    # "kerning":D
    .restart local v0    # "kerning":D
    :cond_4
    move-wide/from16 v27, v0

    .end local v0    # "kerning":D
    .restart local v27    # "kerning":D
    :cond_5
    const/4 v0, 0x0

    :goto_2
    move/from16 v29, v0

    .line 479
    .local v29, "allowOptionalLigatures":Z
    nop

    .line 481
    if-eqz v29, :cond_6

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'rlig\', \'liga\', \'clig\', \'calt\', \'locl\', \'ccmp\', \'mark\', \'mkmk\',\'kern\', \'hlig\', \'cala\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v5, Lcom/horcrux/svg/FontData;->fontFeatureSettings:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setFontFeatureSettings(Ljava/lang/String;)V

    goto :goto_3

    .line 485
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'rlig\', \'liga\', \'clig\', \'calt\', \'locl\', \'ccmp\', \'mark\', \'mkmk\',\'kern\', \'liga\' 0, \'clig\' 0, \'dlig\' 0, \'hlig\' 0, \'cala\' 0, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v5, Lcom/horcrux/svg/FontData;->fontFeatureSettings:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 489
    :goto_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_7

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'wght\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v5, Lcom/horcrux/svg/FontData;->absoluteFontWeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v5, Lcom/horcrux/svg/FontData;->fontVariationSettings:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setFontVariationSettings(Ljava/lang/String;)Z

    .line 495
    :cond_7
    iget-object v11, v5, Lcom/horcrux/svg/FontData;->fontData:Lcom/facebook/react/bridge/ReadableMap;

    .line 497
    .local v11, "fontData":Lcom/facebook/react/bridge/ReadableMap;
    new-array v1, v12, [F

    .line 498
    .local v1, "advances":[F
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 527
    iget-object v15, v5, Lcom/horcrux/svg/FontData;->textAnchor:Lcom/horcrux/svg/TextProperties$TextAnchor;

    .line 528
    .local v15, "textAnchor":Lcom/horcrux/svg/TextProperties$TextAnchor;
    move-object/from16 v30, v13

    .end local v13    # "pm":Landroid/graphics/PathMeasure;
    .local v30, "pm":Landroid/graphics/PathMeasure;
    invoke-virtual/range {p0 .. p0}, Lcom/horcrux/svg/TSpanView;->getTextAnchorRoot()Lcom/horcrux/svg/TextView;

    move-result-object v13

    .line 529
    .local v13, "anchorRoot":Lcom/horcrux/svg/TextView;
    move-wide/from16 v31, v9

    .end local v9    # "letterSpacing":D
    .local v31, "letterSpacing":D
    invoke-virtual {v13, v14}, Lcom/horcrux/svg/TextView;->getSubtreeTextChunksTotalAdvance(Landroid/graphics/Paint;)D

    move-result-wide v9

    .line 530
    .local v9, "textMeasure":D
    invoke-direct {v6, v15, v9, v10}, Lcom/horcrux/svg/TSpanView;->getTextAnchorOffset(Lcom/horcrux/svg/TextProperties$TextAnchor;D)D

    move-result-wide v33

    .line 532
    .local v33, "offset":D
    const/16 v35, 0x1

    .line 533
    .local v35, "side":I
    const-wide/16 v36, 0x0

    .line 534
    .local v36, "startOfRendering":D
    move-wide/from16 v38, v7

    .line 535
    .local v38, "endOfRendering":D
    invoke-virtual {v4}, Lcom/horcrux/svg/GlyphContext;->getFontSize()D

    move-result-wide v49

    .line 536
    .local v49, "fontSize":D
    const/16 v40, 0x0

    .line 537
    .local v40, "sharpMidLine":Z
    const/16 v51, -0x1

    const-wide/high16 v52, 0x4000000000000000L    # 2.0

    if-eqz v16, :cond_c

    .line 538
    iget-object v0, v6, Lcom/horcrux/svg/TSpanView;->textPath:Lcom/horcrux/svg/TextPathView;

    invoke-virtual {v0}, Lcom/horcrux/svg/TextPathView;->getMidLine()Lcom/horcrux/svg/TextProperties$TextPathMidLine;

    move-result-object v0

    move-object/from16 v41, v1

    .end local v1    # "advances":[F
    .local v41, "advances":[F
    sget-object v1, Lcom/horcrux/svg/TextProperties$TextPathMidLine;->sharp:Lcom/horcrux/svg/TextProperties$TextPathMidLine;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    :goto_4
    move/from16 v40, v0

    .line 559
    iget-object v0, v6, Lcom/horcrux/svg/TSpanView;->textPath:Lcom/horcrux/svg/TextPathView;

    invoke-virtual {v0}, Lcom/horcrux/svg/TextPathView;->getSide()Lcom/horcrux/svg/TextProperties$TextPathSide;

    move-result-object v0

    sget-object v1, Lcom/horcrux/svg/TextProperties$TextPathSide;->right:Lcom/horcrux/svg/TextProperties$TextPathSide;

    if-ne v0, v1, :cond_9

    move/from16 v0, v51

    goto :goto_5

    :cond_9
    const/4 v0, 0x1

    :goto_5
    move/from16 v35, v0

    .line 598
    iget-object v0, v6, Lcom/horcrux/svg/TSpanView;->textPath:Lcom/horcrux/svg/TextPathView;

    .line 599
    invoke-virtual {v0}, Lcom/horcrux/svg/TextPathView;->getStartOffset()Lcom/horcrux/svg/SVGLength;

    move-result-object v1

    move-object/from16 v0, p0

    move-object/from16 v54, v41

    .end local v41    # "advances":[F
    .local v54, "advances":[F
    move-object/from16 v55, v2

    move-object/from16 v56, v3

    .end local v2    # "bag":Lcom/horcrux/svg/GlyphPathBag;
    .end local v3    # "ligature":[Z
    .local v55, "bag":Lcom/horcrux/svg/GlyphPathBag;
    .local v56, "ligature":[Z
    move-wide v2, v7

    move-object/from16 v58, v5

    move-object/from16 v57, v13

    move-object v13, v4

    .end local v4    # "gc":Lcom/horcrux/svg/GlyphContext;
    .end local v5    # "font":Lcom/horcrux/svg/FontData;
    .local v13, "gc":Lcom/horcrux/svg/GlyphContext;
    .local v57, "anchorRoot":Lcom/horcrux/svg/TextView;
    .local v58, "font":Lcom/horcrux/svg/FontData;
    move-wide/from16 v4, v49

    invoke-direct/range {v0 .. v5}, Lcom/horcrux/svg/TSpanView;->getAbsoluteStartOffset(Lcom/horcrux/svg/SVGLength;DD)D

    move-result-wide v0

    .line 600
    .local v0, "absoluteStartOffset":D
    add-double v33, v33, v0

    .line 601
    if-eqz v19, :cond_b

    .line 602
    div-double v2, v7, v52

    .line 603
    .local v2, "halfPathDistance":D
    nop

    .line 604
    sget-object v4, Lcom/horcrux/svg/TextProperties$TextAnchor;->middle:Lcom/horcrux/svg/TextProperties$TextAnchor;

    if-ne v15, v4, :cond_a

    neg-double v4, v2

    goto :goto_6

    :cond_a
    move-wide/from16 v4, v17

    :goto_6
    add-double v36, v0, v4

    .line 605
    add-double v38, v36, v7

    move/from16 v0, v35

    move/from16 v1, v40

    goto :goto_7

    .line 601
    .end local v2    # "halfPathDistance":D
    :cond_b
    move/from16 v0, v35

    move/from16 v1, v40

    goto :goto_7

    .line 537
    .end local v0    # "absoluteStartOffset":D
    .end local v54    # "advances":[F
    .end local v55    # "bag":Lcom/horcrux/svg/GlyphPathBag;
    .end local v56    # "ligature":[Z
    .end local v57    # "anchorRoot":Lcom/horcrux/svg/TextView;
    .end local v58    # "font":Lcom/horcrux/svg/FontData;
    .restart local v1    # "advances":[F
    .local v2, "bag":Lcom/horcrux/svg/GlyphPathBag;
    .restart local v3    # "ligature":[Z
    .restart local v4    # "gc":Lcom/horcrux/svg/GlyphContext;
    .restart local v5    # "font":Lcom/horcrux/svg/FontData;
    .local v13, "anchorRoot":Lcom/horcrux/svg/TextView;
    :cond_c
    move-object/from16 v54, v1

    move-object/from16 v55, v2

    move-object/from16 v56, v3

    move-object/from16 v58, v5

    move-object/from16 v57, v13

    move-object v13, v4

    .end local v1    # "advances":[F
    .end local v2    # "bag":Lcom/horcrux/svg/GlyphPathBag;
    .end local v3    # "ligature":[Z
    .end local v4    # "gc":Lcom/horcrux/svg/GlyphContext;
    .end local v5    # "font":Lcom/horcrux/svg/FontData;
    .local v13, "gc":Lcom/horcrux/svg/GlyphContext;
    .restart local v54    # "advances":[F
    .restart local v55    # "bag":Lcom/horcrux/svg/GlyphPathBag;
    .restart local v56    # "ligature":[Z
    .restart local v57    # "anchorRoot":Lcom/horcrux/svg/TextView;
    .restart local v58    # "font":Lcom/horcrux/svg/FontData;
    move/from16 v0, v35

    move/from16 v1, v40

    .line 691
    .end local v35    # "side":I
    .end local v40    # "sharpMidLine":Z
    .local v0, "side":I
    .local v1, "sharpMidLine":Z
    :goto_7
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 692
    .local v2, "scaleSpacingAndGlyphs":D
    iget-object v4, v6, Lcom/horcrux/svg/TSpanView;->mTextLength:Lcom/horcrux/svg/SVGLength;

    if-eqz v4, :cond_e

    .line 693
    iget-object v4, v6, Lcom/horcrux/svg/TSpanView;->mTextLength:Lcom/horcrux/svg/SVGLength;

    .line 694
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    move-wide/from16 v59, v2

    .end local v2    # "scaleSpacingAndGlyphs":D
    .local v59, "scaleSpacingAndGlyphs":D
    int-to-double v2, v5

    iget v5, v6, Lcom/horcrux/svg/TSpanView;->mScale:F

    move-wide/from16 v61, v7

    .end local v7    # "pathLength":D
    .local v61, "pathLength":D
    float-to-double v7, v5

    const-wide/16 v43, 0x0

    move-object/from16 v40, v4

    move-wide/from16 v41, v2

    move-wide/from16 v45, v7

    move-wide/from16 v47, v49

    invoke-static/range {v40 .. v48}, Lcom/horcrux/svg/PropHelper;->fromRelative(Lcom/horcrux/svg/SVGLength;DDDD)D

    move-result-wide v2

    .line 695
    .local v2, "author":D
    cmpg-double v4, v2, v17

    if-ltz v4, :cond_d

    .line 698
    sget-object v4, Lcom/horcrux/svg/TSpanView$1;->$SwitchMap$com$horcrux$svg$TextProperties$TextLengthAdjust:[I

    iget-object v5, v6, Lcom/horcrux/svg/TSpanView;->mLengthAdjust:Lcom/horcrux/svg/TextProperties$TextLengthAdjust;

    invoke-virtual {v5}, Lcom/horcrux/svg/TextProperties$TextLengthAdjust;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 701
    sub-double v4, v2, v9

    add-int/lit8 v7, v12, -0x1

    int-to-double v7, v7

    div-double/2addr v4, v7

    add-double v4, v31, v4

    .line 702
    .end local v31    # "letterSpacing":D
    .local v4, "letterSpacing":D
    move-wide/from16 v31, v4

    move-wide/from16 v2, v59

    goto :goto_8

    .line 704
    .end local v4    # "letterSpacing":D
    .restart local v31    # "letterSpacing":D
    :pswitch_0
    div-double v4, v2, v9

    move-wide v2, v4

    .end local v59    # "scaleSpacingAndGlyphs":D
    .local v4, "scaleSpacingAndGlyphs":D
    goto :goto_8

    .line 696
    .end local v4    # "scaleSpacingAndGlyphs":D
    .restart local v59    # "scaleSpacingAndGlyphs":D
    :cond_d
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Negative textLength value"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 692
    .end local v59    # "scaleSpacingAndGlyphs":D
    .end local v61    # "pathLength":D
    .local v2, "scaleSpacingAndGlyphs":D
    .restart local v7    # "pathLength":D
    :cond_e
    move-wide/from16 v59, v2

    move-wide/from16 v61, v7

    .line 708
    .end local v7    # "pathLength":D
    .restart local v61    # "pathLength":D
    :goto_8
    int-to-double v4, v0

    mul-double/2addr v4, v2

    .line 735
    .local v4, "scaledDirection":D
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v8

    .line 736
    .local v8, "fm":Landroid/graphics/Paint$FontMetrics;
    iget v7, v8, Landroid/graphics/Paint$FontMetrics;->descent:F

    move-wide/from16 v47, v9

    .end local v9    # "textMeasure":D
    .local v47, "textMeasure":D
    float-to-double v9, v7

    .line 737
    .local v9, "descenderDepth":D
    iget v7, v8, Landroid/graphics/Paint$FontMetrics;->leading:F

    move-wide/from16 v59, v4

    .end local v4    # "scaledDirection":D
    .local v59, "scaledDirection":D
    float-to-double v4, v7

    add-double/2addr v4, v9

    .line 738
    .local v4, "bottom":D
    iget v7, v8, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v7, v7

    move-object/from16 v35, v15

    .end local v15    # "textAnchor":Lcom/horcrux/svg/TextProperties$TextAnchor;
    .local v35, "textAnchor":Lcom/horcrux/svg/TextProperties$TextAnchor;
    iget v15, v8, Landroid/graphics/Paint$FontMetrics;->leading:F

    add-float/2addr v7, v15

    move v15, v0

    move/from16 v63, v1

    .end local v0    # "side":I
    .end local v1    # "sharpMidLine":Z
    .local v15, "side":I
    .local v63, "sharpMidLine":Z
    float-to-double v0, v7

    .line 739
    .local v0, "ascenderHeight":D
    iget v7, v8, Landroid/graphics/Paint$FontMetrics;->top:F

    neg-float v7, v7

    move-object/from16 v64, v8

    .end local v8    # "fm":Landroid/graphics/Paint$FontMetrics;
    .local v64, "fm":Landroid/graphics/Paint$FontMetrics;
    float-to-double v7, v7

    .line 740
    .local v7, "top":D
    add-double v65, v7, v4

    .line 741
    .local v65, "totalHeight":D
    const-wide/16 v40, 0x0

    .line 742
    .local v40, "baselineShift":D
    move/from16 v67, v15

    .end local v15    # "side":I
    .local v67, "side":I
    invoke-virtual/range {p0 .. p0}, Lcom/horcrux/svg/TSpanView;->getBaselineShift()Ljava/lang/String;

    move-result-object v15

    .line 743
    .local v15, "baselineShiftString":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/horcrux/svg/TSpanView;->getAlignmentBaseline()Lcom/horcrux/svg/TextProperties$AlignmentBaseline;

    move-result-object v68

    .line 744
    .local v68, "baseline":Lcom/horcrux/svg/TextProperties$AlignmentBaseline;
    if-eqz v68, :cond_f

    .line 747
    sget-object v42, Lcom/horcrux/svg/TSpanView$1;->$SwitchMap$com$horcrux$svg$TextProperties$AlignmentBaseline:[I

    invoke-virtual/range {v68 .. v68}, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;->ordinal()I

    move-result v43

    aget v42, v42, v43

    packed-switch v42, :pswitch_data_1

    .line 753
    move-wide/from16 v69, v0

    move-wide/from16 v71, v4

    .end local v0    # "ascenderHeight":D
    .end local v4    # "bottom":D
    .local v69, "ascenderHeight":D
    .local v71, "bottom":D
    const-wide/16 v40, 0x0

    .line 754
    move-wide/from16 v0, v40

    goto/16 :goto_9

    .line 828
    .end local v69    # "ascenderHeight":D
    .end local v71    # "bottom":D
    .restart local v0    # "ascenderHeight":D
    .restart local v4    # "bottom":D
    :pswitch_1
    move-wide/from16 v40, v7

    move-wide/from16 v69, v0

    move-wide/from16 v71, v4

    move-wide/from16 v0, v40

    goto/16 :goto_9

    .line 823
    :pswitch_2
    div-double v40, v65, v52

    .line 824
    move-wide/from16 v69, v0

    move-wide/from16 v71, v4

    move-wide/from16 v0, v40

    goto/16 :goto_9

    .line 818
    :pswitch_3
    move-wide/from16 v40, v4

    .line 819
    move-wide/from16 v69, v0

    move-wide/from16 v71, v4

    move-wide/from16 v0, v40

    goto/16 :goto_9

    .line 813
    :pswitch_4
    move-wide/from16 v40, v0

    .line 814
    move-wide/from16 v69, v0

    move-wide/from16 v71, v4

    goto/16 :goto_9

    .line 804
    :pswitch_5
    const-wide v42, 0x3fe999999999999aL    # 0.8

    mul-double v40, v0, v42

    .line 805
    move-wide/from16 v69, v0

    move-wide/from16 v71, v4

    move-wide/from16 v0, v40

    goto :goto_9

    .line 800
    :pswitch_6
    const-wide/high16 v42, 0x3fe0000000000000L    # 0.5

    mul-double v40, v0, v42

    .line 801
    move-wide/from16 v69, v0

    move-wide/from16 v71, v4

    move-wide/from16 v0, v40

    goto :goto_9

    .line 791
    :pswitch_7
    sub-double v42, v0, v9

    div-double v40, v42, v52

    .line 792
    move-wide/from16 v69, v0

    move-wide/from16 v71, v4

    move-wide/from16 v0, v40

    goto :goto_9

    .line 781
    :pswitch_8
    new-instance v42, Landroid/graphics/Rect;

    invoke-direct/range {v42 .. v42}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v43, v42

    .line 783
    .local v43, "bounds":Landroid/graphics/Rect;
    move-wide/from16 v69, v0

    .end local v0    # "ascenderHeight":D
    .restart local v69    # "ascenderHeight":D
    const-string v0, "x"

    move-wide/from16 v71, v4

    move-object/from16 v1, v43

    const/4 v4, 0x0

    const/4 v5, 0x1

    .end local v4    # "bottom":D
    .end local v43    # "bounds":Landroid/graphics/Rect;
    .local v1, "bounds":Landroid/graphics/Rect;
    .restart local v71    # "bottom":D
    invoke-virtual {v14, v0, v4, v5, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 784
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 785
    .local v0, "xHeight":I
    int-to-double v4, v0

    div-double v40, v4, v52

    .line 786
    move-wide/from16 v0, v40

    goto :goto_9

    .line 774
    .end local v1    # "bounds":Landroid/graphics/Rect;
    .end local v69    # "ascenderHeight":D
    .end local v71    # "bottom":D
    .local v0, "ascenderHeight":D
    .restart local v4    # "bottom":D
    :pswitch_9
    move-wide/from16 v69, v0

    move-wide/from16 v71, v4

    .end local v0    # "ascenderHeight":D
    .end local v4    # "bottom":D
    .restart local v69    # "ascenderHeight":D
    .restart local v71    # "bottom":D
    neg-double v0, v9

    .line 775
    .end local v40    # "baselineShift":D
    .local v0, "baselineShift":D
    goto :goto_9

    .line 768
    .end local v69    # "ascenderHeight":D
    .end local v71    # "bottom":D
    .local v0, "ascenderHeight":D
    .restart local v4    # "bottom":D
    .restart local v40    # "baselineShift":D
    :pswitch_a
    move-wide/from16 v69, v0

    move-wide/from16 v71, v4

    .end local v0    # "ascenderHeight":D
    .end local v4    # "bottom":D
    .restart local v69    # "ascenderHeight":D
    .restart local v71    # "bottom":D
    const-wide/16 v40, 0x0

    .line 769
    move-wide/from16 v0, v40

    goto :goto_9

    .line 762
    .end local v69    # "ascenderHeight":D
    .end local v71    # "bottom":D
    .restart local v0    # "ascenderHeight":D
    .restart local v4    # "bottom":D
    :pswitch_b
    move-wide/from16 v69, v0

    move-wide/from16 v71, v4

    .end local v0    # "ascenderHeight":D
    .end local v4    # "bottom":D
    .restart local v69    # "ascenderHeight":D
    .restart local v71    # "bottom":D
    neg-double v0, v9

    .line 763
    .end local v40    # "baselineShift":D
    .local v0, "baselineShift":D
    goto :goto_9

    .line 744
    .end local v69    # "ascenderHeight":D
    .end local v71    # "bottom":D
    .local v0, "ascenderHeight":D
    .restart local v4    # "bottom":D
    .restart local v40    # "baselineShift":D
    :cond_f
    move-wide/from16 v69, v0

    move-wide/from16 v71, v4

    .end local v0    # "ascenderHeight":D
    .end local v4    # "bottom":D
    .restart local v69    # "ascenderHeight":D
    .restart local v71    # "bottom":D
    move-wide/from16 v0, v40

    .line 860
    .end local v40    # "baselineShift":D
    .local v0, "baselineShift":D
    :goto_9
    if-eqz v15, :cond_17

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_17

    .line 861
    sget-object v5, Lcom/horcrux/svg/TSpanView$1;->$SwitchMap$com$horcrux$svg$TextProperties$AlignmentBaseline:[I

    invoke-virtual/range {v68 .. v68}, Lcom/horcrux/svg/TextProperties$AlignmentBaseline;->ordinal()I

    move-result v40

    aget v5, v5, v40

    packed-switch v5, :pswitch_data_2

    .line 867
    :pswitch_c
    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_10
    goto :goto_a

    .line 864
    :pswitch_d
    move-wide/from16 v74, v7

    move-wide/from16 v76, v9

    move-object/from16 v51, v11

    goto/16 :goto_d

    .line 867
    :sswitch_0
    const-string v5, "super"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    const/16 v51, 0x1

    goto :goto_a

    :sswitch_1
    const-string v5, "sub"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    const/16 v51, 0x0

    goto :goto_a

    :sswitch_2
    const-string v5, "baseline"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    const/16 v51, 0x2

    :goto_a
    const-string v5, "os2"

    const-string v4, "unitsPerEm"

    move-wide/from16 v74, v7

    .end local v7    # "top":D
    .local v74, "top":D
    const-string v7, "tables"

    packed-switch v51, :pswitch_data_3

    .line 902
    move-wide/from16 v76, v9

    move-object/from16 v51, v11

    .end local v9    # "descenderDepth":D
    .end local v11    # "fontData":Lcom/facebook/react/bridge/ReadableMap;
    .local v51, "fontData":Lcom/facebook/react/bridge/ReadableMap;
    .local v76, "descenderDepth":D
    iget v4, v6, Lcom/horcrux/svg/TSpanView;->mScale:F

    float-to-double v4, v4

    mul-double v41, v4, v49

    iget v4, v6, Lcom/horcrux/svg/TSpanView;->mScale:F

    float-to-double v4, v4

    .line 903
    move-object/from16 v40, v15

    move-wide/from16 v43, v4

    move-wide/from16 v45, v49

    invoke-static/range {v40 .. v46}, Lcom/horcrux/svg/PropHelper;->fromRelative(Ljava/lang/String;DDD)D

    move-result-wide v4

    sub-double/2addr v0, v4

    goto/16 :goto_d

    .line 899
    .end local v51    # "fontData":Lcom/facebook/react/bridge/ReadableMap;
    .end local v76    # "descenderDepth":D
    .restart local v9    # "descenderDepth":D
    .restart local v11    # "fontData":Lcom/facebook/react/bridge/ReadableMap;
    :pswitch_e
    move-wide/from16 v76, v9

    move-object/from16 v51, v11

    goto/16 :goto_d

    .line 885
    :pswitch_f
    if-eqz v11, :cond_13

    invoke-interface {v11, v7}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-interface {v11, v4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 886
    invoke-interface {v11, v4}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 887
    .local v4, "unitsPerEm":I
    invoke-interface {v11, v7}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v7

    .line 888
    .local v7, "tables":Lcom/facebook/react/bridge/ReadableMap;
    invoke-interface {v7, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 889
    invoke-interface {v7, v5}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v5

    .line 890
    .local v5, "os2":Lcom/facebook/react/bridge/ReadableMap;
    const-string v8, "ySuperscriptYOffset"

    invoke-interface {v5, v8}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_11

    .line 891
    invoke-interface {v5, v8}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v40

    .line 892
    .local v40, "superOffset":D
    iget v8, v6, Lcom/horcrux/svg/TSpanView;->mScale:F

    move-object/from16 v42, v7

    .end local v7    # "tables":Lcom/facebook/react/bridge/ReadableMap;
    .local v42, "tables":Lcom/facebook/react/bridge/ReadableMap;
    float-to-double v7, v8

    mul-double v7, v7, v49

    mul-double v7, v7, v40

    move-wide/from16 v76, v9

    .end local v9    # "descenderDepth":D
    .restart local v76    # "descenderDepth":D
    int-to-double v9, v4

    div-double/2addr v7, v9

    sub-double/2addr v0, v7

    goto :goto_b

    .line 890
    .end local v40    # "superOffset":D
    .end local v42    # "tables":Lcom/facebook/react/bridge/ReadableMap;
    .end local v76    # "descenderDepth":D
    .restart local v7    # "tables":Lcom/facebook/react/bridge/ReadableMap;
    .restart local v9    # "descenderDepth":D
    :cond_11
    move-object/from16 v42, v7

    move-wide/from16 v76, v9

    .end local v7    # "tables":Lcom/facebook/react/bridge/ReadableMap;
    .end local v9    # "descenderDepth":D
    .restart local v42    # "tables":Lcom/facebook/react/bridge/ReadableMap;
    .restart local v76    # "descenderDepth":D
    goto :goto_b

    .line 888
    .end local v5    # "os2":Lcom/facebook/react/bridge/ReadableMap;
    .end local v42    # "tables":Lcom/facebook/react/bridge/ReadableMap;
    .end local v76    # "descenderDepth":D
    .restart local v7    # "tables":Lcom/facebook/react/bridge/ReadableMap;
    .restart local v9    # "descenderDepth":D
    :cond_12
    move-object/from16 v42, v7

    move-wide/from16 v76, v9

    .line 895
    .end local v4    # "unitsPerEm":I
    .end local v7    # "tables":Lcom/facebook/react/bridge/ReadableMap;
    .end local v9    # "descenderDepth":D
    .restart local v76    # "descenderDepth":D
    :goto_b
    move-object/from16 v51, v11

    goto :goto_d

    .line 885
    .end local v76    # "descenderDepth":D
    .restart local v9    # "descenderDepth":D
    :cond_13
    move-wide/from16 v76, v9

    .end local v9    # "descenderDepth":D
    .restart local v76    # "descenderDepth":D
    move-object/from16 v51, v11

    goto :goto_d

    .line 870
    .end local v76    # "descenderDepth":D
    .restart local v9    # "descenderDepth":D
    :pswitch_10
    move-wide/from16 v76, v9

    .end local v9    # "descenderDepth":D
    .restart local v76    # "descenderDepth":D
    if-eqz v11, :cond_16

    invoke-interface {v11, v7}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_16

    invoke-interface {v11, v4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 871
    invoke-interface {v11, v4}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 872
    .restart local v4    # "unitsPerEm":I
    invoke-interface {v11, v7}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v7

    .line 873
    .restart local v7    # "tables":Lcom/facebook/react/bridge/ReadableMap;
    invoke-interface {v7, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 874
    invoke-interface {v7, v5}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v5

    .line 875
    .restart local v5    # "os2":Lcom/facebook/react/bridge/ReadableMap;
    const-string v8, "ySubscriptYOffset"

    invoke-interface {v5, v8}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 876
    invoke-interface {v5, v8}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 877
    .local v8, "subOffset":D
    iget v10, v6, Lcom/horcrux/svg/TSpanView;->mScale:F

    move-object/from16 v51, v11

    .end local v11    # "fontData":Lcom/facebook/react/bridge/ReadableMap;
    .restart local v51    # "fontData":Lcom/facebook/react/bridge/ReadableMap;
    float-to-double v10, v10

    mul-double v10, v10, v49

    mul-double/2addr v10, v8

    move-object/from16 v40, v7

    move-wide/from16 v41, v8

    .end local v7    # "tables":Lcom/facebook/react/bridge/ReadableMap;
    .end local v8    # "subOffset":D
    .local v40, "tables":Lcom/facebook/react/bridge/ReadableMap;
    .local v41, "subOffset":D
    int-to-double v7, v4

    div-double/2addr v10, v7

    add-double/2addr v0, v10

    goto :goto_c

    .line 875
    .end local v40    # "tables":Lcom/facebook/react/bridge/ReadableMap;
    .end local v41    # "subOffset":D
    .end local v51    # "fontData":Lcom/facebook/react/bridge/ReadableMap;
    .restart local v7    # "tables":Lcom/facebook/react/bridge/ReadableMap;
    .restart local v11    # "fontData":Lcom/facebook/react/bridge/ReadableMap;
    :cond_14
    move-object/from16 v40, v7

    move-object/from16 v51, v11

    .end local v7    # "tables":Lcom/facebook/react/bridge/ReadableMap;
    .end local v11    # "fontData":Lcom/facebook/react/bridge/ReadableMap;
    .restart local v40    # "tables":Lcom/facebook/react/bridge/ReadableMap;
    .restart local v51    # "fontData":Lcom/facebook/react/bridge/ReadableMap;
    goto :goto_c

    .line 873
    .end local v5    # "os2":Lcom/facebook/react/bridge/ReadableMap;
    .end local v40    # "tables":Lcom/facebook/react/bridge/ReadableMap;
    .end local v51    # "fontData":Lcom/facebook/react/bridge/ReadableMap;
    .restart local v7    # "tables":Lcom/facebook/react/bridge/ReadableMap;
    .restart local v11    # "fontData":Lcom/facebook/react/bridge/ReadableMap;
    :cond_15
    move-object/from16 v40, v7

    move-object/from16 v51, v11

    .line 880
    .end local v4    # "unitsPerEm":I
    .end local v7    # "tables":Lcom/facebook/react/bridge/ReadableMap;
    .end local v11    # "fontData":Lcom/facebook/react/bridge/ReadableMap;
    .restart local v51    # "fontData":Lcom/facebook/react/bridge/ReadableMap;
    :goto_c
    goto :goto_d

    .line 870
    .end local v51    # "fontData":Lcom/facebook/react/bridge/ReadableMap;
    .restart local v11    # "fontData":Lcom/facebook/react/bridge/ReadableMap;
    :cond_16
    move-object/from16 v51, v11

    .end local v11    # "fontData":Lcom/facebook/react/bridge/ReadableMap;
    .restart local v51    # "fontData":Lcom/facebook/react/bridge/ReadableMap;
    goto :goto_d

    .line 860
    .end local v51    # "fontData":Lcom/facebook/react/bridge/ReadableMap;
    .end local v74    # "top":D
    .end local v76    # "descenderDepth":D
    .local v7, "top":D
    .restart local v9    # "descenderDepth":D
    .restart local v11    # "fontData":Lcom/facebook/react/bridge/ReadableMap;
    :cond_17
    move-wide/from16 v74, v7

    move-wide/from16 v76, v9

    move-object/from16 v51, v11

    .line 909
    .end local v7    # "top":D
    .end local v9    # "descenderDepth":D
    .end local v11    # "fontData":Lcom/facebook/react/bridge/ReadableMap;
    .restart local v51    # "fontData":Lcom/facebook/react/bridge/ReadableMap;
    .restart local v74    # "top":D
    .restart local v76    # "descenderDepth":D
    :goto_d
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 910
    .local v4, "start":Landroid/graphics/Matrix;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 911
    .local v5, "mid":Landroid/graphics/Matrix;
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    move-object v11, v7

    .line 913
    .local v11, "end":Landroid/graphics/Matrix;
    const/16 v7, 0x9

    new-array v10, v7, [F

    .line 914
    .local v10, "startPointMatrixData":[F
    new-array v9, v7, [F

    .line 916
    .local v9, "endPointMatrixData":[F
    const/4 v7, 0x0

    move v8, v7

    .local v8, "index":I
    :goto_e
    if-ge v8, v12, :cond_29

    .line 917
    aget-char v7, v20, v8

    .line 918
    .local v7, "currentChar":C
    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v40

    .line 919
    .local v40, "current":Ljava/lang/String;
    aget-boolean v41, v56, v8

    .line 925
    .local v41, "alreadyRenderedGraphemeCluster":Z
    const/16 v42, 0x0

    .line 926
    .local v42, "hasLigature":Z
    move-object/from16 v43, v15

    .end local v15    # "baselineShiftString":Ljava/lang/String;
    .local v43, "baselineShiftString":Ljava/lang/String;
    if-eqz v41, :cond_18

    .line 927
    const-string v40, ""

    move/from16 v45, v12

    move-object/from16 v6, v40

    goto :goto_11

    .line 929
    :cond_18
    move/from16 v44, v8

    move-object/from16 v78, v40

    .line 930
    .end local v40    # "current":Ljava/lang/String;
    .local v44, "nextIndex":I
    .local v78, "current":Ljava/lang/String;
    :goto_f
    const/16 v23, 0x1

    add-int/lit8 v15, v44, 0x1

    .end local v44    # "nextIndex":I
    .local v15, "nextIndex":I
    if-ge v15, v12, :cond_1a

    .line 931
    aget v44, v54, v15

    .line 932
    .local v44, "nextWidth":F
    const/16 v40, 0x0

    cmpl-float v45, v44, v40

    if-lez v45, :cond_19

    .line 933
    move/from16 v45, v12

    move-object/from16 v46, v78

    goto :goto_10

    .line 935
    :cond_19
    move/from16 v45, v12

    .end local v12    # "length":I
    .local v45, "length":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, v78

    .end local v78    # "current":Ljava/lang/String;
    .local v6, "current":Ljava/lang/String;
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v46, v6

    .end local v6    # "current":Ljava/lang/String;
    .local v46, "current":Ljava/lang/String;
    aget-char v6, v20, v15

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 936
    .local v6, "nextLigature":Ljava/lang/String;
    const/4 v12, 0x1

    aput-boolean v12, v56, v15

    .line 937
    move-object/from16 v78, v6

    .line 938
    .end local v46    # "current":Ljava/lang/String;
    .restart local v78    # "current":Ljava/lang/String;
    const/16 v42, 0x1

    .line 939
    .end local v6    # "nextLigature":Ljava/lang/String;
    .end local v44    # "nextWidth":F
    move-object/from16 v6, p0

    move/from16 v44, v15

    move/from16 v12, v45

    goto :goto_f

    .line 930
    .end local v45    # "length":I
    .restart local v12    # "length":I
    :cond_1a
    move/from16 v45, v12

    move-object/from16 v46, v78

    .line 941
    .end local v12    # "length":I
    .end local v15    # "nextIndex":I
    .end local v78    # "current":Ljava/lang/String;
    .restart local v45    # "length":I
    .restart local v46    # "current":Ljava/lang/String;
    :goto_10
    move-object/from16 v6, v46

    .end local v46    # "current":Ljava/lang/String;
    .local v6, "current":Ljava/lang/String;
    :goto_11
    invoke-virtual {v14, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v12

    float-to-double v14, v12

    mul-double/2addr v14, v2

    .line 952
    .local v14, "charWidth":D
    if-eqz v26, :cond_1b

    .line 953
    aget v12, v54, v8

    move-wide/from16 v78, v0

    .end local v0    # "baselineShift":D
    .local v78, "baselineShift":D
    float-to-double v0, v12

    mul-double/2addr v0, v2

    .line 954
    .local v0, "kerned":D
    sub-double v27, v0, v14

    goto :goto_12

    .line 952
    .end local v78    # "baselineShift":D
    .local v0, "baselineShift":D
    :cond_1b
    move-wide/from16 v78, v0

    .line 957
    .end local v0    # "baselineShift":D
    .restart local v78    # "baselineShift":D
    :goto_12
    const/16 v0, 0x20

    if-ne v7, v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_13

    :cond_1c
    const/4 v0, 0x0

    .line 958
    .local v0, "isWordSeparator":Z
    :goto_13
    if-eqz v0, :cond_1d

    move-wide/from16 v80, v24

    goto :goto_14

    :cond_1d
    move-wide/from16 v80, v17

    .line 959
    .local v80, "wordSpace":D
    :goto_14
    add-double v82, v80, v31

    .line 960
    .local v82, "spacing":D
    add-double v84, v14, v82

    .line 962
    .local v84, "advance":D
    if-eqz v41, :cond_1e

    move-wide/from16 v88, v2

    move-wide/from16 v1, v17

    goto :goto_15

    :cond_1e
    add-double v86, v27, v84

    move-wide/from16 v88, v2

    move-wide/from16 v1, v86

    .end local v2    # "scaleSpacingAndGlyphs":D
    .local v88, "scaleSpacingAndGlyphs":D
    :goto_15
    invoke-virtual {v13, v1, v2}, Lcom/horcrux/svg/GlyphContext;->nextX(D)D

    move-result-wide v1

    .line 963
    .local v1, "x":D
    move v12, v7

    move v3, v8

    .end local v7    # "currentChar":C
    .end local v8    # "index":I
    .local v3, "index":I
    .local v12, "currentChar":C
    invoke-virtual {v13}, Lcom/horcrux/svg/GlyphContext;->nextY()D

    move-result-wide v7

    .line 964
    .local v7, "y":D
    invoke-virtual {v13}, Lcom/horcrux/svg/GlyphContext;->nextDeltaX()D

    move-result-wide v86

    .line 965
    .local v86, "dx":D
    invoke-virtual {v13}, Lcom/horcrux/svg/GlyphContext;->nextDeltaY()D

    move-result-wide v90

    .line 966
    .local v90, "dy":D
    move-object/from16 v44, v6

    move-wide/from16 v92, v7

    .end local v6    # "current":Ljava/lang/String;
    .end local v7    # "y":D
    .local v44, "current":Ljava/lang/String;
    .local v92, "y":D
    invoke-virtual {v13}, Lcom/horcrux/svg/GlyphContext;->nextRotation()D

    move-result-wide v6

    .line 968
    .local v6, "r":D
    if-nez v41, :cond_28

    if-eqz v0, :cond_1f

    .line 971
    move-object/from16 v0, p2

    move-object/from16 v109, v4

    move-object/from16 v23, v9

    move-object/from16 v22, v10

    move-object/from16 v46, v13

    move-object/from16 v1, v21

    move/from16 v4, v45

    move-object/from16 v21, v51

    move-object/from16 v7, v55

    move-wide/from16 v44, v74

    move-wide/from16 v75, v76

    move-object/from16 v13, p3

    move-object/from16 v51, v11

    move-object/from16 v11, p0

    move/from16 v122, v67

    move/from16 v67, v3

    move-wide/from16 v2, v59

    move-wide/from16 v60, v61

    move-object/from16 v62, v64

    move/from16 v64, v122

    move-object/from16 v59, v30

    const/16 v30, 0x0

    goto/16 :goto_1b

    .line 974
    :cond_1f
    move-object/from16 v46, v13

    move/from16 v8, v67

    move/from16 v67, v12

    .end local v12    # "currentChar":C
    .end local v13    # "gc":Lcom/horcrux/svg/GlyphContext;
    .local v8, "side":I
    .local v46, "gc":Lcom/horcrux/svg/GlyphContext;
    .local v67, "currentChar":C
    int-to-double v12, v8

    mul-double v84, v84, v12

    .line 975
    int-to-double v12, v8

    mul-double/2addr v14, v12

    .line 976
    add-double v12, v1, v86

    move/from16 v94, v0

    move-wide/from16 v95, v1

    .end local v0    # "isWordSeparator":Z
    .end local v1    # "x":D
    .local v94, "isWordSeparator":Z
    .local v95, "x":D
    int-to-double v0, v8

    mul-double/2addr v12, v0

    add-double v0, v33, v12

    .line 977
    .local v0, "cursor":D
    sub-double v12, v0, v84

    .line 979
    .local v12, "startPoint":D
    if-eqz v16, :cond_25

    .line 986
    move-wide/from16 v97, v0

    .end local v0    # "cursor":D
    .local v97, "cursor":D
    add-double v0, v12, v14

    .line 993
    .local v0, "endPoint":D
    move/from16 v99, v3

    .end local v3    # "index":I
    .local v99, "index":I
    div-double v2, v14, v52

    .line 994
    .local v2, "halfWay":D
    move-wide/from16 v100, v14

    .end local v14    # "charWidth":D
    .local v100, "charWidth":D
    add-double v14, v12, v2

    .line 997
    .local v14, "midPoint":D
    cmpl-double v102, v14, v38

    if-lez v102, :cond_20

    .line 998
    move-object/from16 v0, p2

    move-object/from16 v13, p3

    move-object/from16 v109, v4

    move-object/from16 v23, v9

    move-object/from16 v22, v10

    move-object/from16 v1, v21

    move/from16 v4, v45

    move-object/from16 v21, v51

    move-object/from16 v7, v55

    move-wide/from16 v2, v59

    move-wide/from16 v60, v61

    move-object/from16 v62, v64

    move-wide/from16 v44, v74

    move-wide/from16 v75, v76

    move/from16 v67, v99

    move/from16 v64, v8

    move-object/from16 v51, v11

    move-object/from16 v59, v30

    const/16 v30, 0x0

    move-object/from16 v11, p0

    goto/16 :goto_1b

    .line 999
    :cond_20
    cmpg-double v102, v14, v36

    if-gez v102, :cond_21

    .line 1000
    move-object/from16 v0, p2

    move-object/from16 v13, p3

    move-object/from16 v109, v4

    move-object/from16 v23, v9

    move-object/from16 v22, v10

    move-object/from16 v1, v21

    move/from16 v4, v45

    move-object/from16 v21, v51

    move-object/from16 v7, v55

    move-wide/from16 v2, v59

    move-wide/from16 v60, v61

    move-object/from16 v62, v64

    move-wide/from16 v44, v74

    move-wide/from16 v75, v76

    move/from16 v67, v99

    move/from16 v64, v8

    move-object/from16 v51, v11

    move-object/from16 v59, v30

    const/16 v30, 0x0

    move-object/from16 v11, p0

    goto/16 :goto_1b

    .line 1017
    :cond_21
    const/16 v102, 0x3

    .line 1018
    .local v102, "posAndTanFlags":I
    move-wide/from16 v103, v6

    .end local v6    # "r":D
    .local v103, "r":D
    const/4 v6, 0x3

    if-eqz v63, :cond_22

    .line 1019
    double-to-float v7, v14

    move-wide/from16 v105, v2

    move-object/from16 v2, v30

    .end local v30    # "pm":Landroid/graphics/PathMeasure;
    .local v2, "pm":Landroid/graphics/PathMeasure;
    .local v105, "halfWay":D
    invoke-virtual {v2, v7, v5, v6}, Landroid/graphics/PathMeasure;->getMatrix(FLandroid/graphics/Matrix;I)Z

    move-object/from16 v73, v2

    move-object/from16 v109, v4

    move-object/from16 v110, v9

    move-object/from16 v30, v10

    move-wide/from16 v107, v14

    move-wide/from16 v111, v61

    move-wide/from16 v61, v0

    goto/16 :goto_18

    .line 1037
    .end local v105    # "halfWay":D
    .local v2, "halfWay":D
    .restart local v30    # "pm":Landroid/graphics/PathMeasure;
    :cond_22
    move-wide/from16 v105, v2

    move-object/from16 v2, v30

    .end local v30    # "pm":Landroid/graphics/PathMeasure;
    .local v2, "pm":Landroid/graphics/PathMeasure;
    .restart local v105    # "halfWay":D
    cmpg-double v3, v12, v17

    if-gez v3, :cond_23

    .line 1038
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4, v6}, Landroid/graphics/PathMeasure;->getMatrix(FLandroid/graphics/Matrix;I)Z

    .line 1039
    double-to-float v7, v12

    invoke-virtual {v4, v7, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    const/4 v7, 0x1

    goto :goto_16

    .line 1041
    :cond_23
    double-to-float v3, v12

    const/4 v7, 0x1

    invoke-virtual {v2, v3, v4, v7}, Landroid/graphics/PathMeasure;->getMatrix(FLandroid/graphics/Matrix;I)Z

    .line 1044
    :goto_16
    double-to-float v3, v14

    invoke-virtual {v2, v3, v5, v7}, Landroid/graphics/PathMeasure;->getMatrix(FLandroid/graphics/Matrix;I)Z

    .line 1046
    cmpl-double v3, v0, v61

    if-lez v3, :cond_24

    .line 1047
    move-wide/from16 v107, v14

    move-wide/from16 v14, v61

    .end local v61    # "pathLength":D
    .local v14, "pathLength":D
    .local v107, "midPoint":D
    double-to-float v3, v14

    invoke-virtual {v2, v3, v11, v6}, Landroid/graphics/PathMeasure;->getMatrix(FLandroid/graphics/Matrix;I)Z

    .line 1048
    sub-double v6, v0, v14

    double-to-float v3, v6

    const/4 v6, 0x0

    invoke-virtual {v11, v3, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    const/4 v6, 0x1

    goto :goto_17

    .line 1050
    .end local v107    # "midPoint":D
    .local v14, "midPoint":D
    .restart local v61    # "pathLength":D
    :cond_24
    move-wide/from16 v107, v14

    move-wide/from16 v14, v61

    .end local v61    # "pathLength":D
    .local v14, "pathLength":D
    .restart local v107    # "midPoint":D
    double-to-float v3, v0

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v11, v6}, Landroid/graphics/PathMeasure;->getMatrix(FLandroid/graphics/Matrix;I)Z

    .line 1053
    :goto_17
    invoke-virtual {v4, v10}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1054
    invoke-virtual {v11, v9}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1056
    const/4 v3, 0x2

    aget v7, v10, v3

    float-to-double v6, v7

    .line 1057
    .local v6, "startX":D
    const/16 v30, 0x5

    aget v3, v10, v30

    move-wide/from16 v61, v0

    .end local v0    # "endPoint":D
    .local v61, "endPoint":D
    float-to-double v0, v3

    .line 1058
    .local v0, "startY":D
    move-object/from16 v73, v2

    const/4 v3, 0x2

    .end local v2    # "pm":Landroid/graphics/PathMeasure;
    .local v73, "pm":Landroid/graphics/PathMeasure;
    aget v2, v9, v3

    move-object/from16 v109, v4

    .end local v4    # "start":Landroid/graphics/Matrix;
    .local v109, "start":Landroid/graphics/Matrix;
    float-to-double v3, v2

    .line 1059
    .local v3, "endX":D
    aget v2, v9, v30

    move-object/from16 v110, v9

    move-object/from16 v30, v10

    .end local v9    # "endPointMatrixData":[F
    .end local v10    # "startPointMatrixData":[F
    .local v30, "startPointMatrixData":[F
    .local v110, "endPointMatrixData":[F
    float-to-double v9, v2

    .line 1062
    .local v9, "endY":D
    move-wide/from16 v111, v14

    .end local v14    # "pathLength":D
    .local v111, "pathLength":D
    sub-double v14, v3, v6

    .line 1063
    .local v14, "lineX":D
    move-wide/from16 v113, v3

    .end local v3    # "endX":D
    .local v113, "endX":D
    sub-double v2, v9, v0

    .line 1065
    .local v2, "lineY":D
    invoke-static {v2, v3, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v115

    .line 1067
    .local v115, "glyphMidlineAngle":D
    const-wide v117, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double v117, v117, v115

    move-wide/from16 v119, v0

    .end local v0    # "startY":D
    .local v119, "startY":D
    int-to-double v0, v8

    mul-double v0, v0, v117

    double-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 1074
    .end local v2    # "lineY":D
    .end local v6    # "startX":D
    .end local v9    # "endY":D
    .end local v14    # "lineX":D
    .end local v113    # "endX":D
    .end local v115    # "glyphMidlineAngle":D
    .end local v119    # "startY":D
    :goto_18
    move-wide/from16 v14, v105

    .end local v105    # "halfWay":D
    .local v14, "halfWay":D
    neg-double v0, v14

    double-to-float v0, v0

    add-double v1, v90, v78

    double-to-float v1, v1

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1075
    move-wide/from16 v2, v59

    .end local v59    # "scaledDirection":D
    .local v2, "scaledDirection":D
    double-to-float v0, v2

    int-to-float v1, v8

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1076
    move-wide/from16 v0, v92

    .end local v92    # "y":D
    .local v0, "y":D
    double-to-float v4, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1077
    .end local v14    # "halfWay":D
    .end local v61    # "endPoint":D
    .end local v102    # "posAndTanFlags":I
    .end local v107    # "midPoint":D
    goto :goto_19

    .line 1078
    .end local v2    # "scaledDirection":D
    .end local v73    # "pm":Landroid/graphics/PathMeasure;
    .end local v97    # "cursor":D
    .end local v99    # "index":I
    .end local v100    # "charWidth":D
    .end local v103    # "r":D
    .end local v109    # "start":Landroid/graphics/Matrix;
    .end local v110    # "endPointMatrixData":[F
    .end local v111    # "pathLength":D
    .local v0, "cursor":D
    .local v3, "index":I
    .restart local v4    # "start":Landroid/graphics/Matrix;
    .local v6, "r":D
    .local v9, "endPointMatrixData":[F
    .restart local v10    # "startPointMatrixData":[F
    .local v14, "charWidth":D
    .local v30, "pm":Landroid/graphics/PathMeasure;
    .restart local v59    # "scaledDirection":D
    .local v61, "pathLength":D
    .restart local v92    # "y":D
    :cond_25
    move-wide/from16 v97, v0

    move/from16 v99, v3

    move-object/from16 v109, v4

    move-wide/from16 v103, v6

    move-object/from16 v110, v9

    move-wide/from16 v100, v14

    move-object/from16 v73, v30

    move-wide/from16 v2, v59

    move-wide/from16 v111, v61

    move-wide/from16 v0, v92

    move-object/from16 v30, v10

    .end local v3    # "index":I
    .end local v4    # "start":Landroid/graphics/Matrix;
    .end local v6    # "r":D
    .end local v9    # "endPointMatrixData":[F
    .end local v10    # "startPointMatrixData":[F
    .end local v14    # "charWidth":D
    .end local v59    # "scaledDirection":D
    .end local v61    # "pathLength":D
    .end local v92    # "y":D
    .local v0, "y":D
    .restart local v2    # "scaledDirection":D
    .local v30, "startPointMatrixData":[F
    .restart local v73    # "pm":Landroid/graphics/PathMeasure;
    .restart local v97    # "cursor":D
    .restart local v99    # "index":I
    .restart local v100    # "charWidth":D
    .restart local v103    # "r":D
    .restart local v109    # "start":Landroid/graphics/Matrix;
    .restart local v110    # "endPointMatrixData":[F
    .restart local v111    # "pathLength":D
    double-to-float v4, v12

    add-double v6, v0, v90

    add-double v6, v6, v78

    double-to-float v6, v6

    invoke-virtual {v5, v4, v6}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1081
    :goto_19
    move-wide/from16 v6, v103

    .end local v103    # "r":D
    .restart local v6    # "r":D
    double-to-float v4, v6

    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 1084
    if-eqz v42, :cond_26

    .line 1085
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    move-wide v14, v12

    move-object/from16 v59, v73

    .end local v12    # "startPoint":D
    .end local v73    # "pm":Landroid/graphics/PathMeasure;
    .local v14, "startPoint":D
    .local v59, "pm":Landroid/graphics/PathMeasure;
    move-object v13, v4

    .line 1086
    .local v13, "glyph":Landroid/graphics/Path;
    invoke-virtual/range {v44 .. v44}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v4, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x0

    move-wide/from16 v92, v6

    move/from16 v6, v67

    move-wide/from16 v60, v111

    move-wide/from16 v122, v0

    move-wide/from16 v0, v74

    move-wide/from16 v73, v122

    .end local v67    # "currentChar":C
    .end local v74    # "top":D
    .end local v111    # "pathLength":D
    .local v0, "top":D
    .local v6, "currentChar":C
    .local v60, "pathLength":D
    .local v73, "y":D
    .local v92, "r":D
    move-object/from16 v7, p2

    move-object/from16 v62, v64

    move/from16 v67, v99

    move/from16 v64, v8

    .end local v8    # "side":I
    .end local v99    # "index":I
    .local v62, "fm":Landroid/graphics/Paint$FontMetrics;
    .local v64, "side":I
    .local v67, "index":I
    move-object/from16 v8, v44

    move-wide/from16 v75, v76

    move-object/from16 v23, v110

    .end local v76    # "descenderDepth":D
    .end local v110    # "endPointMatrixData":[F
    .local v23, "endPointMatrixData":[F
    .local v75, "descenderDepth":D
    move-object/from16 v22, v30

    const/16 v30, 0x0

    .end local v30    # "startPointMatrixData":[F
    .local v22, "startPointMatrixData":[F
    move-object/from16 v121, v21

    move-object/from16 v21, v51

    move-object/from16 v51, v11

    .end local v11    # "end":Landroid/graphics/Matrix;
    .local v21, "fontData":Lcom/facebook/react/bridge/ReadableMap;
    .local v51, "end":Landroid/graphics/Matrix;
    .local v121, "path":Landroid/graphics/Path;
    move v11, v4

    move/from16 v4, v45

    .end local v45    # "length":I
    .local v4, "length":I
    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Paint;->getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V

    move-object v9, v13

    move-object/from16 v7, v55

    goto :goto_1a

    .line 1088
    .end local v4    # "length":I
    .end local v13    # "glyph":Landroid/graphics/Path;
    .end local v14    # "startPoint":D
    .end local v22    # "startPointMatrixData":[F
    .end local v23    # "endPointMatrixData":[F
    .end local v59    # "pm":Landroid/graphics/PathMeasure;
    .end local v60    # "pathLength":D
    .end local v62    # "fm":Landroid/graphics/Paint$FontMetrics;
    .end local v75    # "descenderDepth":D
    .end local v92    # "r":D
    .end local v121    # "path":Landroid/graphics/Path;
    .local v0, "y":D
    .local v6, "r":D
    .restart local v8    # "side":I
    .restart local v11    # "end":Landroid/graphics/Matrix;
    .restart local v12    # "startPoint":D
    .local v21, "path":Landroid/graphics/Path;
    .restart local v30    # "startPointMatrixData":[F
    .restart local v45    # "length":I
    .local v51, "fontData":Lcom/facebook/react/bridge/ReadableMap;
    .local v64, "fm":Landroid/graphics/Paint$FontMetrics;
    .local v67, "currentChar":C
    .local v73, "pm":Landroid/graphics/PathMeasure;
    .restart local v74    # "top":D
    .restart local v76    # "descenderDepth":D
    .restart local v99    # "index":I
    .restart local v110    # "endPointMatrixData":[F
    .restart local v111    # "pathLength":D
    :cond_26
    move-wide/from16 v92, v6

    move-wide v14, v12

    move-object/from16 v121, v21

    move-object/from16 v22, v30

    move/from16 v4, v45

    move-object/from16 v21, v51

    move-object/from16 v62, v64

    move/from16 v6, v67

    move-object/from16 v59, v73

    move/from16 v67, v99

    move-object/from16 v23, v110

    move-wide/from16 v60, v111

    const/16 v30, 0x0

    move/from16 v64, v8

    move-object/from16 v51, v11

    move-wide/from16 v122, v74

    move-wide/from16 v75, v76

    move-wide/from16 v73, v0

    move-wide/from16 v0, v122

    .end local v8    # "side":I
    .end local v11    # "end":Landroid/graphics/Matrix;
    .end local v12    # "startPoint":D
    .end local v30    # "startPointMatrixData":[F
    .end local v45    # "length":I
    .end local v74    # "top":D
    .end local v76    # "descenderDepth":D
    .end local v99    # "index":I
    .end local v110    # "endPointMatrixData":[F
    .end local v111    # "pathLength":D
    .local v0, "top":D
    .restart local v4    # "length":I
    .local v6, "currentChar":C
    .restart local v14    # "startPoint":D
    .local v21, "fontData":Lcom/facebook/react/bridge/ReadableMap;
    .restart local v22    # "startPointMatrixData":[F
    .restart local v23    # "endPointMatrixData":[F
    .local v51, "end":Landroid/graphics/Matrix;
    .restart local v59    # "pm":Landroid/graphics/PathMeasure;
    .restart local v60    # "pathLength":D
    .restart local v62    # "fm":Landroid/graphics/Paint$FontMetrics;
    .local v64, "side":I
    .local v67, "index":I
    .local v73, "y":D
    .restart local v75    # "descenderDepth":D
    .restart local v92    # "r":D
    .restart local v121    # "path":Landroid/graphics/Path;
    move-object/from16 v8, v44

    move-object/from16 v7, v55

    .end local v44    # "current":Ljava/lang/String;
    .end local v55    # "bag":Lcom/horcrux/svg/GlyphPathBag;
    .local v7, "bag":Lcom/horcrux/svg/GlyphPathBag;
    .local v8, "current":Ljava/lang/String;
    invoke-virtual {v7, v6, v8}, Lcom/horcrux/svg/GlyphPathBag;->getOrCreateAndCache(CLjava/lang/String;)Landroid/graphics/Path;

    move-result-object v9

    .line 1090
    .local v9, "glyph":Landroid/graphics/Path;
    :goto_1a
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    .line 1091
    .local v10, "bounds":Landroid/graphics/RectF;
    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 1092
    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v12

    .line 1093
    .local v12, "width":F
    const/4 v13, 0x0

    cmpl-float v44, v12, v13

    if-nez v44, :cond_27

    .line 1094
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->save()I

    .line 1095
    move-object/from16 v13, p3

    invoke-virtual {v13, v5}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1096
    move-object/from16 v11, p0

    move-wide/from16 v44, v0

    .end local v0    # "top":D
    .local v44, "top":D
    iget-object v0, v11, Lcom/horcrux/svg/TSpanView;->emoji:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1097
    iget-object v0, v11, Lcom/horcrux/svg/TSpanView;->emojiTransforms:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1, v5}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1098
    move-object/from16 v0, p2

    const/4 v1, 0x0

    invoke-virtual {v13, v8, v1, v1, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1099
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->restore()V

    move-object/from16 v1, v121

    goto :goto_1b

    .line 1101
    .end local v44    # "top":D
    .restart local v0    # "top":D
    :cond_27
    move-object/from16 v11, p0

    move-object/from16 v13, p3

    move-wide/from16 v44, v0

    move-object/from16 v0, p2

    .end local v0    # "top":D
    .restart local v44    # "top":D
    invoke-virtual {v9, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 1102
    move-object/from16 v1, v121

    .end local v121    # "path":Landroid/graphics/Path;
    .local v1, "path":Landroid/graphics/Path;
    invoke-virtual {v1, v9}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    goto :goto_1b

    .line 968
    .end local v2    # "scaledDirection":D
    .end local v7    # "bag":Lcom/horcrux/svg/GlyphPathBag;
    .end local v8    # "current":Ljava/lang/String;
    .end local v22    # "startPointMatrixData":[F
    .end local v23    # "endPointMatrixData":[F
    .end local v46    # "gc":Lcom/horcrux/svg/GlyphContext;
    .end local v60    # "pathLength":D
    .end local v62    # "fm":Landroid/graphics/Paint$FontMetrics;
    .end local v73    # "y":D
    .end local v75    # "descenderDepth":D
    .end local v94    # "isWordSeparator":Z
    .end local v95    # "x":D
    .end local v97    # "cursor":D
    .end local v100    # "charWidth":D
    .end local v109    # "start":Landroid/graphics/Matrix;
    .local v0, "isWordSeparator":Z
    .local v1, "x":D
    .restart local v3    # "index":I
    .local v4, "start":Landroid/graphics/Matrix;
    .local v6, "r":D
    .local v9, "endPointMatrixData":[F
    .local v10, "startPointMatrixData":[F
    .restart local v11    # "end":Landroid/graphics/Matrix;
    .local v12, "currentChar":C
    .local v13, "gc":Lcom/horcrux/svg/GlyphContext;
    .local v14, "charWidth":D
    .local v21, "path":Landroid/graphics/Path;
    .local v30, "pm":Landroid/graphics/PathMeasure;
    .local v44, "current":Ljava/lang/String;
    .restart local v45    # "length":I
    .local v51, "fontData":Lcom/facebook/react/bridge/ReadableMap;
    .restart local v55    # "bag":Lcom/horcrux/svg/GlyphPathBag;
    .local v59, "scaledDirection":D
    .restart local v61    # "pathLength":D
    .local v64, "fm":Landroid/graphics/Paint$FontMetrics;
    .local v67, "side":I
    .restart local v74    # "top":D
    .restart local v76    # "descenderDepth":D
    .local v92, "y":D
    :cond_28
    move/from16 v94, v0

    move-wide/from16 v95, v1

    move-object/from16 v109, v4

    move-object/from16 v23, v9

    move-object/from16 v22, v10

    move-object/from16 v46, v13

    move-object/from16 v1, v21

    move-object/from16 v8, v44

    move/from16 v4, v45

    move-object/from16 v21, v51

    move-wide/from16 v44, v74

    move-wide/from16 v75, v76

    move-wide/from16 v73, v92

    move-object/from16 v0, p2

    move-object/from16 v13, p3

    move-wide/from16 v92, v6

    move-object/from16 v51, v11

    move v6, v12

    move-object/from16 v7, v55

    move-object/from16 v11, p0

    move/from16 v122, v67

    move/from16 v67, v3

    move-wide/from16 v2, v59

    move-wide/from16 v60, v61

    move-object/from16 v62, v64

    move/from16 v64, v122

    move-object/from16 v59, v30

    const/16 v30, 0x0

    .line 916
    .end local v0    # "isWordSeparator":Z
    .end local v3    # "index":I
    .end local v6    # "r":D
    .end local v9    # "endPointMatrixData":[F
    .end local v10    # "startPointMatrixData":[F
    .end local v11    # "end":Landroid/graphics/Matrix;
    .end local v12    # "currentChar":C
    .end local v13    # "gc":Lcom/horcrux/svg/GlyphContext;
    .end local v14    # "charWidth":D
    .end local v30    # "pm":Landroid/graphics/PathMeasure;
    .end local v41    # "alreadyRenderedGraphemeCluster":Z
    .end local v42    # "hasLigature":Z
    .end local v45    # "length":I
    .end local v55    # "bag":Lcom/horcrux/svg/GlyphPathBag;
    .end local v61    # "pathLength":D
    .end local v74    # "top":D
    .end local v76    # "descenderDepth":D
    .end local v80    # "wordSpace":D
    .end local v82    # "spacing":D
    .end local v84    # "advance":D
    .end local v86    # "dx":D
    .end local v90    # "dy":D
    .end local v92    # "y":D
    .local v1, "path":Landroid/graphics/Path;
    .restart local v2    # "scaledDirection":D
    .local v4, "length":I
    .restart local v7    # "bag":Lcom/horcrux/svg/GlyphPathBag;
    .local v21, "fontData":Lcom/facebook/react/bridge/ReadableMap;
    .restart local v22    # "startPointMatrixData":[F
    .restart local v23    # "endPointMatrixData":[F
    .local v44, "top":D
    .restart local v46    # "gc":Lcom/horcrux/svg/GlyphContext;
    .local v51, "end":Landroid/graphics/Matrix;
    .local v59, "pm":Landroid/graphics/PathMeasure;
    .restart local v60    # "pathLength":D
    .restart local v62    # "fm":Landroid/graphics/Paint$FontMetrics;
    .local v64, "side":I
    .local v67, "index":I
    .restart local v75    # "descenderDepth":D
    .restart local v109    # "start":Landroid/graphics/Matrix;
    :goto_1b
    add-int/lit8 v8, v67, 0x1

    move-object v14, v0

    move v12, v4

    move-object/from16 v55, v7

    move-object v6, v11

    move-object/from16 v10, v22

    move-object/from16 v9, v23

    move-object/from16 v15, v43

    move-object/from16 v13, v46

    move-object/from16 v11, v51

    move-object/from16 v30, v59

    move/from16 v67, v64

    move-wide/from16 v76, v75

    move-object/from16 v4, v109

    move-object/from16 v51, v21

    move-wide/from16 v74, v44

    move-object/from16 v64, v62

    move-object/from16 v21, v1

    move-wide/from16 v61, v60

    move-wide/from16 v0, v78

    move-wide/from16 v59, v2

    move-wide/from16 v2, v88

    .end local v67    # "index":I
    .local v8, "index":I
    goto/16 :goto_e

    .end local v1    # "path":Landroid/graphics/Path;
    .end local v7    # "bag":Lcom/horcrux/svg/GlyphPathBag;
    .end local v22    # "startPointMatrixData":[F
    .end local v23    # "endPointMatrixData":[F
    .end local v43    # "baselineShiftString":Ljava/lang/String;
    .end local v44    # "top":D
    .end local v46    # "gc":Lcom/horcrux/svg/GlyphContext;
    .end local v60    # "pathLength":D
    .end local v62    # "fm":Landroid/graphics/Paint$FontMetrics;
    .end local v75    # "descenderDepth":D
    .end local v78    # "baselineShift":D
    .end local v88    # "scaleSpacingAndGlyphs":D
    .end local v109    # "start":Landroid/graphics/Matrix;
    .local v0, "baselineShift":D
    .local v2, "scaleSpacingAndGlyphs":D
    .local v4, "start":Landroid/graphics/Matrix;
    .restart local v9    # "endPointMatrixData":[F
    .restart local v10    # "startPointMatrixData":[F
    .restart local v11    # "end":Landroid/graphics/Matrix;
    .local v12, "length":I
    .restart local v13    # "gc":Lcom/horcrux/svg/GlyphContext;
    .local v15, "baselineShiftString":Ljava/lang/String;
    .local v21, "path":Landroid/graphics/Path;
    .restart local v30    # "pm":Landroid/graphics/PathMeasure;
    .local v51, "fontData":Lcom/facebook/react/bridge/ReadableMap;
    .restart local v55    # "bag":Lcom/horcrux/svg/GlyphPathBag;
    .local v59, "scaledDirection":D
    .restart local v61    # "pathLength":D
    .local v64, "fm":Landroid/graphics/Paint$FontMetrics;
    .local v67, "side":I
    .restart local v74    # "top":D
    .restart local v76    # "descenderDepth":D
    :cond_29
    move-object/from16 v1, v21

    .line 1106
    .end local v8    # "index":I
    .end local v21    # "path":Landroid/graphics/Path;
    .restart local v1    # "path":Landroid/graphics/Path;
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xe
        :pswitch_d
        :pswitch_c
        :pswitch_d
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x669119bb -> :sswitch_2
        0x1be40 -> :sswitch_1
        0x68b6f7b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method

.method private getStaticLayout(Landroid/text/TextPaint;Landroid/text/Layout$Alignment;ZLandroid/text/SpannableString;I)Landroid/text/StaticLayout;
    .locals 3
    .param p1, "tp"    # Landroid/text/TextPaint;
    .param p2, "align"    # Landroid/text/Layout$Alignment;
    .param p3, "includeFontPadding"    # Z
    .param p4, "text"    # Landroid/text/SpannableString;
    .param p5, "width"    # I

    .line 167
    nop

    .line 170
    const/4 v0, 0x0

    invoke-virtual {p4}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-static {p4, v0, v1, p1, p5}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 171
    invoke-virtual {v0, p2}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 172
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 173
    invoke-virtual {v0, p3}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 174
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 175
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v0

    .line 170
    return-object v0
.end method

.method private getTextAnchorOffset(Lcom/horcrux/svg/TextProperties$TextAnchor;D)D
    .locals 4
    .param p1, "textAnchor"    # Lcom/horcrux/svg/TextProperties$TextAnchor;
    .param p2, "textMeasure"    # D

    .line 1114
    sget-object v0, Lcom/horcrux/svg/TSpanView$1;->$SwitchMap$com$horcrux$svg$TextProperties$TextAnchor:[I

    invoke-virtual {p1}, Lcom/horcrux/svg/TextProperties$TextAnchor;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1117
    const-wide/16 v0, 0x0

    return-wide v0

    .line 1123
    :pswitch_0
    neg-double v0, p2

    return-wide v0

    .line 1120
    :pswitch_1
    neg-double v0, p2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setupTextPath()V
    .locals 3

    .line 1196
    invoke-virtual {p0}, Lcom/horcrux/svg/TSpanView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1198
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_2

    .line 1199
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/horcrux/svg/TextPathView;

    if-ne v1, v2, :cond_0

    .line 1200
    move-object v1, v0

    check-cast v1, Lcom/horcrux/svg/TextPathView;

    iput-object v1, p0, Lcom/horcrux/svg/TSpanView;->textPath:Lcom/horcrux/svg/TextPathView;

    .line 1201
    goto :goto_1

    .line 1202
    :cond_0
    instance-of v1, v0, Lcom/horcrux/svg/TextView;

    if-nez v1, :cond_1

    .line 1203
    goto :goto_1

    .line 1206
    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 1208
    :cond_2
    :goto_1
    return-void
.end method

.method public static visualToLogical(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "text"    # Ljava/lang/String;

    .line 188
    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 192
    :cond_0
    new-instance v0, Ljava/text/Bidi;

    const/4 v1, -0x2

    invoke-direct {v0, p0, v1}, Ljava/text/Bidi;-><init>(Ljava/lang/String;I)V

    .line 194
    .local v0, "bidi":Ljava/text/Bidi;
    invoke-virtual {v0}, Ljava/text/Bidi;->isLeftToRight()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    return-object p0

    .line 198
    :cond_1
    invoke-virtual {v0}, Ljava/text/Bidi;->getRunCount()I

    move-result v1

    .line 199
    .local v1, "count":I
    new-array v2, v1, [B

    .line 200
    .local v2, "levels":[B
    new-array v3, v1, [Ljava/lang/Integer;

    .line 202
    .local v3, "runs":[Ljava/lang/Integer;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 203
    invoke-virtual {v0, v4}, Ljava/text/Bidi;->getRunLevel(I)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 204
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 202
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 207
    .end local v4    # "i":I
    :cond_2
    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v4, v1}, Ljava/text/Bidi;->reorderVisually([BI[Ljava/lang/Object;II)V

    .line 209
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .local v4, "result":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v1, :cond_5

    .line 212
    aget-object v6, v3, v5

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 213
    .local v6, "index":I
    invoke-virtual {v0, v6}, Ljava/text/Bidi;->getRunStart(I)I

    move-result v7

    .line 214
    .local v7, "start":I
    invoke-virtual {v0, v6}, Ljava/text/Bidi;->getRunLimit(I)I

    move-result v8

    .line 215
    .local v8, "end":I
    aget-byte v9, v2, v6

    .line 217
    .local v9, "level":I
    and-int/lit8 v10, v9, 0x1

    if-eqz v10, :cond_3

    .line 218
    :goto_2
    add-int/lit8 v8, v8, -0x1

    if-lt v8, v7, :cond_4

    .line 219
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 222
    :cond_3
    invoke-virtual {v4, p0, v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 211
    .end local v6    # "index":I
    .end local v7    # "start":I
    .end local v8    # "end":I
    .end local v9    # "level":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 226
    .end local v5    # "i":I
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 189
    .end local v0    # "bidi":Ljava/text/Bidi;
    .end local v1    # "count":I
    .end local v2    # "levels":[B
    .end local v3    # "runs":[Ljava/lang/Integer;
    .end local v4    # "result":Ljava/lang/StringBuilder;
    :cond_6
    :goto_3
    return-object p0
.end method


# virtual methods
.method clearCache()V
    .locals 1

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/horcrux/svg/TSpanView;->mCachedPath:Landroid/graphics/Path;

    .line 81
    invoke-super {p0}, Lcom/horcrux/svg/TextView;->clearCache()V

    .line 82
    return-void
.end method

.method draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "opacity"    # F

    .line 86
    iget-object v0, p0, Lcom/horcrux/svg/TSpanView;->mContent:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 87
    iget-object v0, p0, Lcom/horcrux/svg/TSpanView;->mInlineSize:Lcom/horcrux/svg/SVGLength;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/horcrux/svg/TSpanView;->mInlineSize:Lcom/horcrux/svg/SVGLength;

    iget-wide v0, v0, Lcom/horcrux/svg/SVGLength;->value:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    .line 88
    iget v0, p0, Lcom/horcrux/svg/TSpanView;->fillOpacity:F

    mul-float/2addr v0, p3

    invoke-virtual {p0, p2, v0}, Lcom/horcrux/svg/TSpanView;->setupFillPaint(Landroid/graphics/Paint;F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/horcrux/svg/TSpanView;->drawWrappedText(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 91
    :cond_0
    iget v0, p0, Lcom/horcrux/svg/TSpanView;->strokeOpacity:F

    mul-float/2addr v0, p3

    invoke-virtual {p0, p2, v0}, Lcom/horcrux/svg/TSpanView;->setupStrokePaint(Landroid/graphics/Paint;F)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/horcrux/svg/TSpanView;->drawWrappedText(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/horcrux/svg/TSpanView;->emoji:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 96
    .local v0, "numEmoji":I
    if-lez v0, :cond_2

    .line 97
    invoke-virtual {p0}, Lcom/horcrux/svg/TSpanView;->getTextRootGlyphContext()Lcom/horcrux/svg/GlyphContext;

    move-result-object v1

    .line 98
    .local v1, "gc":Lcom/horcrux/svg/GlyphContext;
    invoke-virtual {v1}, Lcom/horcrux/svg/GlyphContext;->getFont()Lcom/horcrux/svg/FontData;

    move-result-object v2

    .line 99
    .local v2, "font":Lcom/horcrux/svg/FontData;
    invoke-direct {p0, p2, v2}, Lcom/horcrux/svg/TSpanView;->applyTextPropertiesToPaint(Landroid/graphics/Paint;Lcom/horcrux/svg/FontData;)V

    .line 100
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 101
    iget-object v4, p0, Lcom/horcrux/svg/TSpanView;->emoji:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 102
    .local v4, "current":Ljava/lang/String;
    iget-object v5, p0, Lcom/horcrux/svg/TSpanView;->emojiTransforms:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Matrix;

    .line 103
    .local v5, "mid":Landroid/graphics/Matrix;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 104
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 105
    const/4 v6, 0x0

    invoke-virtual {p1, v4, v6, v6, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 106
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 100
    .end local v4    # "current":Ljava/lang/String;
    .end local v5    # "mid":Landroid/graphics/Matrix;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 109
    .end local v1    # "gc":Lcom/horcrux/svg/GlyphContext;
    .end local v2    # "font":Lcom/horcrux/svg/FontData;
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/horcrux/svg/TSpanView;->drawPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    .line 110
    .end local v0    # "numEmoji":I
    goto :goto_1

    .line 112
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/TSpanView;->clip(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 113
    invoke-virtual {p0, p1, p2, p3}, Lcom/horcrux/svg/TSpanView;->drawGroup(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    .line 115
    :cond_4
    :goto_1
    return-void
.end method

.method getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 231
    iget-object v0, p0, Lcom/horcrux/svg/TSpanView;->mCachedPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/horcrux/svg/TSpanView;->mCachedPath:Landroid/graphics/Path;

    return-object v0

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/horcrux/svg/TSpanView;->mContent:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 236
    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/TSpanView;->getGroupPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/TSpanView;->mCachedPath:Landroid/graphics/Path;

    .line 237
    iget-object v0, p0, Lcom/horcrux/svg/TSpanView;->mCachedPath:Landroid/graphics/Path;

    return-object v0

    .line 240
    :cond_1
    invoke-direct {p0}, Lcom/horcrux/svg/TSpanView;->setupTextPath()V

    .line 242
    invoke-virtual {p0}, Lcom/horcrux/svg/TSpanView;->pushGlyphContext()V

    .line 243
    iget-object v0, p0, Lcom/horcrux/svg/TSpanView;->mContent:Ljava/lang/String;

    invoke-static {v0}, Lcom/horcrux/svg/TSpanView;->visualToLogical(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p1}, Lcom/horcrux/svg/TSpanView;->getLinePath(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/TSpanView;->mCachedPath:Landroid/graphics/Path;

    .line 244
    invoke-virtual {p0}, Lcom/horcrux/svg/TSpanView;->popGlyphContext()V

    .line 246
    iget-object v0, p0, Lcom/horcrux/svg/TSpanView;->mCachedPath:Landroid/graphics/Path;

    return-object v0
.end method

.method getSubtreeTextChunksTotalAdvance(Landroid/graphics/Paint;)D
    .locals 8
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 250
    iget-wide v0, p0, Lcom/horcrux/svg/TSpanView;->cachedAdvance:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    iget-wide v0, p0, Lcom/horcrux/svg/TSpanView;->cachedAdvance:D

    return-wide v0

    .line 253
    :cond_0
    const-wide/16 v0, 0x0

    .line 255
    .local v0, "advance":D
    iget-object v2, p0, Lcom/horcrux/svg/TSpanView;->mContent:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 256
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/horcrux/svg/TSpanView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 257
    invoke-virtual {p0, v2}, Lcom/horcrux/svg/TSpanView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 258
    .local v3, "child":Landroid/view/View;
    instance-of v4, v3, Lcom/horcrux/svg/TextView;

    if-eqz v4, :cond_1

    .line 259
    move-object v4, v3

    check-cast v4, Lcom/horcrux/svg/TextView;

    .line 260
    .local v4, "text":Lcom/horcrux/svg/TextView;
    invoke-virtual {v4, p1}, Lcom/horcrux/svg/TextView;->getSubtreeTextChunksTotalAdvance(Landroid/graphics/Paint;)D

    move-result-wide v5

    add-double/2addr v0, v5

    .line 256
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "text":Lcom/horcrux/svg/TextView;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 263
    .end local v2    # "i":I
    :cond_2
    iput-wide v0, p0, Lcom/horcrux/svg/TSpanView;->cachedAdvance:D

    .line 264
    return-wide v0

    .line 267
    :cond_3
    iget-object v2, p0, Lcom/horcrux/svg/TSpanView;->mContent:Ljava/lang/String;

    .line 268
    .local v2, "line":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 270
    .local v3, "length":I
    if-nez v3, :cond_4

    .line 271
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/horcrux/svg/TSpanView;->cachedAdvance:D

    .line 272
    return-wide v0

    .line 275
    :cond_4
    invoke-virtual {p0}, Lcom/horcrux/svg/TSpanView;->getTextRootGlyphContext()Lcom/horcrux/svg/GlyphContext;

    move-result-object v4

    .line 276
    .local v4, "gc":Lcom/horcrux/svg/GlyphContext;
    invoke-virtual {v4}, Lcom/horcrux/svg/GlyphContext;->getFont()Lcom/horcrux/svg/FontData;

    move-result-object v5

    .line 277
    .local v5, "font":Lcom/horcrux/svg/FontData;
    invoke-direct {p0, p1, v5}, Lcom/horcrux/svg/TSpanView;->applyTextPropertiesToPaint(Landroid/graphics/Paint;Lcom/horcrux/svg/FontData;)V

    .line 279
    invoke-direct {p0, p1, v5}, Lcom/horcrux/svg/TSpanView;->applySpacingAndFeatures(Landroid/graphics/Paint;Lcom/horcrux/svg/FontData;)V

    .line 281
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-double v6, v6

    iput-wide v6, p0, Lcom/horcrux/svg/TSpanView;->cachedAdvance:D

    .line 282
    iget-wide v6, p0, Lcom/horcrux/svg/TSpanView;->cachedAdvance:D

    return-wide v6
.end method

.method hitTest([F)I
    .locals 6
    .param p1, "src"    # [F

    .line 1212
    iget-object v0, p0, Lcom/horcrux/svg/TSpanView;->mContent:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1213
    invoke-super {p0, p1}, Lcom/horcrux/svg/TextView;->hitTest([F)I

    move-result v0

    return v0

    .line 1215
    :cond_0
    iget-object v0, p0, Lcom/horcrux/svg/TSpanView;->mPath:Landroid/graphics/Path;

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/horcrux/svg/TSpanView;->mInvertible:Z

    if-nez v0, :cond_1

    goto :goto_1

    .line 1219
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1220
    .local v0, "dst":[F
    iget-object v2, p0, Lcom/horcrux/svg/TSpanView;->mInvMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, p1}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 1221
    iget-object v2, p0, Lcom/horcrux/svg/TSpanView;->mInvTransform:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1222
    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1223
    .local v2, "x":I
    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1225
    .local v3, "y":I
    invoke-virtual {p0}, Lcom/horcrux/svg/TSpanView;->initBounds()V

    .line 1227
    iget-object v4, p0, Lcom/horcrux/svg/TSpanView;->mRegion:Landroid/graphics/Region;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/horcrux/svg/TSpanView;->mRegion:Landroid/graphics/Region;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Region;->contains(II)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/horcrux/svg/TSpanView;->mStrokeRegion:Landroid/graphics/Region;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/horcrux/svg/TSpanView;->mStrokeRegion:Landroid/graphics/Region;

    .line 1228
    invoke-virtual {v4, v2, v3}, Landroid/graphics/Region;->contains(II)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    .line 1232
    :cond_3
    invoke-virtual {p0}, Lcom/horcrux/svg/TSpanView;->getClipPath()Landroid/graphics/Path;

    move-result-object v4

    .line 1233
    .local v4, "clipPath":Landroid/graphics/Path;
    if-eqz v4, :cond_4

    .line 1234
    iget-object v5, p0, Lcom/horcrux/svg/TSpanView;->mClipRegion:Landroid/graphics/Region;

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Region;->contains(II)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1235
    return v1

    .line 1239
    :cond_4
    invoke-virtual {p0}, Lcom/horcrux/svg/TSpanView;->getId()I

    move-result v1

    return v1

    .line 1229
    .end local v4    # "clipPath":Landroid/graphics/Path;
    :cond_5
    :goto_0
    return v1

    .line 1216
    .end local v0    # "dst":[F
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_6
    :goto_1
    return v1
.end method

.method public invalidate()V
    .locals 1

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/horcrux/svg/TSpanView;->mCachedPath:Landroid/graphics/Path;

    .line 76
    invoke-super {p0}, Lcom/horcrux/svg/TextView;->invalidate()V

    .line 77
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 69
    iput-object p1, p0, Lcom/horcrux/svg/TSpanView;->mContent:Ljava/lang/String;

    .line 70
    invoke-virtual {p0}, Lcom/horcrux/svg/TSpanView;->invalidate()V

    .line 71
    return-void
.end method
