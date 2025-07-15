.class Lcom/swmansion/reanimated/CopiedEvent$1;
.super Ljava/lang/Object;
.source "CopiedEvent.java"

# interfaces
.implements Lcom/facebook/react/uimanager/events/RCTEventEmitter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swmansion/reanimated/CopiedEvent;-><init>(Lcom/facebook/react/uimanager/events/Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swmansion/reanimated/CopiedEvent;


# direct methods
.method constructor <init>(Lcom/swmansion/reanimated/CopiedEvent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/swmansion/reanimated/CopiedEvent;

    .line 16
    iput-object p1, p0, Lcom/swmansion/reanimated/CopiedEvent$1;->this$0:Lcom/swmansion/reanimated/CopiedEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 2
    .param p1, "targetTag"    # I
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "event"    # Lcom/facebook/react/bridge/WritableMap;

    .line 19
    iget-object v0, p0, Lcom/swmansion/reanimated/CopiedEvent$1;->this$0:Lcom/swmansion/reanimated/CopiedEvent;

    invoke-static {v0, p1}, Lcom/swmansion/reanimated/CopiedEvent;->-$$Nest$fputtargetTag(Lcom/swmansion/reanimated/CopiedEvent;I)V

    .line 20
    iget-object v0, p0, Lcom/swmansion/reanimated/CopiedEvent$1;->this$0:Lcom/swmansion/reanimated/CopiedEvent;

    invoke-static {v0, p2}, Lcom/swmansion/reanimated/CopiedEvent;->-$$Nest$fputeventName(Lcom/swmansion/reanimated/CopiedEvent;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/swmansion/reanimated/CopiedEvent$1;->this$0:Lcom/swmansion/reanimated/CopiedEvent;

    invoke-interface {p3}, Lcom/facebook/react/bridge/WritableMap;->copy()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/swmansion/reanimated/CopiedEvent;->-$$Nest$fputpayload(Lcom/swmansion/reanimated/CopiedEvent;Lcom/facebook/react/bridge/WritableMap;)V

    .line 22
    return-void
.end method

.method public receiveTouches(Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;Lcom/facebook/react/bridge/WritableArray;)V
    .locals 0
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "touches"    # Lcom/facebook/react/bridge/WritableArray;
    .param p3, "changedIndices"    # Lcom/facebook/react/bridge/WritableArray;

    .line 28
    return-void
.end method
