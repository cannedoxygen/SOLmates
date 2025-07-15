.class public final Lcom/facebook/react/animated/ObjectAnimatedNode;
.super Lcom/facebook/react/animated/AnimatedNode;
.source "ObjectAnimatedNode.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/animated/ObjectAnimatedNode$Companion;,
        Lcom/facebook/react/animated/ObjectAnimatedNode$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObjectAnimatedNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectAnimatedNode.kt\ncom/facebook/react/animated/ObjectAnimatedNode\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,121:1\n1#2:122\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0008J\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0002J\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0003H\u0002J\u0008\u0010\u0012\u001a\u00020\u000cH\u0016R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/facebook/react/animated/ObjectAnimatedNode;",
        "Lcom/facebook/react/animated/AnimatedNode;",
        "config",
        "Lcom/facebook/react/bridge/ReadableMap;",
        "nativeAnimatedNodesManager",
        "Lcom/facebook/react/animated/NativeAnimatedNodesManager;",
        "(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/animated/NativeAnimatedNodesManager;)V",
        "configClone",
        "Lcom/facebook/react/bridge/JavaOnlyMap;",
        "collectViewUpdates",
        "",
        "propKey",
        "",
        "propsMap",
        "collectViewUpdatesHelper",
        "Lcom/facebook/react/bridge/JavaOnlyArray;",
        "source",
        "Lcom/facebook/react/bridge/ReadableArray;",
        "prettyPrint",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/facebook/react/animated/ObjectAnimatedNode$Companion;

.field private static final NODE_TAG_KEY:Ljava/lang/String; = "nodeTag"

.field private static final VALUE_KEY:Ljava/lang/String; = "value"


# instance fields
.field private final configClone:Lcom/facebook/react/bridge/JavaOnlyMap;

.field private final nativeAnimatedNodesManager:Lcom/facebook/react/animated/NativeAnimatedNodesManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/react/animated/ObjectAnimatedNode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/react/animated/ObjectAnimatedNode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/react/animated/ObjectAnimatedNode;->Companion:Lcom/facebook/react/animated/ObjectAnimatedNode$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/animated/NativeAnimatedNodesManager;)V
    .locals 2
    .param p1, "config"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p2, "nativeAnimatedNodesManager"    # Lcom/facebook/react/animated/NativeAnimatedNodesManager;

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAnimatedNodesManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Lcom/facebook/react/animated/AnimatedNode;-><init>()V

    .line 22
    iput-object p2, p0, Lcom/facebook/react/animated/ObjectAnimatedNode;->nativeAnimatedNodesManager:Lcom/facebook/react/animated/NativeAnimatedNodesManager;

    .line 24
    invoke-static {p1}, Lcom/facebook/react/bridge/JavaOnlyMap;->deepClone(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/bridge/JavaOnlyMap;

    move-result-object v0

    const-string v1, "deepClone(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/react/animated/ObjectAnimatedNode;->configClone:Lcom/facebook/react/bridge/JavaOnlyMap;

    .line 20
    return-void
.end method

.method private final collectViewUpdatesHelper(Lcom/facebook/react/bridge/ReadableArray;)Lcom/facebook/react/bridge/JavaOnlyArray;
    .locals 8
    .param p1, "source"    # Lcom/facebook/react/bridge/ReadableArray;

    .line 38
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 39
    :cond_0
    new-instance v0, Lcom/facebook/react/bridge/JavaOnlyArray;

    invoke-direct {v0}, Lcom/facebook/react/bridge/JavaOnlyArray;-><init>()V

    .line 40
    .local v0, "result":Lcom/facebook/react/bridge/JavaOnlyArray;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_7

    .line 41
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableArray;->getType(I)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v3

    sget-object v4, Lcom/facebook/react/animated/ObjectAnimatedNode$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Lcom/facebook/react/bridge/ReadableType;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    .line 67
    :pswitch_0
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableArray;->getArray(I)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/facebook/react/animated/ObjectAnimatedNode;->collectViewUpdatesHelper(Lcom/facebook/react/bridge/ReadableArray;)Lcom/facebook/react/bridge/JavaOnlyArray;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/bridge/ReadableArray;

    invoke-virtual {v0, v3}, Lcom/facebook/react/bridge/JavaOnlyArray;->pushArray(Lcom/facebook/react/bridge/ReadableArray;)V

    goto/16 :goto_1

    .line 47
    :pswitch_1
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v3

    .line 48
    .local v3, "map":Lcom/facebook/react/bridge/ReadableMap;
    const-string v4, "nodeTag"

    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v5

    sget-object v6, Lcom/facebook/react/bridge/ReadableType;->Number:Lcom/facebook/react/bridge/ReadableType;

    if-ne v5, v6, :cond_5

    .line 49
    iget-object v5, p0, Lcom/facebook/react/animated/ObjectAnimatedNode;->nativeAnimatedNodesManager:Lcom/facebook/react/animated/NativeAnimatedNodesManager;

    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->getNodeById(I)Lcom/facebook/react/animated/AnimatedNode;

    move-result-object v4

    .line 50
    .local v4, "node":Lcom/facebook/react/animated/AnimatedNode;
    if-eqz v4, :cond_4

    .line 51
    instance-of v5, v4, Lcom/facebook/react/animated/ValueAnimatedNode;

    if-eqz v5, :cond_3

    .line 52
    move-object v5, v4

    check-cast v5, Lcom/facebook/react/animated/ValueAnimatedNode;

    invoke-virtual {v5}, Lcom/facebook/react/animated/ValueAnimatedNode;->getAnimatedObject()Ljava/lang/Object;

    move-result-object v5

    .line 53
    .local v5, "animatedObject":Ljava/lang/Object;
    instance-of v6, v5, Ljava/lang/Integer;

    if-eqz v6, :cond_1

    .line 54
    move-object v6, v5

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/facebook/react/bridge/JavaOnlyArray;->pushInt(I)V

    goto :goto_1

    .line 55
    :cond_1
    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 56
    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/facebook/react/bridge/JavaOnlyArray;->pushString(Ljava/lang/String;)V

    goto :goto_1

    .line 58
    :cond_2
    move-object v6, v4

    check-cast v6, Lcom/facebook/react/animated/ValueAnimatedNode;

    invoke-virtual {v6}, Lcom/facebook/react/animated/ValueAnimatedNode;->getValue()D

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/facebook/react/bridge/JavaOnlyArray;->pushDouble(D)V

    .end local v5    # "animatedObject":Ljava/lang/Object;
    goto :goto_1

    .line 60
    :cond_3
    instance-of v5, v4, Lcom/facebook/react/animated/ColorAnimatedNode;

    if-eqz v5, :cond_6

    .line 61
    move-object v5, v4

    check-cast v5, Lcom/facebook/react/animated/ColorAnimatedNode;

    invoke-virtual {v5}, Lcom/facebook/react/animated/ColorAnimatedNode;->getColor()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/facebook/react/bridge/JavaOnlyArray;->pushInt(I)V

    .end local v4    # "node":Lcom/facebook/react/animated/AnimatedNode;
    goto :goto_1

    .line 122
    .restart local v4    # "node":Lcom/facebook/react/animated/AnimatedNode;
    :cond_4
    const/4 v2, 0x0

    .line 50
    .local v2, "$i$a$-requireNotNull-ObjectAnimatedNode$collectViewUpdatesHelper$1":I
    nop

    .end local v2    # "$i$a$-requireNotNull-ObjectAnimatedNode$collectViewUpdatesHelper$1":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "Mapped value node does not exist"

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 64
    .end local v4    # "node":Lcom/facebook/react/animated/AnimatedNode;
    :cond_5
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/facebook/react/animated/ObjectAnimatedNode;->collectViewUpdatesHelper(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/bridge/JavaOnlyMap;

    move-result-object v4

    check-cast v4, Lcom/facebook/react/bridge/ReadableMap;

    invoke-virtual {v0, v4}, Lcom/facebook/react/bridge/JavaOnlyArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    .end local v3    # "map":Lcom/facebook/react/bridge/ReadableMap;
    goto :goto_1

    .line 45
    :pswitch_2
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/facebook/react/bridge/JavaOnlyArray;->pushString(Ljava/lang/String;)V

    goto :goto_1

    .line 44
    :pswitch_3
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/facebook/react/bridge/JavaOnlyArray;->pushDouble(D)V

    goto :goto_1

    .line 43
    :pswitch_4
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableArray;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/facebook/react/bridge/JavaOnlyArray;->pushBoolean(Z)V

    goto :goto_1

    .line 42
    :pswitch_5
    invoke-virtual {v0}, Lcom/facebook/react/bridge/JavaOnlyArray;->pushNull()V

    .line 40
    :cond_6
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 70
    .end local v1    # "i":I
    :cond_7
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final collectViewUpdatesHelper(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/bridge/JavaOnlyMap;
    .locals 8
    .param p1, "source"    # Lcom/facebook/react/bridge/ReadableMap;

    .line 74
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 75
    :cond_0
    new-instance v0, Lcom/facebook/react/bridge/JavaOnlyMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/JavaOnlyMap;-><init>()V

    .line 76
    .local v0, "result":Lcom/facebook/react/bridge/JavaOnlyMap;
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v1

    .line 77
    .local v1, "iter":Lcom/facebook/react/bridge/ReadableMapKeySetIterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 78
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "propKey":Ljava/lang/String;
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v3

    sget-object v4, Lcom/facebook/react/animated/ObjectAnimatedNode$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Lcom/facebook/react/bridge/ReadableType;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    .line 108
    :pswitch_0
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/facebook/react/animated/ObjectAnimatedNode;->collectViewUpdatesHelper(Lcom/facebook/react/bridge/ReadableArray;)Lcom/facebook/react/bridge/JavaOnlyArray;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/bridge/ReadableArray;

    invoke-virtual {v0, v2, v3}, Lcom/facebook/react/bridge/JavaOnlyMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    goto/16 :goto_1

    .line 85
    :pswitch_1
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v3

    .line 86
    .local v3, "map":Lcom/facebook/react/bridge/ReadableMap;
    if-eqz v3, :cond_6

    .line 87
    const-string v4, "nodeTag"

    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 88
    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v5

    sget-object v6, Lcom/facebook/react/bridge/ReadableType;->Number:Lcom/facebook/react/bridge/ReadableType;

    if-ne v5, v6, :cond_6

    .line 89
    iget-object v5, p0, Lcom/facebook/react/animated/ObjectAnimatedNode;->nativeAnimatedNodesManager:Lcom/facebook/react/animated/NativeAnimatedNodesManager;

    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->getNodeById(I)Lcom/facebook/react/animated/AnimatedNode;

    move-result-object v4

    .line 90
    .local v4, "node":Lcom/facebook/react/animated/AnimatedNode;
    if-eqz v4, :cond_5

    .line 91
    instance-of v5, v4, Lcom/facebook/react/animated/ValueAnimatedNode;

    if-eqz v5, :cond_4

    .line 92
    move-object v5, v4

    check-cast v5, Lcom/facebook/react/animated/ValueAnimatedNode;

    invoke-virtual {v5}, Lcom/facebook/react/animated/ValueAnimatedNode;->getAnimatedObject()Ljava/lang/Object;

    move-result-object v5

    .line 93
    .local v5, "animatedObject":Ljava/lang/Object;
    instance-of v6, v5, Ljava/lang/Integer;

    if-eqz v6, :cond_2

    .line 94
    move-object v6, v5

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-virtual {v0, v2, v6}, Lcom/facebook/react/bridge/JavaOnlyMap;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 95
    :cond_2
    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 96
    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v2, v6}, Lcom/facebook/react/bridge/JavaOnlyMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_3
    move-object v6, v4

    check-cast v6, Lcom/facebook/react/animated/ValueAnimatedNode;

    invoke-virtual {v6}, Lcom/facebook/react/animated/ValueAnimatedNode;->getValue()D

    move-result-wide v6

    invoke-virtual {v0, v2, v6, v7}, Lcom/facebook/react/bridge/JavaOnlyMap;->putDouble(Ljava/lang/String;D)V

    .end local v5    # "animatedObject":Ljava/lang/Object;
    goto :goto_0

    .line 100
    :cond_4
    instance-of v5, v4, Lcom/facebook/react/animated/ColorAnimatedNode;

    if-eqz v5, :cond_1

    .line 101
    move-object v5, v4

    check-cast v5, Lcom/facebook/react/animated/ColorAnimatedNode;

    invoke-virtual {v5}, Lcom/facebook/react/animated/ColorAnimatedNode;->getColor()I

    move-result v5

    invoke-virtual {v0, v2, v5}, Lcom/facebook/react/bridge/JavaOnlyMap;->putInt(Ljava/lang/String;I)V

    .end local v4    # "node":Lcom/facebook/react/animated/AnimatedNode;
    goto/16 :goto_0

    .line 122
    .restart local v4    # "node":Lcom/facebook/react/animated/AnimatedNode;
    :cond_5
    const/4 v5, 0x0

    .line 90
    .local v5, "$i$a$-requireNotNull-ObjectAnimatedNode$collectViewUpdatesHelper$2":I
    nop

    .end local v5    # "$i$a$-requireNotNull-ObjectAnimatedNode$collectViewUpdatesHelper$2":I
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Mapped value node does not exist"

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 104
    .end local v4    # "node":Lcom/facebook/react/animated/AnimatedNode;
    :cond_6
    invoke-direct {p0, v3}, Lcom/facebook/react/animated/ObjectAnimatedNode;->collectViewUpdatesHelper(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/bridge/JavaOnlyMap;

    move-result-object v4

    check-cast v4, Lcom/facebook/react/bridge/ReadableMap;

    invoke-virtual {v0, v2, v4}, Lcom/facebook/react/bridge/JavaOnlyMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .end local v3    # "map":Lcom/facebook/react/bridge/ReadableMap;
    goto/16 :goto_0

    .line 83
    :pswitch_2
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/facebook/react/bridge/JavaOnlyMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 82
    :pswitch_3
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/facebook/react/bridge/JavaOnlyMap;->putDouble(Ljava/lang/String;D)V

    goto/16 :goto_0

    .line 81
    :pswitch_4
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/facebook/react/bridge/JavaOnlyMap;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 80
    :pswitch_5
    invoke-virtual {v0, v2}, Lcom/facebook/react/bridge/JavaOnlyMap;->putNull(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 108
    .end local v2    # "propKey":Ljava/lang/String;
    :goto_1
    goto/16 :goto_0

    .line 111
    :cond_7
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final collectViewUpdates(Ljava/lang/String;Lcom/facebook/react/bridge/JavaOnlyMap;)V
    .locals 3
    .param p1, "propKey"    # Ljava/lang/String;
    .param p2, "propsMap"    # Lcom/facebook/react/bridge/JavaOnlyMap;

    const-string/jumbo v0, "propKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "propsMap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/facebook/react/animated/ObjectAnimatedNode;->configClone:Lcom/facebook/react/bridge/JavaOnlyMap;

    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/JavaOnlyMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v0

    const-string v2, "getType(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .local v0, "valueType":Lcom/facebook/react/bridge/ReadableType;
    sget-object v2, Lcom/facebook/react/bridge/ReadableType;->Map:Lcom/facebook/react/bridge/ReadableType;

    if-ne v0, v2, :cond_0

    .line 29
    iget-object v2, p0, Lcom/facebook/react/animated/ObjectAnimatedNode;->configClone:Lcom/facebook/react/bridge/JavaOnlyMap;

    invoke-virtual {v2, v1}, Lcom/facebook/react/bridge/JavaOnlyMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/react/animated/ObjectAnimatedNode;->collectViewUpdatesHelper(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/bridge/JavaOnlyMap;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/ReadableMap;

    invoke-virtual {p2, p1, v1}, Lcom/facebook/react/bridge/JavaOnlyMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    .line 30
    :cond_0
    sget-object v2, Lcom/facebook/react/bridge/ReadableType;->Array:Lcom/facebook/react/bridge/ReadableType;

    if-ne v0, v2, :cond_1

    .line 31
    iget-object v2, p0, Lcom/facebook/react/animated/ObjectAnimatedNode;->configClone:Lcom/facebook/react/bridge/JavaOnlyMap;

    invoke-virtual {v2, v1}, Lcom/facebook/react/bridge/JavaOnlyMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/react/animated/ObjectAnimatedNode;->collectViewUpdatesHelper(Lcom/facebook/react/bridge/ReadableArray;)Lcom/facebook/react/bridge/JavaOnlyArray;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/ReadableArray;

    invoke-virtual {p2, p1, v1}, Lcom/facebook/react/bridge/JavaOnlyMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid value type for ObjectAnimatedNode"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public prettyPrint()Ljava/lang/String;
    .locals 4

    .line 114
    iget v0, p0, Lcom/facebook/react/animated/ObjectAnimatedNode;->tag:I

    iget-object v1, p0, Lcom/facebook/react/animated/ObjectAnimatedNode;->configClone:Lcom/facebook/react/bridge/JavaOnlyMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ObjectAnimatedNode["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]: mConfig: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
