.class public abstract Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate;
.super Lcom/facebook/react/internal/turbomodule/core/TurboModuleManagerDelegate;
.source "ReactPackageTurboModuleManagerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$ModuleProvider;,
        Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;
    }
.end annotation


# instance fields
.field private final mModuleProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$ModuleProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageModuleInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$ModuleProvider;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/react/module/model/ReactModuleInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/react/ReactPackage;",
            ">;"
        }
    .end annotation
.end field

.field private mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

.field private final mShouldEnableLegacyModuleInterop:Z


# direct methods
.method protected constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/util/List;)V
    .locals 1
    .param p1, "reactApplicationContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            "Ljava/util/List<",
            "Lcom/facebook/react/ReactPackage;",
            ">;)V"
        }
    .end annotation

    .line 49
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/ReactPackage;>;"
    invoke-direct {p0}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManagerDelegate;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate;->mModuleProviders:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate;->mPackageModuleInfos:Ljava/util/Map;

    .line 39
    sget-boolean v0, Lcom/facebook/react/config/ReactFeatureFlags;->enableBridgelessArchitecture:Z

    if-eqz v0, :cond_0

    .line 41
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->useTurboModuleInterop()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate;->mShouldEnableLegacyModuleInterop:Z

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate;->initialize(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/util/List;)V

    .line 51
    return-void
.end method

.method protected constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/util/List;Lcom/facebook/jni/HybridData;)V
    .locals 1
    .param p1, "reactApplicationContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .param p3, "hybridData"    # Lcom/facebook/jni/HybridData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            "Ljava/util/List<",
            "Lcom/facebook/react/ReactPackage;",
            ">;",
            "Lcom/facebook/jni/HybridData;",
            ")V"
        }
    .end annotation

    .line 57
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/ReactPackage;>;"
    invoke-direct {p0, p3}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManagerDelegate;-><init>(Lcom/facebook/jni/HybridData;)V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate;->mModuleProviders:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate;->mPackageModuleInfos:Ljava/util/Map;

    .line 39
    sget-boolean v0, Lcom/facebook/react/config/ReactFeatureFlags;->enableBridgelessArchitecture:Z

    if-eqz v0, :cond_0

    .line 41
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->useTurboModuleInterop()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate;->mShouldEnableLegacyModuleInterop:Z

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate;->initialize(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/util/List;)V

    .line 59
    return-void
.end method

.method private initialize(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/util/List;)V
    .locals 21
    .param p1, "reactApplicationContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            "Ljava/util/List<",
            "Lcom/facebook/react/ReactPackage;",
            ">;)V"
        }
    .end annotation

    .line 63
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/ReactPackage;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p1

    .line 64
    .local v2, "applicationContext":Lcom/facebook/react/bridge/ReactApplicationContext;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/react/ReactPackage;

    .line 65
    .local v4, "reactPackage":Lcom/facebook/react/ReactPackage;
    instance-of v5, v4, Lcom/facebook/react/BaseReactPackage;

    if-eqz v5, :cond_0

    .line 66
    move-object v5, v4

    check-cast v5, Lcom/facebook/react/BaseReactPackage;

    .line 67
    .local v5, "baseReactPackage":Lcom/facebook/react/BaseReactPackage;
    new-instance v6, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v6, v5, v2}, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$$ExternalSyntheticLambda0;-><init>(Lcom/facebook/react/BaseReactPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 69
    .local v6, "moduleProvider":Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$ModuleProvider;
    iget-object v7, v0, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate;->mModuleProviders:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v7, v0, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate;->mPackageModuleInfos:Ljava/util/Map;

    .line 71
    invoke-virtual {v5}, Lcom/facebook/react/BaseReactPackage;->getReactModuleInfoProvider()Lcom/facebook/react/module/model/ReactModuleInfoProvider;

    move-result-object v8

    invoke-interface {v8}, Lcom/facebook/react/module/model/ReactModuleInfoProvider;->getReactModuleInfos()Ljava/util/Map;

    move-result-object v8

    .line 70
    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    goto :goto_0

    .line 75
    .end local v5    # "baseReactPackage":Lcom/facebook/react/BaseReactPackage;
    .end local v6    # "moduleProvider":Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$ModuleProvider;
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate;->shouldSupportLegacyPackages()Z

    move-result v5

    if-eqz v5, :cond_2

    instance-of v5, v4, Lcom/facebook/react/LazyReactPackage;

    if-eqz v5, :cond_2

    .line 77
    move-object v5, v4

    check-cast v5, Lcom/facebook/react/LazyReactPackage;

    .line 78
    .local v5, "lazyPkg":Lcom/facebook/react/LazyReactPackage;
    invoke-virtual {v5, v1}, Lcom/facebook/react/LazyReactPackage;->getNativeModules(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;

    move-result-object v6

    .line 79
    .local v6, "moduleSpecs":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/bridge/ModuleSpec;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 80
    .local v7, "moduleSpecProviderMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavax/inject/Provider<+Lcom/facebook/react/bridge/NativeModule;>;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/facebook/react/bridge/ModuleSpec;

    .line 81
    .local v9, "moduleSpec":Lcom/facebook/react/bridge/ModuleSpec;
    invoke-virtual {v9}, Lcom/facebook/react/bridge/ModuleSpec;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/facebook/react/bridge/ModuleSpec;->getProvider()Ljavax/inject/Provider;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .end local v9    # "moduleSpec":Lcom/facebook/react/bridge/ModuleSpec;
    goto :goto_1

    .line 84
    :cond_1
    new-instance v8, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v8, v7}, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$$ExternalSyntheticLambda1;-><init>(Ljava/util/Map;)V

    .line 90
    .local v8, "moduleProvider":Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$ModuleProvider;
    iget-object v9, v0, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate;->mModuleProviders:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v9, v0, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate;->mPackageModuleInfos:Ljava/util/Map;

    .line 92
    invoke-virtual {v5}, Lcom/facebook/react/LazyReactPackage;->getReactModuleInfoProvider()Lcom/facebook/react/module/model/ReactModuleInfoProvider;

    move-result-object v10

    invoke-interface {v10}, Lcom/facebook/react/module/model/ReactModuleInfoProvider;->getReactModuleInfos()Ljava/util/Map;

    move-result-object v10

    .line 91
    invoke-interface {v9, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    goto :goto_0

    .line 96
    .end local v5    # "lazyPkg":Lcom/facebook/react/LazyReactPackage;
    .end local v6    # "moduleSpecs":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/bridge/ModuleSpec;>;"
    .end local v7    # "moduleSpecProviderMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavax/inject/Provider<+Lcom/facebook/react/bridge/NativeModule;>;>;"
    .end local v8    # "moduleProvider":Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$ModuleProvider;
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate;->shouldSupportLegacyPackages()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 98
    nop

    .line 99
    invoke-interface {v4, v1}, Lcom/facebook/react/ReactPackage;->createNativeModules(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;

    move-result-object v5

    .line 101
    .local v5, "nativeModules":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/bridge/NativeModule;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 102
    .local v6, "moduleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/react/bridge/NativeModule;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 104
    .local v7, "reactModuleInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/react/module/model/ReactModuleInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/facebook/react/bridge/NativeModule;

    .line 105
    .local v9, "module":Lcom/facebook/react/bridge/NativeModule;
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    .line 106
    .local v10, "moduleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/facebook/react/bridge/NativeModule;>;"
    const-class v11, Lcom/facebook/react/module/annotations/ReactModule;

    invoke-virtual {v10, v11}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v11

    check-cast v11, Lcom/facebook/react/module/annotations/ReactModule;

    .line 108
    .local v11, "reactModule":Lcom/facebook/react/module/annotations/ReactModule;
    if-eqz v11, :cond_3

    invoke-interface {v11}, Lcom/facebook/react/module/annotations/ReactModule;->name()Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    :cond_3
    invoke-interface {v9}, Lcom/facebook/react/bridge/NativeModule;->getName()Ljava/lang/String;

    move-result-object v12

    .line 111
    .local v12, "moduleName":Ljava/lang/String;
    :goto_3
    if-eqz v11, :cond_4

    .line 112
    new-instance v20, Lcom/facebook/react/module/model/ReactModuleInfo;

    .line 114
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    .line 115
    invoke-interface {v11}, Lcom/facebook/react/module/annotations/ReactModule;->canOverrideExistingModule()Z

    move-result v16

    .line 117
    invoke-interface {v11}, Lcom/facebook/react/module/annotations/ReactModule;->isCxxModule()Z

    move-result v18

    .line 118
    invoke-static {v10}, Lcom/facebook/react/module/model/ReactModuleInfo;->classIsTurboModule(Ljava/lang/Class;)Z

    move-result v19

    const/16 v17, 0x1

    move-object/from16 v13, v20

    move-object v14, v12

    invoke-direct/range {v13 .. v19}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    goto :goto_4

    .line 119
    :cond_4
    new-instance v20, Lcom/facebook/react/module/model/ReactModuleInfo;

    .line 121
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    .line 122
    invoke-interface {v9}, Lcom/facebook/react/bridge/NativeModule;->canOverrideExistingModule()Z

    move-result v16

    const-class v13, Lcom/facebook/react/bridge/CxxModuleWrapper;

    .line 124
    invoke-virtual {v13, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v18

    .line 125
    invoke-static {v10}, Lcom/facebook/react/module/model/ReactModuleInfo;->classIsTurboModule(Ljava/lang/Class;)Z

    move-result v19

    const/16 v17, 0x1

    move-object/from16 v13, v20

    move-object v14, v12

    invoke-direct/range {v13 .. v19}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    :goto_4
    move-object/from16 v13, v20

    .line 127
    .local v13, "moduleInfo":Lcom/facebook/react/module/model/ReactModuleInfo;
    invoke-interface {v7, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-interface {v6, v12, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .end local v9    # "module":Lcom/facebook/react/bridge/NativeModule;
    .end local v10    # "moduleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/facebook/react/bridge/NativeModule;>;"
    .end local v11    # "reactModule":Lcom/facebook/react/module/annotations/ReactModule;
    .end local v12    # "moduleName":Ljava/lang/String;
    .end local v13    # "moduleInfo":Lcom/facebook/react/module/model/ReactModuleInfo;
    goto :goto_2

    .line 131
    :cond_5
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$$ExternalSyntheticLambda2;

    invoke-direct {v8, v6}, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$$ExternalSyntheticLambda2;-><init>(Ljava/util/Map;)V

    .line 133
    .restart local v8    # "moduleProvider":Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$ModuleProvider;
    iget-object v9, v0, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate;->mModuleProviders:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v9, v0, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate;->mPackageModuleInfos:Ljava/util/Map;

    invoke-interface {v9, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .end local v4    # "reactPackage":Lcom/facebook/react/ReactPackage;
    .end local v5    # "nativeModules":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/bridge/NativeModule;>;"
    .end local v6    # "moduleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/react/bridge/NativeModule;>;"
    .end local v7    # "reactModuleInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/react/module/model/ReactModuleInfo;>;"
    .end local v8    # "moduleProvider":Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$ModuleProvider;
    :cond_6
    goto/16 :goto_0

    .line 137
    :cond_7
    return-void
.end method

.method static synthetic lambda$initialize$0(Lcom/facebook/react/BaseReactPackage;Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/String;)Lcom/facebook/react/bridge/NativeModule;
    .locals 1
    .param p0, "baseReactPackage"    # Lcom/facebook/react/BaseReactPackage;
    .param p1, "applicationContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .param p2, "moduleName"    # Ljava/lang/String;

    .line 68
    invoke-virtual {p0, p2, p1}, Lcom/facebook/react/BaseReactPackage;->getModule(Ljava/lang/String;Lcom/facebook/react/bridge/ReactApplicationContext;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$initialize$1(Ljava/util/Map;Ljava/lang/String;)Lcom/facebook/react/bridge/NativeModule;
    .locals 2
    .param p0, "moduleSpecProviderMap"    # Ljava/util/Map;
    .param p1, "moduleName"    # Ljava/lang/String;

    .line 86
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/inject/Provider;

    .line 87
    .local v0, "provider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<+Lcom/facebook/react/bridge/NativeModule;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/NativeModule;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private shouldSupportLegacyPackages()Z
    .locals 1

    .line 238
    invoke-virtual {p0}, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate;->unstable_shouldEnableLegacyModuleInterop()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getEagerInitModuleNames()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v0, "moduleNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate;->mModuleProviders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$ModuleProvider;

    .line 228
    .local v2, "moduleProvider":Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$ModuleProvider;
    iget-object v3, p0, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate;->mPackageModuleInfos:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/react/module/model/ReactModuleInfo;

    .line 229
    .local v4, "moduleInfo":Lcom/facebook/react/module/model/ReactModuleInfo;
    invoke-virtual {v4}, Lcom/facebook/react/module/model/ReactModuleInfo;->isTurboModule()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/facebook/react/module/model/ReactModuleInfo;->needsEagerInit()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 230
    invoke-virtual {v4}, Lcom/facebook/react/module/model/ReactModuleInfo;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    .end local v4    # "moduleInfo":Lcom/facebook/react/module/model/ReactModuleInfo;
    :cond_0
    goto :goto_1

    .line 233
    .end local v2    # "moduleProvider":Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$ModuleProvider;
    :cond_1
    goto :goto_0

    .line 234
    :cond_2
    return-object v0
.end method

.method public getLegacyModule(Ljava/lang/String;)Lcom/facebook/react/bridge/NativeModule;
    .locals 6
    .param p1, "moduleName"    # Ljava/lang/String;

    .line 196
    invoke-virtual {p0}, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate;->unstable_shouldEnableLegacyModuleInterop()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 197
    return-object v1

    .line 200
    :cond_0
    const/4 v0, 0x0

    .line 202
    .local v0, "resolvedModule":Lcom/facebook/react/bridge/NativeModule;
    iget-object v2, p0, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate;->mModuleProviders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$ModuleProvider;

    .line 203
    .local v3, "moduleProvider":Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$ModuleProvider;
    iget-object v4, p0, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate;->mPackageModuleInfos:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/react/module/model/ReactModuleInfo;

    .line 204
    .local v4, "moduleInfo":Lcom/facebook/react/module/model/ReactModuleInfo;
    if-eqz v4, :cond_2

    .line 205
    invoke-virtual {v4}, Lcom/facebook/react/module/model/ReactModuleInfo;->isTurboModule()Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v0, :cond_1

    .line 206
    invoke-virtual {v4}, Lcom/facebook/react/module/model/ReactModuleInfo;->canOverrideExistingModule()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 208
    :cond_1
    invoke-interface {v3, p1}, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$ModuleProvider;->getModule(Ljava/lang/String;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v5

    .line 209
    .local v5, "module":Lcom/facebook/react/bridge/NativeModule;
    if-eqz v5, :cond_2

    .line 210
    move-object v0, v5

    .line 213
    .end local v3    # "moduleProvider":Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$ModuleProvider;
    .end local v4    # "moduleInfo":Lcom/facebook/react/module/model/ReactModuleInfo;
    .end local v5    # "module":Lcom/facebook/react/bridge/NativeModule;
    :cond_2
    goto :goto_0

    .line 216
    :cond_3
    instance-of v2, v0, Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;

    xor-int/lit8 v2, v2, 0x1

    .line 217
    .local v2, "isLegacyModule":Z
    if-nez v2, :cond_4

    .line 218
    return-object v1

    .line 221
    :cond_4
    return-object v0
.end method

.method public getModule(Ljava/lang/String;)Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;
    .locals 5
    .param p1, "moduleName"    # Ljava/lang/String;

    .line 147
    const/4 v0, 0x0

    .line 149
    .local v0, "resolvedModule":Lcom/facebook/react/bridge/NativeModule;
    iget-object v1, p0, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate;->mModuleProviders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$ModuleProvider;

    .line 150
    .local v2, "moduleProvider":Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$ModuleProvider;
    iget-object v3, p0, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate;->mPackageModuleInfos:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/module/model/ReactModuleInfo;

    .line 151
    .local v3, "moduleInfo":Lcom/facebook/react/module/model/ReactModuleInfo;
    if-eqz v3, :cond_1

    .line 152
    invoke-virtual {v3}, Lcom/facebook/react/module/model/ReactModuleInfo;->isTurboModule()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v3}, Lcom/facebook/react/module/model/ReactModuleInfo;->canOverrideExistingModule()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 155
    :cond_0
    invoke-interface {v2, p1}, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$ModuleProvider;->getModule(Ljava/lang/String;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v4

    .line 156
    .local v4, "module":Lcom/facebook/react/bridge/NativeModule;
    if-eqz v4, :cond_1

    .line 157
    move-object v0, v4

    .line 160
    .end local v2    # "moduleProvider":Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$ModuleProvider;
    .end local v3    # "moduleInfo":Lcom/facebook/react/module/model/ReactModuleInfo;
    .end local v4    # "module":Lcom/facebook/react/bridge/NativeModule;
    :cond_1
    goto :goto_0

    .line 163
    :cond_2
    instance-of v1, v0, Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;

    xor-int/lit8 v1, v1, 0x1

    .line 164
    .local v1, "isLegacyModule":Z
    if-eqz v1, :cond_3

    .line 165
    const/4 v2, 0x0

    return-object v2

    .line 168
    :cond_3
    move-object v2, v0

    check-cast v2, Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;

    return-object v2
.end method

.method public unstable_isLegacyModuleRegistered(Ljava/lang/String;)Z
    .locals 4
    .param p1, "moduleName"    # Ljava/lang/String;

    .line 184
    iget-object v0, p0, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate;->mModuleProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$ModuleProvider;

    .line 185
    .local v1, "moduleProvider":Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$ModuleProvider;
    iget-object v2, p0, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate;->mPackageModuleInfos:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/module/model/ReactModuleInfo;

    .line 186
    .local v2, "moduleInfo":Lcom/facebook/react/module/model/ReactModuleInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/facebook/react/module/model/ReactModuleInfo;->isTurboModule()Z

    move-result v3

    if-nez v3, :cond_0

    .line 187
    const/4 v0, 0x1

    return v0

    .line 189
    .end local v1    # "moduleProvider":Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$ModuleProvider;
    .end local v2    # "moduleInfo":Lcom/facebook/react/module/model/ReactModuleInfo;
    :cond_0
    goto :goto_0

    .line 190
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public unstable_isModuleRegistered(Ljava/lang/String;)Z
    .locals 4
    .param p1, "moduleName"    # Ljava/lang/String;

    .line 173
    iget-object v0, p0, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate;->mModuleProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$ModuleProvider;

    .line 174
    .local v1, "moduleProvider":Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$ModuleProvider;
    iget-object v2, p0, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate;->mPackageModuleInfos:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/module/model/ReactModuleInfo;

    .line 175
    .local v2, "moduleInfo":Lcom/facebook/react/module/model/ReactModuleInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/facebook/react/module/model/ReactModuleInfo;->isTurboModule()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 176
    const/4 v0, 0x1

    return v0

    .line 178
    .end local v1    # "moduleProvider":Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$ModuleProvider;
    .end local v2    # "moduleInfo":Lcom/facebook/react/module/model/ReactModuleInfo;
    :cond_0
    goto :goto_0

    .line 179
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public unstable_shouldEnableLegacyModuleInterop()Z
    .locals 1

    .line 141
    iget-boolean v0, p0, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate;->mShouldEnableLegacyModuleInterop:Z

    return v0
.end method
