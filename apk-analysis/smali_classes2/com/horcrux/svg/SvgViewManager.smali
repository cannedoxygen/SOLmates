.class Lcom/horcrux/svg/SvgViewManager;
.super Lcom/facebook/react/views/view/ReactViewManager;
.source "SvgViewManager.java"

# interfaces
.implements Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/views/view/ReactViewManager;",
        "Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerInterface<",
        "Lcom/horcrux/svg/SvgView;",
        ">;"
    }
.end annotation


# static fields
.field public static final REACT_CLASS:Ljava/lang/String; = "RNSVGSvgViewAndroid"

.field private static final mTagToRunnable:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final mTagToSvgView:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/horcrux/svg/SvgView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDelegate:Lcom/facebook/react/uimanager/ViewManagerDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/react/uimanager/ViewManagerDelegate<",
            "Lcom/horcrux/svg/SvgView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/horcrux/svg/SvgViewManager;->mTagToSvgView:Landroid/util/SparseArray;

    .line 44
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/horcrux/svg/SvgViewManager;->mTagToRunnable:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewManager;-><init>()V

    .line 53
    new-instance v0, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerDelegate;

    invoke-direct {v0, p0}, Lcom/facebook/react/viewmanagers/RNSVGSvgViewAndroidManagerDelegate;-><init>(Lcom/facebook/react/uimanager/BaseViewManager;)V

    iput-object v0, p0, Lcom/horcrux/svg/SvgViewManager;->mDelegate:Lcom/facebook/react/uimanager/ViewManagerDelegate;

    .line 54
    return-void
.end method

.method static getSvgViewByTag(I)Lcom/horcrux/svg/SvgView;
    .locals 1
    .param p0, "tag"    # I
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 70
    sget-object v0, Lcom/horcrux/svg/SvgViewManager;->mTagToSvgView:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/horcrux/svg/SvgView;

    return-object v0
.end method

.method static runWhenViewIsAvailable(ILjava/lang/Runnable;)V
    .locals 1
    .param p0, "tag"    # I
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 66
    sget-object v0, Lcom/horcrux/svg/SvgViewManager;->mTagToRunnable:Landroid/util/SparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    return-void
.end method

.method static setSvgView(ILcom/horcrux/svg/SvgView;)V
    .locals 2
    .param p0, "tag"    # I
    .param p1, "svg"    # Lcom/horcrux/svg/SvgView;

    .line 57
    sget-object v0, Lcom/horcrux/svg/SvgViewManager;->mTagToSvgView:Landroid/util/SparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 58
    sget-object v0, Lcom/horcrux/svg/SvgViewManager;->mTagToRunnable:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 59
    .local v0, "task":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 60
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 61
    sget-object v1, Lcom/horcrux/svg/SvgViewManager;->mTagToRunnable:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->delete(I)V

    .line 63
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 38
    invoke-virtual {p0, p1}, Lcom/horcrux/svg/SvgViewManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/view/ReactViewGroup;

    move-result-object p1

    return-object p1
.end method

.method public createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/view/ReactViewGroup;
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/uimanager/ThemedReactContext;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 82
    new-instance v0, Lcom/horcrux/svg/SvgView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/SvgView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0
.end method

.method protected getDelegate()Lcom/facebook/react/uimanager/ViewManagerDelegate;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/horcrux/svg/SvgViewManager;->mDelegate:Lcom/facebook/react/uimanager/ViewManagerDelegate;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 76
    const-string v0, "RNSVGSvgViewAndroid"

    return-object v0
.end method

.method public needsCustomLayoutForChildren()Z
    .locals 1

    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic onDropViewInstance(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 38
    check-cast p1, Lcom/facebook/react/views/view/ReactViewGroup;

    invoke-virtual {p0, p1}, Lcom/horcrux/svg/SvgViewManager;->onDropViewInstance(Lcom/facebook/react/views/view/ReactViewGroup;)V

    return-void
.end method

.method public onDropViewInstance(Lcom/facebook/react/views/view/ReactViewGroup;)V
    .locals 2
    .param p1, "view"    # Lcom/facebook/react/views/view/ReactViewGroup;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 93
    invoke-super {p0, p1}, Lcom/facebook/react/views/view/ReactViewManager;->onDropViewInstance(Landroid/view/View;)V

    .line 94
    sget-object v0, Lcom/horcrux/svg/SvgViewManager;->mTagToSvgView:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/facebook/react/views/view/ReactViewGroup;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 95
    return-void
.end method

.method public bridge synthetic setAccessible(Landroid/view/View;Z)V
    .locals 0

    .line 38
    check-cast p1, Lcom/horcrux/svg/SvgView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/SvgViewManager;->setAccessible(Lcom/horcrux/svg/SvgView;Z)V

    return-void
.end method

.method public setAccessible(Lcom/horcrux/svg/SvgView;Z)V
    .locals 0
    .param p1, "view"    # Lcom/horcrux/svg/SvgView;
    .param p2, "value"    # Z

    .line 221
    invoke-super {p0, p1, p2}, Lcom/facebook/react/views/view/ReactViewManager;->setAccessible(Lcom/facebook/react/views/view/ReactViewGroup;Z)V

    .line 222
    return-void
.end method

.method public bridge synthetic setAlign(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "align"
    .end annotation

    .line 38
    check-cast p1, Lcom/horcrux/svg/SvgView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/SvgViewManager;->setAlign(Lcom/horcrux/svg/SvgView;Ljava/lang/String;)V

    return-void
.end method

.method public setAlign(Lcom/horcrux/svg/SvgView;Ljava/lang/String;)V
    .locals 0
    .param p1, "node"    # Lcom/horcrux/svg/SvgView;
    .param p2, "align"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "align"
    .end annotation

    .line 145
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/SvgView;->setAlign(Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public bridge synthetic setBackfaceVisibility(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 38
    check-cast p1, Lcom/horcrux/svg/SvgView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/SvgViewManager;->setBackfaceVisibility(Lcom/horcrux/svg/SvgView;Ljava/lang/String;)V

    return-void
.end method

.method public setBackfaceVisibility(Lcom/horcrux/svg/SvgView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lcom/horcrux/svg/SvgView;
    .param p2, "value"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 251
    invoke-super {p0, p1, p2}, Lcom/facebook/react/views/view/ReactViewManager;->setBackfaceVisibility(Lcom/facebook/react/views/view/ReactViewGroup;Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method public bridge synthetic setBbHeight(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "bbHeight"
    .end annotation

    .line 38
    check-cast p1, Lcom/horcrux/svg/SvgView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/SvgViewManager;->setBbHeight(Lcom/horcrux/svg/SvgView;Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public setBbHeight(Lcom/horcrux/svg/SvgView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .param p1, "node"    # Lcom/horcrux/svg/SvgView;
    .param p2, "bbHeight"    # Lcom/facebook/react/bridge/Dynamic;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "bbHeight"
    .end annotation

    .line 139
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/SvgView;->setBbHeight(Lcom/facebook/react/bridge/Dynamic;)V

    .line 140
    return-void
.end method

.method public bridge synthetic setBbWidth(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "bbWidth"
    .end annotation

    .line 38
    check-cast p1, Lcom/horcrux/svg/SvgView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/SvgViewManager;->setBbWidth(Lcom/horcrux/svg/SvgView;Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public setBbWidth(Lcom/horcrux/svg/SvgView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .param p1, "node"    # Lcom/horcrux/svg/SvgView;
    .param p2, "bbWidth"    # Lcom/facebook/react/bridge/Dynamic;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "bbWidth"
    .end annotation

    .line 134
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/SvgView;->setBbWidth(Lcom/facebook/react/bridge/Dynamic;)V

    .line 135
    return-void
.end method

.method public bridge synthetic setBorderBlockColor(Landroid/view/View;Ljava/lang/Integer;)V
    .locals 0
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 38
    check-cast p1, Lcom/horcrux/svg/SvgView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/SvgViewManager;->setBorderBlockColor(Lcom/horcrux/svg/SvgView;Ljava/lang/Integer;)V

    return-void
.end method

.method public setBorderBlockColor(Lcom/horcrux/svg/SvgView;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "view"    # Lcom/horcrux/svg/SvgView;
    .param p2, "value"    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 311
    const/16 v0, 0x9

    invoke-super {p0, p1, v0, p2}, Lcom/facebook/react/views/view/ReactViewManager;->setBorderColor(Lcom/facebook/react/views/view/ReactViewGroup;ILjava/lang/Integer;)V

    .line 312
    return-void
.end method

.method public bridge synthetic setBorderBlockEndColor(Landroid/view/View;Ljava/lang/Integer;)V
    .locals 0
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 38
    check-cast p1, Lcom/horcrux/svg/SvgView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/SvgViewManager;->setBorderBlockEndColor(Lcom/horcrux/svg/SvgView;Ljava/lang/Integer;)V

    return-void
.end method

.method public setBorderBlockEndColor(Lcom/horcrux/svg/SvgView;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "view"    # Lcom/horcrux/svg/SvgView;
    .param p2, "value"    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 316
    const/16 v0, 0xa

    invoke-super {p0, p1, v0, p2}, Lcom/facebook/react/views/view/ReactViewManager;->setBorderColor(Lcom/facebook/react/views/view/ReactViewGroup;ILjava/lang/Integer;)V

    .line 317
    return-void
.end method

.method public bridge synthetic setBorderBlockStartColor(Landroid/view/View;Ljava/lang/Integer;)V
    .locals 0
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 38
    check-cast p1, Lcom/horcrux/svg/SvgView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/SvgViewManager;->setBorderBlockStartColor(Lcom/horcrux/svg/SvgView;Ljava/lang/Integer;)V

    return-void
.end method

.method public setBorderBlockStartColor(Lcom/horcrux/svg/SvgView;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "view"    # Lcom/horcrux/svg/SvgView;
    .param p2, "value"    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 321
    const/16 v0, 0xb

    invoke-super {p0, p1, v0, p2}, Lcom/facebook/react/views/view/ReactViewManager;->setBorderColor(Lcom/facebook/react/views/view/ReactViewGroup;ILjava/lang/Integer;)V

    .line 322
    return-void
.end method

.method public bridge synthetic setBorderBottomColor(Landroid/view/View;Ljava/lang/Integer;)V
    .locals 0
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 38
    check-cast p1, Lcom/horcrux/svg/SvgView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/SvgViewManager;->setBorderBottomColor(Lcom/horcrux/svg/SvgView;Ljava/lang/Integer;)V

    return-void
.end method

.method public setBorderBottomColor(Lcom/horcrux/svg/SvgView;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "view"    # Lcom/horcrux/svg/SvgView;
    .param p2, "value"    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 176
    const/4 v0, 0x4

    invoke-super {p0, p1, v0, p2}, Lcom/facebook/react/views/view/ReactViewManager;->setBorderColor(Lcom/facebook/react/views/view/ReactViewGroup;ILjava/lang/Integer;)V

    .line 177
    return-void
.end method

.method public bridge synthetic setBorderBottomEndRadius(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0

    .line 38
    check-cast p1, Lcom/horcrux/svg/SvgView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/SvgViewManager;->setBorderBottomEndRadius(Lcom/horcrux/svg/SvgView;Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public setBorderBottomEndRadius(Lcom/horcrux/svg/SvgView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "view"    # Lcom/horcrux/svg/SvgView;
    .param p2, "rawBorderRadius"    # Lcom/facebook/react/bridge/Dynamic;

    .line 366
    const/16 v0, 0x8

    invoke-super {p0, p1, v0, p2}, Lcom/facebook/react/views/view/ReactViewManager;->setBorderRadius(Lcom/facebook/react/views/view/ReactViewGroup;ILcom/facebook/react/bridge/Dynamic;)V

    .line 367
    return-void
.end method

.method public bridge synthetic setBorderBottomLeftRadius(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0

    .line 38
    check-cast p1, Lcom/horcrux/svg/SvgView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/SvgViewManager;->setBorderBottomLeftRadius(Lcom/horcrux/svg/SvgView;Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public setBorderBottomLeftRadius(Lcom/horcrux/svg/SvgView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "view"    # Lcom/horcrux/svg/SvgView;
    .param p2, "rawBorderRadius"    # Lcom/facebook/react/bridge/Dynamic;

    .line 346
    const/4 v0, 0x4

    invoke-super {p0, p1, v0, p2}, Lcom/facebook/react/views/view/ReactViewManager;->setBorderRadius(Lcom/facebook/react/views/view/ReactViewGroup;ILcom/facebook/react/bridge/Dynamic;)V

    .line 347
    return-void
.end method

.method public bridge synthetic setBorderBottomRightRadius(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0

    .line 38
    check-cast p1, Lcom/horcrux/svg/SvgView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/SvgViewManager;->setBorderBottomRightRadius(Lcom/horcrux/svg/SvgView;Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public setBorderBottomRightRadius(Lcom/horcrux/svg/SvgView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "view"    # Lcom/horcrux/svg/SvgView;
    .param p2, "rawBorderRadius"    # Lcom/facebook/react/bridge/Dynamic;

    .line 341
    const/4 v0, 0x3

    invoke-super {p0, p1, v0, p2}, Lcom/facebook/react/views/view/ReactViewManager;->setBorderRadius(Lcom/facebook/react/views/view/ReactViewGroup;ILcom/facebook/react/bridge/Dynamic;)V

    .line 342
    return-void
.end method

.method public bridge synthetic setBorderBottomStartRadius(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0

    .line 38
    check-cast p1, Lcom/horcrux/svg/SvgView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/SvgViewManager;->setBorderBottomStartRadius(Lcom/horcrux/svg/SvgView;Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public setBorderBottomStartRadius(Lcom/horcrux/svg/SvgView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "view"    # Lcom/horcrux/svg/SvgView;
    .param p2, "rawBorderRadius"    # Lcom/facebook/react/bridge/Dynamic;

    .line 361
    const/4 v0, 0x7

    invoke-super {p0, p1, v0, p2}, Lcom/facebook/react/views/view/ReactViewManager;->setBorderRadius(Lcom/facebook/react/views/view/ReactViewGroup;ILcom/facebook/react/bridge/Dynamic;)V

    .line 362
    return-void
.end method

.method public bridge synthetic setBorderColor(Landroid/view/View;Ljava/lang/Integer;)V
    .locals 0
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 38
    check-cast p1, Lcom/horcrux/svg/SvgView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/SvgViewManager;->setBorderColor(Lcom/horcrux/svg/SvgView;Ljava/lang/Integer;)V

    return-void
.end method

.method public setBorderColor(Lcom/horcrux/svg/SvgView;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "view"    # Lcom/horcrux/svg/SvgView;
    .param p2, "value"    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 201
    const/4 v0, 0x0

    invoke-super {p0, p1, v0, p2}, Lcom/facebook/react/views/view/ReactViewManager;->setBorderColor(Lcom/facebook/react/views/view/ReactViewGroup;ILjava/lang/Integer;)V

    .line 202
    return-void
.end method

.method public bridge synthetic setBorderEndColor(Landroid/view/View;Ljava/lang/Integer;)V
    .locals 0
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 38
    check-cast p1, Lcom/horcrux/svg/SvgView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/SvgViewManager;->setBorderEndColor(Lcom/horcrux/svg/SvgView;Ljava/lang/Integer;)V

    return-void
.end method

.method public setBorderEndColor(Lcom/horcrux/svg/SvgView;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "view"    # Lcom/horcrux/svg/SvgView;
    .param p2, "value"    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 231
    const/4 v0, 0x6

    invoke-super {p0, p1, v0, p2}, Lcom/facebook/react/views/view/ReactViewManager;->setBorderColor(Lcom/facebook/react/views/view/ReactViewGroup;ILjava/lang/Integer;)V

    .line 232
    return-void
.end method

.method public bridge synthetic setBorderEndEndRadius(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0

    .line 38
    check-cast p1, Lcom/horcrux/svg/SvgView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/SvgViewManager;->setBorderEndEndRadius(Lcom/horcrux/svg/SvgView;Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public setBorderEndEndRadius(Lcom/horcrux/svg/SvgView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "view"    # Lcom/horcrux/svg/SvgView;
    .param p2, "rawBorderRadius"    # Lcom/facebook/react/bridge/Dynamic;

    .line 371
    const/16 v0, 0x9

    invoke-super {p0, p1, v0, p2}, Lcom/facebook/react/views/view/ReactViewManager;->setBorderRadius(Lcom/facebook/react/views/view/ReactViewGroup;ILcom/facebook/react/bridge/Dynamic;)V

    .line 372
    return-void
.end method

.method public bridge synthetic setBorderEndStartRadius(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0

    .line 38
    check-cast p1, Lcom/horcrux/svg/SvgView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/SvgViewManager;->setBorderEndStartRadius(Lcom/horcrux/svg/SvgView;Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public setBorderEndStartRadius(Lcom/horcrux/svg/SvgView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "view"    # Lcom/horcrux/svg/SvgView;
    .param p2, "rawBorderRadius"    # Lcom/facebook/react/bridge/Dynamic;

    .line 376
    const/16 v0, 0xa

    invoke-super {p0, p1, v0, p2}, Lcom/facebook/react/views/view/ReactViewManager;->setBorderRadius(Lcom/facebook/react/views/view/ReactViewGroup;ILcom/facebook/react/bridge/Dynamic;)V

    .line 377
    return-void
.end method

.method public bridge synthetic setBorderLeftColor(Landroid/view/View;Ljava/lang/Integer;)V
    .locals 0
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 38
    check-cast p1, Lcom/horcrux/svg/SvgView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/SvgViewManager;->setBorderLeftColor(Lcom/horcrux/svg/SvgView;Ljava/lang/Integer;)V

    return-void
.end method

.method public setBorderLeftColor(Lcom/horcrux/svg/SvgView;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "view"    # Lcom/horcrux/svg/SvgView;
    .param p2, "value"    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 196
    const/4 v0, 0x1

    invoke-super {p0, p1, v0, p2}, Lcom/facebook/react/views/view/ReactViewManager;->setBorderColor(Lcom/facebook/react/views/view/ReactViewGroup;ILjava/lang/Integer;)V

    .line 197
    return-void
.end method

.method public bridge synthetic setBorderRadius(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0

    .line 38
    check-cast p1, Lcom/horcrux/svg/SvgView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/SvgViewManager;->setBorderRadius(Lcom/horcrux/svg/SvgView;Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public setBorderRadius(Lcom/horcrux/svg/SvgView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "view"    # Lcom/horcrux/svg/SvgView;
    .param p2, "rawBorderRadius"    # Lcom/facebook/react/bridge/Dynamic;

    .line 326
    const/4 v0, 0x0

    invoke-super {p0, p1, v0, p2}, Lcom/facebook/react/views/view/ReactViewManager;->setBorderRadius(Lcom/facebook/react/views/view/ReactViewGroup;ILcom/facebook/react/bridge/Dynamic;)V

    .line 327
    return-void
.end method

.method public bridge synthetic setBorderRightColor(Landroid/view/View;Ljava/lang/Integer;)V
    .locals 0
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 38
    check-cast p1, Lcom/horcrux/svg/SvgView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/SvgViewManager;->setBorderRightColor(Lcom/horcrux/svg/SvgView;Ljava/lang/Integer;)V

    return-void
.end method

.method public setBorderRightColor(Lcom/horcrux/svg/SvgView;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "view"    # Lcom/horcrux/svg/SvgView;
    .param p2, "value"    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 186
    const/4 v0, 0x2

    invoke-super {p0, p1, v0, p2}, Lcom/facebook/react/views/view/ReactViewManager;->setBorderColor(Lcom/facebook/react/views/view/ReactViewGroup;ILjava/lang/Integer;)V

    .line 187
    return-void
.end method

.method public bridge synthetic setBorderStartColor(Landroid/view/View;Ljava/lang/Integer;)V
    .locals 0
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 38
    check-cast p1, Lcom/horcrux/svg/SvgView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/SvgViewManager;->setBorderStartColor(Lcom/horcrux/svg/SvgView;Ljava/lang/Integer;)V

    return-void
.end method

.method public setBorderStartColor(Lcom/horcrux/svg/SvgView;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "view"    # Lcom/horcrux/svg/SvgView;
    .param p2, "value"    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 226
    const/4 v0, 0x5

    invoke-super {p0, p1, v0, p2}, Lcom/facebook/react/views/view/ReactViewManager;->setBorderColor(Lcom/facebook/react/views/view/ReactViewGroup;ILjava/lang/Integer;)V

    .line 227
    return-void
.end method

.method public bridge synthetic setBorderStartEndRadius(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0

    .line 38
    check-cast p1, Lcom/horcrux/svg/SvgView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/SvgViewManager;->setBorderStartEndRadius(Lcom/horcrux/svg/SvgView;Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public setBorderStartEndRadius(Lcom/horcrux/svg/SvgView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "view"    # Lcom/horcrux/svg/SvgView;
    .param p2, "rawBorderRadius"    # Lcom/facebook/react/bridge/Dynamic;

    .line 381
    const/16 v0, 0xb

    invoke-super {p0, p1, v0, p2}, Lcom/facebook/react/views/view/ReactViewManager;->setBorderRadius(Lcom/facebook/react/views/view/ReactViewGroup;ILcom/facebook/react/bridge/Dynamic;)V

    .line 382
    return-void
.end method

.method public bridge synthetic setBorderStartStartRadius(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0

    .line 38
    check-cast p1, Lcom/horcrux/svg/SvgView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/SvgViewManager;->setBorderStartStartRadius(Lcom/horcrux/svg/SvgView;Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public setBorderStartStartRadius(Lcom/horcrux/svg/SvgView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "view"    # Lcom/horcrux/svg/SvgView;
    .param p2, "rawBorderRadius"    # Lcom/facebook/react/bridge/Dynamic;

    .line 386
    const/16 v0, 0xc

    invoke-super {p0, p1, v0, p2}, Lcom/facebook/react/views/view/ReactViewManager;->setBorderRadius(Lcom/facebook/react/views/view/ReactViewGroup;ILcom/facebook/react/bridge/Dynamic;)V

    .line 387
    return-void
.end method

.method public bridge synthetic setBorderStyle(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 38
    check-cast p1, Lcom/horcrux/svg/SvgView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/SvgViewManager;->setBorderStyle(Lcom/horcrux/svg/SvgView;Ljava/lang/String;)V

    return-void
.end method

.method public setBorderStyle(Lcom/horcrux/svg/SvgView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lcom/horcrux/svg/SvgView;
    .param p2, "value"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 256
    invoke-super {p0, p1, p2}, Lcom/facebook/react/views/view/ReactViewManager;->setBorderStyle(Lcom/facebook/react/views/view/ReactViewGroup;Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method public bridge synthetic setBorderTopColor(Landroid/view/View;Ljava/lang/Integer;)V
    .locals 0
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 38
    check-cast p1, Lcom/horcrux/svg/SvgView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/SvgViewManager;->setBorderTopColor(Lcom/horcrux/svg/SvgView;Ljava/lang/Integer;)V

    return-void
.end method

.method public setBorderTopColor(Lcom/horcrux/svg/SvgView;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "view"    # Lcom/horcrux/svg/SvgView;
    .param p2, "value"    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 301
    const/4 v0, 0x3

    invoke-super {p0, p1, v0, p2}, Lcom/facebook/react/views/view/ReactViewManager;->setBorderColor(Lcom/facebook/react/views/view/ReactViewGroup;ILjava/lang/Integer;)V

    .line 302
    return-void
.end method

.method public bridge synthetic setBorderTopEndRadius(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0

    .line 38
    check-cast p1, Lcom/horcrux/svg/SvgView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/SvgViewManager;->setBorderTopEndRadius(Lcom/horcrux/svg/SvgView;Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public setBorderTopEndRadius(Lcom/horcrux/svg/SvgView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "view"    # Lcom/horcrux/svg/SvgView;
    .param p2, "rawBorderRadius"    # Lcom/facebook/react/bridge/Dynamic;

    .line 356
    const/4 v0, 0x6

    invoke-super {p0, p1, v0, p2}, Lcom/facebook/react/views/view/ReactViewManager;->setBorderRadius(Lcom/facebook/react/views/view/ReactViewGroup;ILcom/facebook/react/bridge/Dynamic;)V

    .line 357
    return-void
.end method

.method public bridge synthetic setBorderTopLeftRadius(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0

    .line 38
    check-cast p1, Lcom/horcrux/svg/SvgView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/SvgViewManager;->setBorderTopLeftRadius(Lcom/horcrux/svg/SvgView;Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public setBorderTopLeftRadius(Lcom/horcrux/svg/SvgView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "view"    # Lcom/horcrux/svg/SvgView;
    .param p2, "rawBorderRadius"    # Lcom/facebook/react/bridge/Dynamic;

    .line 331
    const/4 v0, 0x1

    invoke-super {p0, p1, v0, p2}, Lcom/facebook/react/views/view/ReactViewManager;->setBorderRadius(Lcom/facebook/react/views/view/ReactViewGroup;ILcom/facebook/react/bridge/Dynamic;)V

    .line 332
    return-void
.end method

.method public bridge synthetic setBorderTopRightRadius(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0

    .line 38
    check-cast p1, Lcom/horcrux/svg/SvgView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/SvgViewManager;->setBorderTopRightRadius(Lcom/horcrux/svg/SvgView;Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public setBorderTopRightRadius(Lcom/horcrux/svg/SvgView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "view"    # Lcom/horcrux/svg/SvgView;
    .param p2, "rawBorderRadius"    # Lcom/facebook/react/bridge/Dynamic;

    .line 336
    const/4 v0, 0x2

    invoke-super {p0, p1, v0, p2}, Lcom/facebook/react/views/view/ReactViewManager;->setBorderRadius(Lcom/facebook/react/views/view/ReactViewGroup;ILcom/facebook/react/bridge/Dynamic;)V

    .line 337
    return-void
.end method

.method public bridge synthetic setBorderTopStartRadius(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0

    .line 38
    check-cast p1, Lcom/horcrux/svg/SvgView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/SvgViewManager;->setBorderTopStartRadius(Lcom/horcrux/svg/SvgView;Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public setBorderTopStartRadius(Lcom/horcrux/svg/SvgView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "view"    # Lcom/horcrux/svg/SvgView;
    .param p2, "rawBorderRadius"    # Lcom/facebook/react/bridge/Dynamic;

    .line 351
    const/4 v0, 0x5

    invoke-super {p0, p1, v0, p2}, Lcom/facebook/react/views/view/ReactViewManager;->setBorderRadius(Lcom/facebook/react/views/view/ReactViewGroup;ILcom/facebook/react/bridge/Dynamic;)V

    .line 352
    return-void
.end method

.method public bridge synthetic setColor(Landroid/view/View;Ljava/lang/Integer;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "color"
    .end annotation

    .line 38
    check-cast p1, Lcom/horcrux/svg/SvgView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/SvgViewManager;->setColor(Lcom/horcrux/svg/SvgView;Ljava/lang/Integer;)V

    return-void
.end method

.method public setColor(Lcom/horcrux/svg/SvgView;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "node"    # Lcom/horcrux/svg/SvgView;
    .param p2, "color"    # Ljava/lang/Integer;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "color"
    .end annotation

    .line 105
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/SvgView;->setCurrentColor(Ljava/lang/Integer;)V

    .line 106
    return-void
.end method

.method public bridge synthetic setFocusable(Landroid/view/View;Z)V
    .locals 0

    .line 38
    check-cast p1, Lcom/horcrux/svg/SvgView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/SvgViewManager;->setFocusable(Lcom/horcrux/svg/SvgView;Z)V

    return-void
.end method

.method public setFocusable(Lcom/horcrux/svg/SvgView;Z)V
    .locals 0
    .param p1, "view"    # Lcom/horcrux/svg/SvgView;
    .param p2, "value"    # Z

    .line 236
    invoke-super {p0, p1, p2}, Lcom/facebook/react/views/view/ReactViewManager;->setFocusable(Lcom/facebook/react/views/view/ReactViewGroup;Z)V

    .line 237
    return-void
.end method

.method public bridge synthetic setHasTVPreferredFocus(Landroid/view/View;Z)V
    .locals 0

    .line 38
    check-cast p1, Lcom/horcrux/svg/SvgView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/SvgViewManager;->setHasTVPreferredFocus(Lcom/horcrux/svg/SvgView;Z)V

    return-void
.end method

.method public setHasTVPreferredFocus(Lcom/horcrux/svg/SvgView;Z)V
    .locals 0
    .param p1, "view"    # Lcom/horcrux/svg/SvgView;
    .param p2, "value"    # Z

    .line 171
    invoke-super {p0, p1, p2}, Lcom/facebook/react/views/view/ReactViewManager;->setTVPreferredFocus(Lcom/facebook/react/views/view/ReactViewGroup;Z)V

    .line 172
    return-void
.end method

.method public bridge synthetic setHitSlop(Landroid/view/View;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0

    .line 38
    check-cast p1, Lcom/horcrux/svg/SvgView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/SvgViewManager;->setHitSlop(Lcom/horcrux/svg/SvgView;Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public setHitSlop(Lcom/horcrux/svg/SvgView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 8
    .param p1, "view"    # Lcom/horcrux/svg/SvgView;
    .param p2, "hitSlop"    # Lcom/facebook/react/bridge/Dynamic;

    .line 268
    sget-object v0, Lcom/horcrux/svg/SvgViewManager$1;->$SwitchMap$com$facebook$react$bridge$ReadableType:[I

    invoke-interface {p2}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReadableType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid type for \'hitSlop\' value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReactNative"

    invoke-static {v1, v0}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 287
    :pswitch_0
    invoke-interface {p2}, Lcom/facebook/react/bridge/Dynamic;->asDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(D)F

    move-result v0

    float-to-int v0, v0

    .line 288
    .local v0, "hitSlopValue":I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v1}, Lcom/horcrux/svg/SvgView;->setHitSlopRect(Landroid/graphics/Rect;)V

    .line 289
    goto :goto_5

    .line 270
    .end local v0    # "hitSlopValue":I
    :pswitch_1
    invoke-interface {p2}, Lcom/facebook/react/bridge/Dynamic;->asMap()Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v0

    .line 271
    .local v0, "hitSlopMap":Lcom/facebook/react/bridge/ReadableMap;
    new-instance v1, Landroid/graphics/Rect;

    .line 273
    const-string v2, "left"

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 274
    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(D)F

    move-result v2

    float-to-int v2, v2

    goto :goto_0

    .line 275
    :cond_0
    move v2, v4

    .line 276
    :goto_0
    const-string v3, "top"

    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 277
    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(D)F

    move-result v3

    float-to-int v3, v3

    goto :goto_1

    .line 278
    :cond_1
    move v3, v4

    .line 279
    :goto_1
    const-string v5, "right"

    invoke-interface {v0, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 280
    invoke-interface {v0, v5}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(D)F

    move-result v5

    float-to-int v5, v5

    goto :goto_2

    .line 281
    :cond_2
    move v5, v4

    .line 282
    :goto_2
    const-string v6, "bottom"

    invoke-interface {v0, v6}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 283
    invoke-interface {v0, v6}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(D)F

    move-result v4

    float-to-int v4, v4

    goto :goto_3

    .line 284
    :cond_3
    nop

    :goto_3
    invoke-direct {v1, v2, v3, v5, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 271
    invoke-virtual {p1, v1}, Lcom/horcrux/svg/SvgView;->setHitSlopRect(Landroid/graphics/Rect;)V

    .line 285
    goto :goto_5

    .line 294
    .end local v0    # "hitSlopMap":Lcom/facebook/react/bridge/ReadableMap;
    :goto_4
    :pswitch_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/horcrux/svg/SvgView;->setHitSlopRect(Landroid/graphics/Rect;)V

    .line 297
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic setMeetOrSlice(Landroid/view/View;I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "meetOrSlice"
    .end annotation

    .line 38
    check-cast p1, Lcom/horcrux/svg/SvgView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/SvgViewManager;->setMeetOrSlice(Lcom/horcrux/svg/SvgView;I)V

    return-void
.end method

.method public setMeetOrSlice(Lcom/horcrux/svg/SvgView;I)V
    .locals 0
    .param p1, "node"    # Lcom/horcrux/svg/SvgView;
    .param p2, "meetOrSlice"    # I
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "meetOrSlice"
    .end annotation

    .line 151
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/SvgView;->setMeetOrSlice(I)V

    .line 152
    return-void
.end method

.method public bridge synthetic setMinX(Landroid/view/View;F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "minX"
    .end annotation

    .line 38
    check-cast p1, Lcom/horcrux/svg/SvgView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/SvgViewManager;->setMinX(Lcom/horcrux/svg/SvgView;F)V

    return-void
.end method

.method public setMinX(Lcom/horcrux/svg/SvgView;F)V
    .locals 0
    .param p1, "node"    # Lcom/horcrux/svg/SvgView;
    .param p2, "minX"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "minX"
    .end annotation

    .line 111
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/SvgView;->setMinX(F)V

    .line 112
    return-void
.end method

.method public bridge synthetic setMinY(Landroid/view/View;F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "minY"
    .end annotation

    .line 38
    check-cast p1, Lcom/horcrux/svg/SvgView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/SvgViewManager;->setMinY(Lcom/horcrux/svg/SvgView;F)V

    return-void
.end method

.method public setMinY(Lcom/horcrux/svg/SvgView;F)V
    .locals 0
    .param p1, "node"    # Lcom/horcrux/svg/SvgView;
    .param p2, "minY"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "minY"
    .end annotation

    .line 117
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/SvgView;->setMinY(F)V

    .line 118
    return-void
.end method

.method public bridge synthetic setNativeBackgroundAndroid(Landroid/view/View;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0
    .param p2    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 38
    check-cast p1, Lcom/horcrux/svg/SvgView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/SvgViewManager;->setNativeBackgroundAndroid(Lcom/horcrux/svg/SvgView;Lcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method

.method public setNativeBackgroundAndroid(Lcom/horcrux/svg/SvgView;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0
    .param p1, "view"    # Lcom/horcrux/svg/SvgView;
    .param p2, "value"    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 241
    invoke-super {p0, p1, p2}, Lcom/facebook/react/views/view/ReactViewManager;->setNativeBackground(Lcom/facebook/react/views/view/ReactViewGroup;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 242
    return-void
.end method

.method public bridge synthetic setNativeForegroundAndroid(Landroid/view/View;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0
    .param p2    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 38
    check-cast p1, Lcom/horcrux/svg/SvgView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/SvgViewManager;->setNativeForegroundAndroid(Lcom/horcrux/svg/SvgView;Lcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method

.method public setNativeForegroundAndroid(Lcom/horcrux/svg/SvgView;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0
    .param p1, "view"    # Lcom/horcrux/svg/SvgView;
    .param p2, "value"    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 246
    invoke-super {p0, p1, p2}, Lcom/facebook/react/views/view/ReactViewManager;->setNativeForeground(Lcom/facebook/react/views/view/ReactViewGroup;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 247
    return-void
.end method

.method public bridge synthetic setNeedsOffscreenAlphaCompositing(Landroid/view/View;Z)V
    .locals 0

    .line 38
    check-cast p1, Lcom/horcrux/svg/SvgView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/SvgViewManager;->setNeedsOffscreenAlphaCompositing(Lcom/horcrux/svg/SvgView;Z)V

    return-void
.end method

.method public setNeedsOffscreenAlphaCompositing(Lcom/horcrux/svg/SvgView;Z)V
    .locals 0
    .param p1, "view"    # Lcom/horcrux/svg/SvgView;
    .param p2, "value"    # Z

    .line 261
    invoke-super {p0, p1, p2}, Lcom/facebook/react/views/view/ReactViewManager;->setNeedsOffscreenAlphaCompositing(Lcom/facebook/react/views/view/ReactViewGroup;Z)V

    .line 262
    return-void
.end method

.method public bridge synthetic setNextFocusDown(Landroid/view/View;I)V
    .locals 0

    .line 38
    check-cast p1, Lcom/horcrux/svg/SvgView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/SvgViewManager;->setNextFocusDown(Lcom/horcrux/svg/SvgView;I)V

    return-void
.end method

.method public setNextFocusDown(Lcom/horcrux/svg/SvgView;I)V
    .locals 0
    .param p1, "view"    # Lcom/horcrux/svg/SvgView;
    .param p2, "value"    # I

    .line 181
    invoke-super {p0, p1, p2}, Lcom/facebook/react/views/view/ReactViewManager;->nextFocusDown(Lcom/facebook/react/views/view/ReactViewGroup;I)V

    .line 182
    return-void
.end method

.method public bridge synthetic setNextFocusForward(Landroid/view/View;I)V
    .locals 0

    .line 38
    check-cast p1, Lcom/horcrux/svg/SvgView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/SvgViewManager;->setNextFocusForward(Lcom/horcrux/svg/SvgView;I)V

    return-void
.end method

.method public setNextFocusForward(Lcom/horcrux/svg/SvgView;I)V
    .locals 0
    .param p1, "view"    # Lcom/horcrux/svg/SvgView;
    .param p2, "value"    # I

    .line 211
    invoke-super {p0, p1, p2}, Lcom/facebook/react/views/view/ReactViewManager;->nextFocusForward(Lcom/facebook/react/views/view/ReactViewGroup;I)V

    .line 212
    return-void
.end method

.method public bridge synthetic setNextFocusLeft(Landroid/view/View;I)V
    .locals 0

    .line 38
    check-cast p1, Lcom/horcrux/svg/SvgView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/SvgViewManager;->setNextFocusLeft(Lcom/horcrux/svg/SvgView;I)V

    return-void
.end method

.method public setNextFocusLeft(Lcom/horcrux/svg/SvgView;I)V
    .locals 0
    .param p1, "view"    # Lcom/horcrux/svg/SvgView;
    .param p2, "value"    # I

    .line 306
    invoke-super {p0, p1, p2}, Lcom/facebook/react/views/view/ReactViewManager;->nextFocusLeft(Lcom/facebook/react/views/view/ReactViewGroup;I)V

    .line 307
    return-void
.end method

.method public bridge synthetic setNextFocusRight(Landroid/view/View;I)V
    .locals 0

    .line 38
    check-cast p1, Lcom/horcrux/svg/SvgView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/SvgViewManager;->setNextFocusRight(Lcom/horcrux/svg/SvgView;I)V

    return-void
.end method

.method public setNextFocusRight(Lcom/horcrux/svg/SvgView;I)V
    .locals 0
    .param p1, "view"    # Lcom/horcrux/svg/SvgView;
    .param p2, "value"    # I

    .line 191
    invoke-super {p0, p1, p2}, Lcom/facebook/react/views/view/ReactViewManager;->nextFocusRight(Lcom/facebook/react/views/view/ReactViewGroup;I)V

    .line 192
    return-void
.end method

.method public bridge synthetic setNextFocusUp(Landroid/view/View;I)V
    .locals 0

    .line 38
    check-cast p1, Lcom/horcrux/svg/SvgView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/SvgViewManager;->setNextFocusUp(Lcom/horcrux/svg/SvgView;I)V

    return-void
.end method

.method public setNextFocusUp(Lcom/horcrux/svg/SvgView;I)V
    .locals 0
    .param p1, "view"    # Lcom/horcrux/svg/SvgView;
    .param p2, "value"    # I

    .line 216
    invoke-super {p0, p1, p2}, Lcom/facebook/react/views/view/ReactViewManager;->nextFocusUp(Lcom/facebook/react/views/view/ReactViewGroup;I)V

    .line 217
    return-void
.end method

.method public bridge synthetic setPointerEvents(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "pointerEvents"
    .end annotation

    .line 38
    check-cast p1, Lcom/horcrux/svg/SvgView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/SvgViewManager;->setPointerEvents(Lcom/horcrux/svg/SvgView;Ljava/lang/String;)V

    return-void
.end method

.method public setPointerEvents(Lcom/horcrux/svg/SvgView;Ljava/lang/String;)V
    .locals 6
    .param p1, "view"    # Lcom/horcrux/svg/SvgView;
    .param p2, "pointerEventsStr"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "pointerEvents"
    .end annotation

    .line 157
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 158
    .local v0, "superclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 159
    const-string v1, "setPointerEvents"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lcom/facebook/react/uimanager/PointerEvents;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 160
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 161
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 162
    invoke-virtual {p2, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    const-string v4, "_"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/react/uimanager/PointerEvents;->valueOf(Ljava/lang/String;)Lcom/facebook/react/uimanager/PointerEvents;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 161
    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .end local v0    # "superclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :cond_0
    goto :goto_1

    .line 164
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 167
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    return-void
.end method

.method public bridge synthetic setRemoveClippedSubviews(Landroid/view/View;Z)V
    .locals 0

    .line 38
    check-cast p1, Lcom/horcrux/svg/SvgView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/SvgViewManager;->setRemoveClippedSubviews(Lcom/horcrux/svg/SvgView;Z)V

    return-void
.end method

.method public setRemoveClippedSubviews(Lcom/horcrux/svg/SvgView;Z)V
    .locals 0
    .param p1, "view"    # Lcom/horcrux/svg/SvgView;
    .param p2, "value"    # Z

    .line 206
    invoke-super {p0, p1, p2}, Lcom/facebook/react/views/view/ReactViewManager;->setRemoveClippedSubviews(Lcom/facebook/react/views/view/ReactViewGroup;Z)V

    .line 207
    return-void
.end method

.method public bridge synthetic setVbHeight(Landroid/view/View;F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "vbHeight"
    .end annotation

    .line 38
    check-cast p1, Lcom/horcrux/svg/SvgView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/SvgViewManager;->setVbHeight(Lcom/horcrux/svg/SvgView;F)V

    return-void
.end method

.method public setVbHeight(Lcom/horcrux/svg/SvgView;F)V
    .locals 0
    .param p1, "node"    # Lcom/horcrux/svg/SvgView;
    .param p2, "vbHeight"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "vbHeight"
    .end annotation

    .line 129
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/SvgView;->setVbHeight(F)V

    .line 130
    return-void
.end method

.method public bridge synthetic setVbWidth(Landroid/view/View;F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "vbWidth"
    .end annotation

    .line 38
    check-cast p1, Lcom/horcrux/svg/SvgView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/SvgViewManager;->setVbWidth(Lcom/horcrux/svg/SvgView;F)V

    return-void
.end method

.method public setVbWidth(Lcom/horcrux/svg/SvgView;F)V
    .locals 0
    .param p1, "node"    # Lcom/horcrux/svg/SvgView;
    .param p2, "vbWidth"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "vbWidth"
    .end annotation

    .line 123
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/SvgView;->setVbWidth(F)V

    .line 124
    return-void
.end method

.method public bridge synthetic updateExtraData(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 38
    check-cast p1, Lcom/facebook/react/views/view/ReactViewGroup;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/SvgViewManager;->updateExtraData(Lcom/facebook/react/views/view/ReactViewGroup;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic updateExtraData(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 0

    .line 38
    check-cast p1, Lcom/facebook/react/views/view/ReactViewGroup;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/SvgViewManager;->updateExtraData(Lcom/facebook/react/views/view/ReactViewGroup;Ljava/lang/Object;)V

    return-void
.end method

.method public updateExtraData(Lcom/facebook/react/views/view/ReactViewGroup;Ljava/lang/Object;)V
    .locals 0
    .param p1, "root"    # Lcom/facebook/react/views/view/ReactViewGroup;
    .param p2, "extraData"    # Ljava/lang/Object;

    .line 87
    invoke-super {p0, p1, p2}, Lcom/facebook/react/views/view/ReactViewManager;->updateExtraData(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 88
    invoke-virtual {p1}, Lcom/facebook/react/views/view/ReactViewGroup;->invalidate()V

    .line 89
    return-void
.end method
