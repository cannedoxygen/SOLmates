.class public Lcom/facebook/react/NativeModuleRegistryBuilder;
.super Ljava/lang/Object;
.source "NativeModuleRegistryBuilder.java"


# instance fields
.field private final mModules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/react/bridge/ModuleHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/ReactInstanceManager;)V
    .locals 1
    .param p1, "reactApplicationContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .param p2, "reactInstanceManager"    # Lcom/facebook/react/ReactInstanceManager;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/NativeModuleRegistryBuilder;->mModules:Ljava/util/Map;

    .line 25
    iput-object p1, p0, Lcom/facebook/react/NativeModuleRegistryBuilder;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 26
    return-void
.end method


# virtual methods
.method public build()Lcom/facebook/react/bridge/NativeModuleRegistry;
    .locals 3

    .line 67
    new-instance v0, Lcom/facebook/react/bridge/NativeModuleRegistry;

    iget-object v1, p0, Lcom/facebook/react/NativeModuleRegistryBuilder;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    iget-object v2, p0, Lcom/facebook/react/NativeModuleRegistryBuilder;->mModules:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lcom/facebook/react/bridge/NativeModuleRegistry;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/util/Map;)V

    return-object v0
.end method

.method public processPackage(Lcom/facebook/react/ReactPackage;)V
    .locals 7
    .param p1, "reactPackage"    # Lcom/facebook/react/ReactPackage;

    .line 32
    instance-of v0, p1, Lcom/facebook/react/LazyReactPackage;

    if-eqz v0, :cond_0

    .line 33
    move-object v0, p1

    check-cast v0, Lcom/facebook/react/LazyReactPackage;

    iget-object v1, p0, Lcom/facebook/react/NativeModuleRegistryBuilder;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 34
    invoke-virtual {v0, v1}, Lcom/facebook/react/LazyReactPackage;->getNativeModuleIterator(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/lang/Iterable;

    move-result-object v0

    .local v0, "moduleHolders":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/facebook/react/bridge/ModuleHolder;>;"
    goto :goto_0

    .line 35
    .end local v0    # "moduleHolders":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/facebook/react/bridge/ModuleHolder;>;"
    :cond_0
    instance-of v0, p1, Lcom/facebook/react/BaseReactPackage;

    if-eqz v0, :cond_1

    .line 36
    move-object v0, p1

    check-cast v0, Lcom/facebook/react/BaseReactPackage;

    iget-object v1, p0, Lcom/facebook/react/NativeModuleRegistryBuilder;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 37
    invoke-virtual {v0, v1}, Lcom/facebook/react/BaseReactPackage;->getNativeModuleIterator(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/lang/Iterable;

    move-result-object v0

    .restart local v0    # "moduleHolders":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/facebook/react/bridge/ModuleHolder;>;"
    goto :goto_0

    .line 39
    .end local v0    # "moduleHolders":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/facebook/react/bridge/ModuleHolder;>;"
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/NativeModuleRegistryBuilder;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 40
    invoke-static {p1, v0}, Lcom/facebook/react/ReactPackageHelper;->getNativeModuleIterator(Lcom/facebook/react/ReactPackage;Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/lang/Iterable;

    move-result-object v0

    .line 43
    .restart local v0    # "moduleHolders":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/facebook/react/bridge/ModuleHolder;>;"
    :goto_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/bridge/ModuleHolder;

    .line 44
    .local v2, "moduleHolder":Lcom/facebook/react/bridge/ModuleHolder;
    invoke-virtual {v2}, Lcom/facebook/react/bridge/ModuleHolder;->getName()Ljava/lang/String;

    move-result-object v3

    .line 45
    .local v3, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/facebook/react/NativeModuleRegistryBuilder;->mModules:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 46
    iget-object v4, p0, Lcom/facebook/react/NativeModuleRegistryBuilder;->mModules:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/react/bridge/ModuleHolder;

    .line 47
    .local v4, "existingNativeModule":Lcom/facebook/react/bridge/ModuleHolder;
    invoke-virtual {v2}, Lcom/facebook/react/bridge/ModuleHolder;->getCanOverrideExistingModule()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 60
    iget-object v5, p0, Lcom/facebook/react/NativeModuleRegistryBuilder;->mModules:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 48
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Native module "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " tried to override "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 52
    invoke-virtual {v4}, Lcom/facebook/react/bridge/ModuleHolder;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Check the getPackages() method in MainApplication.java, it might be that module is being created twice. If this was your intention, set canOverrideExistingModule=true. This error may also be present if the package is present only once in getPackages() but is also automatically added later during build time by autolinking. Try removing the existing entry and rebuild."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    .end local v4    # "existingNativeModule":Lcom/facebook/react/bridge/ModuleHolder;
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/facebook/react/NativeModuleRegistryBuilder;->mModules:Ljava/util/Map;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .end local v2    # "moduleHolder":Lcom/facebook/react/bridge/ModuleHolder;
    .end local v3    # "name":Ljava/lang/String;
    goto :goto_1

    .line 64
    :cond_4
    return-void
.end method
