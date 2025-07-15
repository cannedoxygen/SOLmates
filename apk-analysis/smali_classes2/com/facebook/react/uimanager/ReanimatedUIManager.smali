.class public Lcom/facebook/react/uimanager/ReanimatedUIManager;
.super Lcom/facebook/react/uimanager/UIManagerModule;
.source "ReanimatedUIManager.java"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "UIManager"
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/util/List;I)V
    .locals 0
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .param p3, "minTimeLeftInFrameForNonBatchedOperationMs"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/ViewManager;",
            ">;I)V"
        }
    .end annotation

    .line 21
    .local p2, "viewManagersList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/ViewManager;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/react/uimanager/UIManagerModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/util/List;I)V

    .line 22
    return-void
.end method


# virtual methods
.method public canOverrideExistingModule()Z
    .locals 1

    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public clearJSResponder()V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 164
    invoke-super {p0}, Lcom/facebook/react/uimanager/UIManagerModule;->clearJSResponder()V

    .line 165
    return-void
.end method

.method public configureNextLayoutAnimation(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 0
    .param p1, "config"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p2, "success"    # Lcom/facebook/react/bridge/Callback;
    .param p3, "error"    # Lcom/facebook/react/bridge/Callback;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 202
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/react/uimanager/UIManagerModule;->configureNextLayoutAnimation(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    .line 203
    return-void
.end method

.method public createView(ILjava/lang/String;ILcom/facebook/react/bridge/ReadableMap;)V
    .locals 0
    .param p1, "tag"    # I
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "rootViewTag"    # I
    .param p4, "props"    # Lcom/facebook/react/bridge/ReadableMap;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 51
    invoke-super {p0, p1, p2, p3, p4}, Lcom/facebook/react/uimanager/UIManagerModule;->createView(ILjava/lang/String;ILcom/facebook/react/bridge/ReadableMap;)V

    .line 52
    return-void
.end method

.method public dispatchViewManagerCommand(ILcom/facebook/react/bridge/Dynamic;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .param p1, "reactTag"    # I
    .param p2, "commandId"    # Lcom/facebook/react/bridge/Dynamic;
    .param p3, "commandArgs"    # Lcom/facebook/react/bridge/ReadableArray;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 170
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/react/uimanager/UIManagerModule;->dispatchViewManagerCommand(ILcom/facebook/react/bridge/Dynamic;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 171
    return-void
.end method

.method public findSubviewIn(ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V
    .locals 0
    .param p1, "reactTag"    # I
    .param p2, "point"    # Lcom/facebook/react/bridge/ReadableArray;
    .param p3, "callback"    # Lcom/facebook/react/bridge/Callback;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 142
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/react/uimanager/UIManagerModule;->findSubviewIn(ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V

    .line 143
    return-void
.end method

.method public getConstantsForViewManager(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;
    .locals 1
    .param p1, "viewManagerName"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
        isBlockingSynchronousMethod = true
    .end annotation

    .line 35
    invoke-super {p0, p1}, Lcom/facebook/react/uimanager/UIManagerModule;->getConstantsForViewManager(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultEventTypes()Lcom/facebook/react/bridge/WritableMap;
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
        isBlockingSynchronousMethod = true
    .end annotation

    .line 40
    invoke-super {p0}, Lcom/facebook/react/uimanager/UIManagerModule;->getDefaultEventTypes()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    return-object v0
.end method

.method public manageChildren(ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .param p1, "viewTag"    # I
    .param p2, "moveFrom"    # Lcom/facebook/react/bridge/ReadableArray;
    .param p3, "moveTo"    # Lcom/facebook/react/bridge/ReadableArray;
    .param p4, "addChildTags"    # Lcom/facebook/react/bridge/ReadableArray;
    .param p5, "addAtIndices"    # Lcom/facebook/react/bridge/ReadableArray;
    .param p6, "removeFrom"    # Lcom/facebook/react/bridge/ReadableArray;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 78
    invoke-super/range {p0 .. p6}, Lcom/facebook/react/uimanager/UIManagerModule;->manageChildren(ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 79
    return-void
.end method

.method public measure(ILcom/facebook/react/bridge/Callback;)V
    .locals 0
    .param p1, "reactTag"    # I
    .param p2, "callback"    # Lcom/facebook/react/bridge/Callback;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 99
    invoke-super {p0, p1, p2}, Lcom/facebook/react/uimanager/UIManagerModule;->measure(ILcom/facebook/react/bridge/Callback;)V

    .line 100
    return-void
.end method

.method public measureInWindow(ILcom/facebook/react/bridge/Callback;)V
    .locals 0
    .param p1, "reactTag"    # I
    .param p2, "callback"    # Lcom/facebook/react/bridge/Callback;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 109
    invoke-super {p0, p1, p2}, Lcom/facebook/react/uimanager/UIManagerModule;->measureInWindow(ILcom/facebook/react/bridge/Callback;)V

    .line 110
    return-void
.end method

.method public measureLayout(IILcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 0
    .param p1, "tag"    # I
    .param p2, "ancestorTag"    # I
    .param p3, "errorCallback"    # Lcom/facebook/react/bridge/Callback;
    .param p4, "successCallback"    # Lcom/facebook/react/bridge/Callback;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 125
    invoke-super {p0, p1, p2, p3, p4}, Lcom/facebook/react/uimanager/UIManagerModule;->measureLayout(IILcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    .line 126
    return-void
.end method

.method public onBatchComplete()V
    .locals 0

    .line 25
    invoke-super {p0}, Lcom/facebook/react/uimanager/UIManagerModule;->onBatchComplete()V

    .line 26
    return-void
.end method

.method public removeRootView(I)V
    .locals 0
    .param p1, "rootViewTag"    # I
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 46
    invoke-super {p0, p1}, Lcom/facebook/react/uimanager/UIManagerModule;->removeRootView(I)V

    .line 47
    return-void
.end method

.method public sendAccessibilityEvent(II)V
    .locals 0
    .param p1, "tag"    # I
    .param p2, "eventType"    # I
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 207
    invoke-super {p0, p1, p2}, Lcom/facebook/react/uimanager/UIManagerModule;->sendAccessibilityEvent(II)V

    .line 208
    return-void
.end method

.method public setChildren(ILcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .param p1, "viewTag"    # I
    .param p2, "childrenTags"    # Lcom/facebook/react/bridge/ReadableArray;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 90
    invoke-super {p0, p1, p2}, Lcom/facebook/react/uimanager/UIManagerModule;->setChildren(ILcom/facebook/react/bridge/ReadableArray;)V

    .line 91
    return-void
.end method

.method public setJSResponder(IZ)V
    .locals 0
    .param p1, "reactTag"    # I
    .param p2, "blockNativeResponder"    # Z
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 159
    invoke-super {p0, p1, p2}, Lcom/facebook/react/uimanager/UIManagerModule;->setJSResponder(IZ)V

    .line 160
    return-void
.end method

.method public setLayoutAnimationEnabledExperimental(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 186
    invoke-super {p0, p1}, Lcom/facebook/react/uimanager/UIManagerModule;->setLayoutAnimationEnabledExperimental(Z)V

    .line 187
    return-void
.end method

.method public updateView(ILjava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0
    .param p1, "tag"    # I
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "props"    # Lcom/facebook/react/bridge/ReadableMap;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 56
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/react/uimanager/UIManagerModule;->updateView(ILjava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 57
    return-void
.end method

.method public viewIsDescendantOf(IILcom/facebook/react/bridge/Callback;)V
    .locals 0
    .param p1, "reactTag"    # I
    .param p2, "ancestorReactTag"    # I
    .param p3, "callback"    # Lcom/facebook/react/bridge/Callback;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 154
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/react/uimanager/UIManagerModule;->viewIsDescendantOf(IILcom/facebook/react/bridge/Callback;)V

    .line 155
    return-void
.end method
