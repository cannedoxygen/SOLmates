.class Lcom/facebook/react/views/textinput/ReactTextInputKeyPressEvent;
.super Lcom/facebook/react/uimanager/events/Event;
.source "ReactTextInputKeyPressEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/events/Event<",
        "Lcom/facebook/react/views/textinput/ReactTextInputKeyPressEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final EVENT_NAME:Ljava/lang/String; = "topKeyPress"


# instance fields
.field private mKey:Ljava/lang/String;


# direct methods
.method constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "surfaceId"    # I
    .param p2, "viewId"    # I
    .param p3, "key"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/uimanager/events/Event;-><init>(II)V

    .line 30
    iput-object p3, p0, Lcom/facebook/react/views/textinput/ReactTextInputKeyPressEvent;->mKey:Ljava/lang/String;

    .line 31
    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 25
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/facebook/react/views/textinput/ReactTextInputKeyPressEvent;-><init>(IILjava/lang/String;)V

    .line 26
    return-void
.end method


# virtual methods
.method public canCoalesce()Z
    .locals 1

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method protected getEventData()Lcom/facebook/react/bridge/WritableMap;
    .locals 3

    .line 41
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 42
    .local v0, "eventData":Lcom/facebook/react/bridge/WritableMap;
    const-string v1, "key"

    iget-object v2, p0, Lcom/facebook/react/views/textinput/ReactTextInputKeyPressEvent;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-object v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    .line 35
    const-string/jumbo v0, "topKeyPress"

    return-object v0
.end method
