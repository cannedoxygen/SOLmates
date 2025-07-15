.class Lcom/facebook/react/uimanager/ViewManagersPropertyCache$IntPropSetter;
.super Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;
.source "ViewManagersPropertyCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/uimanager/ViewManagersPropertyCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntPropSetter"
.end annotation


# instance fields
.field private final mDefaultValue:I


# direct methods
.method public constructor <init>(Lcom/facebook/react/uimanager/annotations/ReactProp;Ljava/lang/reflect/Method;I)V
    .locals 2
    .param p1, "prop"    # Lcom/facebook/react/uimanager/annotations/ReactProp;
    .param p2, "setter"    # Ljava/lang/reflect/Method;
    .param p3, "defaultValue"    # I

    .line 158
    const-string/jumbo v0, "number"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;-><init>(Lcom/facebook/react/uimanager/annotations/ReactProp;Ljava/lang/String;Ljava/lang/reflect/Method;Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter-IA;)V

    .line 159
    iput p3, p0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$IntPropSetter;->mDefaultValue:I

    .line 160
    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/uimanager/annotations/ReactPropGroup;Ljava/lang/reflect/Method;II)V
    .locals 6
    .param p1, "prop"    # Lcom/facebook/react/uimanager/annotations/ReactPropGroup;
    .param p2, "setter"    # Ljava/lang/reflect/Method;
    .param p3, "index"    # I
    .param p4, "defaultValue"    # I

    .line 163
    const-string/jumbo v2, "number"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;-><init>(Lcom/facebook/react/uimanager/annotations/ReactPropGroup;Ljava/lang/String;Ljava/lang/reflect/Method;ILcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter-IA;)V

    .line 164
    iput p4, p0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$IntPropSetter;->mDefaultValue:I

    .line 165
    return-void
.end method


# virtual methods
.method protected getValueOrDefault(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "context"    # Landroid/content/Context;

    .line 170
    if-nez p1, :cond_0

    iget v0, p0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$IntPropSetter;->mDefaultValue:I

    goto :goto_0

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
