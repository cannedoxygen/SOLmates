.class public final Lcom/facebook/react/animated/TransformAnimatedNode;
.super Lcom/facebook/react/animated/AnimatedNode;
.source "TransformAnimatedNode.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/animated/TransformAnimatedNode$AnimatedTransformConfig;,
        Lcom/facebook/react/animated/TransformAnimatedNode$StaticTransformConfig;,
        Lcom/facebook/react/animated/TransformAnimatedNode$TransformConfig;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001:\u0003\u0010\u0011\u0012B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rJ\u0008\u0010\u000e\u001a\u00020\u000fH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0007\u001a\u000c\u0012\u0008\u0012\u00060\tR\u00020\u00000\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/facebook/react/animated/TransformAnimatedNode;",
        "Lcom/facebook/react/animated/AnimatedNode;",
        "config",
        "Lcom/facebook/react/bridge/ReadableMap;",
        "nativeAnimatedNodesManager",
        "Lcom/facebook/react/animated/NativeAnimatedNodesManager;",
        "(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/animated/NativeAnimatedNodesManager;)V",
        "transformConfigs",
        "",
        "Lcom/facebook/react/animated/TransformAnimatedNode$TransformConfig;",
        "collectViewUpdates",
        "",
        "propsMap",
        "Lcom/facebook/react/bridge/JavaOnlyMap;",
        "prettyPrint",
        "",
        "AnimatedTransformConfig",
        "StaticTransformConfig",
        "TransformConfig",
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

.field private final transformConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/react/animated/TransformAnimatedNode$TransformConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/animated/NativeAnimatedNodesManager;)V
    .locals 12
    .param p1, "config"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p2, "nativeAnimatedNodesManager"    # Lcom/facebook/react/animated/NativeAnimatedNodesManager;

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAnimatedNodesManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Lcom/facebook/react/animated/AnimatedNode;-><init>()V

    .line 20
    iput-object p2, p0, Lcom/facebook/react/animated/TransformAnimatedNode;->nativeAnimatedNodesManager:Lcom/facebook/react/animated/NativeAnimatedNodesManager;

    .line 24
    nop

    .line 25
    const-string/jumbo v0, "transforms"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v0

    .line 26
    .local v0, "transforms":Lcom/facebook/react/bridge/ReadableArray;
    nop

    .line 27
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    goto :goto_2

    .line 29
    :cond_0
    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    move v4, v3

    .local v4, "i":I
    const/4 v5, 0x0

    .line 30
    .local v5, "$i$a$-MutableList-TransformAnimatedNode$1":I
    invoke-interface {v0, v4}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v6

    .line 31
    .local v6, "transformConfigMap":Lcom/facebook/react/bridge/ReadableMap;
    const-string/jumbo v7, "property"

    invoke-interface {v6, v7}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 32
    .local v7, "property":Ljava/lang/String;
    const-string/jumbo v8, "type"

    invoke-interface {v6, v8}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 33
    .local v8, "type":Ljava/lang/String;
    const-string v9, "animated"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 34
    new-instance v9, Lcom/facebook/react/animated/TransformAnimatedNode$AnimatedTransformConfig;

    invoke-direct {v9, p0}, Lcom/facebook/react/animated/TransformAnimatedNode$AnimatedTransformConfig;-><init>(Lcom/facebook/react/animated/TransformAnimatedNode;)V

    .line 35
    .local v9, "transformConfig":Lcom/facebook/react/animated/TransformAnimatedNode$AnimatedTransformConfig;
    invoke-virtual {v9, v7}, Lcom/facebook/react/animated/TransformAnimatedNode$AnimatedTransformConfig;->setProperty(Ljava/lang/String;)V

    .line 36
    const-string v10, "nodeTag"

    invoke-interface {v6, v10}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/facebook/react/animated/TransformAnimatedNode$AnimatedTransformConfig;->setNodeTag(I)V

    .line 37
    nop

    .end local v9    # "transformConfig":Lcom/facebook/react/animated/TransformAnimatedNode$AnimatedTransformConfig;
    check-cast v9, Lcom/facebook/react/animated/TransformAnimatedNode$TransformConfig;

    goto :goto_1

    .line 39
    :cond_1
    new-instance v9, Lcom/facebook/react/animated/TransformAnimatedNode$StaticTransformConfig;

    invoke-direct {v9, p0}, Lcom/facebook/react/animated/TransformAnimatedNode$StaticTransformConfig;-><init>(Lcom/facebook/react/animated/TransformAnimatedNode;)V

    .line 40
    .local v9, "transformConfig":Lcom/facebook/react/animated/TransformAnimatedNode$StaticTransformConfig;
    invoke-virtual {v9, v7}, Lcom/facebook/react/animated/TransformAnimatedNode$StaticTransformConfig;->setProperty(Ljava/lang/String;)V

    .line 41
    const-string/jumbo v10, "value"

    invoke-interface {v6, v10}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/facebook/react/animated/TransformAnimatedNode$StaticTransformConfig;->setValue(D)V

    .line 42
    nop

    .end local v9    # "transformConfig":Lcom/facebook/react/animated/TransformAnimatedNode$StaticTransformConfig;
    check-cast v9, Lcom/facebook/react/animated/TransformAnimatedNode$TransformConfig;

    .line 33
    :goto_1
    nop

    .line 29
    .end local v4    # "i":I
    .end local v5    # "$i$a$-MutableList-TransformAnimatedNode$1":I
    .end local v6    # "transformConfigMap":Lcom/facebook/react/bridge/ReadableMap;
    .end local v7    # "property":Ljava/lang/String;
    .end local v8    # "type":Ljava/lang/String;
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move-object v1, v2

    check-cast v1, Ljava/util/List;

    .line 26
    :goto_2
    iput-object v1, p0, Lcom/facebook/react/animated/TransformAnimatedNode;->transformConfigs:Ljava/util/List;

    .line 45
    .end local v0    # "transforms":Lcom/facebook/react/bridge/ReadableArray;
    nop

    .line 18
    return-void
.end method


# virtual methods
.method public final collectViewUpdates(Lcom/facebook/react/bridge/JavaOnlyMap;)V
    .locals 10
    .param p1, "propsMap"    # Lcom/facebook/react/bridge/JavaOnlyMap;

    const-string/jumbo v0, "propsMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/facebook/react/animated/TransformAnimatedNode;->transformConfigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    move v3, v2

    .local v3, "i":I
    const/4 v4, 0x0

    .line 50
    .local v4, "$i$a$-MutableList-TransformAnimatedNode$collectViewUpdates$transforms$1":I
    iget-object v5, p0, Lcom/facebook/react/animated/TransformAnimatedNode;->transformConfigs:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/react/animated/TransformAnimatedNode$TransformConfig;

    .line 52
    .local v5, "transformConfig":Lcom/facebook/react/animated/TransformAnimatedNode$TransformConfig;
    instance-of v6, v5, Lcom/facebook/react/animated/TransformAnimatedNode$AnimatedTransformConfig;

    if-eqz v6, :cond_2

    .line 53
    move-object v6, v5

    check-cast v6, Lcom/facebook/react/animated/TransformAnimatedNode$AnimatedTransformConfig;

    invoke-virtual {v6}, Lcom/facebook/react/animated/TransformAnimatedNode$AnimatedTransformConfig;->getNodeTag()I

    move-result v6

    .line 54
    .local v6, "nodeTag":I
    iget-object v7, p0, Lcom/facebook/react/animated/TransformAnimatedNode;->nativeAnimatedNodesManager:Lcom/facebook/react/animated/NativeAnimatedNodesManager;

    invoke-virtual {v7, v6}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->getNodeById(I)Lcom/facebook/react/animated/AnimatedNode;

    move-result-object v7

    .line 55
    .local v7, "node":Lcom/facebook/react/animated/AnimatedNode;
    if-eqz v7, :cond_1

    .line 57
    instance-of v8, v7, Lcom/facebook/react/animated/ValueAnimatedNode;

    if-eqz v8, :cond_0

    .line 58
    move-object v8, v7

    check-cast v8, Lcom/facebook/react/animated/ValueAnimatedNode;

    invoke-virtual {v8}, Lcom/facebook/react/animated/ValueAnimatedNode;->getValue()D

    move-result-wide v8

    goto :goto_1

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 63
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported type of node used as a transform child node "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mapped style node does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    .end local v6    # "nodeTag":I
    .end local v7    # "node":Lcom/facebook/react/animated/AnimatedNode;
    :cond_2
    const-string/jumbo v6, "null cannot be cast to non-null type com.facebook.react.animated.TransformAnimatedNode.StaticTransformConfig"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v5

    check-cast v6, Lcom/facebook/react/animated/TransformAnimatedNode$StaticTransformConfig;

    invoke-virtual {v6}, Lcom/facebook/react/animated/TransformAnimatedNode$StaticTransformConfig;->getValue()D

    move-result-wide v8

    .line 52
    :goto_1
    nop

    .line 51
    move-wide v6, v8

    .line 68
    .local v6, "transform":D
    invoke-virtual {v5}, Lcom/facebook/react/animated/TransformAnimatedNode$TransformConfig;->getProperty()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/facebook/react/bridge/JavaOnlyMap;->of([Ljava/lang/Object;)Lcom/facebook/react/bridge/JavaOnlyMap;

    move-result-object v8

    const-string/jumbo v9, "of(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .end local v3    # "i":I
    .end local v4    # "$i$a$-MutableList-TransformAnimatedNode$collectViewUpdates$transforms$1":I
    .end local v5    # "transformConfig":Lcom/facebook/react/animated/TransformAnimatedNode$TransformConfig;
    .end local v6    # "transform":D
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    check-cast v1, Ljava/util/List;

    .line 48
    move-object v0, v1

    .line 70
    .local v0, "transforms":Ljava/util/List;
    invoke-static {v0}, Lcom/facebook/react/bridge/JavaOnlyArray;->from(Ljava/util/List;)Lcom/facebook/react/bridge/JavaOnlyArray;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/ReadableArray;

    const-string/jumbo v2, "transform"

    invoke-virtual {p1, v2, v1}, Lcom/facebook/react/bridge/JavaOnlyMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 71
    return-void
.end method

.method public prettyPrint()Ljava/lang/String;
    .locals 4

    .line 74
    iget v0, p0, Lcom/facebook/react/animated/TransformAnimatedNode;->tag:I

    iget-object v1, p0, Lcom/facebook/react/animated/TransformAnimatedNode;->transformConfigs:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TransformAnimatedNode["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]: transformConfigs: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
