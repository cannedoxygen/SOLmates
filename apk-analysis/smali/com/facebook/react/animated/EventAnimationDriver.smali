.class public final Lcom/facebook/react/animated/EventAnimationDriver;
.super Ljava/lang/Object;
.source "EventAnimationDriver.kt"

# interfaces
.implements Lcom/facebook/react/uimanager/events/RCTModernEventEmitter;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEventAnimationDriver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventAnimationDriver.kt\ncom/facebook/react/animated/EventAnimationDriver\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,101:1\n1#2:102\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ*\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016JB\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00052\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0014\u001a\u00020\u0005H\u0016J\"\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\u0010\u0010\u0016\u001a\u00020\u000c2\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J \u0010\u0016\u001a\u00020\u000c2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001aH\u0016R\u0012\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\t8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0004\u001a\u00020\u00058\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/facebook/react/animated/EventAnimationDriver;",
        "Lcom/facebook/react/uimanager/events/RCTModernEventEmitter;",
        "eventName",
        "",
        "viewTag",
        "",
        "eventPath",
        "",
        "valueNode",
        "Lcom/facebook/react/animated/ValueAnimatedNode;",
        "(Ljava/lang/String;ILjava/util/List;Lcom/facebook/react/animated/ValueAnimatedNode;)V",
        "receiveEvent",
        "",
        "surfaceId",
        "targetTag",
        "event",
        "Lcom/facebook/react/bridge/WritableMap;",
        "canCoalesceEvent",
        "",
        "customCoalesceKey",
        "category",
        "targetReactTag",
        "receiveTouches",
        "touchEvent",
        "Lcom/facebook/react/uimanager/events/TouchEvent;",
        "touches",
        "Lcom/facebook/react/bridge/WritableArray;",
        "changedIndices",
        "ReactAndroid_debug"
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
.field public eventName:Ljava/lang/String;

.field private final eventPath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public valueNode:Lcom/facebook/react/animated/ValueAnimatedNode;

.field public viewTag:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/util/List;Lcom/facebook/react/animated/ValueAnimatedNode;)V
    .locals 1
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "viewTag"    # I
    .param p3, "eventPath"    # Ljava/util/List;
    .param p4, "valueNode"    # Lcom/facebook/react/animated/ValueAnimatedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/react/animated/ValueAnimatedNode;",
            ")V"
        }
    .end annotation

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventPath"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "valueNode"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/facebook/react/animated/EventAnimationDriver;->eventName:Ljava/lang/String;

    .line 23
    iput p2, p0, Lcom/facebook/react/animated/EventAnimationDriver;->viewTag:I

    .line 24
    iput-object p3, p0, Lcom/facebook/react/animated/EventAnimationDriver;->eventPath:Ljava/util/List;

    .line 25
    iput-object p4, p0, Lcom/facebook/react/animated/EventAnimationDriver;->valueNode:Lcom/facebook/react/animated/ValueAnimatedNode;

    .line 21
    return-void
.end method


# virtual methods
.method public receiveEvent(IILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 9
    .param p1, "surfaceId"    # I
    .param p2, "targetTag"    # I
    .param p3, "eventName"    # Ljava/lang/String;
    .param p4, "event"    # Lcom/facebook/react/bridge/WritableMap;

    const-string v0, "eventName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    const/4 v6, 0x0

    const/4 v8, 0x2

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v8}, Lcom/facebook/react/animated/EventAnimationDriver;->receiveEvent(IILjava/lang/String;ZILcom/facebook/react/bridge/WritableMap;I)V

    return-void
.end method

.method public receiveEvent(IILjava/lang/String;ZILcom/facebook/react/bridge/WritableMap;I)V
    .locals 12
    .param p1, "surfaceId"    # I
    .param p2, "targetTag"    # I
    .param p3, "eventName"    # Ljava/lang/String;
    .param p4, "canCoalesceEvent"    # Z
    .param p5, "customCoalesceKey"    # I
    .param p6, "event"    # Lcom/facebook/react/bridge/WritableMap;
    .param p7, "category"    # I

    move-object v0, p0

    const-string v1, "eventName"

    move-object v2, p3

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    if-eqz p6, :cond_b

    .line 63
    move-object/from16 v1, p6

    check-cast v1, Lcom/facebook/react/bridge/ReadableMap;

    .line 64
    .local v1, "currMap":Lcom/facebook/react/bridge/ReadableMap;
    const/4 v3, 0x0

    .line 65
    .local v3, "currArray":Lcom/facebook/react/bridge/ReadableArray;
    const/4 v4, 0x0

    .local v4, "i":I
    iget-object v5, v0, Lcom/facebook/react/animated/EventAnimationDriver;->eventPath:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_0
    if-ge v4, v5, :cond_8

    .line 66
    const-string v6, "\'"

    const-string v7, "Unexpected type "

    if-eqz v1, :cond_2

    .line 67
    iget-object v8, v0, Lcom/facebook/react/animated/EventAnimationDriver;->eventPath:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 68
    .local v8, "key":Ljava/lang/String;
    invoke-interface {v1, v8}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v9

    .line 69
    .local v9, "keyType":Lcom/facebook/react/bridge/ReadableType;
    sget-object v10, Lcom/facebook/react/bridge/ReadableType;->Map:Lcom/facebook/react/bridge/ReadableType;

    if-ne v9, v10, :cond_0

    .line 70
    invoke-interface {v1, v8}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v1

    .line 71
    const/4 v3, 0x0

    goto :goto_2

    .line 72
    :cond_0
    sget-object v10, Lcom/facebook/react/bridge/ReadableType;->Array:Lcom/facebook/react/bridge/ReadableType;

    if-ne v9, v10, :cond_1

    .line 73
    invoke-interface {v1, v8}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v3

    .line 74
    const/4 v1, 0x0

    goto :goto_2

    .line 76
    :cond_1
    new-instance v5, Lcom/facebook/react/bridge/UnexpectedNativeTypeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " for key \'"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/facebook/react/bridge/UnexpectedNativeTypeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 79
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "keyType":Lcom/facebook/react/bridge/ReadableType;
    :cond_2
    iget-object v8, v0, Lcom/facebook/react/animated/EventAnimationDriver;->eventPath:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 80
    .local v8, "index":I
    const/4 v9, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v3, v8}, Lcom/facebook/react/bridge/ReadableArray;->getType(I)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v10

    goto :goto_1

    :cond_3
    move-object v10, v9

    .line 81
    .local v10, "keyType":Lcom/facebook/react/bridge/ReadableType;
    :goto_1
    sget-object v11, Lcom/facebook/react/bridge/ReadableType;->Map:Lcom/facebook/react/bridge/ReadableType;

    if-ne v10, v11, :cond_5

    .line 82
    if-eqz v3, :cond_4

    invoke-interface {v3, v8}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v9

    :cond_4
    move-object v1, v9

    .line 83
    const/4 v3, 0x0

    goto :goto_2

    .line 84
    :cond_5
    sget-object v11, Lcom/facebook/react/bridge/ReadableType;->Array:Lcom/facebook/react/bridge/ReadableType;

    if-ne v10, v11, :cond_7

    .line 85
    if-eqz v3, :cond_6

    invoke-interface {v3, v8}, Lcom/facebook/react/bridge/ReadableArray;->getArray(I)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v9

    :cond_6
    move-object v3, v9

    .line 86
    const/4 v1, 0x0

    .line 65
    .end local v8    # "index":I
    .end local v10    # "keyType":Lcom/facebook/react/bridge/ReadableType;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 88
    .restart local v8    # "index":I
    .restart local v10    # "keyType":Lcom/facebook/react/bridge/ReadableType;
    :cond_7
    new-instance v5, Lcom/facebook/react/bridge/UnexpectedNativeTypeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " for index \'"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/facebook/react/bridge/UnexpectedNativeTypeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 92
    .end local v4    # "i":I
    .end local v8    # "index":I
    .end local v10    # "keyType":Lcom/facebook/react/bridge/ReadableType;
    :cond_8
    iget-object v4, v0, Lcom/facebook/react/animated/EventAnimationDriver;->eventPath:Ljava/util/List;

    iget-object v5, v0, Lcom/facebook/react/animated/EventAnimationDriver;->eventPath:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 93
    .local v4, "lastKey":Ljava/lang/String;
    if-eqz v1, :cond_9

    .line 94
    iget-object v5, v0, Lcom/facebook/react/animated/EventAnimationDriver;->valueNode:Lcom/facebook/react/animated/ValueAnimatedNode;

    invoke-interface {v1, v4}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    iput-wide v6, v5, Lcom/facebook/react/animated/ValueAnimatedNode;->nodeValue:D

    goto :goto_4

    .line 96
    :cond_9
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 97
    .local v5, "lastIndex":I
    iget-object v6, v0, Lcom/facebook/react/animated/EventAnimationDriver;->valueNode:Lcom/facebook/react/animated/ValueAnimatedNode;

    if-eqz v3, :cond_a

    invoke-interface {v3, v5}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v7

    goto :goto_3

    :cond_a
    const-wide/16 v7, 0x0

    :goto_3
    iput-wide v7, v6, Lcom/facebook/react/animated/ValueAnimatedNode;->nodeValue:D

    .line 99
    .end local v5    # "lastIndex":I
    :goto_4
    return-void

    .line 102
    .end local v1    # "currMap":Lcom/facebook/react/bridge/ReadableMap;
    .end local v3    # "currArray":Lcom/facebook/react/bridge/ReadableArray;
    .end local v4    # "lastKey":Ljava/lang/String;
    :cond_b
    const/4 v1, 0x0

    .line 60
    .local v1, "$i$a$-requireNotNull-EventAnimationDriver$receiveEvent$1":I
    nop

    .end local v1    # "$i$a$-requireNotNull-EventAnimationDriver$receiveEvent$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Native animated events must have event data."

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 1
    .param p1, "targetReactTag"    # I
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "event"    # Lcom/facebook/react/bridge/WritableMap;

    const-string v0, "eventName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/facebook/react/animated/EventAnimationDriver;->receiveEvent(IILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public receiveTouches(Lcom/facebook/react/uimanager/events/TouchEvent;)V
    .locals 2
    .param p1, "touchEvent"    # Lcom/facebook/react/uimanager/events/TouchEvent;

    const-string/jumbo v0, "touchEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "receiveTouches is not support by native animated events"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public receiveTouches(Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;Lcom/facebook/react/bridge/WritableArray;)V
    .locals 2
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "touches"    # Lcom/facebook/react/bridge/WritableArray;
    .param p3, "changedIndices"    # Lcom/facebook/react/bridge/WritableArray;

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "touches"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "changedIndices"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "receiveTouches is not support by native animated events"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
