.class public abstract Lcom/facebook/react/uimanager/ViewManager;
.super Lcom/facebook/react/bridge/BaseJavaModule;
.source "ViewManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "C::",
        "Lcom/facebook/react/uimanager/ReactShadowNode;",
        ">",
        "Lcom/facebook/react/bridge/BaseJavaModule;"
    }
.end annotation


# static fields
.field private static final NAME:Ljava/lang/String;


# instance fields
.field private mRecyclableViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/Stack<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/facebook/react/uimanager/ViewManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/react/uimanager/ViewManager;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    .local p0, "this":Lcom/facebook/react/uimanager/ViewManager;, "Lcom/facebook/react/uimanager/ViewManager<TT;TC;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/react/bridge/BaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 47
    iput-object v0, p0, Lcom/facebook/react/uimanager/ViewManager;->mRecyclableViews:Ljava/util/HashMap;

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 54
    .local p0, "this":Lcom/facebook/react/uimanager/ViewManager;, "Lcom/facebook/react/uimanager/ViewManager<TT;TC;>;"
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/BaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/uimanager/ViewManager;->mRecyclableViews:Ljava/util/HashMap;

    .line 55
    return-void
.end method

.method private getRecyclableViewStack(IZ)Ljava/util/Stack;
    .locals 3
    .param p1, "surfaceId"    # I
    .param p2, "create"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/Stack<",
            "TT;>;"
        }
    .end annotation

    .line 71
    .local p0, "this":Lcom/facebook/react/uimanager/ViewManager;, "Lcom/facebook/react/uimanager/ViewManager<TT;TC;>;"
    iget-object v0, p0, Lcom/facebook/react/uimanager/ViewManager;->mRecyclableViews:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 72
    const/4 v0, 0x0

    return-object v0

    .line 74
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/facebook/react/uimanager/ViewManager;->mRecyclableViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/facebook/react/uimanager/ViewManager;->mRecyclableViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/uimanager/ViewManager;->mRecyclableViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    return-object v0
.end method


# virtual methods
.method protected addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;)V
    .locals 0
    .param p1, "reactContext"    # Lcom/facebook/react/uimanager/ThemedReactContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/uimanager/ThemedReactContext;",
            "TT;)V"
        }
    .end annotation

    .line 260
    .local p0, "this":Lcom/facebook/react/uimanager/ViewManager;, "Lcom/facebook/react/uimanager/ViewManager<TT;TC;>;"
    .local p2, "view":Landroid/view/View;, "TT;"
    return-void
.end method

.method public createShadowNodeInstance()Lcom/facebook/react/uimanager/ReactShadowNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .line 141
    .local p0, "this":Lcom/facebook/react/uimanager/ViewManager;, "Lcom/facebook/react/uimanager/ViewManager<TT;TC;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ViewManager subclasses must implement createShadowNodeInstance()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createShadowNodeInstance(Lcom/facebook/react/bridge/ReactApplicationContext;)Lcom/facebook/react/uimanager/ReactShadowNode;
    .locals 1
    .param p1, "context"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ")TC;"
        }
    .end annotation

    .line 145
    .local p0, "this":Lcom/facebook/react/uimanager/ViewManager;, "Lcom/facebook/react/uimanager/ViewManager<TT;TC;>;"
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ViewManager;->createShadowNodeInstance()Lcom/facebook/react/uimanager/ReactShadowNode;

    move-result-object v0

    return-object v0
.end method

.method public createView(ILcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/uimanager/StateWrapper;Lcom/facebook/react/touch/JSResponderHandler;)Landroid/view/View;
    .locals 2
    .param p1, "reactTag"    # I
    .param p2, "reactContext"    # Lcom/facebook/react/uimanager/ThemedReactContext;
    .param p3, "props"    # Lcom/facebook/react/uimanager/ReactStylesDiffMap;
    .param p4, "stateWrapper"    # Lcom/facebook/react/uimanager/StateWrapper;
    .param p5, "jsResponderHandler"    # Lcom/facebook/react/touch/JSResponderHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/react/uimanager/ThemedReactContext;",
            "Lcom/facebook/react/uimanager/ReactStylesDiffMap;",
            "Lcom/facebook/react/uimanager/StateWrapper;",
            "Lcom/facebook/react/touch/JSResponderHandler;",
            ")TT;"
        }
    .end annotation

    .line 122
    .local p0, "this":Lcom/facebook/react/uimanager/ViewManager;, "Lcom/facebook/react/uimanager/ViewManager<TT;TC;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/react/uimanager/ViewManager;->createViewInstance(ILcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/uimanager/StateWrapper;)Landroid/view/View;

    move-result-object v0

    .line 123
    .local v0, "view":Landroid/view/View;, "TT;"
    instance-of v1, v0, Lcom/facebook/react/touch/ReactInterceptingViewGroup;

    if-eqz v1, :cond_0

    .line 124
    move-object v1, v0

    check-cast v1, Lcom/facebook/react/touch/ReactInterceptingViewGroup;

    invoke-interface {v1, p5}, Lcom/facebook/react/touch/ReactInterceptingViewGroup;->setOnInterceptTouchEventListener(Lcom/facebook/react/touch/OnInterceptTouchEventListener;)V

    .line 126
    :cond_0
    return-object v0
.end method

.method protected createViewInstance(ILcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/uimanager/StateWrapper;)Landroid/view/View;
    .locals 3
    .param p1, "reactTag"    # I
    .param p2, "reactContext"    # Lcom/facebook/react/uimanager/ThemedReactContext;
    .param p3, "initialProps"    # Lcom/facebook/react/uimanager/ReactStylesDiffMap;
    .param p4, "stateWrapper"    # Lcom/facebook/react/uimanager/StateWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/react/uimanager/ThemedReactContext;",
            "Lcom/facebook/react/uimanager/ReactStylesDiffMap;",
            "Lcom/facebook/react/uimanager/StateWrapper;",
            ")TT;"
        }
    .end annotation

    .line 185
    .local p0, "this":Lcom/facebook/react/uimanager/ViewManager;, "Lcom/facebook/react/uimanager/ViewManager<TT;TC;>;"
    const/4 v0, 0x0

    .line 186
    .local v0, "view":Landroid/view/View;, "TT;"
    invoke-virtual {p2}, Lcom/facebook/react/uimanager/ThemedReactContext;->getSurfaceId()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/facebook/react/uimanager/ViewManager;->getRecyclableViewStack(IZ)Ljava/util/Stack;

    move-result-object v1

    .line 187
    .local v1, "recyclableViews":Ljava/util/Stack;, "Ljava/util/Stack<TT;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 188
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, p2, v2}, Lcom/facebook/react/uimanager/ViewManager;->recycleView(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 190
    :cond_0
    invoke-virtual {p0, p2}, Lcom/facebook/react/uimanager/ViewManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;

    move-result-object v0

    .line 192
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setId(I)V

    .line 193
    invoke-virtual {p0, p2, v0}, Lcom/facebook/react/uimanager/ViewManager;->addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;)V

    .line 194
    if-eqz p3, :cond_1

    .line 195
    invoke-virtual {p0, v0, p3}, Lcom/facebook/react/uimanager/ViewManager;->updateProperties(Landroid/view/View;Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V

    .line 198
    :cond_1
    if-eqz p4, :cond_2

    .line 199
    invoke-virtual {p0, v0, p3, p4}, Lcom/facebook/react/uimanager/ViewManager;->updateState(Landroid/view/View;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/uimanager/StateWrapper;)Ljava/lang/Object;

    move-result-object v2

    .line 200
    .local v2, "extraData":Ljava/lang/Object;
    if-eqz v2, :cond_2

    .line 201
    invoke-virtual {p0, v0, v2}, Lcom/facebook/react/uimanager/ViewManager;->updateExtraData(Landroid/view/View;Ljava/lang/Object;)V

    .line 204
    .end local v2    # "extraData":Ljava/lang/Object;
    :cond_2
    return-object v0
.end method

.method protected abstract createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/uimanager/ThemedReactContext;",
            ")TT;"
        }
    .end annotation
.end method

.method public getCommandsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 322
    .local p0, "this":Lcom/facebook/react/uimanager/ViewManager;, "Lcom/facebook/react/uimanager/ViewManager<TT;TC;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getDelegate()Lcom/facebook/react/uimanager/ViewManagerDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/react/uimanager/ViewManagerDelegate<",
            "TT;>;"
        }
    .end annotation

    .line 112
    .local p0, "this":Lcom/facebook/react/uimanager/ViewManager;, "Lcom/facebook/react/uimanager/ViewManager<TT;TC;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExportedCustomBubblingEventTypeConstants()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 344
    .local p0, "this":Lcom/facebook/react/uimanager/ViewManager;, "Lcom/facebook/react/uimanager/ViewManager<TT;TC;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExportedCustomDirectEventTypeConstants()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 362
    .local p0, "this":Lcom/facebook/react/uimanager/ViewManager;, "Lcom/facebook/react/uimanager/ViewManager<TT;TC;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExportedViewConstants()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 370
    .local p0, "this":Lcom/facebook/react/uimanager/ViewManager;, "Lcom/facebook/react/uimanager/ViewManager<TT;TC;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public getNativeProps()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 378
    .local p0, "this":Lcom/facebook/react/uimanager/ViewManager;, "Lcom/facebook/react/uimanager/ViewManager<TT;TC;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ViewManager;->getShadowNodeClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/ViewManagerPropertyUpdater;->getNativeProps(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public abstract getShadowNodeClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+TC;>;"
        }
    .end annotation
.end method

.method public measure(Landroid/content/Context;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;FLcom/facebook/yoga/YogaMeasureMode;FLcom/facebook/yoga/YogaMeasureMode;[F)J
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "localData"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p3, "props"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p4, "state"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p5, "width"    # F
    .param p6, "widthMode"    # Lcom/facebook/yoga/YogaMeasureMode;
    .param p7, "height"    # F
    .param p8, "heightMode"    # Lcom/facebook/yoga/YogaMeasureMode;
    .param p9, "attachmentsPositions"    # [F

    .line 422
    .local p0, "this":Lcom/facebook/react/uimanager/ViewManager;, "Lcom/facebook/react/uimanager/ViewManager<TT;TC;>;"
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public measure(Landroid/content/Context;Lcom/facebook/react/common/mapbuffer/MapBuffer;Lcom/facebook/react/common/mapbuffer/MapBuffer;Lcom/facebook/react/common/mapbuffer/MapBuffer;FLcom/facebook/yoga/YogaMeasureMode;FLcom/facebook/yoga/YogaMeasureMode;[F)J
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "localData"    # Lcom/facebook/react/common/mapbuffer/MapBuffer;
    .param p3, "props"    # Lcom/facebook/react/common/mapbuffer/MapBuffer;
    .param p4, "state"    # Lcom/facebook/react/common/mapbuffer/MapBuffer;
    .param p5, "width"    # F
    .param p6, "widthMode"    # Lcom/facebook/yoga/YogaMeasureMode;
    .param p7, "height"    # F
    .param p8, "heightMode"    # Lcom/facebook/yoga/YogaMeasureMode;
    .param p9, "attachmentsPositions"    # [F

    .line 463
    .local p0, "this":Lcom/facebook/react/uimanager/ViewManager;, "Lcom/facebook/react/uimanager/ViewManager<TT;TC;>;"
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected onAfterUpdateTransaction(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 268
    .local p0, "this":Lcom/facebook/react/uimanager/ViewManager;, "Lcom/facebook/react/uimanager/ViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    return-void
.end method

.method public onDropViewInstance(Landroid/view/View;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 213
    .local p0, "this":Lcom/facebook/react/uimanager/ViewManager;, "Lcom/facebook/react/uimanager/ViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 214
    .local v0, "viewContext":Landroid/content/Context;
    const-string/jumbo v1, "onDropViewInstance: view ["

    if-nez v0, :cond_0

    .line 217
    sget-object v2, Lcom/facebook/react/uimanager/ViewManager;->NAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] has a null context"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    return-void

    .line 220
    :cond_0
    instance-of v2, v0, Lcom/facebook/react/uimanager/ThemedReactContext;

    if-nez v2, :cond_1

    .line 221
    sget-object v2, Lcom/facebook/react/uimanager/ViewManager;->NAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 224
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] has a context that is not a ThemedReactContext: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 221
    invoke-static {v2, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return-void

    .line 231
    :cond_1
    move-object v1, v0

    check-cast v1, Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 232
    .local v1, "themedReactContext":Lcom/facebook/react/uimanager/ThemedReactContext;
    invoke-virtual {v1}, Lcom/facebook/react/uimanager/ThemedReactContext;->getSurfaceId()I

    move-result v2

    .line 233
    .local v2, "surfaceId":I
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/facebook/react/uimanager/ViewManager;->getRecyclableViewStack(IZ)Ljava/util/Stack;

    move-result-object v3

    .line 234
    .local v3, "recyclableViews":Ljava/util/Stack;, "Ljava/util/Stack<TT;>;"
    if-eqz v3, :cond_2

    .line 235
    invoke-virtual {p0, v1, p1}, Lcom/facebook/react/uimanager/ViewManager;->prepareToRecycleView(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    .line 236
    .local v4, "recyclableView":Landroid/view/View;, "TT;"
    if-eqz v4, :cond_2

    .line 237
    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .end local v4    # "recyclableView":Landroid/view/View;, "TT;"
    :cond_2
    return-void
.end method

.method public onSurfaceStopped(I)V
    .locals 2
    .param p1, "surfaceId"    # I

    .line 478
    .local p0, "this":Lcom/facebook/react/uimanager/ViewManager;, "Lcom/facebook/react/uimanager/ViewManager<TT;TC;>;"
    iget-object v0, p0, Lcom/facebook/react/uimanager/ViewManager;->mRecyclableViews:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/facebook/react/uimanager/ViewManager;->mRecyclableViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    :cond_0
    return-void
.end method

.method protected abstract prepareToRecycleView(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/uimanager/ThemedReactContext;",
            "TT;)TT;"
        }
    .end annotation
.end method

.method public receiveCommand(Landroid/view/View;ILcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .param p2, "commandId"    # I
    .param p3, "args"    # Lcom/facebook/react/bridge/ReadableArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I",
            "Lcom/facebook/react/bridge/ReadableArray;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 295
    .local p0, "this":Lcom/facebook/react/uimanager/ViewManager;, "Lcom/facebook/react/uimanager/ViewManager<TT;TC;>;"
    .local p1, "root":Landroid/view/View;, "TT;"
    return-void
.end method

.method public receiveCommand(Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 1
    .param p2, "commandId"    # Ljava/lang/String;
    .param p3, "args"    # Lcom/facebook/react/bridge/ReadableArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Lcom/facebook/react/bridge/ReadableArray;",
            ")V"
        }
    .end annotation

    .line 307
    .local p0, "this":Lcom/facebook/react/uimanager/ViewManager;, "Lcom/facebook/react/uimanager/ViewManager<TT;TC;>;"
    .local p1, "root":Landroid/view/View;, "TT;"
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ViewManager;->getDelegate()Lcom/facebook/react/uimanager/ViewManagerDelegate;

    move-result-object v0

    .line 308
    .local v0, "delegate":Lcom/facebook/react/uimanager/ViewManagerDelegate;, "Lcom/facebook/react/uimanager/ViewManagerDelegate<TT;>;"
    if-eqz v0, :cond_0

    .line 309
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/react/uimanager/ViewManagerDelegate;->receiveCommand(Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 311
    :cond_0
    return-void
.end method

.method protected recycleView(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p1, "reactContext"    # Lcom/facebook/react/uimanager/ThemedReactContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/uimanager/ThemedReactContext;",
            "TT;)TT;"
        }
    .end annotation

    .line 252
    .local p0, "this":Lcom/facebook/react/uimanager/ViewManager;, "Lcom/facebook/react/uimanager/ViewManager<TT;TC;>;"
    .local p2, "view":Landroid/view/View;, "TT;"
    return-object p2
.end method

.method public setPadding(Landroid/view/View;IIII)V
    .locals 0
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IIII)V"
        }
    .end annotation

    .line 470
    .local p0, "this":Lcom/facebook/react/uimanager/ViewManager;, "Lcom/facebook/react/uimanager/ViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    return-void
.end method

.method protected setupViewRecycling()V
    .locals 1

    .line 59
    .local p0, "this":Lcom/facebook/react/uimanager/ViewManager;, "Lcom/facebook/react/uimanager/ViewManager<TT;TC;>;"
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->enableViewRecycling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/ViewManager;->mRecyclableViews:Ljava/util/HashMap;

    .line 62
    :cond_0
    return-void
.end method

.method trimMemory()V
    .locals 1

    .line 487
    .local p0, "this":Lcom/facebook/react/uimanager/ViewManager;, "Lcom/facebook/react/uimanager/ViewManager<TT;TC;>;"
    iget-object v0, p0, Lcom/facebook/react/uimanager/ViewManager;->mRecyclableViews:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 488
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/ViewManager;->mRecyclableViews:Ljava/util/HashMap;

    .line 490
    :cond_0
    return-void
.end method

.method public abstract updateExtraData(Landroid/view/View;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method public updateProperties(Landroid/view/View;Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V
    .locals 1
    .param p2, "props"    # Lcom/facebook/react/uimanager/ReactStylesDiffMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/react/uimanager/ReactStylesDiffMap;",
            ")V"
        }
    .end annotation

    .line 89
    .local p0, "this":Lcom/facebook/react/uimanager/ViewManager;, "Lcom/facebook/react/uimanager/ViewManager<TT;TC;>;"
    .local p1, "viewToUpdate":Landroid/view/View;, "TT;"
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ViewManager;->getDelegate()Lcom/facebook/react/uimanager/ViewManagerDelegate;

    move-result-object v0

    .line 90
    .local v0, "delegate":Lcom/facebook/react/uimanager/ViewManagerDelegate;, "Lcom/facebook/react/uimanager/ViewManagerDelegate<TT;>;"
    if-eqz v0, :cond_0

    .line 91
    invoke-static {v0, p1, p2}, Lcom/facebook/react/uimanager/ViewManagerPropertyUpdater;->updateProps(Lcom/facebook/react/uimanager/ViewManagerDelegate;Landroid/view/View;Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V

    goto :goto_0

    .line 93
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/facebook/react/uimanager/ViewManagerPropertyUpdater;->updateProps(Lcom/facebook/react/uimanager/ViewManager;Landroid/view/View;Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V

    .line 95
    :goto_0
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/ViewManager;->onAfterUpdateTransaction(Landroid/view/View;)V

    .line 96
    return-void
.end method

.method public updateState(Landroid/view/View;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/uimanager/StateWrapper;)Ljava/lang/Object;
    .locals 1
    .param p2, "props"    # Lcom/facebook/react/uimanager/ReactStylesDiffMap;
    .param p3, "stateWrapper"    # Lcom/facebook/react/uimanager/StateWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/react/uimanager/ReactStylesDiffMap;",
            "Lcom/facebook/react/uimanager/StateWrapper;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 387
    .local p0, "this":Lcom/facebook/react/uimanager/ViewManager;, "Lcom/facebook/react/uimanager/ViewManager<TT;TC;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    const/4 v0, 0x0

    return-object v0
.end method
