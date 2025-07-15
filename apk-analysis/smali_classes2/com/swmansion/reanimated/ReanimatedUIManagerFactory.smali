.class public Lcom/swmansion/reanimated/ReanimatedUIManagerFactory;
.super Ljava/lang/Object;
.source "ReanimatedUIManagerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/util/List;I)Lcom/facebook/react/uimanager/UIManagerModule;
    .locals 8
    .param p0, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .param p2, "minTimeLeftInFrameForNonBatchedOperationMs"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/ViewManager;",
            ">;I)",
            "Lcom/facebook/react/uimanager/UIManagerModule;"
        }
    .end annotation

    .line 22
    .local p1, "viewManagers":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/ViewManager;>;"
    new-instance v0, Lcom/facebook/react/uimanager/ViewManagerRegistry;

    invoke-direct {v0, p1}, Lcom/facebook/react/uimanager/ViewManagerRegistry;-><init>(Ljava/util/List;)V

    .line 24
    .local v0, "viewManagerRegistry":Lcom/facebook/react/uimanager/ViewManagerRegistry;
    new-instance v1, Lcom/facebook/react/uimanager/ReanimatedUIManager;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/react/uimanager/ReanimatedUIManager;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/util/List;I)V

    .line 28
    .local v1, "uiManagerModule":Lcom/facebook/react/uimanager/UIManagerModule;
    new-instance v2, Lcom/facebook/react/uimanager/ReanimatedUIImplementation;

    .line 32
    invoke-virtual {v1}, Lcom/facebook/react/uimanager/UIManagerModule;->getEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3, p2}, Lcom/facebook/react/uimanager/ReanimatedUIImplementation;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/uimanager/ViewManagerRegistry;Lcom/facebook/react/uimanager/events/EventDispatcher;I)V

    .line 35
    .local v2, "uiImplementation":Lcom/facebook/react/uimanager/UIImplementation;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    .line 36
    .local v3, "clazz":Ljava/lang/Class;
    if-nez v3, :cond_0

    .line 37
    const-string v4, "reanimated"

    const-string v5, "unable to resolve super class of ReanimatedUIManager"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return-object v1

    .line 42
    :cond_0
    :try_start_0
    const-string v4, "mUIImplementation"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 43
    .local v4, "uiImplementationField":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 45
    nop

    .line 48
    :try_start_1
    const-class v6, Ljava/lang/reflect/Field;

    const-string v7, "accessFlags"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 49
    .local v6, "modifiersField":Ljava/lang/reflect/Field;
    invoke-virtual {v6, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 50
    nop

    .line 51
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    and-int/lit8 v5, v5, -0x11

    .line 50
    invoke-virtual {v6, v4, v5}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    .line 54
    .end local v6    # "modifiersField":Ljava/lang/reflect/Field;
    goto :goto_1

    .line 52
    :catch_0
    move-exception v5

    goto :goto_0

    :catch_1
    move-exception v5

    .line 53
    .local v5, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 56
    .end local v5    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    invoke-virtual {v4, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    .line 59
    .end local v4    # "uiImplementationField":Ljava/lang/reflect/Field;
    goto :goto_3

    .line 57
    :catch_2
    move-exception v4

    goto :goto_2

    :catch_3
    move-exception v4

    .line 58
    .local v4, "e":Ljava/lang/ReflectiveOperationException;
    :goto_2
    invoke-virtual {v4}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 61
    .end local v4    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_3
    return-object v1
.end method
