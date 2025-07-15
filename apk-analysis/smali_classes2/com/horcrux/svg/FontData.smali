.class Lcom/horcrux/svg/FontData;
.super Ljava/lang/Object;
.source "FontData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/horcrux/svg/FontData$AbsoluteFontWeight;
    }
.end annotation


# static fields
.field static final DEFAULT_FONT_SIZE:D = 12.0

.field private static final DEFAULT_KERNING:D = 0.0

.field private static final DEFAULT_LETTER_SPACING:D = 0.0

.field private static final DEFAULT_WORD_SPACING:D = 0.0

.field static final Defaults:Lcom/horcrux/svg/FontData;

.field private static final FONT_DATA:Ljava/lang/String; = "fontData"

.field private static final FONT_FEATURE_SETTINGS:Ljava/lang/String; = "fontFeatureSettings"

.field private static final FONT_VARIANT_LIGATURES:Ljava/lang/String; = "fontVariantLigatures"

.field private static final FONT_VARIATION_SETTINGS:Ljava/lang/String; = "fontVariationSettings"

.field private static final KERNING:Ljava/lang/String; = "kerning"

.field private static final LETTER_SPACING:Ljava/lang/String; = "letterSpacing"

.field private static final TEXT_ANCHOR:Ljava/lang/String; = "textAnchor"

.field private static final TEXT_DECORATION:Ljava/lang/String; = "textDecoration"

.field private static final WORD_SPACING:Ljava/lang/String; = "wordSpacing"


# instance fields
.field absoluteFontWeight:I

.field final fontData:Lcom/facebook/react/bridge/ReadableMap;

.field final fontFamily:Ljava/lang/String;

.field final fontFeatureSettings:Ljava/lang/String;

.field final fontSize:D

.field final fontStyle:Lcom/horcrux/svg/TextProperties$FontStyle;

.field final fontVariantLigatures:Lcom/horcrux/svg/TextProperties$FontVariantLigatures;

.field final fontVariationSettings:Ljava/lang/String;

.field fontWeight:Lcom/horcrux/svg/TextProperties$FontWeight;

.field final kerning:D

.field final letterSpacing:D

.field final manualKerning:Z

.field final textAnchor:Lcom/horcrux/svg/TextProperties$TextAnchor;

.field private final textDecoration:Lcom/horcrux/svg/TextProperties$TextDecoration;

.field final wordSpacing:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 113
    new-instance v0, Lcom/horcrux/svg/FontData;

    invoke-direct {v0}, Lcom/horcrux/svg/FontData;-><init>()V

    sput-object v0, Lcom/horcrux/svg/FontData;->Defaults:Lcom/horcrux/svg/FontData;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/horcrux/svg/FontData;->fontData:Lcom/facebook/react/bridge/ReadableMap;

    .line 117
    const-string v0, ""

    iput-object v0, p0, Lcom/horcrux/svg/FontData;->fontFamily:Ljava/lang/String;

    .line 118
    sget-object v1, Lcom/horcrux/svg/TextProperties$FontStyle;->normal:Lcom/horcrux/svg/TextProperties$FontStyle;

    iput-object v1, p0, Lcom/horcrux/svg/FontData;->fontStyle:Lcom/horcrux/svg/TextProperties$FontStyle;

    .line 119
    sget-object v1, Lcom/horcrux/svg/TextProperties$FontWeight;->Normal:Lcom/horcrux/svg/TextProperties$FontWeight;

    iput-object v1, p0, Lcom/horcrux/svg/FontData;->fontWeight:Lcom/horcrux/svg/TextProperties$FontWeight;

    .line 120
    const/16 v1, 0x190

    iput v1, p0, Lcom/horcrux/svg/FontData;->absoluteFontWeight:I

    .line 121
    iput-object v0, p0, Lcom/horcrux/svg/FontData;->fontFeatureSettings:Ljava/lang/String;

    .line 122
    iput-object v0, p0, Lcom/horcrux/svg/FontData;->fontVariationSettings:Ljava/lang/String;

    .line 123
    sget-object v0, Lcom/horcrux/svg/TextProperties$FontVariantLigatures;->normal:Lcom/horcrux/svg/TextProperties$FontVariantLigatures;

    iput-object v0, p0, Lcom/horcrux/svg/FontData;->fontVariantLigatures:Lcom/horcrux/svg/TextProperties$FontVariantLigatures;

    .line 125
    sget-object v0, Lcom/horcrux/svg/TextProperties$TextAnchor;->start:Lcom/horcrux/svg/TextProperties$TextAnchor;

    iput-object v0, p0, Lcom/horcrux/svg/FontData;->textAnchor:Lcom/horcrux/svg/TextProperties$TextAnchor;

    .line 126
    sget-object v0, Lcom/horcrux/svg/TextProperties$TextDecoration;->None:Lcom/horcrux/svg/TextProperties$TextDecoration;

    iput-object v0, p0, Lcom/horcrux/svg/FontData;->textDecoration:Lcom/horcrux/svg/TextProperties$TextDecoration;

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/horcrux/svg/FontData;->manualKerning:Z

    .line 129
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/horcrux/svg/FontData;->kerning:D

    .line 130
    const-wide/high16 v2, 0x4028000000000000L    # 12.0

    iput-wide v2, p0, Lcom/horcrux/svg/FontData;->fontSize:D

    .line 131
    iput-wide v0, p0, Lcom/horcrux/svg/FontData;->wordSpacing:D

    .line 132
    iput-wide v0, p0, Lcom/horcrux/svg/FontData;->letterSpacing:D

    .line 133
    return-void
.end method

.method constructor <init>(Lcom/facebook/react/bridge/ReadableMap;Lcom/horcrux/svg/FontData;D)V
    .locals 15
    .param p1, "font"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p2, "parent"    # Lcom/horcrux/svg/FontData;
    .param p3, "scale"    # D

    .line 161
    move-object v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iget-wide v12, v11, Lcom/horcrux/svg/FontData;->fontSize:D

    .line 164
    .local v12, "parentFontSize":D
    const-string v0, "fontSize"

    invoke-interface {v10, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const-string v2, "fontSize"

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    move-object v0, p0

    move-object/from16 v1, p1

    move-wide v5, v12

    move-wide v7, v12

    invoke-direct/range {v0 .. v8}, Lcom/horcrux/svg/FontData;->toAbsolute(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;DDD)D

    move-result-wide v0

    iput-wide v0, v9, Lcom/horcrux/svg/FontData;->fontSize:D

    goto :goto_0

    .line 167
    :cond_0
    iput-wide v12, v9, Lcom/horcrux/svg/FontData;->fontSize:D

    .line 170
    :goto_0
    const-string v0, "fontWeight"

    invoke-interface {v10, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 171
    invoke-interface {v10, v0}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v1

    .line 172
    .local v1, "fontWeightType":Lcom/facebook/react/bridge/ReadableType;
    sget-object v2, Lcom/facebook/react/bridge/ReadableType;->Number:Lcom/facebook/react/bridge/ReadableType;

    if-ne v1, v2, :cond_1

    .line 173
    invoke-interface {v10, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-direct {p0, v11, v2, v3}, Lcom/horcrux/svg/FontData;->handleNumericWeight(Lcom/horcrux/svg/FontData;D)V

    goto :goto_1

    .line 175
    :cond_1
    invoke-interface {v10, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "string":Ljava/lang/String;
    invoke-static {v0}, Lcom/horcrux/svg/TextProperties$FontWeight;->hasEnum(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 177
    invoke-static {v0}, Lcom/horcrux/svg/TextProperties$FontWeight;->get(Ljava/lang/String;)Lcom/horcrux/svg/TextProperties$FontWeight;

    move-result-object v2

    invoke-static {v2, v11}, Lcom/horcrux/svg/FontData$AbsoluteFontWeight;->from(Lcom/horcrux/svg/TextProperties$FontWeight;Lcom/horcrux/svg/FontData;)I

    move-result v2

    iput v2, v9, Lcom/horcrux/svg/FontData;->absoluteFontWeight:I

    .line 178
    iget v2, v9, Lcom/horcrux/svg/FontData;->absoluteFontWeight:I

    invoke-static {v2}, Lcom/horcrux/svg/FontData$AbsoluteFontWeight;->nearestFontWeight(I)Lcom/horcrux/svg/TextProperties$FontWeight;

    move-result-object v2

    iput-object v2, v9, Lcom/horcrux/svg/FontData;->fontWeight:Lcom/horcrux/svg/TextProperties$FontWeight;

    goto :goto_1

    .line 179
    :cond_2
    if-eqz v0, :cond_3

    .line 180
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-direct {p0, v11, v2, v3}, Lcom/horcrux/svg/FontData;->handleNumericWeight(Lcom/horcrux/svg/FontData;D)V

    goto :goto_1

    .line 182
    :cond_3
    invoke-direct {p0, v11}, Lcom/horcrux/svg/FontData;->setInheritedWeight(Lcom/horcrux/svg/FontData;)V

    .line 185
    .end local v0    # "string":Ljava/lang/String;
    .end local v1    # "fontWeightType":Lcom/facebook/react/bridge/ReadableType;
    :goto_1
    goto :goto_2

    .line 186
    :cond_4
    invoke-direct {p0, v11}, Lcom/horcrux/svg/FontData;->setInheritedWeight(Lcom/horcrux/svg/FontData;)V

    .line 189
    :goto_2
    const-string v0, "fontData"

    invoke-interface {v10, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v10, v0}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v0

    goto :goto_3

    :cond_5
    iget-object v0, v11, Lcom/horcrux/svg/FontData;->fontData:Lcom/facebook/react/bridge/ReadableMap;

    :goto_3
    iput-object v0, v9, Lcom/horcrux/svg/FontData;->fontData:Lcom/facebook/react/bridge/ReadableMap;

    .line 191
    const-string v0, "fontFamily"

    invoke-interface {v10, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v10, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_6
    iget-object v0, v11, Lcom/horcrux/svg/FontData;->fontFamily:Ljava/lang/String;

    :goto_4
    iput-object v0, v9, Lcom/horcrux/svg/FontData;->fontFamily:Ljava/lang/String;

    .line 192
    nop

    .line 193
    const-string v0, "fontStyle"

    invoke-interface {v10, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v10, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/horcrux/svg/TextProperties$FontStyle;->valueOf(Ljava/lang/String;)Lcom/horcrux/svg/TextProperties$FontStyle;

    move-result-object v0

    goto :goto_5

    :cond_7
    iget-object v0, v11, Lcom/horcrux/svg/FontData;->fontStyle:Lcom/horcrux/svg/TextProperties$FontStyle;

    :goto_5
    iput-object v0, v9, Lcom/horcrux/svg/FontData;->fontStyle:Lcom/horcrux/svg/TextProperties$FontStyle;

    .line 194
    nop

    .line 195
    const-string v0, "fontFeatureSettings"

    invoke-interface {v10, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 196
    invoke-interface {v10, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 197
    :cond_8
    iget-object v0, v11, Lcom/horcrux/svg/FontData;->fontFeatureSettings:Ljava/lang/String;

    :goto_6
    iput-object v0, v9, Lcom/horcrux/svg/FontData;->fontFeatureSettings:Ljava/lang/String;

    .line 198
    nop

    .line 199
    const-string v0, "fontVariationSettings"

    invoke-interface {v10, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 200
    invoke-interface {v10, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 201
    :cond_9
    iget-object v0, v11, Lcom/horcrux/svg/FontData;->fontVariationSettings:Ljava/lang/String;

    :goto_7
    iput-object v0, v9, Lcom/horcrux/svg/FontData;->fontVariationSettings:Ljava/lang/String;

    .line 202
    nop

    .line 203
    const-string v0, "fontVariantLigatures"

    invoke-interface {v10, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 204
    invoke-interface {v10, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/horcrux/svg/TextProperties$FontVariantLigatures;->valueOf(Ljava/lang/String;)Lcom/horcrux/svg/TextProperties$FontVariantLigatures;

    move-result-object v0

    goto :goto_8

    .line 205
    :cond_a
    iget-object v0, v11, Lcom/horcrux/svg/FontData;->fontVariantLigatures:Lcom/horcrux/svg/TextProperties$FontVariantLigatures;

    :goto_8
    iput-object v0, v9, Lcom/horcrux/svg/FontData;->fontVariantLigatures:Lcom/horcrux/svg/TextProperties$FontVariantLigatures;

    .line 207
    nop

    .line 208
    const-string v0, "textAnchor"

    invoke-interface {v10, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 209
    invoke-interface {v10, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/horcrux/svg/TextProperties$TextAnchor;->valueOf(Ljava/lang/String;)Lcom/horcrux/svg/TextProperties$TextAnchor;

    move-result-object v0

    goto :goto_9

    .line 210
    :cond_b
    iget-object v0, v11, Lcom/horcrux/svg/FontData;->textAnchor:Lcom/horcrux/svg/TextProperties$TextAnchor;

    :goto_9
    iput-object v0, v9, Lcom/horcrux/svg/FontData;->textAnchor:Lcom/horcrux/svg/TextProperties$TextAnchor;

    .line 211
    nop

    .line 212
    const-string v0, "textDecoration"

    invoke-interface {v10, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 213
    invoke-interface {v10, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/horcrux/svg/TextProperties$TextDecoration;->getEnum(Ljava/lang/String;)Lcom/horcrux/svg/TextProperties$TextDecoration;

    move-result-object v0

    goto :goto_a

    .line 214
    :cond_c
    iget-object v0, v11, Lcom/horcrux/svg/FontData;->textDecoration:Lcom/horcrux/svg/TextProperties$TextDecoration;

    :goto_a
    iput-object v0, v9, Lcom/horcrux/svg/FontData;->textDecoration:Lcom/horcrux/svg/TextProperties$TextDecoration;

    .line 216
    const-string v0, "kerning"

    invoke-interface {v10, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v14

    .line 217
    .local v14, "hasKerning":Z
    if-nez v14, :cond_e

    iget-boolean v0, v11, Lcom/horcrux/svg/FontData;->manualKerning:Z

    if-eqz v0, :cond_d

    goto :goto_b

    :cond_d
    const/4 v0, 0x0

    goto :goto_c

    :cond_e
    :goto_b
    const/4 v0, 0x1

    :goto_c
    iput-boolean v0, v9, Lcom/horcrux/svg/FontData;->manualKerning:Z

    .line 222
    if-eqz v14, :cond_f

    iget-wide v5, v9, Lcom/horcrux/svg/FontData;->fontSize:D

    const-wide/16 v7, 0x0

    const-string v2, "kerning"

    move-object v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-direct/range {v0 .. v8}, Lcom/horcrux/svg/FontData;->toAbsolute(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;DDD)D

    move-result-wide v0

    goto :goto_d

    :cond_f
    iget-wide v0, v11, Lcom/horcrux/svg/FontData;->kerning:D

    :goto_d
    iput-wide v0, v9, Lcom/horcrux/svg/FontData;->kerning:D

    .line 223
    nop

    .line 224
    const-string v0, "wordSpacing"

    invoke-interface {v10, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 225
    iget-wide v5, v9, Lcom/horcrux/svg/FontData;->fontSize:D

    const-wide/16 v7, 0x0

    const-string v2, "wordSpacing"

    move-object v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-direct/range {v0 .. v8}, Lcom/horcrux/svg/FontData;->toAbsolute(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;DDD)D

    move-result-wide v0

    goto :goto_e

    .line 226
    :cond_10
    iget-wide v0, v11, Lcom/horcrux/svg/FontData;->wordSpacing:D

    :goto_e
    iput-wide v0, v9, Lcom/horcrux/svg/FontData;->wordSpacing:D

    .line 227
    nop

    .line 228
    const-string v0, "letterSpacing"

    invoke-interface {v10, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 229
    iget-wide v5, v9, Lcom/horcrux/svg/FontData;->fontSize:D

    const-wide/16 v7, 0x0

    const-string v2, "letterSpacing"

    move-object v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-direct/range {v0 .. v8}, Lcom/horcrux/svg/FontData;->toAbsolute(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;DDD)D

    move-result-wide v0

    goto :goto_f

    .line 230
    :cond_11
    iget-wide v0, v11, Lcom/horcrux/svg/FontData;->letterSpacing:D

    :goto_f
    iput-wide v0, v9, Lcom/horcrux/svg/FontData;->letterSpacing:D

    .line 231
    return-void
.end method

.method private handleNumericWeight(Lcom/horcrux/svg/FontData;D)V
    .locals 4
    .param p1, "parent"    # Lcom/horcrux/svg/FontData;
    .param p2, "number"    # D

    .line 152
    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    .line 153
    .local v0, "weight":J
    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 154
    long-to-int v2, v0

    iput v2, p0, Lcom/horcrux/svg/FontData;->absoluteFontWeight:I

    .line 155
    iget v2, p0, Lcom/horcrux/svg/FontData;->absoluteFontWeight:I

    invoke-static {v2}, Lcom/horcrux/svg/FontData$AbsoluteFontWeight;->nearestFontWeight(I)Lcom/horcrux/svg/TextProperties$FontWeight;

    move-result-object v2

    iput-object v2, p0, Lcom/horcrux/svg/FontData;->fontWeight:Lcom/horcrux/svg/TextProperties$FontWeight;

    goto :goto_0

    .line 157
    :cond_0
    invoke-direct {p0, p1}, Lcom/horcrux/svg/FontData;->setInheritedWeight(Lcom/horcrux/svg/FontData;)V

    .line 159
    :goto_0
    return-void
.end method

.method private setInheritedWeight(Lcom/horcrux/svg/FontData;)V
    .locals 1
    .param p1, "parent"    # Lcom/horcrux/svg/FontData;

    .line 147
    iget v0, p1, Lcom/horcrux/svg/FontData;->absoluteFontWeight:I

    iput v0, p0, Lcom/horcrux/svg/FontData;->absoluteFontWeight:I

    .line 148
    iget-object v0, p1, Lcom/horcrux/svg/FontData;->fontWeight:Lcom/horcrux/svg/TextProperties$FontWeight;

    iput-object v0, p0, Lcom/horcrux/svg/FontData;->fontWeight:Lcom/horcrux/svg/TextProperties$FontWeight;

    .line 149
    return-void
.end method

.method private toAbsolute(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;DDD)D
    .locals 10
    .param p1, "font"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p2, "prop"    # Ljava/lang/String;
    .param p3, "scale"    # D
    .param p5, "fontSize"    # D
    .param p7, "relative"    # D

    .line 137
    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v0

    .line 138
    .local v0, "propType":Lcom/facebook/react/bridge/ReadableType;
    sget-object v1, Lcom/facebook/react/bridge/ReadableType;->Number:Lcom/facebook/react/bridge/ReadableType;

    if-ne v0, v1, :cond_0

    .line 139
    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    return-wide v1

    .line 141
    :cond_0
    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "string":Ljava/lang/String;
    move-object v3, v1

    move-wide/from16 v4, p7

    move-wide v6, p3

    move-wide v8, p5

    invoke-static/range {v3 .. v9}, Lcom/horcrux/svg/PropHelper;->fromRelative(Ljava/lang/String;DDD)D

    move-result-wide v2

    return-wide v2
.end method
