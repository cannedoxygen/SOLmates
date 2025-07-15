.class public final Lcom/swmansion/rnscreens/ScreenStackViewManager;
.super Lcom/facebook/react/uimanager/ViewGroupManager;
.source "ScreenStackViewManager.kt"

# interfaces
.implements Lcom/facebook/react/viewmanagers/RNSScreenStackManagerInterface;


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "RNSScreenStack"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/rnscreens/ScreenStackViewManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/ViewGroupManager<",
        "Lcom/swmansion/rnscreens/ScreenStack;",
        ">;",
        "Lcom/facebook/react/viewmanagers/RNSScreenStackManagerInterface<",
        "Lcom/swmansion/rnscreens/ScreenStack;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScreenStackViewManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScreenStackViewManager.kt\ncom/swmansion/rnscreens/ScreenStackViewManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,79:1\n1#2:80\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 $2\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00020\u0003:\u0001$B\u0005\u00a2\u0006\u0002\u0010\u0004J \u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0014H\u0014J\u0018\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0010\u0010\u0016\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\u0002H\u0016J\u000e\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0006H\u0014J\u0014\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b0\u0019H\u0016J\u0008\u0010\u001c\u001a\u00020\u001aH\u0016J\u0008\u0010\u001d\u001a\u00020\u0008H\u0016J\u0008\u0010\u001e\u001a\u00020\u001fH\u0016J\u0012\u0010 \u001a\u00020\u00082\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0002J\u0018\u0010#\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\rH\u0016R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcom/swmansion/rnscreens/ScreenStackViewManager;",
        "Lcom/facebook/react/uimanager/ViewGroupManager;",
        "Lcom/swmansion/rnscreens/ScreenStack;",
        "Lcom/facebook/react/viewmanagers/RNSScreenStackManagerInterface;",
        "()V",
        "delegate",
        "Lcom/facebook/react/uimanager/ViewManagerDelegate;",
        "addView",
        "",
        "parent",
        "child",
        "Landroid/view/View;",
        "index",
        "",
        "createShadowNodeInstance",
        "Lcom/facebook/react/uimanager/LayoutShadowNode;",
        "context",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "createViewInstance",
        "reactContext",
        "Lcom/facebook/react/uimanager/ThemedReactContext;",
        "getChildAt",
        "getChildCount",
        "getDelegate",
        "getExportedCustomDirectEventTypeConstants",
        "",
        "",
        "",
        "getName",
        "invalidate",
        "needsCustomLayoutForChildren",
        "",
        "prepareOutTransition",
        "screen",
        "Lcom/swmansion/rnscreens/Screen;",
        "removeViewAt",
        "Companion",
        "react-native-screens_debug"
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
.field public static final Companion:Lcom/swmansion/rnscreens/ScreenStackViewManager$Companion;

.field public static final REACT_CLASS:Ljava/lang/String; = "RNSScreenStack"


# instance fields
.field private final delegate:Lcom/facebook/react/uimanager/ViewManagerDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/react/uimanager/ViewManagerDelegate<",
            "Lcom/swmansion/rnscreens/ScreenStack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/rnscreens/ScreenStackViewManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/rnscreens/ScreenStackViewManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/rnscreens/ScreenStackViewManager;->Companion:Lcom/swmansion/rnscreens/ScreenStackViewManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Lcom/facebook/react/uimanager/ViewGroupManager;-><init>()V

    .line 20
    nop

    .line 21
    new-instance v0, Lcom/facebook/react/viewmanagers/RNSScreenStackManagerDelegate;

    move-object v1, p0

    check-cast v1, Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    invoke-direct {v0, v1}, Lcom/facebook/react/viewmanagers/RNSScreenStackManagerDelegate;-><init>(Lcom/facebook/react/uimanager/BaseViewManagerInterface;)V

    check-cast v0, Lcom/facebook/react/uimanager/ViewManagerDelegate;

    iput-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackViewManager;->delegate:Lcom/facebook/react/uimanager/ViewManagerDelegate;

    .line 22
    nop

    .line 15
    return-void
.end method

.method private final prepareOutTransition(Lcom/swmansion/rnscreens/Screen;)V
    .locals 0
    .param p1, "screen"    # Lcom/swmansion/rnscreens/Screen;

    .line 49
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/swmansion/rnscreens/Screen;->startRemovalTransition()V

    .line 50
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic addView(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "index"    # I

    .line 14
    move-object v0, p1

    check-cast v0, Lcom/swmansion/rnscreens/ScreenStack;

    invoke-virtual {p0, v0, p2, p3}, Lcom/swmansion/rnscreens/ScreenStackViewManager;->addView(Lcom/swmansion/rnscreens/ScreenStack;Landroid/view/View;I)V

    return-void
.end method

.method public bridge synthetic addView(Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "index"    # I

    .line 14
    move-object v0, p1

    check-cast v0, Lcom/swmansion/rnscreens/ScreenStack;

    invoke-virtual {p0, v0, p2, p3}, Lcom/swmansion/rnscreens/ScreenStackViewManager;->addView(Lcom/swmansion/rnscreens/ScreenStack;Landroid/view/View;I)V

    return-void
.end method

.method public addView(Lcom/swmansion/rnscreens/ScreenStack;Landroid/view/View;I)V
    .locals 3
    .param p1, "parent"    # Lcom/swmansion/rnscreens/ScreenStack;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "index"    # I

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    instance-of v0, p2, Lcom/swmansion/rnscreens/Screen;

    if-eqz v0, :cond_0

    .line 34
    sget-object v0, Lcom/swmansion/rnscreens/NativeProxy;->Companion:Lcom/swmansion/rnscreens/NativeProxy$Companion;

    move-object v1, p2

    check-cast v1, Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/Screen;->getId()I

    move-result v1

    move-object v2, p2

    check-cast v2, Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {v0, v1, v2}, Lcom/swmansion/rnscreens/NativeProxy$Companion;->addScreenToMap(ILcom/swmansion/rnscreens/Screen;)V

    .line 35
    move-object v0, p2

    check-cast v0, Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p1, v0, p3}, Lcom/swmansion/rnscreens/ScreenStack;->addScreen(Lcom/swmansion/rnscreens/Screen;I)V

    .line 36
    return-void

    .line 80
    :cond_0
    const/4 v0, 0x0

    .line 33
    .local v0, "$i$a$-require-ScreenStackViewManager$addView$1":I
    nop

    .end local v0    # "$i$a$-require-ScreenStackViewManager$addView$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempt attach child that is not of type RNScreen"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createShadowNodeInstance(Lcom/facebook/react/bridge/ReactApplicationContext;)Lcom/facebook/react/uimanager/LayoutShadowNode;
    .locals 2
    .param p1, "context"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    new-instance v0, Lcom/swmansion/rnscreens/ScreensShadowNode;

    move-object v1, p1

    check-cast v1, Lcom/facebook/react/bridge/ReactContext;

    invoke-direct {v0, v1}, Lcom/swmansion/rnscreens/ScreensShadowNode;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    check-cast v0, Lcom/facebook/react/uimanager/LayoutShadowNode;

    return-object v0
.end method

.method public bridge synthetic createShadowNodeInstance(Lcom/facebook/react/bridge/ReactApplicationContext;)Lcom/facebook/react/uimanager/ReactShadowNode;
    .locals 1
    .param p1, "p0"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 14
    invoke-virtual {p0, p1}, Lcom/swmansion/rnscreens/ScreenStackViewManager;->createShadowNodeInstance(Lcom/facebook/react/bridge/ReactApplicationContext;)Lcom/facebook/react/uimanager/LayoutShadowNode;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/ReactShadowNode;

    return-object v0
.end method

.method public bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 1
    .param p1, "p0"    # Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 14
    invoke-virtual {p0, p1}, Lcom/swmansion/rnscreens/ScreenStackViewManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/swmansion/rnscreens/ScreenStack;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method protected createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/swmansion/rnscreens/ScreenStack;
    .locals 2
    .param p1, "reactContext"    # Lcom/facebook/react/uimanager/ThemedReactContext;

    const-string v0, "reactContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v0, Lcom/swmansion/rnscreens/ScreenStack;

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/swmansion/rnscreens/ScreenStack;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic getChildAt(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 14
    move-object v0, p1

    check-cast v0, Lcom/swmansion/rnscreens/ScreenStack;

    invoke-virtual {p0, v0, p2}, Lcom/swmansion/rnscreens/ScreenStackViewManager;->getChildAt(Lcom/swmansion/rnscreens/ScreenStack;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getChildAt(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "index"    # I

    .line 14
    move-object v0, p1

    check-cast v0, Lcom/swmansion/rnscreens/ScreenStack;

    invoke-virtual {p0, v0, p2}, Lcom/swmansion/rnscreens/ScreenStackViewManager;->getChildAt(Lcom/swmansion/rnscreens/ScreenStack;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildAt(Lcom/swmansion/rnscreens/ScreenStack;I)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Lcom/swmansion/rnscreens/ScreenStack;
    .param p2, "index"    # I

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/ScreenStack;->getScreenAt(I)Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public bridge synthetic getChildCount(Landroid/view/View;)I
    .locals 1
    .param p1, "parent"    # Landroid/view/View;

    .line 14
    move-object v0, p1

    check-cast v0, Lcom/swmansion/rnscreens/ScreenStack;

    invoke-virtual {p0, v0}, Lcom/swmansion/rnscreens/ScreenStackViewManager;->getChildCount(Lcom/swmansion/rnscreens/ScreenStack;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getChildCount(Landroid/view/ViewGroup;)I
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 14
    move-object v0, p1

    check-cast v0, Lcom/swmansion/rnscreens/ScreenStack;

    invoke-virtual {p0, v0}, Lcom/swmansion/rnscreens/ScreenStackViewManager;->getChildCount(Lcom/swmansion/rnscreens/ScreenStack;)I

    move-result v0

    return v0
.end method

.method public getChildCount(Lcom/swmansion/rnscreens/ScreenStack;)I
    .locals 1
    .param p1, "parent"    # Lcom/swmansion/rnscreens/ScreenStack;

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenStack;->getScreenCount()I

    move-result v0

    return v0
.end method

.method protected getDelegate()Lcom/facebook/react/uimanager/ViewManagerDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/react/uimanager/ViewManagerDelegate<",
            "Lcom/swmansion/rnscreens/ScreenStack;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackViewManager;->delegate:Lcom/facebook/react/uimanager/ViewManagerDelegate;

    return-object v0
.end method

.method public getExportedCustomDirectEventTypeConstants()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 72
    const/4 v0, 0x1

    new-array v1, v0, [Lkotlin/Pair;

    new-array v0, v0, [Lkotlin/Pair;

    const-string v2, "registrationName"

    const-string v3, "onFinishTransitioning"

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    const-string v2, "topFinishTransitioning"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, v3

    .line 71
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 73
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 24
    const-string v0, "RNSScreenStack"

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    .line 53
    invoke-super {p0}, Lcom/facebook/react/uimanager/ViewGroupManager;->invalidate()V

    .line 54
    sget-object v0, Lcom/swmansion/rnscreens/NativeProxy;->Companion:Lcom/swmansion/rnscreens/NativeProxy$Companion;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/NativeProxy$Companion;->clearMapOnInvalidate()V

    .line 55
    return-void
.end method

.method public needsCustomLayoutForChildren()Z
    .locals 1

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic removeViewAt(Landroid/view/View;I)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 14
    move-object v0, p1

    check-cast v0, Lcom/swmansion/rnscreens/ScreenStack;

    invoke-virtual {p0, v0, p2}, Lcom/swmansion/rnscreens/ScreenStackViewManager;->removeViewAt(Lcom/swmansion/rnscreens/ScreenStack;I)V

    return-void
.end method

.method public bridge synthetic removeViewAt(Landroid/view/ViewGroup;I)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "index"    # I

    .line 14
    move-object v0, p1

    check-cast v0, Lcom/swmansion/rnscreens/ScreenStack;

    invoke-virtual {p0, v0, p2}, Lcom/swmansion/rnscreens/ScreenStackViewManager;->removeViewAt(Lcom/swmansion/rnscreens/ScreenStack;I)V

    return-void
.end method

.method public removeViewAt(Lcom/swmansion/rnscreens/ScreenStack;I)V
    .locals 3
    .param p1, "parent"    # Lcom/swmansion/rnscreens/ScreenStack;
    .param p2, "index"    # I

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/ScreenStack;->getScreenAt(I)Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    .line 43
    .local v0, "screen":Lcom/swmansion/rnscreens/Screen;
    invoke-direct {p0, v0}, Lcom/swmansion/rnscreens/ScreenStackViewManager;->prepareOutTransition(Lcom/swmansion/rnscreens/Screen;)V

    .line 44
    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/ScreenStack;->removeScreenAt(I)V

    .line 45
    sget-object v1, Lcom/swmansion/rnscreens/NativeProxy;->Companion:Lcom/swmansion/rnscreens/NativeProxy$Companion;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/swmansion/rnscreens/NativeProxy$Companion;->removeScreenFromMap(I)V

    .line 46
    return-void
.end method
