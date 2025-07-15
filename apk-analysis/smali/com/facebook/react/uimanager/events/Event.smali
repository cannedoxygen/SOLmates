.class public abstract Lcom/facebook/react/uimanager/events/Event;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/uimanager/events/Event$EventAnimationDriverMatchSpec;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/facebook/react/uimanager/events/Event;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static sUniqueID:I


# instance fields
.field private mEventAnimationDriverMatchSpec:Lcom/facebook/react/uimanager/events/Event$EventAnimationDriverMatchSpec;

.field private mInitialized:Z

.field private mSurfaceId:I

.field private mTimestampMs:J

.field private mUniqueID:I

.field private mViewTag:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const/4 v0, 0x0

    sput v0, Lcom/facebook/react/uimanager/events/Event;->sUniqueID:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 43
    .local p0, "this":Lcom/facebook/react/uimanager/events/Event;, "Lcom/facebook/react/uimanager/events/Event<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget v0, Lcom/facebook/react/uimanager/events/Event;->sUniqueID:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/facebook/react/uimanager/events/Event;->sUniqueID:I

    iput v0, p0, Lcom/facebook/react/uimanager/events/Event;->mUniqueID:I

    .line 43
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 2
    .param p1, "viewTag"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 46
    .local p0, "this":Lcom/facebook/react/uimanager/events/Event;, "Lcom/facebook/react/uimanager/events/Event<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget v0, Lcom/facebook/react/uimanager/events/Event;->sUniqueID:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/facebook/react/uimanager/events/Event;->sUniqueID:I

    iput v0, p0, Lcom/facebook/react/uimanager/events/Event;->mUniqueID:I

    .line 47
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/events/Event;->init(I)V

    .line 48
    return-void
.end method

.method protected constructor <init>(II)V
    .locals 2
    .param p1, "surfaceId"    # I
    .param p2, "viewTag"    # I

    .line 50
    .local p0, "this":Lcom/facebook/react/uimanager/events/Event;, "Lcom/facebook/react/uimanager/events/Event<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget v0, Lcom/facebook/react/uimanager/events/Event;->sUniqueID:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/facebook/react/uimanager/events/Event;->sUniqueID:I

    iput v0, p0, Lcom/facebook/react/uimanager/events/Event;->mUniqueID:I

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/uimanager/events/Event;->init(II)V

    .line 52
    return-void
.end method


# virtual methods
.method public canCoalesce()Z
    .locals 1

    .line 101
    .local p0, "this":Lcom/facebook/react/uimanager/events/Event;, "Lcom/facebook/react/uimanager/events/Event<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public coalesce(Lcom/facebook/react/uimanager/events/Event;)Lcom/facebook/react/uimanager/events/Event;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 113
    .local p0, "this":Lcom/facebook/react/uimanager/events/Event;, "Lcom/facebook/react/uimanager/events/Event<TT;>;"
    .local p1, "otherEvent":Lcom/facebook/react/uimanager/events/Event;, "TT;"
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/events/Event;->getTimestampMs()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/facebook/react/uimanager/events/Event;->getTimestampMs()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method public dispatch(Lcom/facebook/react/uimanager/events/RCTEventEmitter;)V
    .locals 3
    .param p1, "rctEventEmitter"    # Lcom/facebook/react/uimanager/events/RCTEventEmitter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 173
    .local p0, "this":Lcom/facebook/react/uimanager/events/Event;, "Lcom/facebook/react/uimanager/events/Event<TT;>;"
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/events/Event;->getViewTag()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/react/uimanager/events/Event;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/react/uimanager/events/Event;->getEventData()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 174
    return-void
.end method

.method public dispatchModern(Lcom/facebook/react/uimanager/events/RCTModernEventEmitter;)V
    .locals 10
    .param p1, "rctEventEmitter"    # Lcom/facebook/react/uimanager/events/RCTModernEventEmitter;

    .line 203
    .local p0, "this":Lcom/facebook/react/uimanager/events/Event;, "Lcom/facebook/react/uimanager/events/Event<TT;>;"
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/events/Event;->getSurfaceId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 204
    nop

    .line 205
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/events/Event;->getSurfaceId()I

    move-result v3

    .line 206
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/events/Event;->getViewTag()I

    move-result v4

    .line 207
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/events/Event;->getEventName()Ljava/lang/String;

    move-result-object v5

    .line 208
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/events/Event;->canCoalesce()Z

    move-result v6

    .line 209
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/events/Event;->getCoalescingKey()S

    move-result v7

    .line 210
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/events/Event;->getEventData()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v8

    .line 211
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/events/Event;->getEventCategory()I

    move-result v9

    .line 204
    move-object v2, p1

    invoke-interface/range {v2 .. v9}, Lcom/facebook/react/uimanager/events/RCTModernEventEmitter;->receiveEvent(IILjava/lang/String;ZILcom/facebook/react/bridge/WritableMap;I)V

    goto :goto_0

    .line 213
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/events/Event;->dispatch(Lcom/facebook/react/uimanager/events/RCTEventEmitter;)V

    .line 215
    :goto_0
    return-void
.end method

.method final dispose()V
    .locals 1

    .line 143
    .local p0, "this":Lcom/facebook/react/uimanager/events/Event;, "Lcom/facebook/react/uimanager/events/Event<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/uimanager/events/Event;->mInitialized:Z

    .line 144
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/events/Event;->onDispose()V

    .line 145
    return-void
.end method

.method protected experimental_isSynchronous()Z
    .locals 1

    .line 188
    .local p0, "this":Lcom/facebook/react/uimanager/events/Event;, "Lcom/facebook/react/uimanager/events/Event<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getCoalescingKey()S
    .locals 1

    .line 122
    .local p0, "this":Lcom/facebook/react/uimanager/events/Event;, "Lcom/facebook/react/uimanager/events/Event<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getEventAnimationDriverMatchSpec()Lcom/facebook/react/uimanager/events/Event$EventAnimationDriverMatchSpec;
    .locals 1

    .line 153
    .local p0, "this":Lcom/facebook/react/uimanager/events/Event;, "Lcom/facebook/react/uimanager/events/Event<TT;>;"
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/Event;->mEventAnimationDriverMatchSpec:Lcom/facebook/react/uimanager/events/Event$EventAnimationDriverMatchSpec;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Lcom/facebook/react/uimanager/events/Event$1;

    invoke-direct {v0, p0}, Lcom/facebook/react/uimanager/events/Event$1;-><init>(Lcom/facebook/react/uimanager/events/Event;)V

    iput-object v0, p0, Lcom/facebook/react/uimanager/events/Event;->mEventAnimationDriverMatchSpec:Lcom/facebook/react/uimanager/events/Event$EventAnimationDriverMatchSpec;

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/Event;->mEventAnimationDriverMatchSpec:Lcom/facebook/react/uimanager/events/Event$EventAnimationDriverMatchSpec;

    return-object v0
.end method

.method protected getEventCategory()I
    .locals 1

    .line 184
    .local p0, "this":Lcom/facebook/react/uimanager/events/Event;, "Lcom/facebook/react/uimanager/events/Event<TT;>;"
    const/4 v0, 0x2

    return v0
.end method

.method protected getEventData()Lcom/facebook/react/bridge/WritableMap;
    .locals 1

    .line 179
    .local p0, "this":Lcom/facebook/react/uimanager/events/Event;, "Lcom/facebook/react/uimanager/events/Event<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getEventName()Ljava/lang/String;
.end method

.method public final getSurfaceId()I
    .locals 1

    .line 86
    .local p0, "this":Lcom/facebook/react/uimanager/events/Event;, "Lcom/facebook/react/uimanager/events/Event<TT;>;"
    iget v0, p0, Lcom/facebook/react/uimanager/events/Event;->mSurfaceId:I

    return v0
.end method

.method public final getTimestampMs()J
    .locals 2

    .line 94
    .local p0, "this":Lcom/facebook/react/uimanager/events/Event;, "Lcom/facebook/react/uimanager/events/Event<TT;>;"
    iget-wide v0, p0, Lcom/facebook/react/uimanager/events/Event;->mTimestampMs:J

    return-wide v0
.end method

.method public getUniqueID()I
    .locals 1

    .line 129
    .local p0, "this":Lcom/facebook/react/uimanager/events/Event;, "Lcom/facebook/react/uimanager/events/Event<TT;>;"
    iget v0, p0, Lcom/facebook/react/uimanager/events/Event;->mUniqueID:I

    return v0
.end method

.method public final getViewTag()I
    .locals 1

    .line 79
    .local p0, "this":Lcom/facebook/react/uimanager/events/Event;, "Lcom/facebook/react/uimanager/events/Event<TT;>;"
    iget v0, p0, Lcom/facebook/react/uimanager/events/Event;->mViewTag:I

    return v0
.end method

.method protected init(I)V
    .locals 1
    .param p1, "viewTag"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 56
    .local p0, "this":Lcom/facebook/react/uimanager/events/Event;, "Lcom/facebook/react/uimanager/events/Event<TT;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/facebook/react/uimanager/events/Event;->init(II)V

    .line 57
    return-void
.end method

.method protected init(II)V
    .locals 2
    .param p1, "surfaceId"    # I
    .param p2, "viewTag"    # I

    .line 60
    .local p0, "this":Lcom/facebook/react/uimanager/events/Event;, "Lcom/facebook/react/uimanager/events/Event<TT;>;"
    invoke-static {}, Lcom/facebook/react/common/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/facebook/react/uimanager/events/Event;->init(IIJ)V

    .line 61
    return-void
.end method

.method protected init(IIJ)V
    .locals 1
    .param p1, "surfaceId"    # I
    .param p2, "viewTag"    # I
    .param p3, "timestampMs"    # J

    .line 69
    .local p0, "this":Lcom/facebook/react/uimanager/events/Event;, "Lcom/facebook/react/uimanager/events/Event<TT;>;"
    iput p1, p0, Lcom/facebook/react/uimanager/events/Event;->mSurfaceId:I

    .line 70
    iput p2, p0, Lcom/facebook/react/uimanager/events/Event;->mViewTag:I

    .line 71
    iput-wide p3, p0, Lcom/facebook/react/uimanager/events/Event;->mTimestampMs:J

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/uimanager/events/Event;->mInitialized:Z

    .line 73
    return-void
.end method

.method isInitialized()Z
    .locals 1

    .line 139
    .local p0, "this":Lcom/facebook/react/uimanager/events/Event;, "Lcom/facebook/react/uimanager/events/Event<TT;>;"
    iget-boolean v0, p0, Lcom/facebook/react/uimanager/events/Event;->mInitialized:Z

    return v0
.end method

.method public onDispose()V
    .locals 0

    .line 136
    .local p0, "this":Lcom/facebook/react/uimanager/events/Event;, "Lcom/facebook/react/uimanager/events/Event<TT;>;"
    return-void
.end method
