.class public Lcom/facebook/react/bridge/DimensionPropConverter;
.super Ljava/lang/Object;
.source "DimensionPropConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDimension(Ljava/lang/Object;)Lcom/facebook/yoga/YogaValue;
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 18
    if-nez p0, :cond_0

    .line 19
    const/4 v0, 0x0

    return-object v0

    .line 22
    :cond_0
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 23
    new-instance v0, Lcom/facebook/yoga/YogaValue;

    move-object v1, p0

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v1

    sget-object v2, Lcom/facebook/yoga/YogaUnit;->POINT:Lcom/facebook/yoga/YogaUnit;

    invoke-direct {v0, v1, v2}, Lcom/facebook/yoga/YogaValue;-><init>(FLcom/facebook/yoga/YogaUnit;)V

    return-object v0

    .line 26
    :cond_1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 27
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/yoga/YogaValue;->parse(Ljava/lang/String;)Lcom/facebook/yoga/YogaValue;

    move-result-object v0

    return-object v0

    .line 30
    :cond_2
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationCausedNativeException;

    const-string v1, "DimensionValue: the value must be a number or string."

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/JSApplicationCausedNativeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
