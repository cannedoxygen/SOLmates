.class Lcom/facebook/react/uimanager/events/Event$1;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Lcom/facebook/react/uimanager/events/Event$EventAnimationDriverMatchSpec;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/uimanager/events/Event;->getEventAnimationDriverMatchSpec()Lcom/facebook/react/uimanager/events/Event$EventAnimationDriverMatchSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/uimanager/events/Event;


# direct methods
.method constructor <init>(Lcom/facebook/react/uimanager/events/Event;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/react/uimanager/events/Event;

    .line 155
    .local p0, "this":Lcom/facebook/react/uimanager/events/Event$1;, "Lcom/facebook/react/uimanager/events/Event$1;"
    iput-object p1, p0, Lcom/facebook/react/uimanager/events/Event$1;->this$0:Lcom/facebook/react/uimanager/events/Event;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public match(ILjava/lang/String;)Z
    .locals 1
    .param p1, "viewTag"    # I
    .param p2, "eventName"    # Ljava/lang/String;

    .line 158
    .local p0, "this":Lcom/facebook/react/uimanager/events/Event$1;, "Lcom/facebook/react/uimanager/events/Event$1;"
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/Event$1;->this$0:Lcom/facebook/react/uimanager/events/Event;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/events/Event;->getViewTag()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/uimanager/events/Event$1;->this$0:Lcom/facebook/react/uimanager/events/Event;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/events/Event;->getEventName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
