.class Lcom/swmansion/reanimated/NativeProxy$1;
.super Ljava/lang/Object;
.source "NativeProxy.java"

# interfaces
.implements Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swmansion/reanimated/NativeProxy;->createNativeMethodsHolder(Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;)Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$weakLayoutAnimations:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lcom/swmansion/reanimated/NativeProxy$1;->val$weakLayoutAnimations:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelAnimation(I)V
    .locals 1
    .param p1, "tag"    # I

    .line 120
    iget-object v0, p0, Lcom/swmansion/reanimated/NativeProxy$1;->val$weakLayoutAnimations:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;

    .line 121
    .local v0, "layoutAnimations":Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;
    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0, p1}, Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;->cancelAnimationForTag(I)V

    .line 124
    :cond_0
    return-void
.end method

.method public checkDuplicateSharedTag(II)V
    .locals 1
    .param p1, "viewTag"    # I
    .param p2, "screenTag"    # I

    .line 136
    iget-object v0, p0, Lcom/swmansion/reanimated/NativeProxy$1;->val$weakLayoutAnimations:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;

    .line 137
    .local v0, "layoutAnimations":Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;
    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0, p1, p2}, Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;->checkDuplicateSharedTag(II)V

    .line 140
    :cond_0
    return-void
.end method

.method public clearAnimationConfig(I)V
    .locals 1
    .param p1, "tag"    # I

    .line 112
    iget-object v0, p0, Lcom/swmansion/reanimated/NativeProxy$1;->val$weakLayoutAnimations:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;

    .line 113
    .local v0, "layoutAnimations":Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;
    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0, p1}, Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;->clearAnimationConfigForTag(I)V

    .line 116
    :cond_0
    return-void
.end method

.method public findPrecedingViewTagForTransition(I)I
    .locals 2
    .param p1, "tag"    # I

    .line 128
    iget-object v0, p0, Lcom/swmansion/reanimated/NativeProxy$1;->val$weakLayoutAnimations:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;

    .line 129
    .local v0, "layoutAnimations":Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;
    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0, p1}, Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;->findPrecedingViewTagForTransition(I)I

    move-result v1

    return v1

    .line 132
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public getSharedGroup(I)[I
    .locals 2
    .param p1, "viewTag"    # I

    .line 143
    iget-object v0, p0, Lcom/swmansion/reanimated/NativeProxy$1;->val$weakLayoutAnimations:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;

    .line 144
    .local v0, "layoutAnimations":Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;
    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0, p1}, Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;->getSharedGroup(I)[I

    move-result-object v1

    return-object v1

    .line 147
    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [I

    return-object v1
.end method

.method public hasAnimation(II)Z
    .locals 2
    .param p1, "tag"    # I
    .param p2, "type"    # I

    .line 103
    iget-object v0, p0, Lcom/swmansion/reanimated/NativeProxy$1;->val$weakLayoutAnimations:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;

    .line 104
    .local v0, "layoutAnimations":Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0, p1, p2}, Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;->hasAnimationForTag(II)Z

    move-result v1

    return v1

    .line 107
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isLayoutAnimationEnabled()Z
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/swmansion/reanimated/NativeProxy$1;->val$weakLayoutAnimations:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;

    .line 95
    .local v0, "layoutAnimations":Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;
    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;->isLayoutAnimationEnabled()Z

    move-result v1

    return v1

    .line 98
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public shouldAnimateExiting(IZ)Z
    .locals 2
    .param p1, "tag"    # I
    .param p2, "shouldAnimate"    # Z

    .line 85
    iget-object v0, p0, Lcom/swmansion/reanimated/NativeProxy$1;->val$weakLayoutAnimations:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;

    .line 86
    .local v0, "layoutAnimations":Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;
    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0, p1, p2}, Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;->shouldAnimateExiting(IZ)Z

    move-result v1

    return v1

    .line 89
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public startAnimation(IILjava/util/HashMap;)V
    .locals 6
    .param p1, "tag"    # I
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 68
    .local p3, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/swmansion/reanimated/NativeProxy$1;->val$weakLayoutAnimations:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;

    .line 69
    .local v0, "layoutAnimations":Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;
    if-eqz v0, :cond_2

    .line 70
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 71
    .local v1, "preparedValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 72
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p3, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 73
    .local v4, "stringValue":Ljava/lang/String;
    const-string v5, "TransformMatrix"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 74
    invoke-static {v4}, Lcom/swmansion/reanimated/Utils;->simplifyStringNumbersList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 76
    :cond_0
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "stringValue":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {v0, p1, p2, v1}, Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;->startAnimationForTag(IILjava/util/Map;)V

    .line 81
    .end local v1    # "preparedValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    return-void
.end method
