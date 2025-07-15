.class Lcom/facebook/react/uimanager/events/ReactEventEmitter;
.super Ljava/lang/Object;
.source "ReactEventEmitter.java"

# interfaces
.implements Lcom/facebook/react/uimanager/events/RCTModernEventEmitter;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TAG:Ljava/lang/String; = "ReactEventEmitter"


# instance fields
.field private mDefaultEventEmitter:Lcom/facebook/react/uimanager/events/RCTEventEmitter;

.field private mFabricEventEmitter:Lcom/facebook/react/uimanager/events/RCTModernEventEmitter;

.field private final mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/uimanager/events/ReactEventEmitter;->mFabricEventEmitter:Lcom/facebook/react/uimanager/events/RCTModernEventEmitter;

    .line 30
    iput-object v0, p0, Lcom/facebook/react/uimanager/events/ReactEventEmitter;->mDefaultEventEmitter:Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    .line 35
    iput-object p1, p0, Lcom/facebook/react/uimanager/events/ReactEventEmitter;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 36
    return-void
.end method

.method private getDefaultEventEmitter()Lcom/facebook/react/uimanager/events/RCTEventEmitter;
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/ReactEventEmitter;->mDefaultEventEmitter:Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    if-nez v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/ReactEventEmitter;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->hasActiveReactInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/ReactEventEmitter;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-class v1, Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    iput-object v0, p0, Lcom/facebook/react/uimanager/events/ReactEventEmitter;->mDefaultEventEmitter:Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    goto :goto_0

    .line 117
    :cond_0
    new-instance v0, Lcom/facebook/react/bridge/ReactNoCrashSoftException;

    const-string v1, "Cannot get RCTEventEmitter from Context, no active Catalyst instance!"

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/ReactNoCrashSoftException;-><init>(Ljava/lang/String;)V

    const-string v1, "ReactEventEmitter"

    invoke-static {v1, v0}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/ReactEventEmitter;->mDefaultEventEmitter:Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    return-object v0
.end method


# virtual methods
.method public receiveEvent(IILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 8
    .param p1, "surfaceId"    # I
    .param p2, "targetTag"    # I
    .param p3, "eventName"    # Ljava/lang/String;
    .param p4, "event"    # Lcom/facebook/react/bridge/WritableMap;

    .line 65
    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/facebook/react/uimanager/events/ReactEventEmitter;->receiveEvent(IILjava/lang/String;ZILcom/facebook/react/bridge/WritableMap;I)V

    .line 66
    return-void
.end method

.method public receiveEvent(IILjava/lang/String;ZILcom/facebook/react/bridge/WritableMap;I)V
    .locals 13
    .param p1, "surfaceId"    # I
    .param p2, "targetReactTag"    # I
    .param p3, "eventName"    # Ljava/lang/String;
    .param p4, "canCoalesceEvent"    # Z
    .param p5, "customCoalesceKey"    # I
    .param p6, "event"    # Lcom/facebook/react/bridge/WritableMap;
    .param p7, "category"    # I

    .line 135
    move-object v0, p0

    move v9, p1

    move v10, p2

    move-object/from16 v11, p3

    invoke-static {p2, p1}, Lcom/facebook/react/uimanager/common/ViewUtil;->getUIManagerType(II)I

    move-result v12

    .line 136
    .local v12, "uiManagerType":I
    const/4 v1, 0x2

    if-ne v12, v1, :cond_0

    iget-object v1, v0, Lcom/facebook/react/uimanager/events/ReactEventEmitter;->mFabricEventEmitter:Lcom/facebook/react/uimanager/events/RCTModernEventEmitter;

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, v0, Lcom/facebook/react/uimanager/events/ReactEventEmitter;->mFabricEventEmitter:Lcom/facebook/react/uimanager/events/RCTModernEventEmitter;

    move v2, p1

    move v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Lcom/facebook/react/uimanager/events/RCTModernEventEmitter;->receiveEvent(IILjava/lang/String;ZILcom/facebook/react/bridge/WritableMap;I)V

    move-object/from16 v2, p6

    goto :goto_1

    .line 145
    :cond_0
    const/4 v1, 0x1

    if-ne v12, v1, :cond_2

    .line 146
    invoke-direct {p0}, Lcom/facebook/react/uimanager/events/ReactEventEmitter;->getDefaultEventEmitter()Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    move-result-object v1

    .line 147
    .local v1, "defaultEmitter":Lcom/facebook/react/uimanager/events/RCTEventEmitter;
    if-eqz v1, :cond_1

    .line 148
    move-object/from16 v2, p6

    invoke-interface {v1, p2, v11, v2}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    goto :goto_0

    .line 147
    :cond_1
    move-object/from16 v2, p6

    .line 150
    .end local v1    # "defaultEmitter":Lcom/facebook/react/uimanager/events/RCTEventEmitter;
    :goto_0
    goto :goto_1

    .line 151
    :cond_2
    move-object/from16 v2, p6

    new-instance v1, Lcom/facebook/react/bridge/ReactNoCrashSoftException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find EventEmitter for receiveEvent: SurfaceId["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] ReactTag["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] UIManagerType["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] EventName["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/facebook/react/bridge/ReactNoCrashSoftException;-><init>(Ljava/lang/String;)V

    const-string v3, "ReactEventEmitter"

    invoke-static {v3, v1}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 164
    :goto_1
    return-void
.end method

.method public receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 1
    .param p1, "targetReactTag"    # I
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "event"    # Lcom/facebook/react/bridge/WritableMap;

    .line 58
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/facebook/react/uimanager/events/ReactEventEmitter;->receiveEvent(IILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 59
    return-void
.end method

.method public receiveTouches(Lcom/facebook/react/uimanager/events/TouchEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/facebook/react/uimanager/events/TouchEvent;

    .line 86
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/events/TouchEvent;->getViewTag()I

    move-result v0

    .line 88
    .local v0, "reactTag":I
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/events/TouchEvent;->getViewTag()I

    move-result v1

    invoke-virtual {p1}, Lcom/facebook/react/uimanager/events/TouchEvent;->getSurfaceId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/facebook/react/uimanager/common/ViewUtil;->getUIManagerType(II)I

    move-result v1

    .line 89
    .local v1, "uiManagerType":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/facebook/react/uimanager/events/ReactEventEmitter;->mFabricEventEmitter:Lcom/facebook/react/uimanager/events/RCTModernEventEmitter;

    if-eqz v2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/facebook/react/uimanager/events/ReactEventEmitter;->mFabricEventEmitter:Lcom/facebook/react/uimanager/events/RCTModernEventEmitter;

    invoke-static {v2, p1}, Lcom/facebook/react/uimanager/events/TouchesHelper;->sendTouchEvent(Lcom/facebook/react/uimanager/events/RCTModernEventEmitter;Lcom/facebook/react/uimanager/events/TouchEvent;)V

    goto :goto_0

    .line 91
    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lcom/facebook/react/uimanager/events/ReactEventEmitter;->getDefaultEventEmitter()Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 92
    iget-object v2, p0, Lcom/facebook/react/uimanager/events/ReactEventEmitter;->mDefaultEventEmitter:Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    invoke-static {v2, p1}, Lcom/facebook/react/uimanager/events/TouchesHelper;->sendTouchesLegacy(Lcom/facebook/react/uimanager/events/RCTEventEmitter;Lcom/facebook/react/uimanager/events/TouchEvent;)V

    goto :goto_0

    .line 94
    :cond_1
    new-instance v2, Lcom/facebook/react/bridge/ReactNoCrashSoftException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find EventEmitter for receivedTouches: ReactTag["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] UIManagerType["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] EventName["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 102
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/events/TouchEvent;->getEventName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/react/bridge/ReactNoCrashSoftException;-><init>(Ljava/lang/String;)V

    .line 94
    const-string v3, "ReactEventEmitter"

    invoke-static {v3, v2}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    :goto_0
    return-void
.end method

.method public receiveTouches(Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;Lcom/facebook/react/bridge/WritableArray;)V
    .locals 3
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "touches"    # Lcom/facebook/react/bridge/WritableArray;
    .param p3, "changedIndices"    # Lcom/facebook/react/bridge/WritableArray;

    .line 75
    invoke-interface {p2}, Lcom/facebook/react/bridge/WritableArray;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(Z)V

    .line 77
    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/WritableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v0

    const-string/jumbo v2, "target"

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 78
    .local v0, "reactTag":I
    invoke-static {v0}, Lcom/facebook/react/uimanager/common/ViewUtil;->getUIManagerType(I)I

    move-result v2

    .line 79
    .local v2, "uiManagerType":I
    if-ne v2, v1, :cond_1

    invoke-direct {p0}, Lcom/facebook/react/uimanager/events/ReactEventEmitter;->getDefaultEventEmitter()Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 80
    iget-object v1, p0, Lcom/facebook/react/uimanager/events/ReactEventEmitter;->mDefaultEventEmitter:Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    invoke-interface {v1, p1, p2, p3}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveTouches(Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;Lcom/facebook/react/bridge/WritableArray;)V

    .line 82
    :cond_1
    return-void
.end method

.method public register(ILcom/facebook/react/uimanager/events/RCTEventEmitter;)V
    .locals 1
    .param p1, "uiManagerType"    # I
    .param p2, "eventEmitter"    # Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    .line 44
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 45
    iput-object p2, p0, Lcom/facebook/react/uimanager/events/ReactEventEmitter;->mDefaultEventEmitter:Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    .line 46
    return-void

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public register(ILcom/facebook/react/uimanager/events/RCTModernEventEmitter;)V
    .locals 1
    .param p1, "uiManagerType"    # I
    .param p2, "eventEmitter"    # Lcom/facebook/react/uimanager/events/RCTModernEventEmitter;

    .line 39
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 40
    iput-object p2, p0, Lcom/facebook/react/uimanager/events/ReactEventEmitter;->mFabricEventEmitter:Lcom/facebook/react/uimanager/events/RCTModernEventEmitter;

    .line 41
    return-void

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public unregister(I)V
    .locals 2
    .param p1, "uiManagerType"    # I

    .line 49
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 50
    iput-object v1, p0, Lcom/facebook/react/uimanager/events/ReactEventEmitter;->mDefaultEventEmitter:Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    goto :goto_0

    .line 52
    :cond_0
    iput-object v1, p0, Lcom/facebook/react/uimanager/events/ReactEventEmitter;->mFabricEventEmitter:Lcom/facebook/react/uimanager/events/RCTModernEventEmitter;

    .line 54
    :goto_0
    return-void
.end method
