.class public Lexpo/modules/adapters/react/services/EventEmitterModule;
.super Ljava/lang/Object;
.source "EventEmitterModule.java"

# interfaces
.implements Lexpo/modules/core/interfaces/services/EventEmitter;
.implements Lexpo/modules/core/interfaces/InternalModule;


# instance fields
.field private mReactContext:Lcom/facebook/react/bridge/ReactContext;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 0
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactContext;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lexpo/modules/adapters/react/services/EventEmitterModule;->mReactContext:Lcom/facebook/react/bridge/ReactContext;

    .line 24
    return-void
.end method

.method private static getReactEventFromEvent(ILexpo/modules/core/interfaces/services/EventEmitter$Event;)Lcom/facebook/react/uimanager/events/Event;
    .locals 1
    .param p0, "viewId"    # I
    .param p1, "event"    # Lexpo/modules/core/interfaces/services/EventEmitter$Event;

    .line 71
    new-instance v0, Lexpo/modules/adapters/react/services/EventEmitterModule$2;

    invoke-direct {v0, p0, p1, p0}, Lexpo/modules/adapters/react/services/EventEmitterModule$2;-><init>(ILexpo/modules/core/interfaces/services/EventEmitter$Event;I)V

    return-object v0
.end method


# virtual methods
.method public emit(ILexpo/modules/core/interfaces/services/EventEmitter$Event;)V
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "event"    # Lexpo/modules/core/interfaces/services/EventEmitter$Event;

    .line 33
    iget-object v0, p0, Lexpo/modules/adapters/react/services/EventEmitterModule;->mReactContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-static {v0, p1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    .line 34
    .local v0, "dispatcher":Lcom/facebook/react/uimanager/events/EventDispatcher;
    invoke-static {p1, p2}, Lexpo/modules/adapters/react/services/EventEmitterModule;->getReactEventFromEvent(ILexpo/modules/core/interfaces/services/EventEmitter$Event;)Lcom/facebook/react/uimanager/events/Event;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 35
    return-void
.end method

.method public emit(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "viewId"    # I
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "eventBody"    # Landroid/os/Bundle;

    .line 40
    iget-object v0, p0, Lexpo/modules/adapters/react/services/EventEmitterModule;->mReactContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-static {v0, p1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    .line 41
    .local v0, "dispatcher":Lcom/facebook/react/uimanager/events/EventDispatcher;
    new-instance v7, Lexpo/modules/adapters/react/services/EventEmitterModule$1;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lexpo/modules/adapters/react/services/EventEmitterModule$1;-><init>(Lexpo/modules/adapters/react/services/EventEmitterModule;ILjava/lang/String;ILandroid/os/Bundle;)V

    invoke-interface {v0, v7}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 62
    return-void
.end method

.method public emit(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "eventBody"    # Landroid/os/Bundle;

    .line 28
    iget-object v0, p0, Lexpo/modules/adapters/react/services/EventEmitterModule;->mReactContext:Lcom/facebook/react/bridge/ReactContext;

    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-static {p2}, Lcom/facebook/react/bridge/Arguments;->fromBundle(Landroid/os/Bundle;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method public getExportedInterfaces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .line 66
    const-class v0, Lexpo/modules/core/interfaces/services/EventEmitter;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
