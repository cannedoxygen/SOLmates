.class public final Lcom/th3rdwave/safeareacontext/SafeAreaViewManager;
.super Lcom/facebook/react/views/view/ReactViewManager;
.source "SafeAreaViewManager.kt"

# interfaces
.implements Lcom/facebook/react/viewmanagers/RNCSafeAreaViewManagerInterface;


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "RNCSafeAreaView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/th3rdwave/safeareacontext/SafeAreaViewManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/views/view/ReactViewManager;",
        "Lcom/facebook/react/viewmanagers/RNCSafeAreaViewManagerInterface<",
        "Lcom/th3rdwave/safeareacontext/SafeAreaView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSafeAreaViewManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeAreaViewManager.kt\ncom/th3rdwave/safeareacontext/SafeAreaViewManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,74:1\n1#2:75\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \u001e2\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u0002:\u0001\u001eB\u0005\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000bH\u0014J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u000e\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0010H\u0016J\u001a\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00032\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0017J\u001a\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00032\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u000eH\u0017J&\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u0013\u001a\u00020\u000c2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/th3rdwave/safeareacontext/SafeAreaViewManager;",
        "Lcom/facebook/react/views/view/ReactViewManager;",
        "Lcom/facebook/react/viewmanagers/RNCSafeAreaViewManagerInterface;",
        "Lcom/th3rdwave/safeareacontext/SafeAreaView;",
        "()V",
        "createShadowNodeInstance",
        "Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;",
        "createViewInstance",
        "context",
        "Lcom/facebook/react/uimanager/ThemedReactContext;",
        "getDelegate",
        "Lcom/facebook/react/uimanager/ViewManagerDelegate;",
        "Lcom/facebook/react/views/view/ReactViewGroup;",
        "getName",
        "",
        "getShadowNodeClass",
        "Ljava/lang/Class;",
        "setEdges",
        "",
        "view",
        "propList",
        "Lcom/facebook/react/bridge/ReadableMap;",
        "setMode",
        "mode",
        "updateState",
        "",
        "props",
        "Lcom/facebook/react/uimanager/ReactStylesDiffMap;",
        "stateWrapper",
        "Lcom/facebook/react/uimanager/StateWrapper;",
        "Companion",
        "react-native-safe-area-context_debug"
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
.field public static final Companion:Lcom/th3rdwave/safeareacontext/SafeAreaViewManager$Companion;

.field public static final REACT_CLASS:Ljava/lang/String; = "RNCSafeAreaView"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/th3rdwave/safeareacontext/SafeAreaViewManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/th3rdwave/safeareacontext/SafeAreaViewManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/th3rdwave/safeareacontext/SafeAreaViewManager;->Companion:Lcom/th3rdwave/safeareacontext/SafeAreaViewManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewManager;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createShadowNodeInstance()Lcom/facebook/react/uimanager/LayoutShadowNode;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaViewManager;->createShadowNodeInstance()Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/LayoutShadowNode;

    return-object v0
.end method

.method public bridge synthetic createShadowNodeInstance()Lcom/facebook/react/uimanager/ReactShadowNode;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaViewManager;->createShadowNodeInstance()Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/ReactShadowNode;

    return-object v0
.end method

.method public createShadowNodeInstance()Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;
    .locals 1

    .line 24
    new-instance v0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;

    invoke-direct {v0}, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 1
    .param p1, "p0"    # Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 14
    invoke-virtual {p0, p1}, Lcom/th3rdwave/safeareacontext/SafeAreaViewManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/th3rdwave/safeareacontext/SafeAreaView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/view/ReactViewGroup;
    .locals 1
    .param p1, "p0"    # Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 14
    invoke-virtual {p0, p1}, Lcom/th3rdwave/safeareacontext/SafeAreaViewManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/th3rdwave/safeareacontext/SafeAreaView;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/views/view/ReactViewGroup;

    return-object v0
.end method

.method public createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/th3rdwave/safeareacontext/SafeAreaView;
    .locals 2
    .param p1, "context"    # Lcom/facebook/react/uimanager/ThemedReactContext;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v0, Lcom/th3rdwave/safeareacontext/SafeAreaView;

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/th3rdwave/safeareacontext/SafeAreaView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected getDelegate()Lcom/facebook/react/uimanager/ViewManagerDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/react/uimanager/ViewManagerDelegate<",
            "Lcom/facebook/react/views/view/ReactViewGroup;",
            ">;"
        }
    .end annotation

    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 16
    const-string v0, "RNCSafeAreaView"

    return-object v0
.end method

.method public getShadowNodeClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;

    .line 26
    return-object v0
.end method

.method public bridge synthetic setEdges(Landroid/view/View;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # Lcom/facebook/react/bridge/ReadableMap;

    .line 14
    move-object v0, p1

    check-cast v0, Lcom/th3rdwave/safeareacontext/SafeAreaView;

    invoke-virtual {p0, v0, p2}, Lcom/th3rdwave/safeareacontext/SafeAreaViewManager;->setEdges(Lcom/th3rdwave/safeareacontext/SafeAreaView;Lcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method

.method public setEdges(Lcom/th3rdwave/safeareacontext/SafeAreaView;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 7
    .param p1, "view"    # Lcom/th3rdwave/safeareacontext/SafeAreaView;
    .param p2, "propList"    # Lcom/facebook/react/bridge/ReadableMap;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "edges"
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    if-eqz p2, :cond_8

    .line 43
    nop

    .line 44
    nop

    .line 45
    const-string v0, "top"

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "toUpperCase(...)"

    if-eqz v0, :cond_0

    .line 75
    nop

    .local v0, "it":Ljava/lang/String;
    const/4 v2, 0x0

    .line 45
    .local v2, "$i$a$-let-SafeAreaViewManager$setEdges$1":I
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/th3rdwave/safeareacontext/SafeAreaViewEdgeModes;->valueOf(Ljava/lang/String;)Lcom/th3rdwave/safeareacontext/SafeAreaViewEdgeModes;

    move-result-object v0

    .end local v0    # "it":Ljava/lang/String;
    .end local v2    # "$i$a$-let-SafeAreaViewManager$setEdges$1":I
    if-nez v0, :cond_1

    .line 46
    :cond_0
    sget-object v0, Lcom/th3rdwave/safeareacontext/SafeAreaViewEdgeModes;->OFF:Lcom/th3rdwave/safeareacontext/SafeAreaViewEdgeModes;

    .line 48
    :cond_1
    const-string v2, "right"

    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 75
    nop

    .local v2, "it":Ljava/lang/String;
    const/4 v3, 0x0

    .line 48
    .local v3, "$i$a$-let-SafeAreaViewManager$setEdges$2":I
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/th3rdwave/safeareacontext/SafeAreaViewEdgeModes;->valueOf(Ljava/lang/String;)Lcom/th3rdwave/safeareacontext/SafeAreaViewEdgeModes;

    move-result-object v2

    .end local v2    # "it":Ljava/lang/String;
    .end local v3    # "$i$a$-let-SafeAreaViewManager$setEdges$2":I
    if-nez v2, :cond_3

    .line 49
    :cond_2
    sget-object v2, Lcom/th3rdwave/safeareacontext/SafeAreaViewEdgeModes;->OFF:Lcom/th3rdwave/safeareacontext/SafeAreaViewEdgeModes;

    .line 51
    :cond_3
    const-string v3, "bottom"

    invoke-interface {p2, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .local v3, "it":Ljava/lang/String;
    const/4 v4, 0x0

    .line 52
    .local v4, "$i$a$-let-SafeAreaViewManager$setEdges$3":I
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/th3rdwave/safeareacontext/SafeAreaViewEdgeModes;->valueOf(Ljava/lang/String;)Lcom/th3rdwave/safeareacontext/SafeAreaViewEdgeModes;

    move-result-object v3

    .line 51
    .end local v3    # "it":Ljava/lang/String;
    .end local v4    # "$i$a$-let-SafeAreaViewManager$setEdges$3":I
    if-nez v3, :cond_5

    .line 54
    :cond_4
    sget-object v3, Lcom/th3rdwave/safeareacontext/SafeAreaViewEdgeModes;->OFF:Lcom/th3rdwave/safeareacontext/SafeAreaViewEdgeModes;

    .line 56
    :cond_5
    const-string v4, "left"

    invoke-interface {p2, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 75
    nop

    .local v4, "it":Ljava/lang/String;
    const/4 v5, 0x0

    .line 56
    .local v5, "$i$a$-let-SafeAreaViewManager$setEdges$4":I
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/th3rdwave/safeareacontext/SafeAreaViewEdgeModes;->valueOf(Ljava/lang/String;)Lcom/th3rdwave/safeareacontext/SafeAreaViewEdgeModes;

    move-result-object v1

    .end local v4    # "it":Ljava/lang/String;
    .end local v5    # "$i$a$-let-SafeAreaViewManager$setEdges$4":I
    if-nez v1, :cond_7

    .line 57
    :cond_6
    sget-object v1, Lcom/th3rdwave/safeareacontext/SafeAreaViewEdgeModes;->OFF:Lcom/th3rdwave/safeareacontext/SafeAreaViewEdgeModes;

    .line 44
    :cond_7
    new-instance v4, Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;

    invoke-direct {v4, v0, v2, v3, v1}, Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;-><init>(Lcom/th3rdwave/safeareacontext/SafeAreaViewEdgeModes;Lcom/th3rdwave/safeareacontext/SafeAreaViewEdgeModes;Lcom/th3rdwave/safeareacontext/SafeAreaViewEdgeModes;Lcom/th3rdwave/safeareacontext/SafeAreaViewEdgeModes;)V

    .line 43
    invoke-virtual {p1, v4}, Lcom/th3rdwave/safeareacontext/SafeAreaView;->setEdges(Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;)V

    .line 59
    :cond_8
    return-void
.end method

.method public bridge synthetic setMode(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # Ljava/lang/String;

    .line 14
    move-object v0, p1

    check-cast v0, Lcom/th3rdwave/safeareacontext/SafeAreaView;

    invoke-virtual {p0, v0, p2}, Lcom/th3rdwave/safeareacontext/SafeAreaViewManager;->setMode(Lcom/th3rdwave/safeareacontext/SafeAreaView;Ljava/lang/String;)V

    return-void
.end method

.method public setMode(Lcom/th3rdwave/safeareacontext/SafeAreaView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Lcom/th3rdwave/safeareacontext/SafeAreaView;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "mode"
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    nop

    .line 31
    const-string v0, "padding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    sget-object v0, Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;->PADDING:Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;

    invoke-virtual {p1, v0}, Lcom/th3rdwave/safeareacontext/SafeAreaView;->setMode(Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;)V

    goto :goto_0

    .line 34
    :cond_0
    const-string v0, "margin"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    sget-object v0, Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;->MARGIN:Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;

    invoke-virtual {p1, v0}, Lcom/th3rdwave/safeareacontext/SafeAreaView;->setMode(Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;)V

    .line 38
    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic updateState(Landroid/view/View;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/uimanager/StateWrapper;)Ljava/lang/Object;
    .locals 1
    .param p1, "p0"    # Landroid/view/View;
    .param p2, "p1"    # Lcom/facebook/react/uimanager/ReactStylesDiffMap;
    .param p3, "p2"    # Lcom/facebook/react/uimanager/StateWrapper;

    .line 14
    move-object v0, p1

    check-cast v0, Lcom/facebook/react/views/view/ReactViewGroup;

    invoke-virtual {p0, v0, p2, p3}, Lcom/th3rdwave/safeareacontext/SafeAreaViewManager;->updateState(Lcom/facebook/react/views/view/ReactViewGroup;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/uimanager/StateWrapper;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public updateState(Lcom/facebook/react/views/view/ReactViewGroup;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/uimanager/StateWrapper;)Ljava/lang/Object;
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/view/ReactViewGroup;
    .param p2, "props"    # Lcom/facebook/react/uimanager/ReactStylesDiffMap;
    .param p3, "stateWrapper"    # Lcom/facebook/react/uimanager/StateWrapper;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    move-object v0, p1

    check-cast v0, Lcom/th3rdwave/safeareacontext/SafeAreaView;

    invoke-virtual {v0, p3}, Lcom/th3rdwave/safeareacontext/SafeAreaView;->setStateWrapper(Lcom/facebook/react/uimanager/StateWrapper;)V

    .line 67
    const/4 v0, 0x0

    return-object v0
.end method
