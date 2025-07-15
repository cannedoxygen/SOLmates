.class public abstract Lcom/facebook/react/BaseReactPackage;
.super Ljava/lang/Object;
.source "BaseReactPackage.java"

# interfaces
.implements Lcom/facebook/react/ReactPackage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/BaseReactPackage$ModuleHolderProvider;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$Ku8tv1L4S-uux0YSni09ARzo4jk(Lcom/facebook/react/BaseReactPackage;Ljava/util/Iterator;Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/Iterator;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/facebook/react/BaseReactPackage;->lambda$getNativeModuleIterator$0(Ljava/util/Iterator;Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$getNativeModuleIterator$0(Ljava/util/Iterator;Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/Iterator;
    .locals 1
    .param p1, "entrySetIterator"    # Ljava/util/Iterator;
    .param p2, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 65
    new-instance v0, Lcom/facebook/react/BaseReactPackage$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/react/BaseReactPackage$1;-><init>(Lcom/facebook/react/BaseReactPackage;Ljava/util/Iterator;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object v0
.end method


# virtual methods
.method public createNativeModules(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .locals 2
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/react/bridge/NativeModule;",
            ">;"
        }
    .end annotation

    .line 34
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "createNativeModules method is not supported. Use getModule() method instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createViewManagers(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .locals 5
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/ViewManager;",
            ">;"
        }
    .end annotation

    .line 130
    invoke-virtual {p0, p1}, Lcom/facebook/react/BaseReactPackage;->getViewManagers(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;

    move-result-object v0

    .line 131
    .local v0, "viewManagerModuleSpecs":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/bridge/ModuleSpec;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 135
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v1, "viewManagers":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/ViewManager;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/bridge/ModuleSpec;

    .line 137
    .local v3, "moduleSpec":Lcom/facebook/react/bridge/ModuleSpec;
    invoke-virtual {v3}, Lcom/facebook/react/bridge/ModuleSpec;->getProvider()Ljavax/inject/Provider;

    move-result-object v4

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/react/uimanager/ViewManager;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    .end local v3    # "moduleSpec":Lcom/facebook/react/bridge/ModuleSpec;
    goto :goto_0

    .line 139
    :cond_1
    return-object v1

    .line 132
    .end local v1    # "viewManagers":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/ViewManager;>;"
    :cond_2
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public abstract getModule(Ljava/lang/String;Lcom/facebook/react/bridge/ReactApplicationContext;)Lcom/facebook/react/bridge/NativeModule;
.end method

.method getNativeModuleIterator(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/lang/Iterable;
    .locals 3
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ")",
            "Ljava/lang/Iterable<",
            "Lcom/facebook/react/bridge/ModuleHolder;",
            ">;"
        }
    .end annotation

    .line 60
    nop

    .line 61
    invoke-virtual {p0}, Lcom/facebook/react/BaseReactPackage;->getReactModuleInfoProvider()Lcom/facebook/react/module/model/ReactModuleInfoProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/react/module/model/ReactModuleInfoProvider;->getReactModuleInfos()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 62
    .local v0, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/facebook/react/module/model/ReactModuleInfo;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 64
    .local v1, "entrySetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/facebook/react/module/model/ReactModuleInfo;>;>;"
    new-instance v2, Lcom/facebook/react/BaseReactPackage$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1, p1}, Lcom/facebook/react/BaseReactPackage$$ExternalSyntheticLambda0;-><init>(Lcom/facebook/react/BaseReactPackage;Ljava/util/Iterator;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object v2
.end method

.method public abstract getReactModuleInfoProvider()Lcom/facebook/react/module/model/ReactModuleInfoProvider;
.end method

.method protected getViewManagers(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .locals 1
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

    .line 125
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
