.class public final Lcom/facebook/react/fabric/mounting/LayoutMetricsConversions$Companion;
.super Ljava/lang/Object;
.source "LayoutMetricsConversions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/fabric/mounting/LayoutMetricsConversions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0018\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0004H\u0007J\u0018\u0010\u000c\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0004H\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/facebook/react/fabric/mounting/LayoutMetricsConversions$Companion;",
        "",
        "()V",
        "getMaxSize",
        "",
        "viewMeasureSpec",
        "",
        "getMinSize",
        "getYogaMeasureMode",
        "Lcom/facebook/yoga/YogaMeasureMode;",
        "minSize",
        "maxSize",
        "getYogaSize",
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


# static fields
.field static final synthetic $$INSTANCE:Lcom/facebook/react/fabric/mounting/LayoutMetricsConversions$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/react/fabric/mounting/LayoutMetricsConversions$Companion;

    invoke-direct {v0}, Lcom/facebook/react/fabric/mounting/LayoutMetricsConversions$Companion;-><init>()V

    sput-object v0, Lcom/facebook/react/fabric/mounting/LayoutMetricsConversions$Companion;->$$INSTANCE:Lcom/facebook/react/fabric/mounting/LayoutMetricsConversions$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMaxSize(I)F
    .locals 3
    .param p1, "viewMeasureSpec"    # I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 26
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 27
    .local v0, "mode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 30
    .local v1, "size":I
    if-nez v0, :cond_0

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    goto :goto_0

    :cond_0
    int-to-float v2, v1

    :goto_0
    return v2
.end method

.method public final getMinSize(I)F
    .locals 3
    .param p1, "viewMeasureSpec"    # I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 19
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 20
    .local v0, "mode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 21
    .local v1, "size":I
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_0

    int-to-float v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public final getYogaMeasureMode(FF)Lcom/facebook/yoga/YogaMeasureMode;
    .locals 1
    .param p1, "minSize"    # F
    .param p2, "maxSize"    # F
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 45
    cmpg-float v0, p1, p2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 46
    sget-object v0, Lcom/facebook/yoga/YogaMeasureMode;->EXACTLY:Lcom/facebook/yoga/YogaMeasureMode;

    goto :goto_1

    .line 47
    :cond_1
    invoke-static {p2}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    sget-object v0, Lcom/facebook/yoga/YogaMeasureMode;->UNDEFINED:Lcom/facebook/yoga/YogaMeasureMode;

    goto :goto_1

    .line 50
    :cond_2
    sget-object v0, Lcom/facebook/yoga/YogaMeasureMode;->AT_MOST:Lcom/facebook/yoga/YogaMeasureMode;

    .line 51
    :goto_1
    return-object v0
.end method

.method public final getYogaSize(FF)F
    .locals 1
    .param p1, "minSize"    # F
    .param p2, "maxSize"    # F
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 35
    cmpg-float v0, p1, p2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 36
    sget-object v0, Lcom/facebook/react/uimanager/PixelUtil;->INSTANCE:Lcom/facebook/react/uimanager/PixelUtil;

    invoke-virtual {v0, p2}, Lcom/facebook/react/uimanager/PixelUtil;->dpToPx(F)F

    move-result v0

    goto :goto_1

    .line 37
    :cond_1
    invoke-static {p2}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    goto :goto_1

    .line 40
    :cond_2
    sget-object v0, Lcom/facebook/react/uimanager/PixelUtil;->INSTANCE:Lcom/facebook/react/uimanager/PixelUtil;

    invoke-virtual {v0, p2}, Lcom/facebook/react/uimanager/PixelUtil;->dpToPx(F)F

    move-result v0

    .line 41
    :goto_1
    return v0
.end method
