.class public Lexpo/modules/kotlin/events/KEventEmitterWrapper;
.super Ljava/lang/Object;
.source "KModuleEventEmitterWrapper.kt"

# interfaces
.implements Lexpo/modules/kotlin/events/EventEmitter;
.implements Lexpo/modules/core/interfaces/services/EventEmitter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/kotlin/events/KEventEmitterWrapper$UIEvent;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\n\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u00012\u00020\u0002:\u0001 B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0010\u0007J1\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016\u00a2\u0006\u0002\u0010\u0016J!\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u00182\u000e\u0010\u0019\u001a\n \u001b*\u0004\u0018\u00010\u001a0\u001aH\u0096\u0001J1\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016\u00a2\u0006\u0002\u0010\u001cJ1\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u00182\u000e\u0010\u0010\u001a\n \u001b*\u0004\u0018\u00010\u00110\u00112\u000e\u0010\u0012\u001a\n \u001b*\u0004\u0018\u00010\u001d0\u001dH\u0096\u0001J\u001a\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u001a\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u001eH\u0016J\"\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u00112\u0010\u0010\u0012\u001a\u000c\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0018\u00010\u001fH\u0016J)\u0010\u000c\u001a\u00020\r2\u000e\u0010\u0010\u001a\n \u001b*\u0004\u0018\u00010\u00110\u00112\u000e\u0010\u0012\u001a\n \u001b*\u0004\u0018\u00010\u001d0\u001dH\u0096\u0001R\u0016\u0010\u0008\u001a\u0004\u0018\u00010\t8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u0003\u001a\u00020\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lexpo/modules/kotlin/events/KEventEmitterWrapper;",
        "Lexpo/modules/kotlin/events/EventEmitter;",
        "Lexpo/modules/core/interfaces/services/EventEmitter;",
        "legacyEventEmitter",
        "reactContextHolder",
        "Ljava/lang/ref/WeakReference;",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "(Lexpo/modules/core/interfaces/services/EventEmitter;Ljava/lang/ref/WeakReference;)V",
        "deviceEventEmitter",
        "Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;",
        "getDeviceEventEmitter",
        "()Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;",
        "emit",
        "",
        "view",
        "Landroid/view/View;",
        "eventName",
        "",
        "eventBody",
        "Lcom/facebook/react/bridge/WritableMap;",
        "coalescingKey",
        "",
        "(Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Ljava/lang/Short;)V",
        "viewId",
        "",
        "event",
        "Lexpo/modules/core/interfaces/services/EventEmitter$Event;",
        "kotlin.jvm.PlatformType",
        "(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;Ljava/lang/Short;)V",
        "Landroid/os/Bundle;",
        "Lexpo/modules/kotlin/records/Record;",
        "",
        "UIEvent",
        "expo-modules-core_debug"
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
.field private final legacyEventEmitter:Lexpo/modules/core/interfaces/services/EventEmitter;

.field private final reactContextHolder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lexpo/modules/core/interfaces/services/EventEmitter;Ljava/lang/ref/WeakReference;)V
    .locals 1
    .param p1, "legacyEventEmitter"    # Lexpo/modules/core/interfaces/services/EventEmitter;
    .param p2, "reactContextHolder"    # Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/core/interfaces/services/EventEmitter;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ">;)V"
        }
    .end annotation

    const-string v0, "legacyEventEmitter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reactContextHolder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lexpo/modules/kotlin/events/KEventEmitterWrapper;->legacyEventEmitter:Lexpo/modules/core/interfaces/services/EventEmitter;

    .line 74
    iput-object p2, p0, Lexpo/modules/kotlin/events/KEventEmitterWrapper;->reactContextHolder:Ljava/lang/ref/WeakReference;

    .line 72
    return-void
.end method

.method private final getDeviceEventEmitter()Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;
    .locals 2

    .line 79
    nop

    .line 77
    iget-object v0, p0, Lexpo/modules/kotlin/events/KEventEmitterWrapper;->reactContextHolder:Ljava/lang/ref/WeakReference;

    .line 78
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 79
    if-eqz v0, :cond_0

    .line 78
    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 79
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public emit(ILexpo/modules/core/interfaces/services/EventEmitter$Event;)V
    .locals 1

    iget-object v0, p0, Lexpo/modules/kotlin/events/KEventEmitterWrapper;->legacyEventEmitter:Lexpo/modules/core/interfaces/services/EventEmitter;

    invoke-interface {v0, p1, p2}, Lexpo/modules/core/interfaces/services/EventEmitter;->emit(ILexpo/modules/core/interfaces/services/EventEmitter$Event;)V

    return-void
.end method

.method public emit(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lexpo/modules/kotlin/events/KEventEmitterWrapper;->legacyEventEmitter:Lexpo/modules/core/interfaces/services/EventEmitter;

    invoke-interface {v0, p1, p2, p3}, Lexpo/modules/core/interfaces/services/EventEmitter;->emit(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public emit(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;Ljava/lang/Short;)V
    .locals 9
    .param p1, "viewId"    # I
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "eventBody"    # Lcom/facebook/react/bridge/WritableMap;
    .param p4, "coalescingKey"    # Ljava/lang/Short;

    const-string v0, "eventName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lexpo/modules/kotlin/events/KEventEmitterWrapper;->reactContextHolder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactApplicationContext;

    if-nez v0, :cond_0

    return-void

    .line 99
    .local v0, "context":Lcom/facebook/react/bridge/ReactApplicationContext;
    :cond_0
    nop

    .line 98
    move-object v1, v0

    check-cast v1, Lcom/facebook/react/bridge/ReactContext;

    invoke-static {v1, p1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v1

    .line 99
    if-eqz v1, :cond_1

    .line 98
    nop

    .line 99
    new-instance v8, Lexpo/modules/kotlin/events/KEventEmitterWrapper$UIEvent;

    const/4 v3, -0x1

    move-object v2, v8

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lexpo/modules/kotlin/events/KEventEmitterWrapper$UIEvent;-><init>(IILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;Ljava/lang/Short;)V

    check-cast v8, Lcom/facebook/react/uimanager/events/Event;

    invoke-interface {v1, v8}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 100
    :cond_1
    return-void
.end method

.method public emit(Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;Ljava/lang/Short;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "eventBody"    # Lcom/facebook/react/bridge/WritableMap;
    .param p4, "coalescingKey"    # Ljava/lang/Short;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lexpo/modules/kotlin/events/KEventEmitterWrapper;->reactContextHolder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactApplicationContext;

    if-nez v0, :cond_0

    return-void

    .line 104
    .local v0, "context":Lcom/facebook/react/bridge/ReactApplicationContext;
    :cond_0
    invoke-static {p1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/view/View;)I

    move-result v7

    .line 105
    .local v7, "surfaceId":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    .line 107
    .local v8, "viewId":I
    nop

    .line 106
    move-object v1, v0

    check-cast v1, Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v9

    .line 107
    if-eqz v9, :cond_1

    .line 106
    nop

    .line 107
    new-instance v10, Lexpo/modules/kotlin/events/KEventEmitterWrapper$UIEvent;

    move-object v1, v10

    move v2, v7

    move v3, v8

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lexpo/modules/kotlin/events/KEventEmitterWrapper$UIEvent;-><init>(IILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;Ljava/lang/Short;)V

    check-cast v10, Lcom/facebook/react/uimanager/events/Event;

    invoke-interface {v9, v10}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 108
    :cond_1
    return-void
.end method

.method public emit(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lexpo/modules/kotlin/events/KEventEmitterWrapper;->legacyEventEmitter:Lexpo/modules/core/interfaces/services/EventEmitter;

    invoke-interface {v0, p1, p2}, Lexpo/modules/core/interfaces/services/EventEmitter;->emit(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public emit(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 1
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "eventBody"    # Lcom/facebook/react/bridge/WritableMap;

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    nop

    .line 82
    invoke-direct {p0}, Lexpo/modules/kotlin/events/KEventEmitterWrapper;->getDeviceEventEmitter()Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_0

    .line 82
    nop

    .line 83
    invoke-interface {v0, p1, p2}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    :cond_0
    return-void
.end method

.method public emit(Ljava/lang/String;Lexpo/modules/kotlin/records/Record;)V
    .locals 4
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "eventBody"    # Lexpo/modules/kotlin/records/Record;

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    nop

    .line 87
    invoke-direct {p0}, Lexpo/modules/kotlin/events/KEventEmitterWrapper;->getDeviceEventEmitter()Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_0

    .line 87
    nop

    .line 88
    sget-object v1, Lexpo/modules/kotlin/types/JSTypeConverter;->INSTANCE:Lexpo/modules/kotlin/types/JSTypeConverter;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, p2, v3, v2, v3}, Lexpo/modules/kotlin/types/JSTypeConverter;->legacyConvertToJSValue$default(Lexpo/modules/kotlin/types/JSTypeConverter;Ljava/lang/Object;Lexpo/modules/kotlin/types/JSTypeConverter$ContainerProvider;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    :cond_0
    return-void
.end method

.method public emit(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "eventBody"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    nop

    .line 92
    invoke-direct {p0}, Lexpo/modules/kotlin/events/KEventEmitterWrapper;->getDeviceEventEmitter()Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_0

    .line 92
    nop

    .line 93
    sget-object v1, Lexpo/modules/kotlin/types/JSTypeConverter;->INSTANCE:Lexpo/modules/kotlin/types/JSTypeConverter;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, p2, v3, v2, v3}, Lexpo/modules/kotlin/types/JSTypeConverter;->legacyConvertToJSValue$default(Lexpo/modules/kotlin/types/JSTypeConverter;Ljava/lang/Object;Lexpo/modules/kotlin/types/JSTypeConverter$ContainerProvider;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    :cond_0
    return-void
.end method
