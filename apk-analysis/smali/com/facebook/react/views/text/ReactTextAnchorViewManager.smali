.class public abstract Lcom/facebook/react/views/text/ReactTextAnchorViewManager;
.super Lcom/facebook/react/uimanager/BaseViewManager;
.source "ReactTextAnchorViewManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "C:",
        "Lcom/facebook/react/views/text/ReactBaseTextShadowNode;",
        ">",
        "Lcom/facebook/react/uimanager/BaseViewManager<",
        "TT;TC;>;"
    }
.end annotation


# static fields
.field private static final SPACING_TYPES:[I

.field private static final TAG:Ljava/lang/String; = "ReactTextAnchorViewManager"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/react/views/text/ReactTextAnchorViewManager;->SPACING_TYPES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x8
        0x0
        0x2
        0x1
        0x3
        0x4
        0x5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    .local p0, "this":Lcom/facebook/react/views/text/ReactTextAnchorViewManager;, "Lcom/facebook/react/views/text/ReactTextAnchorViewManager<TT;TC;>;"
    invoke-direct {p0}, Lcom/facebook/react/uimanager/BaseViewManager;-><init>()V

    return-void
.end method


# virtual methods
.method public setAccessible(Lcom/facebook/react/views/text/ReactTextView;Z)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/text/ReactTextView;
    .param p2, "accessible"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "accessible"
    .end annotation

    .line 61
    .local p0, "this":Lcom/facebook/react/views/text/ReactTextAnchorViewManager;, "Lcom/facebook/react/views/text/ReactTextAnchorViewManager<TT;TC;>;"
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/text/ReactTextView;->setFocusable(Z)V

    .line 62
    return-void
.end method

.method public setAdjustFontSizeToFit(Lcom/facebook/react/views/text/ReactTextView;Z)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/text/ReactTextView;
    .param p2, "adjustsFontSizeToFit"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "adjustsFontSizeToFit"
    .end annotation

    .line 88
    .local p0, "this":Lcom/facebook/react/views/text/ReactTextAnchorViewManager;, "Lcom/facebook/react/views/text/ReactTextAnchorViewManager<TT;TC;>;"
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/text/ReactTextView;->setAdjustFontSizeToFit(Z)V

    .line 89
    return-void
.end method

.method public setAndroidHyphenationFrequency(Lcom/facebook/react/views/text/ReactTextView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Lcom/facebook/react/views/text/ReactTextView;
    .param p2, "frequency"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "android_hyphenationFrequency"
    .end annotation

    .line 134
    .local p0, "this":Lcom/facebook/react/views/text/ReactTextAnchorViewManager;, "Lcom/facebook/react/views/text/ReactTextAnchorViewManager<TT;TC;>;"
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    const-string/jumbo v1, "none"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    const-string v1, "full"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/text/ReactTextView;->setHyphenationFrequency(I)V

    goto :goto_1

    .line 138
    :cond_1
    const-string/jumbo v1, "normal"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 139
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/text/ReactTextView;->setHyphenationFrequency(I)V

    goto :goto_1

    .line 141
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid android_hyphenationFrequency: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReactNative"

    invoke-static {v2, v1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p1, v0}, Lcom/facebook/react/views/text/ReactTextView;->setHyphenationFrequency(I)V

    goto :goto_1

    .line 135
    :cond_3
    :goto_0
    invoke-virtual {p1, v0}, Lcom/facebook/react/views/text/ReactTextView;->setHyphenationFrequency(I)V

    .line 144
    :goto_1
    return-void
.end method

.method public setBackgroundColor(Landroid/view/View;I)V
    .locals 1
    .param p2, "backgroundColor"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 274
    .local p0, "this":Lcom/facebook/react/views/text/ReactTextAnchorViewManager;, "Lcom/facebook/react/views/text/ReactTextAnchorViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableBackgroundStyleApplicator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setBackgroundColor(Landroid/view/View;Ljava/lang/Integer;)V

    goto :goto_0

    .line 277
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/facebook/react/uimanager/BaseViewManager;->setBackgroundColor(Landroid/view/View;I)V

    .line 279
    :goto_0
    return-void
.end method

.method public setBorderColor(Lcom/facebook/react/views/text/ReactTextView;ILjava/lang/Integer;)V
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/text/ReactTextView;
    .param p2, "index"    # I
    .param p3, "color"    # Ljava/lang/Integer;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactPropGroup;
        customType = "Color"
        names = {
            "borderColor",
            "borderLeftColor",
            "borderRightColor",
            "borderTopColor",
            "borderBottomColor"
        }
    .end annotation

    .line 220
    .local p0, "this":Lcom/facebook/react/views/text/ReactTextAnchorViewManager;, "Lcom/facebook/react/views/text/ReactTextAnchorViewManager<TT;TC;>;"
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableBackgroundStyleApplicator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    sget-object v0, Lcom/facebook/react/uimanager/style/LogicalEdge;->ALL:Lcom/facebook/react/uimanager/style/LogicalEdge;

    invoke-static {p1, v0, p3}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setBorderColor(Landroid/view/View;Lcom/facebook/react/uimanager/style/LogicalEdge;Ljava/lang/Integer;)V

    goto :goto_0

    .line 223
    :cond_0
    sget-object v0, Lcom/facebook/react/views/text/ReactTextAnchorViewManager;->SPACING_TYPES:[I

    aget v0, v0, p2

    invoke-virtual {p1, v0, p3}, Lcom/facebook/react/views/text/ReactTextView;->setBorderColor(ILjava/lang/Integer;)V

    .line 225
    :goto_0
    return-void
.end method

.method public setBorderRadius(Lcom/facebook/react/views/text/ReactTextView;IF)V
    .locals 2
    .param p1, "view"    # Lcom/facebook/react/views/text/ReactTextView;
    .param p2, "index"    # I
    .param p3, "borderRadius"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactPropGroup;
        defaultFloat = NaNf
        names = {
            "borderRadius",
            "borderTopLeftRadius",
            "borderTopRightRadius",
            "borderBottomRightRadius",
            "borderBottomLeftRadius"
        }
    .end annotation

    .line 156
    .local p0, "this":Lcom/facebook/react/views/text/ReactTextAnchorViewManager;, "Lcom/facebook/react/views/text/ReactTextAnchorViewManager<TT;TC;>;"
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableBackgroundStyleApplicator()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    const/4 v0, 0x0

    goto :goto_0

    .line 161
    :cond_0
    new-instance v0, Lcom/facebook/react/uimanager/LengthPercentage;

    sget-object v1, Lcom/facebook/react/uimanager/LengthPercentageType;->POINT:Lcom/facebook/react/uimanager/LengthPercentageType;

    invoke-direct {v0, p3, v1}, Lcom/facebook/react/uimanager/LengthPercentage;-><init>(FLcom/facebook/react/uimanager/LengthPercentageType;)V

    :goto_0
    nop

    .line 162
    .local v0, "radius":Lcom/facebook/react/uimanager/LengthPercentage;
    invoke-static {}, Lcom/facebook/react/uimanager/style/BorderRadiusProp;->values()[Lcom/facebook/react/uimanager/style/BorderRadiusProp;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-static {p1, v1, v0}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setBorderRadius(Landroid/view/View;Lcom/facebook/react/uimanager/style/BorderRadiusProp;Lcom/facebook/react/uimanager/LengthPercentage;)V

    .line 163
    .end local v0    # "radius":Lcom/facebook/react/uimanager/LengthPercentage;
    goto :goto_1

    .line 164
    :cond_1
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    .line 165
    invoke-static {p3}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result p3

    .line 168
    :cond_2
    if-nez p2, :cond_3

    .line 169
    invoke-virtual {p1, p3}, Lcom/facebook/react/views/text/ReactTextView;->setBorderRadius(F)V

    goto :goto_1

    .line 171
    :cond_3
    add-int/lit8 v0, p2, -0x1

    invoke-virtual {p1, p3, v0}, Lcom/facebook/react/views/text/ReactTextView;->setBorderRadius(FI)V

    .line 174
    :goto_1
    return-void
.end method

.method public setBorderStyle(Lcom/facebook/react/views/text/ReactTextView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/text/ReactTextView;
    .param p2, "borderStyle"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "borderStyle"
    .end annotation

    .line 178
    .local p0, "this":Lcom/facebook/react/views/text/ReactTextAnchorViewManager;, "Lcom/facebook/react/views/text/ReactTextAnchorViewManager<TT;TC;>;"
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableBackgroundStyleApplicator()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/facebook/react/uimanager/style/BorderStyle;->fromString(Ljava/lang/String;)Lcom/facebook/react/uimanager/style/BorderStyle;

    move-result-object v0

    .line 182
    .local v0, "parsedBorderStyle":Lcom/facebook/react/uimanager/style/BorderStyle;
    :goto_0
    invoke-static {p1, v0}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setBorderStyle(Landroid/view/View;Lcom/facebook/react/uimanager/style/BorderStyle;)V

    .line 183
    .end local v0    # "parsedBorderStyle":Lcom/facebook/react/uimanager/style/BorderStyle;
    goto :goto_1

    .line 184
    :cond_1
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/text/ReactTextView;->setBorderStyle(Ljava/lang/String;)V

    .line 186
    :goto_1
    return-void
.end method

.method public setBorderWidth(Lcom/facebook/react/views/text/ReactTextView;IF)V
    .locals 2
    .param p1, "view"    # Lcom/facebook/react/views/text/ReactTextView;
    .param p2, "index"    # I
    .param p3, "width"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactPropGroup;
        defaultFloat = NaNf
        names = {
            "borderWidth",
            "borderLeftWidth",
            "borderRightWidth",
            "borderTopWidth",
            "borderBottomWidth",
            "borderStartWidth",
            "borderEndWidth"
        }
    .end annotation

    .line 200
    .local p0, "this":Lcom/facebook/react/views/text/ReactTextAnchorViewManager;, "Lcom/facebook/react/views/text/ReactTextAnchorViewManager<TT;TC;>;"
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableBackgroundStyleApplicator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-static {}, Lcom/facebook/react/uimanager/style/LogicalEdge;->values()[Lcom/facebook/react/uimanager/style/LogicalEdge;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setBorderWidth(Landroid/view/View;Lcom/facebook/react/uimanager/style/LogicalEdge;Ljava/lang/Float;)V

    goto :goto_0

    .line 203
    :cond_0
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    .line 204
    invoke-static {p3}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result p3

    .line 206
    :cond_1
    sget-object v0, Lcom/facebook/react/views/text/ReactTextAnchorViewManager;->SPACING_TYPES:[I

    aget v0, v0, p2

    invoke-virtual {p1, v0, p3}, Lcom/facebook/react/views/text/ReactTextView;->setBorderWidth(IF)V

    .line 208
    :goto_0
    return-void
.end method

.method public setBoxShadow(Lcom/facebook/react/views/text/ReactTextView;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/text/ReactTextView;
    .param p2, "shadows"    # Lcom/facebook/react/bridge/ReadableArray;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "BoxShadow"
        name = "boxShadow"
    .end annotation

    .line 267
    .local p0, "this":Lcom/facebook/react/views/text/ReactTextAnchorViewManager;, "Lcom/facebook/react/views/text/ReactTextAnchorViewManager<TT;TC;>;"
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableBackgroundStyleApplicator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    invoke-static {p1, p2}, Lcom/facebook/react/uimanager/BackgroundStyleApplicator;->setBoxShadow(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 270
    :cond_0
    return-void
.end method

.method public setDataDetectorType(Lcom/facebook/react/views/text/ReactTextView;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Lcom/facebook/react/views/text/ReactTextView;
    .param p2, "type"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "dataDetectorType"
    .end annotation

    .line 239
    .local p0, "this":Lcom/facebook/react/views/text/ReactTextAnchorViewManager;, "Lcom/facebook/react/views/text/ReactTextAnchorViewManager<TT;TC;>;"
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 240
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "email"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_1

    :sswitch_1
    const-string v1, "link"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :sswitch_2
    const-string v1, "all"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_3
    const-string/jumbo v1, "phoneNumber"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 251
    :pswitch_0
    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/text/ReactTextView;->setLinkifyMask(I)V

    .line 252
    return-void

    .line 248
    :pswitch_1
    invoke-virtual {p1, v2}, Lcom/facebook/react/views/text/ReactTextView;->setLinkifyMask(I)V

    .line 249
    return-void

    .line 245
    :pswitch_2
    invoke-virtual {p1, v3}, Lcom/facebook/react/views/text/ReactTextView;->setLinkifyMask(I)V

    .line 246
    return-void

    .line 242
    :pswitch_3
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/text/ReactTextView;->setLinkifyMask(I)V

    .line 243
    return-void

    .line 257
    :cond_1
    :goto_2
    invoke-virtual {p1, v0}, Lcom/facebook/react/views/text/ReactTextView;->setLinkifyMask(I)V

    .line 258
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x471b45a9 -> :sswitch_3
        0x179a1 -> :sswitch_2
        0x32affa -> :sswitch_1
        0x5c24b9c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDisabled(Lcom/facebook/react/views/text/ReactTextView;Z)V
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/text/ReactTextView;
    .param p2, "disabled"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "disabled"
    .end annotation

    .line 234
    .local p0, "this":Lcom/facebook/react/views/text/ReactTextAnchorViewManager;, "Lcom/facebook/react/views/text/ReactTextAnchorViewManager<TT;TC;>;"
    xor-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/text/ReactTextView;->setEnabled(Z)V

    .line 235
    return-void
.end method

.method public setEllipsizeMode(Lcom/facebook/react/views/text/ReactTextView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Lcom/facebook/react/views/text/ReactTextView;
    .param p2, "ellipsizeMode"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "ellipsizeMode"
    .end annotation

    .line 72
    .local p0, "this":Lcom/facebook/react/views/text/ReactTextAnchorViewManager;, "Lcom/facebook/react/views/text/ReactTextAnchorViewManager<TT;TC;>;"
    if-eqz p2, :cond_4

    const-string/jumbo v0, "tail"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    const-string v0, "head"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/text/ReactTextView;->setEllipsizeLocation(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_1

    .line 76
    :cond_1
    const-string v0, "middle"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/text/ReactTextView;->setEllipsizeLocation(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_1

    .line 78
    :cond_2
    const-string v0, "clip"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 79
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/text/ReactTextView;->setEllipsizeLocation(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_1

    .line 81
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid ellipsizeMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReactNative"

    invoke-static {v1, v0}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/text/ReactTextView;->setEllipsizeLocation(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_1

    .line 73
    :cond_4
    :goto_0
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/text/ReactTextView;->setEllipsizeLocation(Landroid/text/TextUtils$TruncateAt;)V

    .line 84
    :goto_1
    return-void
.end method

.method public setFontSize(Lcom/facebook/react/views/text/ReactTextView;F)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/text/ReactTextView;
    .param p2, "fontSize"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "fontSize"
    .end annotation

    .line 93
    .local p0, "this":Lcom/facebook/react/views/text/ReactTextAnchorViewManager;, "Lcom/facebook/react/views/text/ReactTextAnchorViewManager<TT;TC;>;"
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/text/ReactTextView;->setFontSize(F)V

    .line 94
    return-void
.end method

.method public setIncludeFontPadding(Lcom/facebook/react/views/text/ReactTextView;Z)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/text/ReactTextView;
    .param p2, "includepad"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = true
        name = "includeFontPadding"
    .end annotation

    .line 229
    .local p0, "this":Lcom/facebook/react/views/text/ReactTextAnchorViewManager;, "Lcom/facebook/react/views/text/ReactTextAnchorViewManager<TT;TC;>;"
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/text/ReactTextView;->setIncludeFontPadding(Z)V

    .line 230
    return-void
.end method

.method public setLetterSpacing(Lcom/facebook/react/views/text/ReactTextView;F)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/text/ReactTextView;
    .param p2, "letterSpacing"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 0.0f
        name = "letterSpacing"
    .end annotation

    .line 98
    .local p0, "this":Lcom/facebook/react/views/text/ReactTextAnchorViewManager;, "Lcom/facebook/react/views/text/ReactTextAnchorViewManager<TT;TC;>;"
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/text/ReactTextView;->setLetterSpacing(F)V

    .line 99
    return-void
.end method

.method public setNotifyOnInlineViewLayout(Lcom/facebook/react/views/text/ReactTextView;Z)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/text/ReactTextView;
    .param p2, "notifyOnInlineViewLayout"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "onInlineViewLayout"
    .end annotation

    .line 262
    .local p0, "this":Lcom/facebook/react/views/text/ReactTextAnchorViewManager;, "Lcom/facebook/react/views/text/ReactTextAnchorViewManager<TT;TC;>;"
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/text/ReactTextView;->setNotifyOnInlineViewLayout(Z)V

    .line 263
    return-void
.end method

.method public setNumberOfLines(Lcom/facebook/react/views/text/ReactTextView;I)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/text/ReactTextView;
    .param p2, "numberOfLines"    # I
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultInt = 0x7fffffff
        name = "numberOfLines"
    .end annotation

    .line 67
    .local p0, "this":Lcom/facebook/react/views/text/ReactTextAnchorViewManager;, "Lcom/facebook/react/views/text/ReactTextAnchorViewManager<TT;TC;>;"
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/text/ReactTextView;->setNumberOfLines(I)V

    .line 68
    return-void
.end method

.method public setSelectable(Lcom/facebook/react/views/text/ReactTextView;Z)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/text/ReactTextView;
    .param p2, "isSelectable"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "selectable"
    .end annotation

    .line 119
    .local p0, "this":Lcom/facebook/react/views/text/ReactTextAnchorViewManager;, "Lcom/facebook/react/views/text/ReactTextAnchorViewManager<TT;TC;>;"
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/text/ReactTextView;->setTextIsSelectable(Z)V

    .line 120
    return-void
.end method

.method public setSelectionColor(Lcom/facebook/react/views/text/ReactTextView;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/text/ReactTextView;
    .param p2, "color"    # Ljava/lang/Integer;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "selectionColor"
    .end annotation

    .line 124
    .local p0, "this":Lcom/facebook/react/views/text/ReactTextAnchorViewManager;, "Lcom/facebook/react/views/text/ReactTextAnchorViewManager<TT;TC;>;"
    if-nez p2, :cond_0

    .line 125
    nop

    .line 126
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/react/views/text/DefaultStyleValuesUtil;->getDefaultTextColorHighlight(Landroid/content/Context;)I

    move-result v0

    .line 125
    invoke-virtual {p1, v0}, Lcom/facebook/react/views/text/ReactTextView;->setHighlightColor(I)V

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/text/ReactTextView;->setHighlightColor(I)V

    .line 130
    :goto_0
    return-void
.end method

.method public setTextAlignVertical(Lcom/facebook/react/views/text/ReactTextView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Lcom/facebook/react/views/text/ReactTextView;
    .param p2, "textAlignVertical"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "textAlignVertical"
    .end annotation

    .line 103
    .local p0, "this":Lcom/facebook/react/views/text/ReactTextAnchorViewManager;, "Lcom/facebook/react/views/text/ReactTextAnchorViewManager<TT;TC;>;"
    const/4 v0, 0x0

    if-eqz p2, :cond_4

    const-string v1, "auto"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    const-string/jumbo v1, "top"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    const/16 v0, 0x30

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/text/ReactTextView;->setGravityVertical(I)V

    goto :goto_1

    .line 107
    :cond_1
    const-string v1, "bottom"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 108
    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/text/ReactTextView;->setGravityVertical(I)V

    goto :goto_1

    .line 109
    :cond_2
    const-string v1, "center"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 110
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/text/ReactTextView;->setGravityVertical(I)V

    goto :goto_1

    .line 112
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid textAlignVertical: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReactNative"

    invoke-static {v2, v1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1, v0}, Lcom/facebook/react/views/text/ReactTextView;->setGravityVertical(I)V

    goto :goto_1

    .line 104
    :cond_4
    :goto_0
    invoke-virtual {p1, v0}, Lcom/facebook/react/views/text/ReactTextView;->setGravityVertical(I)V

    .line 115
    :goto_1
    return-void
.end method
