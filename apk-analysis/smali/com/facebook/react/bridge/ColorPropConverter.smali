.class public Lcom/facebook/react/bridge/ColorPropConverter;
.super Ljava/lang/Object;
.source "ColorPropConverter.java"


# static fields
.field private static final ATTR:Ljava/lang/String; = "attr"

.field private static final ATTR_SEGMENT:Ljava/lang/String; = "attr/"

.field private static final JSON_KEY:Ljava/lang/String; = "resource_paths"

.field private static final PACKAGE_DELIMITER:Ljava/lang/String; = ":"

.field private static final PATH_DELIMITER:Ljava/lang/String; = "/"

.field private static final PREFIX_ATTR:Ljava/lang/String; = "?"

.field private static final PREFIX_RESOURCE:Ljava/lang/String; = "@"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColor(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "context"    # Landroid/content/Context;

    .line 141
    :try_start_0
    invoke-static {}, Lcom/facebook/react/bridge/ColorPropConverter;->supportWideGamut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-static {p0, p1}, Lcom/facebook/react/bridge/ColorPropConverter;->getColorInstance(Ljava/lang/Object;Landroid/content/Context;)Landroid/graphics/Color;

    move-result-object v0

    .line 143
    .local v0, "color":Landroid/graphics/Color;
    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0}, Landroid/graphics/Color;->toArgb()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_0
    .catch Lcom/facebook/react/bridge/JSApplicationCausedNativeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 149
    .end local v0    # "color":Landroid/graphics/Color;
    :cond_0
    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "ex":Lcom/facebook/react/bridge/JSApplicationCausedNativeException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ReactNative"

    const-string v3, "Error extracting color from WideGamut"

    invoke-static {v2, v0, v3, v1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    .end local v0    # "ex":Lcom/facebook/react/bridge/JSApplicationCausedNativeException;
    :goto_0
    invoke-static {p0, p1}, Lcom/facebook/react/bridge/ColorPropConverter;->getColorInteger(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static getColor(Ljava/lang/Object;Landroid/content/Context;I)Ljava/lang/Integer;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "defaultInt"    # I

    .line 155
    :try_start_0
    invoke-static {p0, p1}, Lcom/facebook/react/bridge/ColorPropConverter;->getColor(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Lcom/facebook/react/bridge/JSApplicationCausedNativeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Lcom/facebook/react/bridge/JSApplicationCausedNativeException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ReactNative"

    const-string v3, "Error converting ColorValue"

    invoke-static {v2, v0, v3, v1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public static getColorInstance(Ljava/lang/Object;Landroid/content/Context;)Landroid/graphics/Color;
    .locals 11
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "context"    # Landroid/content/Context;

    .line 88
    if-nez p0, :cond_0

    .line 89
    const/4 v0, 0x0

    return-object v0

    .line 92
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/ColorPropConverter;->supportWideGamut()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 93
    move-object v0, p0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v0

    return-object v0

    .line 96
    :cond_1
    if-eqz p1, :cond_9

    .line 100
    instance-of v0, p0, Lcom/facebook/react/bridge/ReadableMap;

    if-eqz v0, :cond_8

    .line 101
    move-object v0, p0

    check-cast v0, Lcom/facebook/react/bridge/ReadableMap;

    .line 103
    .local v0, "map":Lcom/facebook/react/bridge/ReadableMap;
    invoke-static {}, Lcom/facebook/react/bridge/ColorPropConverter;->supportWideGamut()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "space"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 104
    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "rawColorSpace":Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v2, "display-p3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 107
    .local v2, "isDisplayP3":Z
    :goto_0
    if-eqz v2, :cond_3

    sget-object v3, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    goto :goto_1

    :cond_3
    sget-object v3, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    :goto_1
    invoke-static {v3}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v3

    .line 108
    .local v3, "space":Landroid/graphics/ColorSpace;
    const-string/jumbo v4, "r"

    invoke-interface {v0, v4}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    .line 109
    .local v4, "r":F
    const-string v5, "g"

    invoke-interface {v0, v5}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    double-to-float v5, v5

    .line 110
    .local v5, "g":F
    const-string v6, "b"

    invoke-interface {v0, v6}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v6, v6

    .line 111
    .local v6, "b":F
    const-string v7, "a"

    invoke-interface {v0, v7}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    double-to-float v7, v7

    .line 113
    .local v7, "a":F
    invoke-static {v4, v5, v6, v7, v3}, Landroid/graphics/Color;->pack(FFFFLandroid/graphics/ColorSpace;)J

    move-result-wide v8

    .line 114
    .local v8, "color":J
    invoke-static {v8, v9}, Landroid/graphics/Color;->valueOf(J)Landroid/graphics/Color;

    move-result-object v10

    return-object v10

    .line 117
    .end local v1    # "rawColorSpace":Ljava/lang/String;
    .end local v2    # "isDisplayP3":Z
    .end local v3    # "space":Landroid/graphics/ColorSpace;
    .end local v4    # "r":F
    .end local v5    # "g":F
    .end local v6    # "b":F
    .end local v7    # "a":F
    .end local v8    # "color":J
    :cond_4
    const-string/jumbo v1, "resource_paths"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v1

    .line 118
    .local v1, "resourcePaths":Lcom/facebook/react/bridge/ReadableArray;
    if-eqz v1, :cond_7

    .line 123
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 124
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/facebook/react/bridge/ColorPropConverter;->resolveResourcePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 125
    .local v3, "result":Ljava/lang/Integer;
    invoke-static {}, Lcom/facebook/react/bridge/ColorPropConverter;->supportWideGamut()Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v3, :cond_5

    .line 126
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v4

    return-object v4

    .line 123
    .end local v3    # "result":Ljava/lang/Integer;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 130
    .end local v2    # "i":I
    :cond_6
    new-instance v2, Lcom/facebook/react/bridge/JSApplicationCausedNativeException;

    const-string v3, "ColorValue: None of the paths in the `resource_paths` array resolved to a color resource."

    invoke-direct {v2, v3}, Lcom/facebook/react/bridge/JSApplicationCausedNativeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 119
    :cond_7
    new-instance v2, Lcom/facebook/react/bridge/JSApplicationCausedNativeException;

    const-string v3, "ColorValue: The `resource_paths` must be an array of color resource path strings."

    invoke-direct {v2, v3}, Lcom/facebook/react/bridge/JSApplicationCausedNativeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 135
    .end local v0    # "map":Lcom/facebook/react/bridge/ReadableMap;
    .end local v1    # "resourcePaths":Lcom/facebook/react/bridge/ReadableArray;
    :cond_8
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationCausedNativeException;

    const-string v1, "ColorValue: the value must be a number or Object."

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/JSApplicationCausedNativeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Context may not be null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getColorInteger(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;
    .locals 7
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    if-nez p0, :cond_0

    .line 39
    const/4 v0, 0x0

    return-object v0

    .line 42
    :cond_0
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 43
    move-object v0, p0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 46
    :cond_1
    if-eqz p1, :cond_7

    .line 50
    instance-of v0, p0, Lcom/facebook/react/bridge/ReadableMap;

    if-eqz v0, :cond_6

    .line 51
    move-object v0, p0

    check-cast v0, Lcom/facebook/react/bridge/ReadableMap;

    .line 53
    .local v0, "map":Lcom/facebook/react/bridge/ReadableMap;
    const-string/jumbo v1, "space"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 54
    const-string/jumbo v1, "r"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 55
    .local v1, "r":I
    const-string v3, "g"

    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    .line 56
    .local v3, "g":I
    const-string v4, "b"

    invoke-interface {v0, v4}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-int v4, v4

    .line 57
    .local v4, "b":I
    const-string v5, "a"

    invoke-interface {v0, v5}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v2, v5

    .line 59
    .local v2, "a":I
    invoke-static {v2, v1, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    return-object v5

    .line 62
    .end local v1    # "r":I
    .end local v2    # "a":I
    .end local v3    # "g":I
    .end local v4    # "b":I
    :cond_2
    const-string/jumbo v1, "resource_paths"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v1

    .line 64
    .local v1, "resourcePaths":Lcom/facebook/react/bridge/ReadableArray;
    if-eqz v1, :cond_5

    .line 69
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 70
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/facebook/react/bridge/ColorPropConverter;->resolveResourcePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 71
    .local v3, "result":Ljava/lang/Integer;
    if-eqz v3, :cond_3

    .line 72
    return-object v3

    .line 69
    .end local v3    # "result":Ljava/lang/Integer;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    .end local v2    # "i":I
    :cond_4
    new-instance v2, Lcom/facebook/react/bridge/JSApplicationCausedNativeException;

    const-string v3, "ColorValue: None of the paths in the `resource_paths` array resolved to a color resource."

    invoke-direct {v2, v3}, Lcom/facebook/react/bridge/JSApplicationCausedNativeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 65
    :cond_5
    new-instance v2, Lcom/facebook/react/bridge/JSApplicationCausedNativeException;

    const-string v3, "ColorValue: The `resource_paths` must be an array of color resource path strings."

    invoke-direct {v2, v3}, Lcom/facebook/react/bridge/JSApplicationCausedNativeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    .end local v0    # "map":Lcom/facebook/react/bridge/ReadableMap;
    .end local v1    # "resourcePaths":Lcom/facebook/react/bridge/ReadableArray;
    :cond_6
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationCausedNativeException;

    const-string v1, "ColorValue: the value must be a number or Object."

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/JSApplicationCausedNativeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Context may not be null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static resolveResource(Landroid/content/Context;Ljava/lang/String;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourcePath"    # Ljava/lang/String;

    .line 187
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "pathTokens":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, "packageName":Ljava/lang/String;
    move-object v2, p1

    .line 192
    .local v2, "resource":Ljava/lang/String;
    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v3, v5, :cond_0

    .line 193
    aget-object v1, v0, v4

    .line 194
    aget-object v2, v0, v5

    .line 197
    :cond_0
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 198
    .local v3, "resourceTokens":[Ljava/lang/String;
    aget-object v4, v3, v4

    .line 199
    .local v4, "resourceType":Ljava/lang/String;
    aget-object v5, v3, v5

    .line 201
    .local v5, "resourceName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5, v4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 203
    .local v6, "resourceId":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-static {v7, v6, v8}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v7

    return v7
.end method

.method public static resolveResourcePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourcePath"    # Ljava/lang/String;

    .line 163
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 167
    :cond_0
    const-string v1, "@"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 168
    .local v1, "isResource":Z
    const-string v2, "?"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 170
    .local v2, "isThemeAttribute":Z
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 173
    if-eqz v1, :cond_1

    .line 174
    :try_start_0
    invoke-static {p0, p1}, Lcom/facebook/react/bridge/ColorPropConverter;->resolveResource(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 178
    :catch_0
    move-exception v3

    goto :goto_0

    .line 175
    :cond_1
    if-eqz v2, :cond_2

    .line 176
    invoke-static {p0, p1}, Lcom/facebook/react/bridge/ColorPropConverter;->resolveThemeAttribute(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 182
    :cond_2
    nop

    .line 183
    :goto_0
    return-object v0

    .line 164
    .end local v1    # "isResource":Z
    .end local v2    # "isThemeAttribute":Z
    :cond_3
    :goto_1
    return-object v0
.end method

.method private static resolveThemeAttribute(Landroid/content/Context;Ljava/lang/String;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourcePath"    # Ljava/lang/String;

    .line 207
    const-string v0, "attr/"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "path":Ljava/lang/String;
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "pathTokens":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, "packageName":Ljava/lang/String;
    move-object v3, v0

    .line 213
    .local v3, "resourceName":Ljava/lang/String;
    array-length v4, v1

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 214
    const/4 v4, 0x0

    aget-object v2, v1, v4

    .line 215
    aget-object v3, v1, v5

    .line 218
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v6, "attr"

    invoke-virtual {v4, v3, v6, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 221
    .local v4, "resourceId":I
    if-nez v4, :cond_1

    .line 222
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "android"

    invoke-virtual {v7, v3, v6, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 225
    :cond_1
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 226
    .local v6, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    .line 228
    .local v7, "theme":Landroid/content/res/Resources$Theme;
    invoke-virtual {v7, v4, v6, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 229
    iget v5, v6, Landroid/util/TypedValue;->data:I

    return v5

    .line 232
    :cond_2
    new-instance v5, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v5}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v5
.end method

.method private static supportWideGamut()Z
    .locals 2

    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
