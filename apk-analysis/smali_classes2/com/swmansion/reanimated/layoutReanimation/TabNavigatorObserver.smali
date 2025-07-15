.class public Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver;
.super Ljava/lang/Object;
.source "TabNavigatorObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver$FragmentLifecycleCallbacks;,
        Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver$OnAttachStateChangeListener;
    }
.end annotation


# instance fields
.field private final mFragmentsWithListenerRegistry:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mReaLayoutAnimator:Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;


# direct methods
.method static bridge synthetic -$$Nest$fgetmReaLayoutAnimator(Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver;)Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;
    .locals 0

    iget-object p0, p0, Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver;->mReaLayoutAnimator:Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;

    return-object p0
.end method

.method public constructor <init>(Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;)V
    .locals 1
    .param p1, "reaLayoutAnimator"    # Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver;->mFragmentsWithListenerRegistry:Ljava/util/Set;

    .line 21
    iput-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver;->mReaLayoutAnimator:Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;

    .line 22
    return-void
.end method


# virtual methods
.method public handleScreenContainerUpdate(Landroid/view/View;)V
    .locals 7
    .param p1, "screen"    # Landroid/view/View;

    .line 26
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 27
    .local v0, "screenClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "getFragment"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 28
    .local v1, "getScreenFragment":Ljava/lang/reflect/Method;
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 29
    .local v2, "fragment":Landroidx/fragment/app/Fragment;
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getId()I

    move-result v3

    .line 30
    .local v3, "fragmentTag":I
    iget-object v4, p0, Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver;->mFragmentsWithListenerRegistry:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 31
    iget-object v4, p0, Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver;->mFragmentsWithListenerRegistry:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    nop

    .line 33
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    new-instance v5, Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver$FragmentLifecycleCallbacks;

    invoke-direct {v5, p0, v2}, Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver$FragmentLifecycleCallbacks;-><init>(Lcom/swmansion/reanimated/layoutReanimation/TabNavigatorObserver;Landroidx/fragment/app/Fragment;)V

    .line 34
    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroidx/fragment/app/FragmentManager;->registerFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .end local v0    # "screenClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "getScreenFragment":Ljava/lang/reflect/Method;
    .end local v2    # "fragment":Landroidx/fragment/app/Fragment;
    .end local v3    # "fragmentTag":I
    :cond_0
    goto :goto_2

    .line 36
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, "Unable to get screen fragment"

    .line 38
    .local v1, "message":Ljava/lang/String;
    :goto_1
    const-string v2, "[Reanimated]"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    .end local v1    # "message":Ljava/lang/String;
    :goto_2
    return-void
.end method
