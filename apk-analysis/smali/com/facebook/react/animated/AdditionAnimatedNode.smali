.class public final Lcom/facebook/react/animated/AdditionAnimatedNode;
.super Lcom/facebook/react/animated/ValueAnimatedNode;
.source "AdditionAnimatedNode.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAdditionAnimatedNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdditionAnimatedNode.kt\ncom/facebook/react/animated/AdditionAnimatedNode\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,53:1\n12762#2,3:54\n*S KotlinDebug\n*F\n+ 1 AdditionAnimatedNode.kt\ncom/facebook/react/animated/AdditionAnimatedNode\n*L\n37#1:54,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/facebook/react/animated/AdditionAnimatedNode;",
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
    iput-object p2, p0, Lcom/facebook/react/animated/AdditionAnimatedNode;->nativeAnimatedNodesManager:Lcom/facebook/react/animated/NativeAnimatedNodesManager;

    .line 24
    nop

    .line 25
    const-string v0, "input"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v0

    .line 26
    .local v0, "input":Lcom/facebook/react/bridge/ReadableArray;
    nop

    .line 27
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 28
    new-array v1, v1, [I

    goto :goto_1

    .line 30
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

    .line 26
    :goto_1
    iput-object v1, p0, Lcom/facebook/react/animated/AdditionAnimatedNode;->inputNodes:[I

    .line 32
    .end local v0    # "input":Lcom/facebook/react/bridge/ReadableArray;
    nop

    .line 17
    return-void
.end method


# virtual methods
.method public prettyPrint()Ljava/lang/String;
    .locals 10

    .line 51
    iget v0, p0, Lcom/facebook/react/animated/AdditionAnimatedNode;->tag:I

    iget-object v1, p0, Lcom/facebook/react/animated/AdditionAnimatedNode;->inputNodes:[I

    const/16 v8, 0x3f

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/ArraysKt;->joinToString$default([ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-super {p0}, Lcom/facebook/react/animated/ValueAnimatedNode;->prettyPrint()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AdditionAnimatedNode["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]: input nodes: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .locals 20

    .line 35
    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/facebook/react/animated/AdditionAnimatedNode;->nodeValue:D

    .line 36
    iget-wide v3, v0, Lcom/facebook/react/animated/AdditionAnimatedNode;->nodeValue:D

    .line 37
    iget-object v5, v0, Lcom/facebook/react/animated/AdditionAnimatedNode;->inputNodes:[I

    .line 38
    nop

    .line 37
    nop

    .local v1, "initial$iv":D
    .local v5, "$this$fold$iv":[I
    const/4 v6, 0x0

    .line 54
    .local v6, "$i$f$fold":I
    move-wide v7, v1

    .line 55
    .local v7, "accumulator$iv":D
    array-length v9, v5

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v9, :cond_1

    aget v11, v5, v10

    .local v11, "element$iv":I
    move-wide v12, v7

    .local v12, "acc":D
    move v14, v11

    .local v14, "id":I
    const/4 v15, 0x0

    .line 40
    .local v15, "$i$a$-fold-AdditionAnimatedNode$update$1":I
    move-wide/from16 v16, v1

    .end local v1    # "initial$iv":D
    .local v16, "initial$iv":D
    iget-object v1, v0, Lcom/facebook/react/animated/AdditionAnimatedNode;->nativeAnimatedNodesManager:Lcom/facebook/react/animated/NativeAnimatedNodesManager;

    invoke-virtual {v1, v14}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->getNodeById(I)Lcom/facebook/react/animated/AnimatedNode;

    move-result-object v1

    .line 41
    .local v1, "animatedNode":Lcom/facebook/react/animated/AnimatedNode;
    instance-of v2, v1, Lcom/facebook/react/animated/ValueAnimatedNode;

    if-eqz v2, :cond_0

    .line 42
    move-object v2, v1

    check-cast v2, Lcom/facebook/react/animated/ValueAnimatedNode;

    invoke-virtual {v2}, Lcom/facebook/react/animated/ValueAnimatedNode;->getValue()D

    move-result-wide v18

    add-double v18, v12, v18

    .line 41
    nop

    .line 55
    .end local v1    # "animatedNode":Lcom/facebook/react/animated/AnimatedNode;
    .end local v12    # "acc":D
    .end local v14    # "id":I
    .end local v15    # "$i$a$-fold-AdditionAnimatedNode$update$1":I
    move-wide/from16 v7, v18

    .end local v11    # "element$iv":I
    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v1, v16

    goto :goto_0

    .line 44
    .restart local v1    # "animatedNode":Lcom/facebook/react/animated/AnimatedNode;
    .restart local v11    # "element$iv":I
    .restart local v12    # "acc":D
    .restart local v14    # "id":I
    .restart local v15    # "$i$a$-fold-AdditionAnimatedNode$update$1":I
    :cond_0
    new-instance v2, Lcom/facebook/react/bridge/JSApplicationCausedNativeException;

    .line 45
    nop

    .line 44
    const-string v3, "Illegal node ID set as an input for Animated.Add node"

    invoke-direct {v2, v3}, Lcom/facebook/react/bridge/JSApplicationCausedNativeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 56
    .end local v11    # "element$iv":I
    .end local v12    # "acc":D
    .end local v14    # "id":I
    .end local v15    # "$i$a$-fold-AdditionAnimatedNode$update$1":I
    .end local v16    # "initial$iv":D
    .local v1, "initial$iv":D
    :cond_1
    nop

    .line 36
    .end local v1    # "initial$iv":D
    .end local v5    # "$this$fold$iv":[I
    .end local v6    # "$i$f$fold":I
    .end local v7    # "accumulator$iv":D
    add-double/2addr v3, v7

    iput-wide v3, v0, Lcom/facebook/react/animated/AdditionAnimatedNode;->nodeValue:D

    .line 48
    return-void
.end method
