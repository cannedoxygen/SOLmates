.class public final Lcom/facebook/react/uimanager/style/Gradient;
.super Ljava/lang/Object;
.source "Gradient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/uimanager/style/Gradient$GradientType;,
        Lcom/facebook/react/uimanager/style/Gradient$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0014\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u0014B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u0013R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/facebook/react/uimanager/style/Gradient;",
        "",
        "gradient",
        "Lcom/facebook/react/bridge/ReadableMap;",
        "(Lcom/facebook/react/bridge/ReadableMap;)V",
        "colors",
        "",
        "endX",
        "",
        "endY",
        "positions",
        "",
        "startX",
        "startY",
        "type",
        "Lcom/facebook/react/uimanager/style/Gradient$GradientType;",
        "getShader",
        "Landroid/graphics/Shader;",
        "bounds",
        "Landroid/graphics/Rect;",
        "GradientType",
        "ReactAndroid_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final colors:[I

.field private endX:F

.field private endY:F

.field private final positions:[F

.field private startX:F

.field private startY:F

.field private final type:Lcom/facebook/react/uimanager/style/Gradient$GradientType;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 8
    .param p1, "gradient"    # Lcom/facebook/react/bridge/ReadableMap;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    nop

    .line 29
    if-eqz p1, :cond_5

    .line 31
    const-string/jumbo v0, "type"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "typeString":Ljava/lang/String;
    nop

    .line 33
    nop

    .line 34
    const-string v1, "linearGradient"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/facebook/react/uimanager/style/Gradient$GradientType;->LINEAR_GRADIENT:Lcom/facebook/react/uimanager/style/Gradient$GradientType;

    .line 32
    iput-object v1, p0, Lcom/facebook/react/uimanager/style/Gradient;->type:Lcom/facebook/react/uimanager/style/Gradient$GradientType;

    .line 38
    const-string/jumbo v1, "start"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v1

    const-string/jumbo v2, "y"

    const-string/jumbo v3, "x"

    if-eqz v1, :cond_0

    .local v1, "start":Lcom/facebook/react/bridge/ReadableMap;
    const/4 v4, 0x0

    .line 39
    .local v4, "$i$a$-let-Gradient$1":I
    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    double-to-float v5, v5

    iput v5, p0, Lcom/facebook/react/uimanager/style/Gradient;->startX:F

    .line 40
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    double-to-float v5, v5

    iput v5, p0, Lcom/facebook/react/uimanager/style/Gradient;->startY:F

    .line 41
    nop

    .line 38
    .end local v1    # "start":Lcom/facebook/react/bridge/ReadableMap;
    .end local v4    # "$i$a$-let-Gradient$1":I
    nop

    .line 43
    :cond_0
    const-string v1, "end"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v1

    if-eqz v1, :cond_1

    .local v1, "end":Lcom/facebook/react/bridge/ReadableMap;
    const/4 v4, 0x0

    .line 44
    .local v4, "$i$a$-let-Gradient$2":I
    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    double-to-float v3, v5

    iput v3, p0, Lcom/facebook/react/uimanager/style/Gradient;->endX:F

    .line 45
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lcom/facebook/react/uimanager/style/Gradient;->endY:F

    .line 46
    nop

    .line 43
    .end local v1    # "end":Lcom/facebook/react/bridge/ReadableMap;
    .end local v4    # "$i$a$-let-Gradient$2":I
    nop

    .line 49
    :cond_1
    const-string v1, "colorStops"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 48
    nop

    .line 52
    .local v1, "colorStops":Lcom/facebook/react/bridge/ReadableArray;
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    .line 53
    .local v2, "size":I
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/facebook/react/uimanager/style/Gradient;->colors:[I

    .line 54
    new-array v3, v2, [F

    iput-object v3, p0, Lcom/facebook/react/uimanager/style/Gradient;->positions:[F

    .line 56
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 57
    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v4

    .line 58
    .local v4, "colorStop":Lcom/facebook/react/bridge/ReadableMap;
    iget-object v5, p0, Lcom/facebook/react/uimanager/style/Gradient;->colors:[I

    const-string v6, "color"

    invoke-interface {v4, v6}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v5, v3

    .line 59
    iget-object v5, p0, Lcom/facebook/react/uimanager/style/Gradient;->positions:[F

    const-string/jumbo v6, "position"

    invoke-interface {v4, v6}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v6, v6

    aput v6, v5, v3

    .line 56
    .end local v4    # "colorStop":Lcom/facebook/react/bridge/ReadableMap;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 61
    .end local v0    # "typeString":Ljava/lang/String;
    .end local v1    # "colorStops":Lcom/facebook/react/bridge/ReadableArray;
    .end local v2    # "size":I
    .end local v3    # "i":I
    :cond_2
    nop

    .line 15
    return-void

    .line 50
    .restart local v0    # "typeString":Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid colorStops array"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 35
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported gradient type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 29
    .end local v0    # "typeString":Ljava/lang/String;
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Gradient cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final getShader(Landroid/graphics/Rect;)Landroid/graphics/Shader;
    .locals 10
    .param p1, "bounds"    # Landroid/graphics/Rect;

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/facebook/react/uimanager/style/Gradient;->type:Lcom/facebook/react/uimanager/style/Gradient$GradientType;

    sget-object v1, Lcom/facebook/react/uimanager/style/Gradient$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/style/Gradient$GradientType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    .line 65
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 66
    new-instance v0, Landroid/graphics/LinearGradient;

    .line 67
    iget v1, p0, Lcom/facebook/react/uimanager/style/Gradient;->startX:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float v3, v1, v2

    .line 68
    iget v1, p0, Lcom/facebook/react/uimanager/style/Gradient;->startY:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float v4, v1, v2

    .line 69
    iget v1, p0, Lcom/facebook/react/uimanager/style/Gradient;->endX:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float v5, v1, v2

    .line 70
    iget v1, p0, Lcom/facebook/react/uimanager/style/Gradient;->endY:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float v6, v1, v2

    .line 71
    iget-object v7, p0, Lcom/facebook/react/uimanager/style/Gradient;->colors:[I

    .line 72
    iget-object v8, p0, Lcom/facebook/react/uimanager/style/Gradient;->positions:[F

    .line 73
    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 66
    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    check-cast v0, Landroid/graphics/Shader;

    .line 64
    return-object v0

    .line 66
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method
