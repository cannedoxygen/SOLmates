.class public Lcom/facebook/react/uimanager/NativeViewHierarchyManager;
.super Ljava/lang/Object;
.source "NativeViewHierarchyManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final DEBUG_MODE:Z

.field private final mBoundingBox:Landroid/graphics/RectF;

.field private final mJSResponderHandler:Lcom/facebook/react/touch/JSResponderHandler;

.field private volatile mLayoutAnimationEnabled:Z

.field private final mLayoutAnimator:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;

.field private mPendingDeletionsForTag:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mRootTags:Landroid/util/SparseBooleanArray;

.field private final mRootViewManager:Lcom/facebook/react/uimanager/RootViewManager;

.field private final mTagsToViewManagers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/react/uimanager/ViewManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mTagsToViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewManagers:Lcom/facebook/react/uimanager/ViewManagerRegistry;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPendingDeletionsForTag(Lcom/facebook/react/uimanager/NativeViewHierarchyManager;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mPendingDeletionsForTag:Ljava/util/HashMap;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 70
    const-class v0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/uimanager/ViewManagerRegistry;)V
    .locals 1
    .param p1, "viewManagers"    # Lcom/facebook/react/uimanager/ViewManagerRegistry;

    .line 86
    new-instance v0, Lcom/facebook/react/uimanager/RootViewManager;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/RootViewManager;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;-><init>(Lcom/facebook/react/uimanager/ViewManagerRegistry;Lcom/facebook/react/uimanager/RootViewManager;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/uimanager/ViewManagerRegistry;Lcom/facebook/react/uimanager/RootViewManager;)V
    .locals 1
    .param p1, "viewManagers"    # Lcom/facebook/react/uimanager/ViewManagerRegistry;
    .param p2, "manager"    # Lcom/facebook/react/uimanager/RootViewManager;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    sget-boolean v0, Lcom/facebook/react/common/build/ReactBuildConfig;->DEBUG:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->DEBUG_MODE:Z

    .line 77
    new-instance v0, Lcom/facebook/react/touch/JSResponderHandler;

    invoke-direct {v0}, Lcom/facebook/react/touch/JSResponderHandler;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mJSResponderHandler:Lcom/facebook/react/touch/JSResponderHandler;

    .line 79
    new-instance v0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mLayoutAnimator:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;

    .line 80
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mBoundingBox:Landroid/graphics/RectF;

    .line 90
    iput-object p1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mViewManagers:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    .line 91
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    .line 92
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViewManagers:Landroid/util/SparseArray;

    .line 93
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mRootTags:Landroid/util/SparseBooleanArray;

    .line 94
    iput-object p2, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mRootViewManager:Lcom/facebook/react/uimanager/RootViewManager;

    .line 95
    return-void
.end method

.method private arrayContains([II)Z
    .locals 4
    .param p1, "array"    # [I
    .param p2, "ele"    # I

    .line 553
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 554
    return v0

    .line 556
    :cond_0
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p1, v2

    .line 557
    .local v3, "curEle":I
    if-ne v3, p2, :cond_1

    .line 558
    const/4 v0, 0x1

    return v0

    .line 556
    .end local v3    # "curEle":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 561
    :cond_2
    return v0
.end method

.method private computeBoundingBox(Landroid/view/View;[I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outputBuffer"    # [I

    .line 717
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mBoundingBox:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 718
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mBoundingBox:Landroid/graphics/RectF;

    invoke-direct {p0, p1, v0}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mapRectFromViewToWindowCoords(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 720
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mBoundingBox:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x0

    aput v0, p2, v1

    .line 721
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mBoundingBox:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x1

    aput v0, p2, v1

    .line 722
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mBoundingBox:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mBoundingBox:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x2

    aput v0, p2, v1

    .line 723
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mBoundingBox:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mBoundingBox:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x3

    aput v0, p2, v1

    .line 724
    return-void
.end method

.method private static constructManageChildrenErrorMessage(Landroid/view/ViewGroup;Lcom/facebook/react/uimanager/ViewGroupManager;[I[Lcom/facebook/react/uimanager/ViewAtIndex;[I)Ljava/lang/String;
    .locals 10
    .param p0, "viewToManage"    # Landroid/view/ViewGroup;
    .param p1, "viewManager"    # Lcom/facebook/react/uimanager/ViewGroupManager;
    .param p2, "indicesToRemove"    # [I
    .param p3, "viewsToAdd"    # [Lcom/facebook/react/uimanager/ViewAtIndex;
    .param p4, "tagsToDelete"    # [I

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, " ],\n"

    const-string v2, ","

    const-string v3, "): [\n"

    const-string v4, "\n"

    const/16 v5, 0x10

    if-eqz p0, :cond_2

    .line 309
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "View tag:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 311
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " View Type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 313
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 309
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  children("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1, p0}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildCount(Landroid/view/ViewGroup;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_0
    invoke-virtual {p1, p0, v6}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildAt(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 317
    const/4 v7, 0x0

    .line 318
    .local v7, "innerOffset":I
    :goto_1
    add-int v8, v6, v7

    invoke-virtual {p1, p0, v8}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildAt(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_0

    if-ge v7, v5, :cond_0

    .line 320
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    add-int v9, v6, v7

    .line 321
    invoke-virtual {p1, p0, v9}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildAt(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 320
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 323
    .end local v7    # "innerOffset":I
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    add-int/lit8 v6, v6, 0x10

    goto :goto_0

    .line 325
    .end local v6    # "index":I
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    :cond_2
    if-eqz p2, :cond_5

    .line 329
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  indicesToRemove("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, p2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    const/4 v6, 0x0

    .restart local v6    # "index":I
    :goto_2
    array-length v7, p2

    if-ge v6, v7, :cond_4

    .line 331
    const/4 v7, 0x0

    .line 332
    .restart local v7    # "innerOffset":I
    :goto_3
    add-int v8, v6, v7

    array-length v9, p2

    if-ge v8, v9, :cond_3

    if-ge v7, v5, :cond_3

    .line 334
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    add-int v9, v6, v7

    aget v9, p2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 336
    .end local v7    # "innerOffset":I
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    add-int/lit8 v6, v6, 0x10

    goto :goto_2

    .line 338
    .end local v6    # "index":I
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    :cond_5
    if-eqz p3, :cond_8

    .line 341
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  viewsToAdd("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, p3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    const/4 v6, 0x0

    .restart local v6    # "index":I
    :goto_4
    array-length v7, p3

    if-ge v6, v7, :cond_7

    .line 343
    const/4 v7, 0x0

    .line 344
    .restart local v7    # "innerOffset":I
    :goto_5
    add-int v8, v6, v7

    array-length v9, p3

    if-ge v8, v9, :cond_6

    if-ge v7, v5, :cond_6

    .line 346
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int v9, v6, v7

    aget-object v9, p3, v9

    iget v9, v9, Lcom/facebook/react/uimanager/ViewAtIndex;->mIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int v9, v6, v7

    aget-object v9, p3, v9

    iget v9, v9, Lcom/facebook/react/uimanager/ViewAtIndex;->mTag:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "],"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 353
    .end local v7    # "innerOffset":I
    :cond_6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    add-int/lit8 v6, v6, 0x10

    goto :goto_4

    .line 355
    .end local v6    # "index":I
    :cond_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    :cond_8
    if-eqz p4, :cond_b

    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  tagsToDelete("

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v6, p4

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_6
    array-length v3, p4

    if-ge v1, v3, :cond_a

    .line 360
    const/4 v3, 0x0

    .line 361
    .local v3, "innerOffset":I
    :goto_7
    add-int v6, v1, v3

    array-length v7, p4

    if-ge v6, v7, :cond_9

    if-ge v3, v5, :cond_9

    .line 363
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int v7, v1, v3

    aget v7, p4, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 365
    .end local v3    # "innerOffset":I
    :cond_9
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    add-int/lit8 v1, v1, 0x10

    goto :goto_6

    .line 367
    .end local v1    # "index":I
    :cond_a
    const-string v1, " ]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static constructSetChildrenErrorMessage(Landroid/view/ViewGroup;Lcom/facebook/react/uimanager/ViewGroupManager;Lcom/facebook/react/bridge/ReadableArray;)Ljava/lang/String;
    .locals 4
    .param p0, "viewToManage"    # Landroid/view/ViewGroup;
    .param p1, "viewManager"    # Lcom/facebook/react/uimanager/ViewGroupManager;
    .param p2, "childrenTags"    # Lcom/facebook/react/bridge/ReadableArray;

    .line 570
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    new-array v0, v0, [Lcom/facebook/react/uimanager/ViewAtIndex;

    .line 571
    .local v0, "viewsToAdd":[Lcom/facebook/react/uimanager/ViewAtIndex;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 572
    new-instance v2, Lcom/facebook/react/uimanager/ViewAtIndex;

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v3

    invoke-direct {v2, v3, v1}, Lcom/facebook/react/uimanager/ViewAtIndex;-><init>(II)V

    aput-object v2, v0, v1

    .line 571
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 574
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, v1}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->constructManageChildrenErrorMessage(Landroid/view/ViewGroup;Lcom/facebook/react/uimanager/ViewGroupManager;[I[Lcom/facebook/react/uimanager/ViewAtIndex;[I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getPendingDeletionsForTag(I)Ljava/util/Set;
    .locals 3
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 374
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mPendingDeletionsForTag:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 375
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mPendingDeletionsForTag:Ljava/util/HashMap;

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mPendingDeletionsForTag:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 379
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mPendingDeletionsForTag:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mPendingDeletionsForTag:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method private getReactContextForView(I)Lcom/facebook/react/uimanager/ThemedReactContext;
    .locals 4
    .param p1, "reactTag"    # I

    .line 882
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 883
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 886
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/ThemedReactContext;

    return-object v1

    .line 884
    :cond_0
    new-instance v1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find view with tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private mapRectFromViewToWindowCoords(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/RectF;

    .line 727
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 728
    .local v0, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_0

    .line 729
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 732
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 734
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 735
    .local v1, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_2

    .line 736
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    .line 738
    .local v2, "parentView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p2, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 740
    invoke-virtual {v2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 741
    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v3

    if-nez v3, :cond_1

    .line 742
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 745
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 747
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 748
    .end local v2    # "parentView":Landroid/view/View;
    goto :goto_0

    .line 749
    :cond_2
    return-void
.end method

.method private updateInstanceHandle(Landroid/view/View;J)V
    .locals 2
    .param p1, "viewToUpdate"    # Landroid/view/View;
    .param p2, "instanceHandle"    # J

    .line 244
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 245
    sget v0, Lcom/facebook/react/R$id;->view_tag_instance_handle:I

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 246
    return-void
.end method

.method private updateLayout(Landroid/view/View;IIII)V
    .locals 7
    .param p1, "viewToUpdate"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 262
    iget-boolean v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mLayoutAnimationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mLayoutAnimator:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->shouldAnimateLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mLayoutAnimator:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->applyLayoutUpdate(Landroid/view/View;IIII)V

    goto :goto_0

    .line 265
    :cond_0
    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 267
    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addRootView(ILandroid/view/View;)V
    .locals 0
    .param p1, "tag"    # I
    .param p2, "view"    # Landroid/view/View;

    monitor-enter p0

    .line 605
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->addRootViewGroup(ILandroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 606
    monitor-exit p0

    return-void

    .line 604
    .end local p0    # "this":Lcom/facebook/react/uimanager/NativeViewHierarchyManager;
    .end local p1    # "tag":I
    .end local p2    # "view":Landroid/view/View;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected final declared-synchronized addRootViewGroup(ILandroid/view/View;)V
    .locals 4
    .param p1, "tag"    # I
    .param p2, "view"    # Landroid/view/View;

    monitor-enter p0

    .line 609
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->DEBUG_MODE:Z

    if-eqz v0, :cond_1

    .line 610
    sget-object v0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->TAG:Ljava/lang/String;

    const-string v1, "addRootViewGroup[%d]: %s"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .end local p0    # "this":Lcom/facebook/react/uimanager/NativeViewHierarchyManager;
    :cond_0
    const-string v3, "<null>"

    :goto_0
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 612
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 613
    sget-object v0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to add a root view with an explicit id ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 616
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") already set. React Native uses the id field to track react tags and will overwrite this field. If that is fine, explicitly overwrite the id field to View.NO_ID before calling addRootView."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 613
    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    :cond_2
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 623
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViewManagers:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mRootViewManager:Lcom/facebook/react/uimanager/RootViewManager;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 624
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mRootTags:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 625
    invoke-virtual {p2, p1}, Landroid/view/View;->setId(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 626
    monitor-exit p0

    return-void

    .line 608
    .end local p1    # "tag":I
    .end local p2    # "view":Landroid/view/View;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized clearJSResponder()V
    .locals 1

    monitor-enter p0

    .line 818
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mJSResponderHandler:Lcom/facebook/react/touch/JSResponderHandler;

    invoke-virtual {v0}, Lcom/facebook/react/touch/JSResponderHandler;->clearJSResponder()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 819
    monitor-exit p0

    return-void

    .line 817
    .end local p0    # "this":Lcom/facebook/react/uimanager/NativeViewHierarchyManager;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized clearLayoutAnimation()V
    .locals 1

    monitor-enter p0

    .line 827
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mLayoutAnimator:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 828
    monitor-exit p0

    return-void

    .line 826
    .end local p0    # "this":Lcom/facebook/react/uimanager/NativeViewHierarchyManager;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized configureLayoutAnimation(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .param p1, "config"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p2, "onAnimationComplete"    # Lcom/facebook/react/bridge/Callback;

    monitor-enter p0

    .line 823
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mLayoutAnimator:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->initializeFromConfig(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 824
    monitor-exit p0

    return-void

    .line 822
    .end local p0    # "this":Lcom/facebook/react/uimanager/NativeViewHierarchyManager;
    .end local p1    # "config":Lcom/facebook/react/bridge/ReadableMap;
    .end local p2    # "onAnimationComplete":Lcom/facebook/react/bridge/Callback;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized createView(Lcom/facebook/react/uimanager/ThemedReactContext;ILjava/lang/String;Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V
    .locals 9
    .param p1, "themedContext"    # Lcom/facebook/react/uimanager/ThemedReactContext;
    .param p2, "tag"    # I
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "initialProps"    # Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    monitor-enter p0

    .line 274
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->DEBUG_MODE:Z

    if-eqz v0, :cond_1

    .line 275
    sget-object v0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->TAG:Ljava/lang/String;

    const-string v1, "createView[%d]: %s %s"

    .line 278
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 280
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .end local p0    # "this":Lcom/facebook/react/uimanager/NativeViewHierarchyManager;
    :cond_0
    const-string v3, "<null>"

    .line 275
    :goto_0
    invoke-static {v0, v1, v2, p3, v3}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 282
    :cond_1
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 283
    const-string v0, "NativeViewHierarchyManager_createView"

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, v0}, Lcom/facebook/systrace/SystraceMessage;->beginSection(JLjava/lang/String;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v0

    const-string/jumbo v3, "tag"

    .line 285
    invoke-virtual {v0, v3, p2}, Lcom/facebook/systrace/SystraceMessage$Builder;->arg(Ljava/lang/String;I)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v0

    const-string v3, "className"

    .line 286
    invoke-virtual {v0, v3, p3}, Lcom/facebook/systrace/SystraceMessage$Builder;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v0

    .line 287
    invoke-virtual {v0}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 289
    :try_start_1
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mViewManagers:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    invoke-virtual {v0, p3}, Lcom/facebook/react/uimanager/ViewManagerRegistry;->get(Ljava/lang/String;)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v0

    .line 291
    .local v0, "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    iget-object v8, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mJSResponderHandler:Lcom/facebook/react/touch/JSResponderHandler;

    .line 292
    const/4 v7, 0x0

    move-object v3, v0

    move v4, p2

    move-object v5, p1

    move-object v6, p4

    invoke-virtual/range {v3 .. v8}, Lcom/facebook/react/uimanager/ViewManager;->createView(ILcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/uimanager/StateWrapper;Lcom/facebook/react/touch/JSResponderHandler;)Landroid/view/View;

    move-result-object v3

    .line 293
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v4, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 294
    iget-object v4, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViewManagers:Landroid/util/SparseArray;

    invoke-virtual {v4, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 296
    .end local v0    # "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    .end local v3    # "view":Landroid/view/View;
    :try_start_2
    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->endSection(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 297
    nop

    .line 298
    monitor-exit p0

    return-void

    .line 296
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 297
    throw v0

    .line 273
    .end local p1    # "themedContext":Lcom/facebook/react/uimanager/ThemedReactContext;
    .end local p2    # "tag":I
    .end local p3    # "className":Ljava/lang/String;
    .end local p4    # "initialProps":Lcom/facebook/react/uimanager/ReactStylesDiffMap;
    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public declared-synchronized dispatchCommand(IILcom/facebook/react/bridge/ReadableArray;)V
    .locals 5
    .param p1, "reactTag"    # I
    .param p2, "commandId"    # I
    .param p3, "args"    # Lcom/facebook/react/bridge/ReadableArray;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 833
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->DEBUG_MODE:Z

    if-eqz v0, :cond_1

    .line 834
    sget-object v0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->TAG:Ljava/lang/String;

    const-string v1, "dispatchCommand[%d]: %d %s"

    .line 837
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 838
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 839
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .end local p0    # "this":Lcom/facebook/react/uimanager/NativeViewHierarchyManager;
    :cond_0
    const-string v4, "<null>"

    .line 834
    :goto_0
    invoke-static {v0, v1, v2, v3, v4}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 841
    :cond_1
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 842
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 843
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 850
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->resolveViewManager(I)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v1

    .line 851
    .local v1, "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    invoke-virtual {v1, v0, p2, p3}, Lcom/facebook/react/uimanager/ViewManager;->receiveCommand(Landroid/view/View;ILcom/facebook/react/bridge/ReadableArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 852
    monitor-exit p0

    return-void

    .line 844
    .end local v1    # "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    :cond_2
    :try_start_1
    new-instance v1, Lcom/facebook/react/bridge/RetryableMountingLayerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to send command to a non-existing view with tag ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] and command "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/bridge/RetryableMountingLayerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 832
    .end local v0    # "view":Landroid/view/View;
    .end local p1    # "reactTag":I
    .end local p2    # "commandId":I
    .end local p3    # "args":Lcom/facebook/react/bridge/ReadableArray;
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized dispatchCommand(ILjava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 4
    .param p1, "reactTag"    # I
    .param p2, "commandId"    # Ljava/lang/String;
    .param p3, "args"    # Lcom/facebook/react/bridge/ReadableArray;

    monitor-enter p0

    .line 856
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->DEBUG_MODE:Z

    if-eqz v0, :cond_1

    .line 857
    sget-object v0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->TAG:Ljava/lang/String;

    const-string v1, "dispatchCommand[%d]: %s %s"

    .line 860
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 862
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .end local p0    # "this":Lcom/facebook/react/uimanager/NativeViewHierarchyManager;
    :cond_0
    const-string v3, "<null>"

    .line 857
    :goto_0
    invoke-static {v0, v1, v2, p2, v3}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 864
    :cond_1
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 865
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 866
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 873
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->resolveViewManager(I)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v1

    .line 874
    .local v1, "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    invoke-virtual {v1, v0, p2, p3}, Lcom/facebook/react/uimanager/ViewManager;->receiveCommand(Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 875
    monitor-exit p0

    return-void

    .line 867
    .end local v1    # "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    :cond_2
    :try_start_1
    new-instance v1, Lcom/facebook/react/bridge/RetryableMountingLayerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to send command to a non-existing view with tag ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] and command "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/bridge/RetryableMountingLayerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 855
    .end local v0    # "view":Landroid/view/View;
    .end local p1    # "reactTag":I
    .end local p2    # "commandId":Ljava/lang/String;
    .end local p3    # "args":Lcom/facebook/react/bridge/ReadableArray;
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected declared-synchronized dropView(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    monitor-enter p0

    .line 630
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->DEBUG_MODE:Z

    if-eqz v0, :cond_1

    .line 631
    sget-object v0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->TAG:Ljava/lang/String;

    const-string v1, "dropView[%d]"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    goto :goto_0

    .end local p0    # "this":Lcom/facebook/react/uimanager/NativeViewHierarchyManager;
    :cond_0
    const/4 v2, -0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 633
    :cond_1
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    if-nez p1, :cond_2

    .line 636
    monitor-exit p0

    return-void

    .line 638
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViewManagers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_3

    .line 641
    monitor-exit p0

    return-void

    .line 643
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mRootTags:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 645
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->resolveViewManager(I)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ViewManager;->onDropViewInstance(Landroid/view/View;)V

    .line 647
    :cond_4
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViewManagers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/ViewManager;

    .line 648
    .local v0, "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_8

    instance-of v1, v0, Lcom/facebook/react/uimanager/ViewGroupManager;

    if-eqz v1, :cond_8

    .line 649
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    .line 650
    .local v1, "viewGroup":Landroid/view/ViewGroup;
    move-object v2, v0

    check-cast v2, Lcom/facebook/react/uimanager/ViewGroupManager;

    .line 651
    .local v2, "viewGroupManager":Lcom/facebook/react/uimanager/ViewGroupManager;
    invoke-virtual {v2, v1}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildCount(Landroid/view/ViewGroup;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_7

    .line 652
    invoke-virtual {v2, v1, v3}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildAt(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v4

    .line 653
    .local v4, "child":Landroid/view/View;
    if-nez v4, :cond_5

    .line 654
    sget-object v5, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->TAG:Ljava/lang/String;

    const-string v6, "Unable to drop null child view"

    invoke-static {v5, v6}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 655
    :cond_5
    iget-object v5, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 656
    invoke-virtual {p0, v4}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->dropView(Landroid/view/View;)V

    .line 651
    .end local v4    # "child":Landroid/view/View;
    :cond_6
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 659
    .end local v3    # "i":I
    :cond_7
    invoke-virtual {v2, v1}, Lcom/facebook/react/uimanager/ViewGroupManager;->removeAllViews(Landroid/view/View;)V

    .line 661
    .end local v1    # "viewGroup":Landroid/view/ViewGroup;
    .end local v2    # "viewGroupManager":Lcom/facebook/react/uimanager/ViewGroupManager;
    :cond_8
    iget-object v1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 662
    iget-object v1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViewManagers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 663
    monitor-exit p0

    return-void

    .line 629
    .end local v0    # "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    .end local p1    # "view":Landroid/view/View;
    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public declared-synchronized findTargetTagForTouch(IFF)I
    .locals 5
    .param p1, "reactTag"    # I
    .param p2, "touchX"    # F
    .param p3, "touchY"    # F

    monitor-enter p0

    .line 784
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->DEBUG_MODE:Z

    if-eqz v0, :cond_0

    .line 785
    sget-object v0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->TAG:Ljava/lang/String;

    const-string v1, "findTargetTagForTouch[%d]: %f %f"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 787
    .end local p0    # "this":Lcom/facebook/react/uimanager/NativeViewHierarchyManager;
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 788
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 789
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 792
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {p2, p3, v1}, Lcom/facebook/react/uimanager/TouchTargetHelper;->findTargetTagForTouch(FFLandroid/view/ViewGroup;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 790
    :cond_1
    :try_start_1
    new-instance v1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find view with tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 783
    .end local v0    # "view":Landroid/view/View;
    .end local p1    # "reactTag":I
    .end local p2    # "touchX":F
    .end local p3    # "touchY":F
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getInstanceHandle(I)J
    .locals 5
    .param p1, "reactTag"    # I

    monitor-enter p0

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 251
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 254
    sget v1, Lcom/facebook/react/R$id;->view_tag_instance_handle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 255
    .local v1, "instanceHandle":Ljava/lang/Long;
    if-eqz v1, :cond_0

    .line 258
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v2

    .line 256
    .end local p0    # "this":Lcom/facebook/react/uimanager/NativeViewHierarchyManager;
    :cond_0
    :try_start_1
    new-instance v2, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find instanceHandle for tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 252
    .end local v1    # "instanceHandle":Ljava/lang/Long;
    :cond_1
    new-instance v1, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find view for tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 249
    .end local v0    # "view":Landroid/view/View;
    .end local p1    # "reactTag":I
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getRootViewNum()I
    .locals 1

    monitor-enter p0

    .line 685
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mRootTags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 685
    .end local p0    # "this":Lcom/facebook/react/uimanager/NativeViewHierarchyManager;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized manageChildren(I[I[Lcom/facebook/react/uimanager/ViewAtIndex;[I)V
    .locals 19
    .param p1, "tag"    # I
    .param p2, "indicesToRemove"    # [I
    .param p3, "viewsToAdd"    # [Lcom/facebook/react/uimanager/ViewAtIndex;
    .param p4, "tagsToDelete"    # [I

    move-object/from16 v8, p0

    move/from16 v0, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    monitor-enter p0

    .line 397
    :try_start_0
    iget-boolean v1, v8, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->DEBUG_MODE:Z

    if-eqz v1, :cond_3

    .line 398
    sget-object v2, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->TAG:Ljava/lang/String;

    const-string v3, "createView[%d]: %s %s %s"

    .line 401
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 402
    if-eqz v9, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_0

    .end local p0    # "this":Lcom/facebook/react/uimanager/NativeViewHierarchyManager;
    :cond_0
    const-string v1, "<null>"

    move-object v5, v1

    .line 403
    :goto_0
    if-eqz v10, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, "<null>"

    :goto_1
    move-object v6, v1

    .line 404
    if-eqz v11, :cond_2

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    const-string v1, "<null>"

    :goto_2
    move-object v7, v1

    .line 398
    invoke-static/range {v2 .. v7}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 406
    :cond_3
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 408
    invoke-direct/range {p0 .. p1}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->getPendingDeletionsForTag(I)Ljava/util/Set;

    move-result-object v1

    move-object v12, v1

    .line 409
    .local v12, "pendingDeletionTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v1, v8, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    move-object v13, v1

    .line 410
    .local v13, "viewToManage":Landroid/view/ViewGroup;
    invoke-virtual/range {p0 .. p1}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->resolveViewManager(I)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/ViewGroupManager;

    move-object v14, v1

    .line 411
    .local v14, "viewManager":Lcom/facebook/react/uimanager/ViewGroupManager;
    if-eqz v13, :cond_15

    .line 420
    invoke-virtual {v14, v13}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildCount(Landroid/view/ViewGroup;)I

    move-result v1

    .line 422
    .local v1, "lastIndexToRemove":I
    if-eqz v9, :cond_a

    .line 423
    array-length v2, v9

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_3
    if-ltz v2, :cond_9

    .line 424
    aget v3, v9, v2

    .line 425
    .local v3, "indexToRemove":I
    if-ltz v3, :cond_8

    .line 435
    invoke-virtual {v14, v13, v3}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildAt(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_5

    .line 436
    iget-object v4, v8, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mRootTags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v14, v13}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildCount(Landroid/view/ViewGroup;)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_4

    .line 439
    monitor-exit p0

    return-void

    .line 441
    :cond_4
    :try_start_1
    new-instance v4, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Trying to remove a view index above child count "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " view tag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n detail: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 448
    invoke-static {v13, v14, v9, v10, v11}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->constructManageChildrenErrorMessage(Landroid/view/ViewGroup;Lcom/facebook/react/uimanager/ViewGroupManager;[I[Lcom/facebook/react/uimanager/ViewAtIndex;[I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 451
    :cond_5
    if-ge v3, v1, :cond_7

    .line 462
    invoke-virtual {v14, v13, v3}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildAt(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v4

    .line 464
    .local v4, "viewToRemove":Landroid/view/View;
    iget-boolean v5, v8, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mLayoutAnimationEnabled:Z

    if-eqz v5, :cond_6

    iget-object v5, v8, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mLayoutAnimator:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;

    .line 465
    invoke-virtual {v5, v4}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->shouldAnimateLayout(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 466
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    invoke-direct {v8, v11, v5}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->arrayContains([II)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_4

    .line 470
    :cond_6
    invoke-virtual {v14, v13, v3}, Lcom/facebook/react/uimanager/ViewGroupManager;->removeViewAt(Landroid/view/ViewGroup;I)V

    .line 473
    :goto_4
    move v1, v3

    .line 423
    .end local v3    # "indexToRemove":I
    .end local v4    # "viewToRemove":Landroid/view/View;
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 452
    .restart local v3    # "indexToRemove":I
    :cond_7
    new-instance v4, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Trying to remove an out of order view index:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " view tag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n detail: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 458
    invoke-static {v13, v14, v9, v10, v11}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->constructManageChildrenErrorMessage(Landroid/view/ViewGroup;Lcom/facebook/react/uimanager/ViewGroupManager;[I[Lcom/facebook/react/uimanager/ViewAtIndex;[I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 426
    :cond_8
    new-instance v4, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Trying to remove a negative view index:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " view tag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n detail: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 432
    invoke-static {v13, v14, v9, v10, v11}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->constructManageChildrenErrorMessage(Landroid/view/ViewGroup;Lcom/facebook/react/uimanager/ViewGroupManager;[I[Lcom/facebook/react/uimanager/ViewAtIndex;[I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 423
    .end local v3    # "indexToRemove":I
    :cond_9
    move v15, v1

    goto :goto_5

    .line 422
    .end local v2    # "i":I
    :cond_a
    move v15, v1

    .line 477
    .end local v1    # "lastIndexToRemove":I
    .local v15, "lastIndexToRemove":I
    :goto_5
    if-eqz v11, :cond_e

    .line 478
    const/4 v1, 0x0

    move v7, v1

    .local v7, "i":I
    :goto_6
    array-length v1, v11

    if-ge v7, v1, :cond_d

    .line 479
    aget v1, v11, v7

    move v6, v1

    .line 480
    .local v6, "tagToDelete":I
    iget-object v1, v8, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v5, v1

    .line 481
    .local v5, "viewToDestroy":Landroid/view/View;
    if-eqz v5, :cond_c

    .line 490
    iget-boolean v1, v8, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mLayoutAnimationEnabled:Z

    if-eqz v1, :cond_b

    iget-object v1, v8, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mLayoutAnimator:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;

    invoke-virtual {v1, v5}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->shouldAnimateLayout(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 491
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 492
    iget-object v4, v8, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mLayoutAnimator:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;

    new-instance v3, Lcom/facebook/react/uimanager/NativeViewHierarchyManager$1;

    move-object v1, v3

    move-object/from16 v2, p0

    move/from16 v16, v15

    move-object v15, v3

    .end local v15    # "lastIndexToRemove":I
    .local v16, "lastIndexToRemove":I
    move-object v3, v14

    move-object v0, v4

    move-object v4, v13

    move-object/from16 v17, v5

    .end local v5    # "viewToDestroy":Landroid/view/View;
    .local v17, "viewToDestroy":Landroid/view/View;
    move v9, v6

    .end local v6    # "tagToDelete":I
    .local v9, "tagToDelete":I
    move-object v6, v12

    move/from16 v18, v7

    .end local v7    # "i":I
    .local v18, "i":I
    move/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager$1;-><init>(Lcom/facebook/react/uimanager/NativeViewHierarchyManager;Lcom/facebook/react/uimanager/ViewGroupManager;Landroid/view/ViewGroup;Landroid/view/View;Ljava/util/Set;I)V

    move-object/from16 v1, v17

    .end local v17    # "viewToDestroy":Landroid/view/View;
    .local v1, "viewToDestroy":Landroid/view/View;
    invoke-virtual {v0, v1, v15}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->deleteView(Landroid/view/View;Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationListener;)V

    goto :goto_7

    .line 490
    .end local v1    # "viewToDestroy":Landroid/view/View;
    .end local v9    # "tagToDelete":I
    .end local v16    # "lastIndexToRemove":I
    .end local v18    # "i":I
    .restart local v5    # "viewToDestroy":Landroid/view/View;
    .restart local v6    # "tagToDelete":I
    .restart local v7    # "i":I
    .restart local v15    # "lastIndexToRemove":I
    :cond_b
    move-object v1, v5

    move v9, v6

    move/from16 v18, v7

    move/from16 v16, v15

    .line 510
    .end local v5    # "viewToDestroy":Landroid/view/View;
    .end local v6    # "tagToDelete":I
    .end local v7    # "i":I
    .end local v15    # "lastIndexToRemove":I
    .restart local v1    # "viewToDestroy":Landroid/view/View;
    .restart local v9    # "tagToDelete":I
    .restart local v16    # "lastIndexToRemove":I
    .restart local v18    # "i":I
    invoke-virtual {v8, v1}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->dropView(Landroid/view/View;)V

    .line 478
    .end local v1    # "viewToDestroy":Landroid/view/View;
    .end local v9    # "tagToDelete":I
    :goto_7
    add-int/lit8 v7, v18, 0x1

    move/from16 v0, p1

    move-object/from16 v9, p2

    move/from16 v15, v16

    .end local v18    # "i":I
    .restart local v7    # "i":I
    goto :goto_6

    .line 482
    .end local v16    # "lastIndexToRemove":I
    .restart local v5    # "viewToDestroy":Landroid/view/View;
    .restart local v6    # "tagToDelete":I
    .restart local v15    # "lastIndexToRemove":I
    :cond_c
    move-object v1, v5

    move v9, v6

    move/from16 v18, v7

    move/from16 v16, v15

    .end local v5    # "viewToDestroy":Landroid/view/View;
    .end local v6    # "tagToDelete":I
    .end local v7    # "i":I
    .end local v15    # "lastIndexToRemove":I
    .restart local v1    # "viewToDestroy":Landroid/view/View;
    .restart local v9    # "tagToDelete":I
    .restart local v16    # "lastIndexToRemove":I
    .restart local v18    # "i":I
    new-instance v0, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to destroy unknown view tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n detail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 486
    move-object/from16 v3, p2

    move v4, v9

    .end local v9    # "tagToDelete":I
    .local v4, "tagToDelete":I
    invoke-static {v13, v14, v3, v10, v11}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->constructManageChildrenErrorMessage(Landroid/view/ViewGroup;Lcom/facebook/react/uimanager/ViewGroupManager;[I[Lcom/facebook/react/uimanager/ViewAtIndex;[I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    .end local v1    # "viewToDestroy":Landroid/view/View;
    .end local v4    # "tagToDelete":I
    .end local v16    # "lastIndexToRemove":I
    .end local v18    # "i":I
    .restart local v7    # "i":I
    .restart local v15    # "lastIndexToRemove":I
    :cond_d
    move/from16 v18, v7

    move-object v3, v9

    move/from16 v16, v15

    .end local v7    # "i":I
    .end local v15    # "lastIndexToRemove":I
    .restart local v16    # "lastIndexToRemove":I
    .restart local v18    # "i":I
    goto :goto_8

    .line 477
    .end local v16    # "lastIndexToRemove":I
    .end local v18    # "i":I
    .restart local v15    # "lastIndexToRemove":I
    :cond_e
    move-object v3, v9

    move/from16 v16, v15

    .line 515
    .end local v15    # "lastIndexToRemove":I
    .restart local v16    # "lastIndexToRemove":I
    :goto_8
    if-eqz v10, :cond_13

    .line 516
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    array-length v1, v10

    if-ge v0, v1, :cond_13

    .line 517
    aget-object v1, v10, v0

    .line 518
    .local v1, "viewAtIndex":Lcom/facebook/react/uimanager/ViewAtIndex;
    iget-object v2, v8, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    iget v4, v1, Lcom/facebook/react/uimanager/ViewAtIndex;->mTag:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 519
    .local v2, "viewToAdd":Landroid/view/View;
    if-eqz v2, :cond_12

    .line 528
    iget v4, v1, Lcom/facebook/react/uimanager/ViewAtIndex;->mIndex:I

    .line 529
    .local v4, "normalizedIndex":I
    invoke-interface {v12}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_11

    .line 530
    const/4 v4, 0x0

    .line 531
    const/4 v5, 0x0

    .line 532
    .local v5, "counter":I
    :goto_a
    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v4, v6, :cond_11

    .line 533
    iget v6, v1, Lcom/facebook/react/uimanager/ViewAtIndex;->mIndex:I

    if-ne v5, v6, :cond_f

    .line 534
    goto :goto_b

    .line 536
    :cond_f
    invoke-virtual {v13, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 537
    .local v6, "v":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v12, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    .line 538
    add-int/lit8 v5, v5, 0x1

    .line 540
    :cond_10
    nop

    .end local v6    # "v":Landroid/view/View;
    add-int/lit8 v4, v4, 0x1

    .line 541
    goto :goto_a

    .line 544
    .end local v5    # "counter":I
    :cond_11
    :goto_b
    invoke-virtual {v14, v13, v2, v4}, Lcom/facebook/react/uimanager/ViewGroupManager;->addView(Landroid/view/ViewGroup;Landroid/view/View;I)V

    .line 516
    .end local v1    # "viewAtIndex":Lcom/facebook/react/uimanager/ViewAtIndex;
    .end local v2    # "viewToAdd":Landroid/view/View;
    .end local v4    # "normalizedIndex":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 520
    .restart local v1    # "viewAtIndex":Lcom/facebook/react/uimanager/ViewAtIndex;
    .restart local v2    # "viewToAdd":Landroid/view/View;
    :cond_12
    new-instance v4, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Trying to add unknown view tag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/facebook/react/uimanager/ViewAtIndex;->mTag:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n detail: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 524
    invoke-static {v13, v14, v3, v10, v11}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->constructManageChildrenErrorMessage(Landroid/view/ViewGroup;Lcom/facebook/react/uimanager/ViewGroupManager;[I[Lcom/facebook/react/uimanager/ViewAtIndex;[I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 547
    .end local v0    # "i":I
    .end local v1    # "viewAtIndex":Lcom/facebook/react/uimanager/ViewAtIndex;
    .end local v2    # "viewToAdd":Landroid/view/View;
    :cond_13
    invoke-interface {v12}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 548
    iget-object v0, v8, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mPendingDeletionsForTag:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 550
    :cond_14
    monitor-exit p0

    return-void

    .line 412
    .end local v16    # "lastIndexToRemove":I
    :cond_15
    move-object v3, v9

    :try_start_2
    new-instance v0, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to manageChildren view with tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " which doesn\'t exist\n detail: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 416
    invoke-static {v13, v14, v3, v10, v11}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->constructManageChildrenErrorMessage(Landroid/view/ViewGroup;Lcom/facebook/react/uimanager/ViewGroupManager;[I[Lcom/facebook/react/uimanager/ViewAtIndex;[I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    .end local v12    # "pendingDeletionTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v13    # "viewToManage":Landroid/view/ViewGroup;
    .end local v14    # "viewManager":Lcom/facebook/react/uimanager/ViewGroupManager;
    .end local p1    # "tag":I
    .end local p2    # "indicesToRemove":[I
    .end local p3    # "viewsToAdd":[Lcom/facebook/react/uimanager/ViewAtIndex;
    .end local p4    # "tagsToDelete":[I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized measure(I[I)V
    .locals 7
    .param p1, "tag"    # I
    .param p2, "outputBuffer"    # [I

    monitor-enter p0

    .line 693
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->DEBUG_MODE:Z

    if-eqz v0, :cond_0

    .line 694
    sget-object v0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->TAG:Ljava/lang/String;

    const-string v1, "measure[%d]"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 696
    .end local p0    # "this":Lcom/facebook/react/uimanager/NativeViewHierarchyManager;
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 697
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 698
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 702
    invoke-static {v0}, Lcom/facebook/react/uimanager/RootViewUtil;->getRootView(Landroid/view/View;)Lcom/facebook/react/uimanager/RootView;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 705
    .local v1, "rootView":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 708
    invoke-direct {p0, v1, p2}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->computeBoundingBox(Landroid/view/View;[I)V

    .line 709
    const/4 v2, 0x0

    aget v3, p2, v2

    .line 710
    .local v3, "rootX":I
    const/4 v4, 0x1

    aget v5, p2, v4

    .line 711
    .local v5, "rootY":I
    invoke-direct {p0, v0, p2}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->computeBoundingBox(Landroid/view/View;[I)V

    .line 712
    aget v6, p2, v2

    sub-int/2addr v6, v3

    aput v6, p2, v2

    .line 713
    aget v2, p2, v4

    sub-int/2addr v2, v5

    aput v2, p2, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 714
    monitor-exit p0

    return-void

    .line 706
    .end local v3    # "rootX":I
    .end local v5    # "rootY":I
    :cond_1
    :try_start_1
    new-instance v2, Lcom/facebook/react/uimanager/NoSuchNativeViewException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Native view "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is no longer on screen"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/react/uimanager/NoSuchNativeViewException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 699
    .end local v1    # "rootView":Landroid/view/View;
    :cond_2
    new-instance v1, Lcom/facebook/react/uimanager/NoSuchNativeViewException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No native view for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " currently exists"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/uimanager/NoSuchNativeViewException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 692
    .end local v0    # "v":Landroid/view/View;
    .end local p1    # "tag":I
    .end local p2    # "outputBuffer":[I
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized measureInWindow(I[I)V
    .locals 5
    .param p1, "tag"    # I
    .param p2, "outputBuffer"    # [I

    monitor-enter p0

    .line 760
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->DEBUG_MODE:Z

    if-eqz v0, :cond_0

    .line 761
    sget-object v0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->TAG:Ljava/lang/String;

    const-string v1, "measureInWindow[%d]"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 763
    .end local p0    # "this":Lcom/facebook/react/uimanager/NativeViewHierarchyManager;
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 764
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 765
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 769
    invoke-virtual {v0, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 773
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 774
    .local v1, "visibleWindowFrame":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 775
    const/4 v2, 0x0

    aget v3, p2, v2

    iget v4, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    aput v3, p2, v2

    .line 776
    const/4 v2, 0x1

    aget v3, p2, v2

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    aput v3, p2, v2

    .line 779
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    const/4 v3, 0x2

    aput v2, p2, v3

    .line 780
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x3

    aput v2, p2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 781
    monitor-exit p0

    return-void

    .line 766
    .end local v1    # "visibleWindowFrame":Landroid/graphics/Rect;
    :cond_1
    :try_start_1
    new-instance v1, Lcom/facebook/react/uimanager/NoSuchNativeViewException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No native view for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " currently exists"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/uimanager/NoSuchNativeViewException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 759
    .end local v0    # "v":Landroid/view/View;
    .end local p1    # "tag":I
    .end local p2    # "outputBuffer":[I
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized removeRootView(I)V
    .locals 3
    .param p1, "rootViewTag"    # I

    monitor-enter p0

    .line 666
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->DEBUG_MODE:Z

    if-eqz v0, :cond_0

    .line 667
    sget-object v0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "removeRootView[%d]"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 669
    .end local p0    # "this":Lcom/facebook/react/uimanager/NativeViewHierarchyManager;
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 670
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mRootTags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "View with tag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not registered as a root view"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/react/bridge/SoftAssertions;->assertUnreachable(Ljava/lang/String;)V

    .line 674
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 675
    .local v0, "rootView":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->dropView(Landroid/view/View;)V

    .line 676
    iget-object v1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mRootTags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 677
    monitor-exit p0

    return-void

    .line 665
    .end local v0    # "rootView":Landroid/view/View;
    .end local p1    # "rootViewTag":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized resolveView(I)Landroid/view/View;
    .locals 4
    .param p1, "tag"    # I

    monitor-enter p0

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 103
    monitor-exit p0

    return-object v0

    .line 100
    :cond_0
    :try_start_1
    new-instance v1, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to resolve view with tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " which doesn\'t exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    .end local v0    # "view":Landroid/view/View;
    .end local p0    # "this":Lcom/facebook/react/uimanager/NativeViewHierarchyManager;
    .end local p1    # "tag":I
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized resolveViewManager(I)Lcom/facebook/react/uimanager/ViewManager;
    .locals 4
    .param p1, "tag"    # I

    monitor-enter p0

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViewManagers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/ViewManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    .local v0, "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    if-eqz v0, :cond_0

    .line 112
    monitor-exit p0

    return-object v0

    .line 109
    :cond_0
    :try_start_1
    new-instance v1, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ViewManager for tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " could not be found.\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 106
    .end local v0    # "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    .end local p0    # "this":Lcom/facebook/react/uimanager/NativeViewHierarchyManager;
    .end local p1    # "tag":I
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized sendAccessibilityEvent(II)V
    .locals 4
    .param p1, "tag"    # I
    .param p2, "eventType"    # I

    monitor-enter p0

    .line 890
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 891
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 894
    invoke-virtual {v0, p2}, Landroid/view/View;->sendAccessibilityEvent(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 895
    monitor-exit p0

    return-void

    .line 892
    .end local p0    # "this":Lcom/facebook/react/uimanager/NativeViewHierarchyManager;
    :cond_0
    :try_start_1
    new-instance v1, Lcom/facebook/react/bridge/RetryableMountingLayerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find view with tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/bridge/RetryableMountingLayerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 889
    .end local v0    # "view":Landroid/view/View;
    .end local p1    # "tag":I
    .end local p2    # "eventType":I
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setChildren(ILcom/facebook/react/bridge/ReadableArray;)V
    .locals 7
    .param p1, "tag"    # I
    .param p2, "childrenTags"    # Lcom/facebook/react/bridge/ReadableArray;

    monitor-enter p0

    .line 579
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->DEBUG_MODE:Z

    if-eqz v0, :cond_1

    .line 580
    sget-object v0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setChildren[%d]: %s"

    .line 583
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 584
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .end local p0    # "this":Lcom/facebook/react/uimanager/NativeViewHierarchyManager;
    :cond_0
    const-string v3, "<null>"

    .line 580
    :goto_0
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 586
    :cond_1
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 587
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 588
    .local v0, "viewToManage":Landroid/view/ViewGroup;
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->resolveViewManager(I)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/ViewGroupManager;

    .line 590
    .local v1, "viewManager":Lcom/facebook/react/uimanager/ViewGroupManager;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 591
    iget-object v3, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 592
    .local v3, "viewToAdd":Landroid/view/View;
    if-eqz v3, :cond_2

    .line 599
    invoke-virtual {v1, v0, v3, v2}, Lcom/facebook/react/uimanager/ViewGroupManager;->addView(Landroid/view/ViewGroup;Landroid/view/View;I)V

    .line 590
    .end local v3    # "viewToAdd":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 593
    .restart local v3    # "viewToAdd":Landroid/view/View;
    :cond_2
    new-instance v4, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Trying to add unknown view tag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 595
    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n detail: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 597
    invoke-static {v0, v1, p2}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->constructSetChildrenErrorMessage(Landroid/view/ViewGroup;Lcom/facebook/react/uimanager/ViewGroupManager;Lcom/facebook/react/bridge/ReadableArray;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    .end local v2    # "i":I
    .end local v3    # "viewToAdd":Landroid/view/View;
    :cond_3
    monitor-exit p0

    return-void

    .line 578
    .end local v0    # "viewToManage":Landroid/view/ViewGroup;
    .end local v1    # "viewManager":Lcom/facebook/react/uimanager/ViewGroupManager;
    .end local p1    # "tag":I
    .end local p2    # "childrenTags":Lcom/facebook/react/bridge/ReadableArray;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setJSResponder(IIZ)V
    .locals 3
    .param p1, "reactTag"    # I
    .param p2, "initialReactTag"    # I
    .param p3, "blockNativeResponder"    # Z

    monitor-enter p0

    .line 797
    if-nez p3, :cond_0

    .line 798
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mJSResponderHandler:Lcom/facebook/react/touch/JSResponderHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/facebook/react/touch/JSResponderHandler;->setJSResponder(ILandroid/view/ViewParent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 799
    monitor-exit p0

    return-void

    .line 802
    .end local p0    # "this":Lcom/facebook/react/uimanager/NativeViewHierarchyManager;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 803
    .local v0, "view":Landroid/view/View;
    if-eq p2, p1, :cond_1

    instance-of v1, v0, Landroid/view/ViewParent;

    if-eqz v1, :cond_1

    .line 806
    iget-object v1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mJSResponderHandler:Lcom/facebook/react/touch/JSResponderHandler;

    move-object v2, v0

    check-cast v2, Landroid/view/ViewParent;

    invoke-virtual {v1, p2, v2}, Lcom/facebook/react/touch/JSResponderHandler;->setJSResponder(ILandroid/view/ViewParent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 807
    monitor-exit p0

    return-void

    .line 810
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mRootTags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 811
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot block native responder on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " that is a root view"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/react/bridge/SoftAssertions;->assertUnreachable(Ljava/lang/String;)V

    .line 814
    :cond_2
    iget-object v1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mJSResponderHandler:Lcom/facebook/react/touch/JSResponderHandler;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/facebook/react/touch/JSResponderHandler;->setJSResponder(ILandroid/view/ViewParent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 815
    monitor-exit p0

    return-void

    .line 796
    .end local v0    # "view":Landroid/view/View;
    .end local p1    # "reactTag":I
    .end local p2    # "initialReactTag":I
    .end local p3    # "blockNativeResponder":Z
    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public setLayoutAnimationEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 116
    iput-boolean p1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mLayoutAnimationEnabled:Z

    .line 117
    return-void
.end method

.method public declared-synchronized updateInstanceHandle(IJ)V
    .locals 4
    .param p1, "tag"    # I
    .param p2, "instanceHandle"    # J

    monitor-enter p0

    .line 120
    :try_start_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->resolveView(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->updateInstanceHandle(Landroid/view/View;J)V
    :try_end_1
    .catch Lcom/facebook/react/uimanager/IllegalViewOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    goto :goto_0

    .line 124
    .end local p0    # "this":Lcom/facebook/react/uimanager/NativeViewHierarchyManager;
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Lcom/facebook/react/uimanager/IllegalViewOperationException;
    :try_start_2
    sget-object v1, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to update properties for view tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    .end local v0    # "e":Lcom/facebook/react/uimanager/IllegalViewOperationException;
    :goto_0
    monitor-exit p0

    return-void

    .line 119
    .end local p1    # "tag":I
    .end local p2    # "instanceHandle":J
    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public updateLayout(IIIII)V
    .locals 8
    .param p1, "tag"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 164
    sget-object v7, Lcom/facebook/yoga/YogaDirection;->INHERIT:Lcom/facebook/yoga/YogaDirection;

    move-object v0, p0

    move v1, p1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->updateLayout(IIIIIILcom/facebook/yoga/YogaDirection;)V

    .line 165
    return-void
.end method

.method public declared-synchronized updateLayout(IIIIIILcom/facebook/yoga/YogaDirection;)V
    .locals 17
    .param p1, "parentTag"    # I
    .param p2, "tag"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "layoutDirection"    # Lcom/facebook/yoga/YogaDirection;

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    monitor-enter p0

    .line 169
    :try_start_0
    iget-boolean v0, v7, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->DEBUG_MODE:Z

    if-eqz v0, :cond_0

    .line 170
    sget-object v0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateLayout[%d]->[%d]: %d %d %d %d"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    filled-new-array/range {v10 .. v15}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    .end local p0    # "this":Lcom/facebook/react/uimanager/NativeViewHierarchyManager;
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 173
    const-string v0, "NativeViewHierarchyManager_updateLayout"

    const-wide/16 v10, 0x0

    invoke-static {v10, v11, v0}, Lcom/facebook/systrace/SystraceMessage;->beginSection(JLjava/lang/String;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v0

    const-string/jumbo v1, "parentTag"

    .line 175
    invoke-virtual {v0, v1, v8}, Lcom/facebook/systrace/SystraceMessage$Builder;->arg(Ljava/lang/String;I)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v0

    const-string/jumbo v1, "tag"

    .line 176
    invoke-virtual {v0, v1, v9}, Lcom/facebook/systrace/SystraceMessage$Builder;->arg(Ljava/lang/String;I)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 179
    :try_start_1
    invoke-virtual {v7, v9}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->resolveView(I)Landroid/view/View;

    move-result-object v0

    .line 181
    .local v0, "viewToUpdate":Landroid/view/View;
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->setAndroidLayoutDirection()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    invoke-static/range {p7 .. p7}, Lcom/facebook/react/uimanager/LayoutDirectionUtil;->toAndroidFromYoga(Lcom/facebook/yoga/YogaDirection;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutDirection(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 200
    :cond_1
    nop

    .line 201
    const/high16 v1, 0x40000000    # 2.0f

    move/from16 v12, p5

    :try_start_2
    invoke-static {v12, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 202
    move/from16 v13, p6

    :try_start_3
    invoke-static {v13, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 200
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 214
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object v14, v1

    .line 215
    .local v14, "parent":Landroid/view/ViewParent;
    nop

    instance-of v1, v14, Lcom/facebook/react/uimanager/RootView;

    if-eqz v1, :cond_2

    .line 216
    invoke-interface {v14}, Landroid/view/ViewParent;->requestLayout()V

    .line 220
    :cond_2
    iget-object v1, v7, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mRootTags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 221
    iget-object v1, v7, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViewManagers:Landroid/util/SparseArray;

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/ViewManager;

    move-object v15, v1

    .line 223
    .local v15, "parentViewManager":Lcom/facebook/react/uimanager/ViewManager;
    nop

    instance-of v1, v15, Lcom/facebook/react/uimanager/IViewManagerWithChildren;

    if-eqz v1, :cond_4

    .line 224
    move-object v1, v15

    check-cast v1, Lcom/facebook/react/uimanager/IViewManagerWithChildren;

    move-object/from16 v16, v1

    .line 231
    .local v16, "parentViewManagerWithChildren":Lcom/facebook/react/uimanager/IViewManagerWithChildren;
    if-eqz v16, :cond_3

    .line 232
    invoke-interface/range {v16 .. v16}, Lcom/facebook/react/uimanager/IViewManagerWithChildren;->needsCustomLayoutForChildren()Z

    move-result v1

    if-nez v1, :cond_3

    .line 233
    move-object/from16 v1, p0

    move-object v2, v0

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->updateLayout(Landroid/view/View;IIII)V

    .line 235
    .end local v15    # "parentViewManager":Lcom/facebook/react/uimanager/ViewManager;
    .end local v16    # "parentViewManagerWithChildren":Lcom/facebook/react/uimanager/IViewManagerWithChildren;
    :cond_3
    goto :goto_0

    .line 226
    .restart local v15    # "parentViewManager":Lcom/facebook/react/uimanager/ViewManager;
    :cond_4
    new-instance v1, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to use view with tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as a parent, but its Manager doesn\'t implement IViewManagerWithChildren"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    .end local p1    # "parentTag":I
    .end local p2    # "tag":I
    .end local p3    # "x":I
    .end local p4    # "y":I
    .end local p5    # "width":I
    .end local p6    # "height":I
    .end local p7    # "layoutDirection":Lcom/facebook/yoga/YogaDirection;
    throw v1

    .line 236
    .end local v15    # "parentViewManager":Lcom/facebook/react/uimanager/ViewManager;
    .restart local p1    # "parentTag":I
    .restart local p2    # "tag":I
    .restart local p3    # "x":I
    .restart local p4    # "y":I
    .restart local p5    # "width":I
    .restart local p6    # "height":I
    .restart local p7    # "layoutDirection":Lcom/facebook/yoga/YogaDirection;
    :cond_5
    move-object/from16 v1, p0

    move-object v2, v0

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->updateLayout(Landroid/view/View;IIII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 239
    .end local v0    # "viewToUpdate":Landroid/view/View;
    .end local v14    # "parent":Landroid/view/ViewParent;
    :goto_0
    :try_start_4
    invoke-static {v10, v11}, Lcom/facebook/systrace/Systrace;->endSection(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 240
    nop

    .line 241
    monitor-exit p0

    return-void

    .line 239
    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    move/from16 v12, p5

    :goto_1
    move/from16 v13, p6

    :goto_2
    :try_start_5
    invoke-static {v10, v11}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 240
    throw v0

    .line 168
    .end local p1    # "parentTag":I
    .end local p2    # "tag":I
    .end local p3    # "x":I
    .end local p4    # "y":I
    .end local p5    # "width":I
    .end local p6    # "height":I
    .end local p7    # "layoutDirection":Lcom/facebook/yoga/YogaDirection;
    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0
.end method

.method public declared-synchronized updateProperties(ILcom/facebook/react/uimanager/ReactStylesDiffMap;)V
    .locals 4
    .param p1, "tag"    # I
    .param p2, "props"    # Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    monitor-enter p0

    .line 130
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->DEBUG_MODE:Z

    if-eqz v0, :cond_0

    .line 131
    sget-object v0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateProperties[%d]: %s"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 133
    .end local p0    # "this":Lcom/facebook/react/uimanager/NativeViewHierarchyManager;
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->resolveViewManager(I)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v0

    .line 137
    .local v0, "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->resolveView(I)Landroid/view/View;

    move-result-object v1

    .line 139
    .local v1, "viewToUpdate":Landroid/view/View;
    if-eqz p2, :cond_1

    .line 140
    invoke-virtual {v0, v1, p2}, Lcom/facebook/react/uimanager/ViewManager;->updateProperties(Landroid/view/View;Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V
    :try_end_1
    .catch Lcom/facebook/react/uimanager/IllegalViewOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    .end local v0    # "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    .end local v1    # "viewToUpdate":Landroid/view/View;
    :cond_1
    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Lcom/facebook/react/uimanager/IllegalViewOperationException;
    :try_start_2
    sget-object v1, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to update properties for view tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    .end local v0    # "e":Lcom/facebook/react/uimanager/IllegalViewOperationException;
    :goto_0
    monitor-exit p0

    return-void

    .line 129
    .end local p1    # "tag":I
    .end local p2    # "props":Lcom/facebook/react/uimanager/ReactStylesDiffMap;
    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public declared-synchronized updateViewExtraData(ILjava/lang/Object;)V
    .locals 4
    .param p1, "tag"    # I
    .param p2, "extraData"    # Ljava/lang/Object;

    monitor-enter p0

    .line 148
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->DEBUG_MODE:Z

    if-eqz v0, :cond_0

    .line 149
    sget-object v0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateViewExtraData[%d]: %s"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 151
    .end local p0    # "this":Lcom/facebook/react/uimanager/NativeViewHierarchyManager;
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 153
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->resolveViewManager(I)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v0

    .line 154
    .local v0, "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->resolveView(I)Landroid/view/View;

    move-result-object v1

    .line 155
    .local v1, "viewToUpdate":Landroid/view/View;
    invoke-virtual {v0, v1, p2}, Lcom/facebook/react/uimanager/ViewManager;->updateExtraData(Landroid/view/View;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    monitor-exit p0

    return-void

    .line 147
    .end local v0    # "viewManager":Lcom/facebook/react/uimanager/ViewManager;
    .end local v1    # "viewToUpdate":Landroid/view/View;
    .end local p1    # "tag":I
    .end local p2    # "extraData":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
