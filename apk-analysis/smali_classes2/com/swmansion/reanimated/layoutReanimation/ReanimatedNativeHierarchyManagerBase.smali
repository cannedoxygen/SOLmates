.class public abstract Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManagerBase;
.super Lcom/facebook/react/uimanager/NativeViewHierarchyManager;
.source "ReanimatedNativeHierarchyManagerBase.java"


# direct methods
.method public constructor <init>(Lcom/facebook/react/uimanager/ViewManagerRegistry;)V
    .locals 0
    .param p1, "viewManagers"    # Lcom/facebook/react/uimanager/ViewManagerRegistry;

    .line 9
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;-><init>(Lcom/facebook/react/uimanager/ViewManagerRegistry;)V

    .line 10
    return-void
.end method


# virtual methods
.method public declared-synchronized updateLayout(IIIIIILcom/facebook/yoga/YogaDirection;)V
    .locals 0
    .param p1, "parentTag"    # I
    .param p2, "tag"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "yogaDirection"    # Lcom/facebook/yoga/YogaDirection;

    monitor-enter p0

    .line 15
    :try_start_0
    invoke-super/range {p0 .. p7}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->updateLayout(IIIIIILcom/facebook/yoga/YogaDirection;)V

    .line 16
    invoke-virtual/range {p0 .. p6}, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManagerBase;->updateLayoutCommon(IIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit p0

    return-void

    .line 14
    .end local p0    # "this":Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManagerBase;
    .end local p1    # "parentTag":I
    .end local p2    # "tag":I
    .end local p3    # "x":I
    .end local p4    # "y":I
    .end local p5    # "width":I
    .end local p6    # "height":I
    .end local p7    # "yogaDirection":Lcom/facebook/yoga/YogaDirection;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public abstract updateLayoutCommon(IIIIII)V
.end method
