.class public final Lcom/facebook/react/animated/SubtractionAnimatedNode;
.super Lcom/facebook/react/animated/ValueAnimatedNode;
.source "SubtractionAnimatedNode.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/facebook/react/animated/SubtractionAnimatedNode;",
        "Lcom/facebook/react/animated/ValueAnimatedNode;",
        "config",
        "Lcom/facebook/react/bridge/ReadableMap;",
        "nativeAnimatedNodesManager",
        "Lcom/facebook/react/animated/NativeAnimatedNodesManager;",
        "(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/animated/NativeAnimatedNodesManager;)V",
        "inputNodes",
        "",
        "prettyPrint",
        "",
        "update",
        "",
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
.field private final inputNodes:[I

.field private final nativeAnimatedNodesManager:Lcom/facebook/react/animated/NativeAnimatedNodesManager;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/animated/NativeAnimatedNodesManager;)V
    .locals 5
    .param p1, "config"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p2, "nativeAnimatedNodesManager"    # Lcom/facebook/react/animated/NativeAnimatedNodesManager;

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAnimatedNodesManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/facebook/react/animated/ValueAnimatedNode;-><init>(Lcom/facebook/react/bridge/ReadableMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 19
    iput-object p2, p0, Lcom/facebook/react/animated/SubtractionAnimatedNode;->nativeAnimatedNodesManager:Lcom/facebook/react/animated/NativeAnimatedNodesManager;

    .line 23
    nop

    .line 24
    const-string v0, "input"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v0

    .line 25
    .local v0, "input":Lcom/facebook/react/bridge/ReadableArray;
    nop

    .line 26
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 27
    new-array v1, v1, [I

    goto :goto_1

    .line 29
    :cond_0
    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    new-array v3, v2, [I

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v1, v3

    .line 25
    :goto_1
    iput-object v1, p0, Lcom/facebook/react/animated/SubtractionAnimatedNode;->inputNodes:[I

    .line 31
    .end local v0    # "input":Lcom/facebook/react/bridge/ReadableArray;
    nop

    .line 17
    return-void
.end method


# virtual methods
.method public prettyPrint()Ljava/lang/String;
    .locals 5

    .line 51
    iget v0, p0, Lcom/facebook/react/animated/SubtractionAnimatedNode;->tag:I

    iget-object v1, p0, Lcom/facebook/react/animated/SubtractionAnimatedNode;->inputNodes:[I

    invoke-super {p0}, Lcom/facebook/react/animated/ValueAnimatedNode;->prettyPrint()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SubtractionAnimatedNode["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]: input nodes: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - super: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update()V
    .locals 7

    .line 34
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/facebook/react/animated/SubtractionAnimatedNode;->inputNodes:[I

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 35
    iget-object v2, p0, Lcom/facebook/react/animated/SubtractionAnimatedNode;->nativeAnimatedNodesManager:Lcom/facebook/react/animated/NativeAnimatedNodesManager;

    iget-object v3, p0, Lcom/facebook/react/animated/SubtractionAnimatedNode;->inputNodes:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->getNodeById(I)Lcom/facebook/react/animated/AnimatedNode;

    move-result-object v2

    .line 36
    .local v2, "animatedNode":Lcom/facebook/react/animated/AnimatedNode;
    if-eqz v2, :cond_1

    instance-of v3, v2, Lcom/facebook/react/animated/ValueAnimatedNode;

    if-eqz v3, :cond_1

    .line 37
    move-object v3, v2

    check-cast v3, Lcom/facebook/react/animated/ValueAnimatedNode;

    invoke-virtual {v3}, Lcom/facebook/react/animated/ValueAnimatedNode;->getValue()D

    move-result-wide v3

    .line 38
    .local v3, "value":D
    if-nez v0, :cond_0

    .line 39
    iput-wide v3, p0, Lcom/facebook/react/animated/SubtractionAnimatedNode;->nodeValue:D

    goto :goto_1

    .line 41
    :cond_0
    iget-wide v5, p0, Lcom/facebook/react/animated/SubtractionAnimatedNode;->nodeValue:D

    sub-double/2addr v5, v3

    iput-wide v5, p0, Lcom/facebook/react/animated/SubtractionAnimatedNode;->nodeValue:D

    .line 34
    .end local v2    # "animatedNode":Lcom/facebook/react/animated/AnimatedNode;
    .end local v3    # "value":D
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    .restart local v2    # "animatedNode":Lcom/facebook/react/animated/AnimatedNode;
    :cond_1
    new-instance v1, Lcom/facebook/react/bridge/JSApplicationCausedNativeException;

    .line 45
    nop

    .line 44
    const-string v3, "Illegal node ID set as an input for Animated.subtract node"

    invoke-direct {v1, v3}, Lcom/facebook/react/bridge/JSApplicationCausedNativeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 48
    .end local v0    # "i":I
    .end local v2    # "animatedNode":Lcom/facebook/react/animated/AnimatedNode;
    :cond_2
    return-void
.end method
