.class public final Lcom/facebook/react/animated/StyleAnimatedNode;
.super Lcom/facebook/react/animated/AnimatedNode;
.source "StyleAnimatedNode.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStyleAnimatedNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StyleAnimatedNode.kt\ncom/facebook/react/animated/StyleAnimatedNode\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,62:1\n1#2:63\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eJ\u0008\u0010\u000f\u001a\u00020\tH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/facebook/react/animated/StyleAnimatedNode;",
        "Lcom/facebook/react/animated/AnimatedNode;",
        "config",
        "Lcom/facebook/react/bridge/ReadableMap;",
        "nativeAnimatedNodesManager",
        "Lcom/facebook/react/animated/NativeAnimatedNodesManager;",
        "(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/animated/NativeAnimatedNodesManager;)V",
        "propMapping",
        "",
        "",
        "",
        "collectViewUpdates",
        "",
        "propsMap",
        "Lcom/facebook/react/bridge/JavaOnlyMap;",
        "prettyPrint",
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
.field private final nativeAnimatedNodesManager:Lcom/facebook/react/animated/NativeAnimatedNodesManager;

.field private final propMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/animated/NativeAnimatedNodesManager;)V
    .locals 7
    .param p1, "config"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p2, "nativeAnimatedNodesManager"    # Lcom/facebook/react/animated/NativeAnimatedNodesManager;

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAnimatedNodesManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Lcom/facebook/react/animated/AnimatedNode;-><init>()V

    .line 18
    iput-object p2, p0, Lcom/facebook/react/animated/StyleAnimatedNode;->nativeAnimatedNodesManager:Lcom/facebook/react/animated/NativeAnimatedNodesManager;

    .line 22
    nop

    .line 23
    const-string/jumbo v0, "style"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v0

    .line 24
    .local v0, "style":Lcom/facebook/react/bridge/ReadableMap;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 25
    .local v1, "iter":Lcom/facebook/react/bridge/ReadableMapKeySetIterator;
    :goto_0
    nop

    .line 26
    invoke-static {}, Lkotlin/collections/MapsKt;->createMapBuilder()Ljava/util/Map;

    move-result-object v2

    move-object v3, v2

    .local v3, "$this$_init__u24lambda_u240":Ljava/util/Map;
    const/4 v4, 0x0

    .line 27
    .local v4, "$i$a$-buildMap-StyleAnimatedNode$1":I
    :goto_1
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 28
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v5

    .line 29
    .local v5, "propKey":Ljava/lang/String;
    invoke-interface {v0, v5}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 31
    .end local v5    # "propKey":Ljava/lang/String;
    :cond_1
    nop

    .line 26
    .end local v3    # "$this$_init__u24lambda_u240":Ljava/util/Map;
    .end local v4    # "$i$a$-buildMap-StyleAnimatedNode$1":I
    invoke-static {v2}, Lkotlin/collections/MapsKt;->build(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 25
    iput-object v2, p0, Lcom/facebook/react/animated/StyleAnimatedNode;->propMapping:Ljava/util/Map;

    .line 32
    .end local v0    # "style":Lcom/facebook/react/bridge/ReadableMap;
    .end local v1    # "iter":Lcom/facebook/react/bridge/ReadableMapKeySetIterator;
    nop

    .line 16
    return-void
.end method


# virtual methods
.method public final collectViewUpdates(Lcom/facebook/react/bridge/JavaOnlyMap;)V
    .locals 7
    .param p1, "propsMap"    # Lcom/facebook/react/bridge/JavaOnlyMap;

    const-string/jumbo v0, "propsMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/facebook/react/animated/StyleAnimatedNode;->propMapping:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 36
    .local v1, "value":I
    iget-object v3, p0, Lcom/facebook/react/animated/StyleAnimatedNode;->nativeAnimatedNodesManager:Lcom/facebook/react/animated/NativeAnimatedNodesManager;

    invoke-virtual {v3, v1}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->getNodeById(I)Lcom/facebook/react/animated/AnimatedNode;

    move-result-object v3

    .line 37
    .local v3, "node":Lcom/facebook/react/animated/AnimatedNode;
    if-eqz v3, :cond_6

    .line 38
    instance-of v4, v3, Lcom/facebook/react/animated/TransformAnimatedNode;

    if-eqz v4, :cond_0

    .line 39
    move-object v4, v3

    check-cast v4, Lcom/facebook/react/animated/TransformAnimatedNode;

    invoke-virtual {v4, p1}, Lcom/facebook/react/animated/TransformAnimatedNode;->collectViewUpdates(Lcom/facebook/react/bridge/JavaOnlyMap;)V

    goto :goto_0

    .line 40
    :cond_0
    instance-of v4, v3, Lcom/facebook/react/animated/ValueAnimatedNode;

    if-eqz v4, :cond_3

    .line 41
    move-object v4, v3

    check-cast v4, Lcom/facebook/react/animated/ValueAnimatedNode;

    invoke-virtual {v4}, Lcom/facebook/react/animated/ValueAnimatedNode;->getAnimatedObject()Ljava/lang/Object;

    move-result-object v4

    .line 42
    .local v4, "animatedObject":Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_1

    .line 43
    move-object v5, v4

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {p1, v2, v5}, Lcom/facebook/react/bridge/JavaOnlyMap;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 44
    :cond_1
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 45
    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v2, v5}, Lcom/facebook/react/bridge/JavaOnlyMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :cond_2
    move-object v5, v3

    check-cast v5, Lcom/facebook/react/animated/ValueAnimatedNode;

    invoke-virtual {v5}, Lcom/facebook/react/animated/ValueAnimatedNode;->getValue()D

    move-result-wide v5

    invoke-virtual {p1, v2, v5, v6}, Lcom/facebook/react/bridge/JavaOnlyMap;->putDouble(Ljava/lang/String;D)V

    .end local v4    # "animatedObject":Ljava/lang/Object;
    goto :goto_0

    .line 49
    :cond_3
    instance-of v4, v3, Lcom/facebook/react/animated/ColorAnimatedNode;

    if-eqz v4, :cond_4

    .line 50
    move-object v4, v3

    check-cast v4, Lcom/facebook/react/animated/ColorAnimatedNode;

    invoke-virtual {v4}, Lcom/facebook/react/animated/ColorAnimatedNode;->getColor()I

    move-result v4

    invoke-virtual {p1, v2, v4}, Lcom/facebook/react/bridge/JavaOnlyMap;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 51
    :cond_4
    instance-of v4, v3, Lcom/facebook/react/animated/ObjectAnimatedNode;

    if-eqz v4, :cond_5

    .line 52
    move-object v4, v3

    check-cast v4, Lcom/facebook/react/animated/ObjectAnimatedNode;

    invoke-virtual {v4, v2, p1}, Lcom/facebook/react/animated/ObjectAnimatedNode;->collectViewUpdates(Ljava/lang/String;Lcom/facebook/react/bridge/JavaOnlyMap;)V

    goto :goto_0

    .line 54
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 55
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported type of node used in property node "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 54
    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_6
    const/4 v0, 0x0

    .line 37
    .local v0, "$i$a$-requireNotNull-StyleAnimatedNode$collectViewUpdates$1":I
    nop

    .end local v0    # "$i$a$-requireNotNull-StyleAnimatedNode$collectViewUpdates$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "Mapped style node does not exist"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    .end local v1    # "value":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "node":Lcom/facebook/react/animated/AnimatedNode;
    :cond_7
    return-void
.end method

.method public prettyPrint()Ljava/lang/String;
    .locals 4

    .line 60
    iget v0, p0, Lcom/facebook/react/animated/StyleAnimatedNode;->tag:I

    iget-object v1, p0, Lcom/facebook/react/animated/StyleAnimatedNode;->propMapping:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StyleAnimatedNode["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] mPropMapping: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
