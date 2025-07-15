.class public final Lcom/facebook/react/views/progressbar/ReactProgressBarViewManager;
.super Lcom/facebook/react/uimanager/BaseViewManager;
.source "ReactProgressBarViewManager.kt"

# interfaces
.implements Lcom/facebook/react/viewmanagers/AndroidProgressBarManagerInterface;


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "AndroidProgressBar"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/views/progressbar/ReactProgressBarViewManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/BaseViewManager<",
        "Lcom/facebook/react/views/progressbar/ProgressBarContainerView;",
        "Lcom/facebook/react/views/progressbar/ProgressBarShadowNode;",
        ">;",
        "Lcom/facebook/react/viewmanagers/AndroidProgressBarManagerInterface<",
        "Lcom/facebook/react/views/progressbar/ProgressBarContainerView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReactProgressBarViewManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReactProgressBarViewManager.kt\ncom/facebook/react/views/progressbar/ReactProgressBarViewManager\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,166:1\n372#2,7:167\n*S KotlinDebug\n*F\n+ 1 ReactProgressBarViewManager.kt\ncom/facebook/react/views/progressbar/ReactProgressBarViewManager\n*L\n111#1:167,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0006\n\u0002\u0008\u0008\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 ;2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u0008\u0012\u0004\u0012\u00020\u00020\u0004:\u0001;B\u0005\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u000c\u001a\u00020\u0003H\u0016J\u0010\u0010\r\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u000fH\u0014J\u000e\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0007H\u0014J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u000e\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0014H\u0016JR\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u000e\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001d2\u0006\u0010!\u001a\u00020\u001f2\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0016J\u0010\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0002H\u0014J\u0018\u0010\'\u001a\u00020%2\u0006\u0010&\u001a\u00020\u00022\u0006\u0010(\u001a\u00020)H\u0017J\u001f\u0010*\u001a\u00020%2\u0006\u0010&\u001a\u00020\u00022\u0008\u0010+\u001a\u0004\u0018\u00010\nH\u0017\u00a2\u0006\u0002\u0010,J\u0018\u0010-\u001a\u00020%2\u0006\u0010&\u001a\u00020\u00022\u0006\u0010.\u001a\u00020)H\u0017J\u0018\u0010/\u001a\u00020%2\u0006\u0010&\u001a\u00020\u00022\u0006\u00100\u001a\u000201H\u0017J\u001a\u00102\u001a\u00020%2\u0006\u0010&\u001a\u00020\u00022\u0008\u00103\u001a\u0004\u0018\u00010\u0012H\u0017J\u001a\u00104\u001a\u00020%2\u0006\u0010&\u001a\u00020\u00022\u0008\u00105\u001a\u0004\u0018\u00010\u0012H\u0016J\u001a\u00106\u001a\u00020%2\u0006\u0010&\u001a\u00020\u00022\u0008\u00105\u001a\u0004\u0018\u00010\u0012H\u0017J\u0018\u00107\u001a\u00020%2\u0006\u00108\u001a\u00020\u00022\u0006\u00109\u001a\u00020:H\u0016R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R&\u0010\u0008\u001a\u001a\u0012\u0004\u0012\u00020\n\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\u000b0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006<"
    }
    d2 = {
        "Lcom/facebook/react/views/progressbar/ReactProgressBarViewManager;",
        "Lcom/facebook/react/uimanager/BaseViewManager;",
        "Lcom/facebook/react/views/progressbar/ProgressBarContainerView;",
        "Lcom/facebook/react/views/progressbar/ProgressBarShadowNode;",
        "Lcom/facebook/react/viewmanagers/AndroidProgressBarManagerInterface;",
        "()V",
        "delegate",
        "Lcom/facebook/react/uimanager/ViewManagerDelegate;",
        "measuredStyles",
        "Ljava/util/WeakHashMap;",
        "",
        "Landroid/util/Pair;",
        "createShadowNodeInstance",
        "createViewInstance",
        "context",
        "Lcom/facebook/react/uimanager/ThemedReactContext;",
        "getDelegate",
        "getName",
        "",
        "getShadowNodeClass",
        "Ljava/lang/Class;",
        "measure",
        "",
        "Landroid/content/Context;",
        "localData",
        "Lcom/facebook/react/bridge/ReadableMap;",
        "props",
        "state",
        "width",
        "",
        "widthMode",
        "Lcom/facebook/yoga/YogaMeasureMode;",
        "height",
        "heightMode",
        "attachmentsPositions",
        "",
        "onAfterUpdateTransaction",
        "",
        "view",
        "setAnimating",
        "animating",
        "",
        "setColor",
        "color",
        "(Lcom/facebook/react/views/progressbar/ProgressBarContainerView;Ljava/lang/Integer;)V",
        "setIndeterminate",
        "indeterminate",
        "setProgress",
        "progress",
        "",
        "setStyleAttr",
        "styleName",
        "setTestID",
        "value",
        "setTypeAttr",
        "updateExtraData",
        "root",
        "extraData",
        "",
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
.field public static final Companion:Lcom/facebook/react/views/progressbar/ReactProgressBarViewManager$Companion;

.field public static final DEFAULT_STYLE:Ljava/lang/String; = "Normal"

.field public static final PROP_ANIMATING:Ljava/lang/String; = "animating"

.field public static final PROP_ATTR:Ljava/lang/String; = "typeAttr"

.field public static final PROP_INDETERMINATE:Ljava/lang/String; = "indeterminate"

.field public static final PROP_PROGRESS:Ljava/lang/String; = "progress"

.field public static final PROP_STYLE:Ljava/lang/String; = "styleAttr"

.field public static final REACT_CLASS:Ljava/lang/String; = "AndroidProgressBar"

.field private static final progressBarCtorLock:Ljava/lang/Object;


# instance fields
.field private final delegate:Lcom/facebook/react/uimanager/ViewManagerDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/react/uimanager/ViewManagerDelegate<",
            "Lcom/facebook/react/views/progressbar/ProgressBarContainerView;",
            ">;"
        }
    .end annotation
.end field

.field private final measuredStyles:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/react/views/progressbar/ReactProgressBarViewManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/react/views/progressbar/ReactProgressBarViewManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/react/views/progressbar/ReactProgressBarViewManager;->Companion:Lcom/facebook/react/views/progressbar/ReactProgressBarViewManager$Companion;

    .line 132
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/react/views/progressbar/ReactProgressBarViewManager;->progressBarCtorLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Lcom/facebook/react/uimanager/BaseViewManager;-><init>()V

    .line 40
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/views/progressbar/ReactProgressBarViewManager;->measuredStyles:Ljava/util/WeakHashMap;

    .line 43
    new-instance v0, Lcom/facebook/react/viewmanagers/AndroidProgressBarManagerDelegate;

    move-object v1, p0

    check-cast v1, Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    invoke-direct {v0, v1}, Lcom/facebook/react/viewmanagers/AndroidProgressBarManagerDelegate;-><init>(Lcom/facebook/react/uimanager/BaseViewManagerInterface;)V

    check-cast v0, Lcom/facebook/react/uimanager/ViewManagerDelegate;

    iput-object v0, p0, Lcom/facebook/react/views/progressbar/ReactProgressBarViewManager;->delegate:Lcom/facebook/react/uimanager/ViewManagerDelegate;

    .line 37
    return-void
.end method

.method public static final synthetic access$getProgressBarCtorLock$cp()Ljava/lang/Object;
    .locals 1

    .line 36
    sget-object v0, Lcom/facebook/react/views/progressbar/ReactProgressBarViewManager;->progressBarCtorLock:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic createShadowNodeInstance()Lcom/facebook/react/uimanager/ReactShadowNode;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/facebook/react/views/progressbar/ReactProgressBarViewManager;->createShadowNodeInstance()Lcom/facebook/react/views/progressbar/ProgressBarShadowNode;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/ReactShadowNode;

    return-object v0
.end method

.method public createShadowNodeInstance()Lcom/facebook/react/views/progressbar/ProgressBarShadowNode;
    .locals 1

    .line 83
    new-instance v0, Lcom/facebook/react/views/progressbar/ProgressBarShadowNode;

    invoke-direct {v0}, Lcom/facebook/react/views/progressbar/ProgressBarShadowNode;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 36
    invoke-virtual {p0, p1}, Lcom/facebook/react/views/progressbar/ReactProgressBarViewManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/progressbar/ProgressBarContainerView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method protected createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/progressbar/ProgressBarContainerView;
    .locals 2
    .param p1, "context"    # Lcom/facebook/react/uimanager/ThemedReactContext;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v0, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected getDelegate()Lcom/facebook/react/uimanager/ViewManagerDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/react/uimanager/ViewManagerDelegate<",
            "Lcom/facebook/react/views/progressbar/ProgressBarContainerView;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/facebook/react/views/progressbar/ReactProgressBarViewManager;->delegate:Lcom/facebook/react/uimanager/ViewManagerDelegate;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 45
    const-string v0, "AndroidProgressBar"

    return-object v0
.end method

.method public getShadowNodeClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/facebook/react/views/progressbar/ProgressBarShadowNode;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/facebook/react/views/progressbar/ProgressBarShadowNode;

    .line 86
    return-object v0
.end method

.method public measure(Landroid/content/Context;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;FLcom/facebook/yoga/YogaMeasureMode;FLcom/facebook/yoga/YogaMeasureMode;[F)J
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "localData"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p3, "props"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p4, "state"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p5, "width"    # F
    .param p6, "widthMode"    # Lcom/facebook/yoga/YogaMeasureMode;
    .param p7, "height"    # F
    .param p8, "heightMode"    # Lcom/facebook/yoga/YogaMeasureMode;
    .param p9, "attachmentsPositions"    # [F

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    const-string v2, "context"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "localData"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "props"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "state"

    move-object/from16 v4, p4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "widthMode"

    move-object/from16 v5, p6

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "heightMode"

    move-object/from16 v6, p8

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    sget-object v2, Lcom/facebook/react/views/progressbar/ReactProgressBarViewManager;->Companion:Lcom/facebook/react/views/progressbar/ReactProgressBarViewManager$Companion;

    const-string/jumbo v7, "styleAttr"

    invoke-interface {v1, v7}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/facebook/react/views/progressbar/ReactProgressBarViewManager$Companion;->getStyleFromString$ReactAndroid_debug(Ljava/lang/String;)I

    move-result v2

    .line 111
    .local v2, "style":I
    move-object/from16 v7, p0

    iget-object v8, v7, Lcom/facebook/react/views/progressbar/ReactProgressBarViewManager;->measuredStyles:Ljava/util/WeakHashMap;

    check-cast v8, Ljava/util/Map;

    .local v8, "$this$getOrPut$iv":Ljava/util/Map;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .local v9, "key$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 167
    .local v10, "$i$f$getOrPut":I
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 168
    .local v11, "value$iv":Ljava/lang/Object;
    if-nez v11, :cond_0

    .line 169
    const/4 v12, 0x0

    .line 112
    .local v12, "$i$a$-getOrPut-ReactProgressBarViewManager$measure$value$1":I
    sget-object v13, Lcom/facebook/react/views/progressbar/ReactProgressBarViewManager;->Companion:Lcom/facebook/react/views/progressbar/ReactProgressBarViewManager$Companion;

    invoke-virtual {v13, v0, v2}, Lcom/facebook/react/views/progressbar/ReactProgressBarViewManager$Companion;->createProgressBar(Landroid/content/Context;I)Landroid/widget/ProgressBar;

    move-result-object v13

    .line 113
    .local v13, "progressBar":Landroid/widget/ProgressBar;
    const/4 v14, 0x0

    invoke-static {v14, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 114
    .local v14, "spec":I
    invoke-virtual {v13, v14, v14}, Landroid/widget/ProgressBar;->measure(II)V

    .line 115
    invoke-virtual {v13}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13}, Landroid/widget/ProgressBar;->getMeasuredHeight()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 169
    .end local v12    # "$i$a$-getOrPut-ReactProgressBarViewManager$measure$value$1":I
    .end local v13    # "progressBar":Landroid/widget/ProgressBar;
    .end local v14    # "spec":I
    nop

    .line 170
    .local v0, "answer$iv":Ljava/lang/Object;
    invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    nop

    .end local v0    # "answer$iv":Ljava/lang/Object;
    goto :goto_0

    .line 173
    :cond_0
    move-object v0, v11

    .line 168
    :goto_0
    nop

    .line 111
    .end local v8    # "$this$getOrPut$iv":Ljava/util/Map;
    .end local v9    # "key$iv":Ljava/lang/Object;
    .end local v10    # "$i$f$getOrPut":I
    .end local v11    # "value$iv":Ljava/lang/Object;
    check-cast v0, Landroid/util/Pair;

    .line 110
    nop

    .line 119
    .local v0, "value":Landroid/util/Pair;
    iget-object v8, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    int-to-float v8, v8

    invoke-static {v8}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v8

    iget-object v9, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    int-to-float v9, v9

    invoke-static {v9}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v9

    .line 118
    invoke-static {v8, v9}, Lcom/facebook/yoga/YogaMeasureOutput;->make(FF)J

    move-result-wide v8

    return-wide v8
.end method

.method public bridge synthetic onAfterUpdateTransaction(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 36
    move-object v0, p1

    check-cast v0, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/progressbar/ReactProgressBarViewManager;->onAfterUpdateTransaction(Lcom/facebook/react/views/progressbar/ProgressBarContainerView;)V

    return-void
.end method

.method protected onAfterUpdateTransaction(Lcom/facebook/react/views/progressbar/ProgressBarContainerView;)V
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/progressbar/ProgressBarContainerView;

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1}, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;->apply$ReactAndroid_debug()V

    .line 94
    return-void
.end method

.method public bridge synthetic setAnimating(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # Z

    .line 36
    move-object v0, p1

    check-cast v0, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;

    invoke-virtual {p0, v0, p2}, Lcom/facebook/react/views/progressbar/ReactProgressBarViewManager;->setAnimating(Lcom/facebook/react/views/progressbar/ProgressBarContainerView;Z)V

    return-void
.end method

.method public setAnimating(Lcom/facebook/react/views/progressbar/ProgressBarContainerView;Z)V
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/progressbar/ProgressBarContainerView;
    .param p2, "animating"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "animating"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;->setAnimating$ReactAndroid_debug(Z)V

    .line 74
    return-void
.end method

.method public bridge synthetic setColor(Landroid/view/View;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # Ljava/lang/Integer;

    .line 36
    move-object v0, p1

    check-cast v0, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;

    invoke-virtual {p0, v0, p2}, Lcom/facebook/react/views/progressbar/ReactProgressBarViewManager;->setColor(Lcom/facebook/react/views/progressbar/ProgressBarContainerView;Ljava/lang/Integer;)V

    return-void
.end method

.method public setColor(Lcom/facebook/react/views/progressbar/ProgressBarContainerView;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/progressbar/ProgressBarContainerView;
    .param p2, "color"    # Ljava/lang/Integer;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "color"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;->setColor$ReactAndroid_debug(Ljava/lang/Integer;)V

    .line 59
    return-void
.end method

.method public bridge synthetic setIndeterminate(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # Z

    .line 36
    move-object v0, p1

    check-cast v0, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;

    invoke-virtual {p0, v0, p2}, Lcom/facebook/react/views/progressbar/ReactProgressBarViewManager;->setIndeterminate(Lcom/facebook/react/views/progressbar/ProgressBarContainerView;Z)V

    return-void
.end method

.method public setIndeterminate(Lcom/facebook/react/views/progressbar/ProgressBarContainerView;Z)V
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/progressbar/ProgressBarContainerView;
    .param p2, "indeterminate"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "indeterminate"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;->setIndeterminate$ReactAndroid_debug(Z)V

    .line 64
    return-void
.end method

.method public bridge synthetic setProgress(Landroid/view/View;D)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # D

    .line 36
    move-object v0, p1

    check-cast v0, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;

    invoke-virtual {p0, v0, p2, p3}, Lcom/facebook/react/views/progressbar/ReactProgressBarViewManager;->setProgress(Lcom/facebook/react/views/progressbar/ProgressBarContainerView;D)V

    return-void
.end method

.method public setProgress(Lcom/facebook/react/views/progressbar/ProgressBarContainerView;D)V
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/progressbar/ProgressBarContainerView;
    .param p2, "progress"    # D
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "progress"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1, p2, p3}, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;->setProgress$ReactAndroid_debug(D)V

    .line 69
    return-void
.end method

.method public bridge synthetic setStyleAttr(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # Ljava/lang/String;

    .line 36
    move-object v0, p1

    check-cast v0, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;

    invoke-virtual {p0, v0, p2}, Lcom/facebook/react/views/progressbar/ReactProgressBarViewManager;->setStyleAttr(Lcom/facebook/react/views/progressbar/ProgressBarContainerView;Ljava/lang/String;)V

    return-void
.end method

.method public setStyleAttr(Lcom/facebook/react/views/progressbar/ProgressBarContainerView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/progressbar/ProgressBarContainerView;
    .param p2, "styleName"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "styleAttr"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;->setStyle$ReactAndroid_debug(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public bridge synthetic setTestID(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # Ljava/lang/String;

    .line 36
    move-object v0, p1

    check-cast v0, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;

    invoke-virtual {p0, v0, p2}, Lcom/facebook/react/views/progressbar/ReactProgressBarViewManager;->setTestID(Lcom/facebook/react/views/progressbar/ProgressBarContainerView;Ljava/lang/String;)V

    return-void
.end method

.method public setTestID(Lcom/facebook/react/views/progressbar/ProgressBarContainerView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/progressbar/ProgressBarContainerView;
    .param p2, "value"    # Ljava/lang/String;

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-super {p0, v0, p2}, Lcom/facebook/react/uimanager/BaseViewManager;->setTestId(Landroid/view/View;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public bridge synthetic setTypeAttr(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # Ljava/lang/String;

    .line 36
    move-object v0, p1

    check-cast v0, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;

    invoke-virtual {p0, v0, p2}, Lcom/facebook/react/views/progressbar/ReactProgressBarViewManager;->setTypeAttr(Lcom/facebook/react/views/progressbar/ProgressBarContainerView;Ljava/lang/String;)V

    return-void
.end method

.method public setTypeAttr(Lcom/facebook/react/views/progressbar/ProgressBarContainerView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/progressbar/ProgressBarContainerView;
    .param p2, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "typeAttr"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public bridge synthetic updateExtraData(Landroid/view/View;Ljava/lang/Object;)V
    .locals 1
    .param p1, "root"    # Landroid/view/View;
    .param p2, "extraData"    # Ljava/lang/Object;

    .line 36
    move-object v0, p1

    check-cast v0, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;

    invoke-virtual {p0, v0, p2}, Lcom/facebook/react/views/progressbar/ReactProgressBarViewManager;->updateExtraData(Lcom/facebook/react/views/progressbar/ProgressBarContainerView;Ljava/lang/Object;)V

    return-void
.end method

.method public updateExtraData(Lcom/facebook/react/views/progressbar/ProgressBarContainerView;Ljava/lang/Object;)V
    .locals 1
    .param p1, "root"    # Lcom/facebook/react/views/progressbar/ProgressBarContainerView;
    .param p2, "extraData"    # Ljava/lang/Object;

    const-string/jumbo v0, "root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extraData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    return-void
.end method
