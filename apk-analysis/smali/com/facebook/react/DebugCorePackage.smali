.class public Lcom/facebook/react/DebugCorePackage;
.super Lcom/facebook/react/BaseReactPackage;
.source "DebugCorePackage.java"

# interfaces
.implements Lcom/facebook/react/ViewManagerOnDemandReactPackage;


# instance fields
.field private mViewManagers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/react/bridge/ModuleSpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/facebook/react/BaseReactPackage;-><init>()V

    return-void
.end method

.method private static appendMap(Ljava/util/Map;Ljava/lang/String;Ljavax/inject/Provider;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/react/bridge/ModuleSpec;",
            ">;",
            "Ljava/lang/String;",
            "Ljavax/inject/Provider<",
            "+",
            "Lcom/facebook/react/bridge/NativeModule;",
            ">;)V"
        }
    .end annotation

    .line 99
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/react/bridge/ModuleSpec;>;"
    .local p2, "provider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<+Lcom/facebook/react/bridge/NativeModule;>;"
    invoke-static {p2}, Lcom/facebook/react/bridge/ModuleSpec;->viewManagerSpec(Ljavax/inject/Provider;)Lcom/facebook/react/bridge/ModuleSpec;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-void
.end method

.method private fallbackForMissingClass()Lcom/facebook/react/module/model/ReactModuleInfoProvider;
    .locals 15

    .line 77
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/facebook/react/devsupport/JSCHeapCapture;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 79
    .local v0, "moduleList":[Ljava/lang/Class;, "[Ljava/lang/Class<+Lcom/facebook/react/bridge/NativeModule;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 80
    .local v1, "reactModuleInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/react/module/model/ReactModuleInfo;>;"
    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 81
    .local v4, "moduleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/facebook/react/bridge/NativeModule;>;"
    const-class v5, Lcom/facebook/react/module/annotations/ReactModule;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/facebook/react/module/annotations/ReactModule;

    .line 83
    .local v5, "reactModule":Lcom/facebook/react/module/annotations/ReactModule;
    nop

    .line 84
    invoke-interface {v5}, Lcom/facebook/react/module/annotations/ReactModule;->name()Ljava/lang/String;

    move-result-object v6

    new-instance v14, Lcom/facebook/react/module/model/ReactModuleInfo;

    .line 86
    invoke-interface {v5}, Lcom/facebook/react/module/annotations/ReactModule;->name()Ljava/lang/String;

    move-result-object v8

    .line 87
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    .line 88
    invoke-interface {v5}, Lcom/facebook/react/module/annotations/ReactModule;->canOverrideExistingModule()Z

    move-result v10

    .line 89
    invoke-interface {v5}, Lcom/facebook/react/module/annotations/ReactModule;->needsEagerInit()Z

    move-result v11

    .line 90
    invoke-interface {v5}, Lcom/facebook/react/module/annotations/ReactModule;->isCxxModule()Z

    move-result v12

    .line 91
    invoke-static {v4}, Lcom/facebook/react/module/model/ReactModuleInfo;->classIsTurboModule(Ljava/lang/Class;)Z

    move-result v13

    move-object v7, v14

    invoke-direct/range {v7 .. v13}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    .line 83
    invoke-interface {v1, v6, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .end local v4    # "moduleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/facebook/react/bridge/NativeModule;>;"
    .end local v5    # "reactModule":Lcom/facebook/react/module/annotations/ReactModule;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    :cond_0
    new-instance v2, Lcom/facebook/react/DebugCorePackage$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/facebook/react/DebugCorePackage$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;)V

    return-object v2
.end method

.method private getViewManagersMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/react/bridge/ModuleSpec;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/facebook/react/DebugCorePackage;->mViewManagers:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 108
    .local v0, "viewManagers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/react/bridge/ModuleSpec;>;"
    new-instance v1, Lcom/facebook/react/DebugCorePackage$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/facebook/react/DebugCorePackage$$ExternalSyntheticLambda1;-><init>()V

    const-string v2, "DebuggingOverlay"

    invoke-static {v0, v2, v1}, Lcom/facebook/react/DebugCorePackage;->appendMap(Ljava/util/Map;Ljava/lang/String;Ljavax/inject/Provider;)V

    .line 110
    iput-object v0, p0, Lcom/facebook/react/DebugCorePackage;->mViewManagers:Ljava/util/Map;

    .line 112
    .end local v0    # "viewManagers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/react/bridge/ModuleSpec;>;"
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/DebugCorePackage;->mViewManagers:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic lambda$fallbackForMissingClass$0(Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "reactModuleInfoMap"    # Ljava/util/Map;

    .line 94
    return-object p0
.end method


# virtual methods
.method public createViewManager(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/String;)Lcom/facebook/react/uimanager/ViewManager;
    .locals 2
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .param p2, "viewManagerName"    # Ljava/lang/String;

    .line 128
    invoke-direct {p0}, Lcom/facebook/react/DebugCorePackage;->getViewManagersMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ModuleSpec;

    .line 129
    .local v0, "spec":Lcom/facebook/react/bridge/ModuleSpec;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ModuleSpec;->getProvider()Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/ViewManager;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getModule(Ljava/lang/String;Lcom/facebook/react/bridge/ReactApplicationContext;)Lcom/facebook/react/bridge/NativeModule;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    goto :goto_0

    :pswitch_0
    const-string v0, "JSCHeapCapture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_1

    .line 51
    const/4 v0, 0x0

    return-object v0

    .line 49
    :pswitch_1
    new-instance v0, Lcom/facebook/react/devsupport/JSCHeapCapture;

    invoke-direct {v0, p2}, Lcom/facebook/react/devsupport/JSCHeapCapture;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x7fba340
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public getReactModuleInfoProvider()Lcom/facebook/react/module/model/ReactModuleInfoProvider;
    .locals 3

    .line 57
    const-string v0, "No ReactModuleInfoProvider for DebugCorePackage$$ReactModuleInfoProvider"

    invoke-static {}, Lcom/facebook/react/common/ClassFinder;->canLoadClassesFromAnnotationProcessors()Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    invoke-direct {p0}, Lcom/facebook/react/DebugCorePackage;->fallbackForMissingClass()Lcom/facebook/react/module/model/ReactModuleInfoProvider;

    move-result-object v0

    return-object v0

    .line 61
    :cond_0
    :try_start_0
    const-string v1, "com.facebook.react.DebugCorePackage$$ReactModuleInfoProvider"

    .line 62
    invoke-static {v1}, Lcom/facebook/react/common/ClassFinder;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 63
    .local v1, "reactModuleInfoProviderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/module/model/ReactModuleInfoProvider;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 69
    .end local v1    # "reactModuleInfoProviderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 66
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/InstantiationException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 64
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-direct {p0}, Lcom/facebook/react/DebugCorePackage;->fallbackForMissingClass()Lcom/facebook/react/module/model/ReactModuleInfoProvider;

    move-result-object v1

    return-object v1
.end method

.method public getViewManagerNames(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/Collection;
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 122
    invoke-direct {p0}, Lcom/facebook/react/DebugCorePackage;->getViewManagersMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getViewManagers(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .locals 2
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/react/bridge/ModuleSpec;",
            ">;"
        }
    .end annotation

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/facebook/react/DebugCorePackage;->getViewManagersMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
