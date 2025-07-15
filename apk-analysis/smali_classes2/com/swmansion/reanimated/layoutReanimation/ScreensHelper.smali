.class public Lcom/swmansion/reanimated/layoutReanimation/ScreensHelper;
.super Ljava/lang/Object;
.source "ScreensHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTabNavigator(Landroid/view/View;)Landroid/view/View;
    .locals 6
    .param p0, "view"    # Landroid/view/View;

    .line 11
    move-object v0, p0

    .line 12
    .local v0, "currentView":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_3

    .line 13
    invoke-static {v0}, Lcom/swmansion/reanimated/layoutReanimation/ScreensHelper;->isScreenContainer(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14
    return-object v0

    .line 16
    :cond_0
    invoke-static {v0}, Lcom/swmansion/reanimated/layoutReanimation/ScreensHelper;->isScreen(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-static {v1}, Lcom/swmansion/reanimated/layoutReanimation/ScreensHelper;->isScreensCoordinatorLayout(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 17
    move-object v1, v0

    .line 18
    .local v1, "screen":Landroid/view/View;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 20
    .local v2, "screenClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v3, "getContainer"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 21
    .local v3, "getContainer":Ljava/lang/reflect/Method;
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 27
    .end local v3    # "getContainer":Ljava/lang/reflect/Method;
    nop

    .line 28
    .end local v1    # "screen":Landroid/view/View;
    .end local v2    # "screenClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 22
    .restart local v1    # "screen":Landroid/view/View;
    .restart local v2    # "screenClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_1

    :catch_2
    move-exception v3

    .line 24
    .local v3, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_1
    const-string v4, "Unable to invoke the getContainer method"

    .line 25
    .local v4, "message":Ljava/lang/String;
    :goto_2
    const-string v5, "[Reanimated]"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    goto :goto_3

    .line 28
    .end local v1    # "screen":Landroid/view/View;
    .end local v2    # "screenClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "e":Ljava/lang/ReflectiveOperationException;
    .end local v4    # "message":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_3

    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    goto :goto_0

    .line 34
    :cond_3
    :goto_3
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getTopScreenForStack(Landroid/view/View;)Landroid/view/View;
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .line 52
    invoke-static {p0}, Lcom/swmansion/reanimated/layoutReanimation/ScreensHelper;->isScreenStack(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    move-object v0, p0

    .line 54
    .local v0, "stack":Landroid/view/View;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 56
    .local v1, "screenStackClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v2, "getTopScreen"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 57
    .local v2, "getTopScreen":Ljava/lang/reflect/Method;
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 58
    .end local v2    # "getTopScreen":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v2

    .line 61
    .end local v0    # "stack":Landroid/view/View;
    .end local v1    # "screenStackClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-object p0
.end method

.method private static isInstanceOf(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 1
    .param p0, "maybeView"    # Ljava/lang/Object;
    .param p1, "className"    # Ljava/lang/String;

    .line 85
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isScreen(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "maybeView"    # Ljava/lang/Object;

    .line 65
    const-string v0, "Screen"

    invoke-static {p0, v0}, Lcom/swmansion/reanimated/layoutReanimation/ScreensHelper;->isInstanceOf(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isScreenContainer(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "maybeView"    # Ljava/lang/Object;

    .line 73
    const-string v0, "ScreenContainer"

    invoke-static {p0, v0}, Lcom/swmansion/reanimated/layoutReanimation/ScreensHelper;->isInstanceOf(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isScreenFragment(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "maybeView"    # Ljava/lang/Object;

    .line 81
    const-string v0, "ScreenFragment"

    invoke-static {p0, v0}, Lcom/swmansion/reanimated/layoutReanimation/ScreensHelper;->isInstanceOf(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isScreenStack(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "maybeView"    # Ljava/lang/Object;

    .line 69
    const-string v0, "ScreenStack"

    invoke-static {p0, v0}, Lcom/swmansion/reanimated/layoutReanimation/ScreensHelper;->isInstanceOf(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isScreensCoordinatorLayout(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "maybeView"    # Ljava/lang/Object;

    .line 77
    const-string v0, "ScreensCoordinatorLayout"

    invoke-static {p0, v0}, Lcom/swmansion/reanimated/layoutReanimation/ScreensHelper;->isInstanceOf(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isViewChildOfScreen(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "screen"    # Landroid/view/View;

    .line 38
    move-object v0, p0

    .line 39
    .local v0, "currentView":Landroid/view/View;
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 40
    if-ne v0, p1, :cond_0

    .line 41
    const/4 v1, 0x1

    return v1

    .line 43
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-nez v2, :cond_1

    .line 44
    return v1

    .line 46
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    goto :goto_0

    .line 48
    :cond_2
    return v1
.end method
