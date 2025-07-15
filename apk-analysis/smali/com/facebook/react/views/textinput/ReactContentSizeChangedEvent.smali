.class public Lcom/facebook/react/views/textinput/ReactContentSizeChangedEvent;
.super Lcom/facebook/react/uimanager/events/Event;
.source "ReactContentSizeChangedEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/events/Event<",
        "Lcom/facebook/react/views/textinput/ReactTextChangedEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final EVENT_NAME:Ljava/lang/String; = "topContentSizeChange"


# instance fields
.field private mContentHeight:F

.field private mContentWidth:F


# direct methods
.method public constructor <init>(IFF)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "contentSizeWidth"    # F
    .param p3, "contentSizeHeight"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 26
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/facebook/react/views/textinput/ReactContentSizeChangedEvent;-><init>(IIFF)V

    .line 27
    return-void
.end method

.method public constructor <init>(IIFF)V
    .locals 0
    .param p1, "surfaceId"    # I
    .param p2, "viewId"    # I
    .param p3, "contentSizeWidth"    # F
    .param p4, "contentSizeHeight"    # F

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/uimanager/events/Event;-><init>(II)V

    .line 32
    iput p3, p0, Lcom/facebook/react/views/textinput/ReactContentSizeChangedEvent;->mContentWidth:F

    .line 33
    iput p4, p0, Lcom/facebook/react/views/textinput/ReactContentSizeChangedEvent;->mContentHeight:F

    .line 34
    return-void
.end method


# virtual methods
.method protected getEventData()Lcom/facebook/react/bridge/WritableMap;
    .locals 5

    .line 44
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 46
    .local v0, "eventData":Lcom/facebook/react/bridge/WritableMap;
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 47
    .local v1, "contentSize":Lcom/facebook/react/bridge/WritableMap;
    iget v2, p0, Lcom/facebook/react/views/textinput/ReactContentSizeChangedEvent;->mContentWidth:F

    float-to-double v2, v2

    const-string/jumbo v4, "width"

    invoke-interface {v1, v4, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 48
    iget v2, p0, Lcom/facebook/react/views/textinput/ReactContentSizeChangedEvent;->mContentHeight:F

    float-to-double v2, v2

    const-string v4, "height"

    invoke-interface {v1, v4, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 49
    const-string v2, "contentSize"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 51
    const-string/jumbo v2, "target"

    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactContentSizeChangedEvent;->getViewTag()I

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 52
    return-object v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    .line 38
    const-string/jumbo v0, "topContentSizeChange"

    return-object v0
.end method
