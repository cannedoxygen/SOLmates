.class public Lcom/reactnativecommunity/webview/RNCWebViewPackage;
.super Lcom/facebook/react/TurboReactPackage;
.source "RNCWebViewPackage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/facebook/react/TurboReactPackage;-><init>()V

    return-void
.end method

.method static synthetic lambda$getReactModuleInfoProvider$0()Ljava/util/Map;
    .locals 11

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 30
    .local v0, "moduleInfos":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/react/module/model/ReactModuleInfo;>;"
    const/4 v9, 0x0

    .line 31
    .local v9, "isTurboModule":Z
    new-instance v10, Lcom/facebook/react/module/model/ReactModuleInfo;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v2, "RNCWebViewModule"

    const-string v3, "RNCWebViewModule"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v10

    move v8, v9

    invoke-direct/range {v1 .. v8}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    const-string v1, "RNCWebViewModule"

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-object v0
.end method


# virtual methods
.method public createViewManagers(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .locals 2
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

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .local v0, "viewManagers":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/ViewManager;>;"
    new-instance v1, Lcom/reactnativecommunity/webview/RNCWebViewManager;

    invoke-direct {v1}, Lcom/reactnativecommunity/webview/RNCWebViewManager;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    return-object v0
.end method

.method public getModule(Ljava/lang/String;Lcom/facebook/react/bridge/ReactApplicationContext;)Lcom/facebook/react/bridge/NativeModule;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 49
    const-string v0, "RNCWebViewModule"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Lcom/reactnativecommunity/webview/RNCWebViewModule;

    invoke-direct {v0, p2}, Lcom/reactnativecommunity/webview/RNCWebViewModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object v0

    .line 52
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getReactModuleInfoProvider()Lcom/facebook/react/module/model/ReactModuleInfoProvider;
    .locals 1

    .line 28
    new-instance v0, Lcom/reactnativecommunity/webview/RNCWebViewPackage$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/reactnativecommunity/webview/RNCWebViewPackage$$ExternalSyntheticLambda0;-><init>()V

    return-object v0
.end method
