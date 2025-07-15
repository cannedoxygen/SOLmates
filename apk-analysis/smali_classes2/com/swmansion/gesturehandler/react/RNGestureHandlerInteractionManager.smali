.class public final Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;
.super Ljava/lang/Object;
.source "RNGestureHandlerInteractionManager.kt"

# interfaces
.implements Lcom/swmansion/gesturehandler/core/GestureHandlerInteractionController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRNGestureHandlerInteractionManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RNGestureHandlerInteractionManager.kt\ncom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,79:1\n12504#2,2:80\n12504#2,2:82\n12504#2,2:84\n*S KotlinDebug\n*F\n+ 1 RNGestureHandlerInteractionManager.kt\ncom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager\n*L\n45#1:80,2\n50#1:82,2\n66#1:84,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0015\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0008\u001a\u00020\t2\n\u0010\n\u001a\u0006\u0012\u0002\u0008\u00030\u000b2\u0006\u0010\u000c\u001a\u00020\rJ\u0018\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u000e\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u0013J\u0006\u0010\u0014\u001a\u00020\tJ \u0010\u0015\u001a\u00020\u00162\n\u0010\n\u001a\u0006\u0012\u0002\u0008\u00030\u000b2\n\u0010\u0017\u001a\u0006\u0012\u0002\u0008\u00030\u000bH\u0016J \u0010\u0018\u001a\u00020\u00162\n\u0010\n\u001a\u0006\u0012\u0002\u0008\u00030\u000b2\n\u0010\u0017\u001a\u0006\u0012\u0002\u0008\u00030\u000bH\u0016J \u0010\u0019\u001a\u00020\u00162\n\u0010\n\u001a\u0006\u0012\u0002\u0008\u00030\u000b2\n\u0010\u0017\u001a\u0006\u0012\u0002\u0008\u00030\u000bH\u0016J \u0010\u001a\u001a\u00020\u00162\n\u0010\n\u001a\u0006\u0012\u0002\u0008\u00030\u000b2\n\u0010\u0017\u001a\u0006\u0012\u0002\u0008\u00030\u000bH\u0016R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;",
        "Lcom/swmansion/gesturehandler/core/GestureHandlerInteractionController;",
        "()V",
        "blockingRelations",
        "Landroid/util/SparseArray;",
        "",
        "simultaneousRelations",
        "waitForRelations",
        "configureInteractions",
        "",
        "handler",
        "Lcom/swmansion/gesturehandler/core/GestureHandler;",
        "config",
        "Lcom/facebook/react/bridge/ReadableMap;",
        "convertHandlerTagsArray",
        "key",
        "",
        "dropRelationsForHandlerWithTag",
        "handlerTag",
        "",
        "reset",
        "shouldHandlerBeCancelledBy",
        "",
        "otherHandler",
        "shouldRecognizeSimultaneously",
        "shouldRequireHandlerToWaitForFailure",
        "shouldWaitForHandlerFailure",
        "Companion",
        "react-native-gesture-handler_debug"
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
.field public static final Companion:Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager$Companion;

.field private static final KEY_BLOCKS_HANDLERS:Ljava/lang/String; = "blocksHandlers"

.field private static final KEY_SIMULTANEOUS_HANDLERS:Ljava/lang/String; = "simultaneousHandlers"

.field private static final KEY_WAIT_FOR:Ljava/lang/String; = "waitFor"


# instance fields
.field private final blockingRelations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field private final simultaneousRelations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field private final waitForRelations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;->Companion:Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;->waitForRelations:Landroid/util/SparseArray;

    .line 11
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;->simultaneousRelations:Landroid/util/SparseArray;

    .line 12
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;->blockingRelations:Landroid/util/SparseArray;

    .line 9
    return-void
.end method

.method private final convertHandlerTagsArray(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)[I
    .locals 7
    .param p1, "config"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p2, "key"    # Ljava/lang/String;

    .line 20
    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 21
    .local v0, "array":Lcom/facebook/react/bridge/ReadableArray;
    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v1

    new-array v1, v1, [I

    move-object v2, v1

    .local v2, "it":[I
    const/4 v3, 0x0

    .line 22
    .local v3, "$i$a$-also-RNGestureHandlerInteractionManager$convertHandlerTagsArray$1":I
    const/4 v4, 0x0

    .local v4, "i":I
    array-length v5, v2

    :goto_0
    if-ge v4, v5, :cond_0

    .line 23
    invoke-interface {v0, v4}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v6

    aput v6, v2, v4

    .line 22
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 25
    .end local v4    # "i":I
    :cond_0
    nop

    .line 21
    .end local v2    # "it":[I
    .end local v3    # "$i$a$-also-RNGestureHandlerInteractionManager$convertHandlerTagsArray$1":I
    return-object v1
.end method


# virtual methods
.method public final configureInteractions(Lcom/swmansion/gesturehandler/core/GestureHandler;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 3
    .param p1, "handler"    # Lcom/swmansion/gesturehandler/core/GestureHandler;
    .param p2, "config"    # Lcom/facebook/react/bridge/ReadableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/gesturehandler/core/GestureHandler<",
            "*>;",
            "Lcom/facebook/react/bridge/ReadableMap;",
            ")V"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/GestureHandlerInteractionController;

    invoke-virtual {p1, v0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->setInteractionController(Lcom/swmansion/gesturehandler/core/GestureHandlerInteractionController;)Lcom/swmansion/gesturehandler/core/GestureHandler;

    .line 30
    const-string v0, "waitFor"

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    invoke-direct {p0, p2, v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;->convertHandlerTagsArray(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)[I

    move-result-object v0

    .line 32
    .local v0, "tags":[I
    iget-object v1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;->waitForRelations:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->getTag()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34
    .end local v0    # "tags":[I
    :cond_0
    const-string v0, "simultaneousHandlers"

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    invoke-direct {p0, p2, v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;->convertHandlerTagsArray(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)[I

    move-result-object v0

    .line 36
    .restart local v0    # "tags":[I
    iget-object v1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;->simultaneousRelations:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->getTag()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 38
    .end local v0    # "tags":[I
    :cond_1
    const-string v0, "blocksHandlers"

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 39
    invoke-direct {p0, p2, v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;->convertHandlerTagsArray(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)[I

    move-result-object v0

    .line 40
    .restart local v0    # "tags":[I
    iget-object v1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;->blockingRelations:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->getTag()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 42
    .end local v0    # "tags":[I
    :cond_2
    return-void
.end method

.method public final dropRelationsForHandlerWithTag(I)V
    .locals 1
    .param p1, "handlerTag"    # I

    .line 15
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;->waitForRelations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 16
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;->simultaneousRelations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 17
    return-void
.end method

.method public final reset()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;->waitForRelations:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 70
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;->simultaneousRelations:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 71
    return-void
.end method

.method public shouldHandlerBeCancelledBy(Lcom/swmansion/gesturehandler/core/GestureHandler;Lcom/swmansion/gesturehandler/core/GestureHandler;)Z
    .locals 1
    .param p1, "handler"    # Lcom/swmansion/gesturehandler/core/GestureHandler;
    .param p2, "otherHandler"    # Lcom/swmansion/gesturehandler/core/GestureHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/gesturehandler/core/GestureHandler<",
            "*>;",
            "Lcom/swmansion/gesturehandler/core/GestureHandler<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otherHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    instance-of v0, p2, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;

    if-eqz v0, :cond_0

    .line 54
    move-object v0, p2

    check-cast v0, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;

    invoke-virtual {v0}, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler;->getDisallowInterruption()Z

    move-result v0

    return v0

    .line 57
    :cond_0
    instance-of v0, p2, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$RootViewGestureHandler;

    if-eqz v0, :cond_1

    .line 58
    const/4 v0, 0x1

    return v0

    .line 61
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public shouldRecognizeSimultaneously(Lcom/swmansion/gesturehandler/core/GestureHandler;Lcom/swmansion/gesturehandler/core/GestureHandler;)Z
    .locals 10
    .param p1, "handler"    # Lcom/swmansion/gesturehandler/core/GestureHandler;
    .param p2, "otherHandler"    # Lcom/swmansion/gesturehandler/core/GestureHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/gesturehandler/core/GestureHandler<",
            "*>;",
            "Lcom/swmansion/gesturehandler/core/GestureHandler<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otherHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;->simultaneousRelations:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->getTag()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .local v0, "$this$any$iv":[I
    const/4 v2, 0x0

    .line 84
    .local v2, "$i$f$any":I
    array-length v3, v0

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_2

    aget v5, v0, v4

    .local v5, "element$iv":I
    move v6, v5

    .local v6, "tag":I
    const/4 v7, 0x0

    .line 66
    .local v7, "$i$a$-any-RNGestureHandlerInteractionManager$shouldRecognizeSimultaneously$1":I
    invoke-virtual {p2}, Lcom/swmansion/gesturehandler/core/GestureHandler;->getTag()I

    move-result v8

    const/4 v9, 0x1

    if-ne v6, v8, :cond_0

    move v6, v9

    goto :goto_1

    :cond_0
    move v6, v1

    .line 84
    .end local v6    # "tag":I
    .end local v7    # "$i$a$-any-RNGestureHandlerInteractionManager$shouldRecognizeSimultaneously$1":I
    :goto_1
    if-eqz v6, :cond_1

    move v1, v9

    goto :goto_2

    .end local v5    # "element$iv":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 85
    :cond_2
    nop

    .line 66
    .end local v0    # "$this$any$iv":[I
    .end local v2    # "$i$f$any":I
    :cond_3
    :goto_2
    return v1
.end method

.method public shouldRequireHandlerToWaitForFailure(Lcom/swmansion/gesturehandler/core/GestureHandler;Lcom/swmansion/gesturehandler/core/GestureHandler;)Z
    .locals 10
    .param p1, "handler"    # Lcom/swmansion/gesturehandler/core/GestureHandler;
    .param p2, "otherHandler"    # Lcom/swmansion/gesturehandler/core/GestureHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/gesturehandler/core/GestureHandler<",
            "*>;",
            "Lcom/swmansion/gesturehandler/core/GestureHandler<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otherHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;->blockingRelations:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->getTag()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .local v0, "$this$any$iv":[I
    const/4 v2, 0x0

    .line 82
    .local v2, "$i$f$any":I
    array-length v3, v0

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_2

    aget v5, v0, v4

    .local v5, "element$iv":I
    move v6, v5

    .local v6, "tag":I
    const/4 v7, 0x0

    .line 50
    .local v7, "$i$a$-any-RNGestureHandlerInteractionManager$shouldRequireHandlerToWaitForFailure$1":I
    invoke-virtual {p2}, Lcom/swmansion/gesturehandler/core/GestureHandler;->getTag()I

    move-result v8

    const/4 v9, 0x1

    if-ne v6, v8, :cond_0

    move v6, v9

    goto :goto_1

    :cond_0
    move v6, v1

    .line 82
    .end local v6    # "tag":I
    .end local v7    # "$i$a$-any-RNGestureHandlerInteractionManager$shouldRequireHandlerToWaitForFailure$1":I
    :goto_1
    if-eqz v6, :cond_1

    move v1, v9

    goto :goto_2

    .end local v5    # "element$iv":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 83
    :cond_2
    nop

    .line 50
    .end local v0    # "$this$any$iv":[I
    .end local v2    # "$i$f$any":I
    :cond_3
    :goto_2
    return v1
.end method

.method public shouldWaitForHandlerFailure(Lcom/swmansion/gesturehandler/core/GestureHandler;Lcom/swmansion/gesturehandler/core/GestureHandler;)Z
    .locals 10
    .param p1, "handler"    # Lcom/swmansion/gesturehandler/core/GestureHandler;
    .param p2, "otherHandler"    # Lcom/swmansion/gesturehandler/core/GestureHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/gesturehandler/core/GestureHandler<",
            "*>;",
            "Lcom/swmansion/gesturehandler/core/GestureHandler<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otherHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;->waitForRelations:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->getTag()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .local v0, "$this$any$iv":[I
    const/4 v2, 0x0

    .line 80
    .local v2, "$i$f$any":I
    array-length v3, v0

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_2

    aget v5, v0, v4

    .local v5, "element$iv":I
    move v6, v5

    .local v6, "tag":I
    const/4 v7, 0x0

    .line 45
    .local v7, "$i$a$-any-RNGestureHandlerInteractionManager$shouldWaitForHandlerFailure$1":I
    invoke-virtual {p2}, Lcom/swmansion/gesturehandler/core/GestureHandler;->getTag()I

    move-result v8

    const/4 v9, 0x1

    if-ne v6, v8, :cond_0

    move v6, v9

    goto :goto_1

    :cond_0
    move v6, v1

    .line 80
    .end local v6    # "tag":I
    .end local v7    # "$i$a$-any-RNGestureHandlerInteractionManager$shouldWaitForHandlerFailure$1":I
    :goto_1
    if-eqz v6, :cond_1

    move v1, v9

    goto :goto_2

    .end local v5    # "element$iv":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 81
    :cond_2
    nop

    .line 45
    .end local v0    # "$this$any$iv":[I
    .end local v2    # "$i$f$any":I
    :cond_3
    :goto_2
    return v1
.end method
