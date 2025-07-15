.class public final Lcom/facebook/react/animated/DivisionAnimatedNode;
.super Lcom/facebook/react/animated/ValueAnimatedNode;
.source "DivisionAnimatedNode.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDivisionAnimatedNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DivisionAnimatedNode.kt\ncom/facebook/react/animated/DivisionAnimatedNode\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,56:1\n13404#2,3:57\n*S KotlinDebug\n*F\n+ 1 DivisionAnimatedNode.kt\ncom/facebook/react/animated/DivisionAnimatedNode\n*L\n34#1:57,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/facebook/react/animated/DivisionAnimatedNode;",
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
    iput-object p2, p0, Lcom/facebook/react/animated/DivisionAnimatedNode;->nativeAnimatedNodesManager:Lcom/facebook/react/animated/NativeAnimatedNodesManager;

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
    iput-object v1, p0, Lcom/facebook/react/animated/DivisionAnimatedNode;->inputNodes:[I

    .line 31
    .end local v0    # "input":Lcom/facebook/react/bridge/ReadableArray;
    nop

    .line 17
    return-void
.end method


# virtual methods
.method public prettyPrint()Ljava/lang/String;
    .locals 5

    .line 54
    iget v0, p0, Lcom/facebook/react/animated/DivisionAnimatedNode;->tag:I

    iget-object v1, p0, Lcom/facebook/react/animated/DivisionAnimatedNode;->inputNodes:[I

    invoke-super {p0}, Lcom/facebook/react/animated/ValueAnimatedNode;->prettyPrint()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DivisionAnimatedNode["

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
    .locals 15

    .line 34
    iget-object v0, p0, Lcom/facebook/react/animated/DivisionAnimatedNode;->inputNodes:[I

    .local v0, "$this$forEachIndexed$iv":[I
    const/4 v1, 0x0

    .line 57
    .local v1, "$i$f$forEachIndexed":I
    const/4 v2, 0x0

    .line 58
    .local v2, "index$iv":I
    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_4

    aget v6, v0, v5

    .local v6, "item$iv":I
    add-int/lit8 v7, v2, 0x1

    .local v2, "i":I
    .local v7, "index$iv":I
    move v8, v6

    .local v8, "inputNode":I
    const/4 v9, 0x0

    .line 35
    .local v9, "$i$a$-forEachIndexed-DivisionAnimatedNode$update$1":I
    iget-object v10, p0, Lcom/facebook/react/animated/DivisionAnimatedNode;->nativeAnimatedNodesManager:Lcom/facebook/react/animated/NativeAnimatedNodesManager;

    invoke-virtual {v10, v8}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->getNodeById(I)Lcom/facebook/react/animated/AnimatedNode;

    move-result-object v10

    .line 36
    .local v10, "animatedNode":Lcom/facebook/react/animated/AnimatedNode;
    if-eqz v10, :cond_3

    instance-of v11, v10, Lcom/facebook/react/animated/ValueAnimatedNode;

    if-eqz v11, :cond_3

    .line 37
    move-object v11, v10

    check-cast v11, Lcom/facebook/react/animated/ValueAnimatedNode;

    iget-wide v11, v11, Lcom/facebook/react/animated/ValueAnimatedNode;->nodeValue:D

    .line 38
    .local v11, "v":D
    if-nez v2, :cond_0

    .line 39
    iput-wide v11, p0, Lcom/facebook/react/animated/DivisionAnimatedNode;->nodeValue:D

    goto :goto_2

    .line 40
    :cond_0
    const-wide/16 v13, 0x0

    cmpg-double v13, v11, v13

    if-nez v13, :cond_1

    const/4 v13, 0x1

    goto :goto_1

    :cond_1
    move v13, v4

    :goto_1
    if-nez v13, :cond_2

    .line 44
    iget-wide v13, p0, Lcom/facebook/react/animated/DivisionAnimatedNode;->nodeValue:D

    div-double/2addr v13, v11

    iput-wide v13, p0, Lcom/facebook/react/animated/DivisionAnimatedNode;->nodeValue:D

    .line 50
    .end local v11    # "v":D
    :goto_2
    nop

    .line 58
    .end local v2    # "i":I
    .end local v8    # "inputNode":I
    .end local v9    # "$i$a$-forEachIndexed-DivisionAnimatedNode$update$1":I
    .end local v10    # "animatedNode":Lcom/facebook/react/animated/AnimatedNode;
    nop

    .end local v6    # "item$iv":I
    add-int/lit8 v5, v5, 0x1

    move v2, v7

    goto :goto_0

    .line 41
    .restart local v2    # "i":I
    .restart local v6    # "item$iv":I
    .restart local v8    # "inputNode":I
    .restart local v9    # "$i$a$-forEachIndexed-DivisionAnimatedNode$update$1":I
    .restart local v10    # "animatedNode":Lcom/facebook/react/animated/AnimatedNode;
    .restart local v11    # "v":D
    :cond_2
    new-instance v3, Lcom/facebook/react/bridge/JSApplicationCausedNativeException;

    .line 42
    iget v4, p0, Lcom/facebook/react/animated/DivisionAnimatedNode;->tag:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Detected a division by zero in Animated.divide node with Animated ID "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 41
    invoke-direct {v3, v4}, Lcom/facebook/react/bridge/JSApplicationCausedNativeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 47
    .end local v11    # "v":D
    :cond_3
    new-instance v3, Lcom/facebook/react/bridge/JSApplicationCausedNativeException;

    .line 48
    iget v4, p0, Lcom/facebook/react/animated/DivisionAnimatedNode;->tag:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Illegal node ID set as an input for Animated.divide node with Animated ID "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 47
    invoke-direct {v3, v4}, Lcom/facebook/react/bridge/JSApplicationCausedNativeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 59
    .end local v6    # "item$iv":I
    .end local v7    # "index$iv":I
    .end local v8    # "inputNode":I
    .end local v9    # "$i$a$-forEachIndexed-DivisionAnimatedNode$update$1":I
    .end local v10    # "animatedNode":Lcom/facebook/react/animated/AnimatedNode;
    .local v2, "index$iv":I
    :cond_4
    nop

    .line 51
    .end local v0    # "$this$forEachIndexed$iv":[I
    .end local v1    # "$i$f$forEachIndexed":I
    .end local v2    # "index$iv":I
    return-void
.end method
