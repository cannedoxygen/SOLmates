.class public interface abstract Lexpo/modules/core/interfaces/ReactNativeHostHandler;
.super Ljava/lang/Object;
.source "ReactNativeHostHandler.java"


# virtual methods
.method public getBundleAssetName(Z)Ljava/lang/String;
    .locals 1
    .param p1, "useDeveloperSupport"    # Z

    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDevSupportManagerFactory()Ljava/lang/Object;
    .locals 1

    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public getJSBundleFile(Z)Ljava/lang/String;
    .locals 1
    .param p1, "useDeveloperSupport"    # Z

    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public getJavaScriptExecutorFactory()Lcom/facebook/react/bridge/JavaScriptExecutorFactory;
    .locals 1

    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUseDeveloperSupport()Ljava/lang/Boolean;
    .locals 1

    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDidCreateDevSupportManager(Lcom/facebook/react/devsupport/interfaces/DevSupportManager;)V
    .locals 0
    .param p1, "devSupportManager"    # Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    .line 78
    return-void
.end method

.method public onDidCreateReactInstance(ZLcom/facebook/react/bridge/ReactContext;)V
    .locals 0
    .param p1, "useDeveloperSupport"    # Z
    .param p2, "reactContext"    # Lcom/facebook/react/bridge/ReactContext;

    .line 83
    return-void
.end method

.method public onReactInstanceException(ZLjava/lang/Exception;)V
    .locals 0
    .param p1, "useDeveloperSupport"    # Z
    .param p2, "exception"    # Ljava/lang/Exception;

    .line 90
    return-void
.end method

.method public onWillCreateReactInstance(Z)V
    .locals 0
    .param p1, "useDeveloperSupport"    # Z

    .line 73
    return-void
.end method
