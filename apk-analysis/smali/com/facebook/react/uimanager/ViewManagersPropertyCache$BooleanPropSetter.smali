.class Lcom/facebook/react/uimanager/ViewManagersPropertyCache$BooleanPropSetter;
.super Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;
.source "ViewManagersPropertyCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/uimanager/ViewManagersPropertyCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BooleanPropSetter"
.end annotation


# instance fields
.field private final mDefaultValue:Z


# direct methods
.method public constructor <init>(Lcom/facebook/react/uimanager/annotations/ReactProp;Ljava/lang/reflect/Method;Z)V
    .locals 2
    .param p1, "prop"    # Lcom/facebook/react/uimanager/annotations/ReactProp;
    .param p2, "setter"    # Ljava/lang/reflect/Method;
    .param p3, "defaultValue"    # Z

    .line 227
    const-string v0, "boolean"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;-><init>(Lcom/facebook/react/uimanager/annotations/ReactProp;Ljava/lang/String;Ljava/lang/reflect/Method;Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter-IA;)V

    .line 228
    iput-boolean p3, p0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$BooleanPropSetter;->mDefaultValue:Z

    .line 229
    return-void
.end method


# virtual methods
.method protected getValueOrDefault(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "context"    # Landroid/content/Context;

    .line 233
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$BooleanPropSetter;->mDefaultValue:Z

    goto :goto_0

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 234
    .local v0, "val":Z
    :goto_0
    if-eqz v0, :cond_1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    return-object v1
.end method
