.class public Lcom/reactnativecommunity/webview/RNCWebView;
.super Landroid/webkit/WebView;
.source "RNCWebView.java"

# interfaces
.implements Lcom/facebook/react/bridge/LifecycleEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reactnativecommunity/webview/RNCWebView$ProgressChangedFilter;,
        Lcom/reactnativecommunity/webview/RNCWebView$RNCWebViewBridge;
    }
.end annotation


# static fields
.field protected static final JAVASCRIPT_INTERFACE:Ljava/lang/String; = "ReactNativeWebView"


# instance fields
.field protected bridge:Lcom/reactnativecommunity/webview/RNCWebView$RNCWebViewBridge;

.field protected hasScrollEvent:Z

.field protected injectedJS:Ljava/lang/String;

.field protected injectedJSBeforeContentLoaded:Ljava/lang/String;

.field protected injectedJavaScriptBeforeContentLoadedForMainFrameOnly:Z

.field protected injectedJavaScriptForMainFrameOnly:Z

.field protected mMessagingJSModule:Lcom/reactnativecommunity/webview/RNCWebViewMessagingModule;

.field private mOnScrollDispatchHelper:Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;

.field protected mRNCWebViewClient:Lcom/reactnativecommunity/webview/RNCWebViewClient;

.field mWebChromeClient:Landroid/webkit/WebChromeClient;

.field protected menuCustomItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected messagingEnabled:Z

.field protected messagingModuleName:Ljava/lang/String;

.field protected nestedScrollEnabled:Z

.field protected progressChangedFilter:Lcom/reactnativecommunity/webview/RNCWebView$ProgressChangedFilter;

.field protected sendContentSizeChangeEvents:Z


# direct methods
.method public constructor <init>(Lcom/facebook/react/uimanager/ThemedReactContext;)V
    .locals 2
    .param p1, "reactContext"    # Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 80
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->injectedJavaScriptForMainFrameOnly:Z

    .line 58
    iput-boolean v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->injectedJavaScriptBeforeContentLoadedForMainFrameOnly:Z

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->messagingEnabled:Z

    .line 67
    iput-boolean v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->sendContentSizeChangeEvents:Z

    .line 69
    iput-boolean v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->hasScrollEvent:Z

    .line 70
    iput-boolean v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->nestedScrollEnabled:Z

    .line 81
    invoke-virtual {p0}, Lcom/reactnativecommunity/webview/RNCWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/ThemedReactContext;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/ThemedReactContext;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-class v1, Lcom/reactnativecommunity/webview/RNCWebViewMessagingModule;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/reactnativecommunity/webview/RNCWebViewMessagingModule;

    iput-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->mMessagingJSModule:Lcom/reactnativecommunity/webview/RNCWebViewMessagingModule;

    .line 82
    new-instance v0, Lcom/reactnativecommunity/webview/RNCWebView$ProgressChangedFilter;

    invoke-direct {v0}, Lcom/reactnativecommunity/webview/RNCWebView$ProgressChangedFilter;-><init>()V

    iput-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->progressChangedFilter:Lcom/reactnativecommunity/webview/RNCWebView$ProgressChangedFilter;

    .line 83
    return-void
.end method


# virtual methods
.method public callInjectedJavaScript()V
    .locals 2

    .line 271
    invoke-virtual {p0}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->injectedJS:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->injectedJS:Ljava/lang/String;

    .line 273
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(function() {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/reactnativecommunity/webview/RNCWebView;->injectedJS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\n})();"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/reactnativecommunity/webview/RNCWebView;->evaluateJavascriptWithFallback(Ljava/lang/String;)V

    .line 276
    :cond_0
    return-void
.end method

.method public callInjectedJavaScriptBeforeContentLoaded()V
    .locals 2

    .line 279
    invoke-virtual {p0}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->injectedJSBeforeContentLoaded:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->injectedJSBeforeContentLoaded:Ljava/lang/String;

    .line 281
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(function() {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/reactnativecommunity/webview/RNCWebView;->injectedJSBeforeContentLoaded:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\n})();"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/reactnativecommunity/webview/RNCWebView;->evaluateJavascriptWithFallback(Ljava/lang/String;)V

    .line 284
    :cond_0
    return-void
.end method

.method protected cleanupCallbacksAndDestroy()V
    .locals 1

    .line 379
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/reactnativecommunity/webview/RNCWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 380
    invoke-virtual {p0}, Lcom/reactnativecommunity/webview/RNCWebView;->destroy()V

    .line 381
    return-void
.end method

.method protected createRNCWebViewBridge(Lcom/reactnativecommunity/webview/RNCWebView;)Lcom/reactnativecommunity/webview/RNCWebView$RNCWebViewBridge;
    .locals 2
    .param p1, "webView"    # Lcom/reactnativecommunity/webview/RNCWebView;

    .line 246
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->bridge:Lcom/reactnativecommunity/webview/RNCWebView$RNCWebViewBridge;

    if-nez v0, :cond_0

    .line 247
    new-instance v0, Lcom/reactnativecommunity/webview/RNCWebView$RNCWebViewBridge;

    invoke-direct {v0, p0, p1}, Lcom/reactnativecommunity/webview/RNCWebView$RNCWebViewBridge;-><init>(Lcom/reactnativecommunity/webview/RNCWebView;Lcom/reactnativecommunity/webview/RNCWebView;)V

    iput-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->bridge:Lcom/reactnativecommunity/webview/RNCWebView$RNCWebViewBridge;

    .line 248
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->bridge:Lcom/reactnativecommunity/webview/RNCWebView$RNCWebViewBridge;

    const-string v1, "ReactNativeWebView"

    invoke-virtual {p0, v0, v1}, Lcom/reactnativecommunity/webview/RNCWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->bridge:Lcom/reactnativecommunity/webview/RNCWebView$RNCWebViewBridge;

    return-object v0
.end method

.method public destroy()V
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 388
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 389
    return-void
.end method

.method protected dispatchDirectMessage(Lcom/facebook/react/bridge/WritableMap;)V
    .locals 3
    .param p1, "data"    # Lcom/facebook/react/bridge/WritableMap;

    .line 328
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 329
    .local v0, "event":Lcom/facebook/react/bridge/WritableNativeMap;
    const-string v1, "nativeEvent"

    invoke-virtual {v0, v1, p1}, Lcom/facebook/react/bridge/WritableNativeMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 330
    const-string v1, "messagingModuleName"

    iget-object v2, p0, Lcom/reactnativecommunity/webview/RNCWebView;->messagingModuleName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object v1, p0, Lcom/reactnativecommunity/webview/RNCWebView;->mMessagingJSModule:Lcom/reactnativecommunity/webview/RNCWebViewMessagingModule;

    invoke-interface {v1, v0}, Lcom/reactnativecommunity/webview/RNCWebViewMessagingModule;->onMessage(Lcom/facebook/react/bridge/WritableMap;)V

    .line 333
    return-void
.end method

.method protected dispatchDirectShouldStartLoadWithRequest(Lcom/facebook/react/bridge/WritableMap;)Z
    .locals 3
    .param p1, "data"    # Lcom/facebook/react/bridge/WritableMap;

    .line 336
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 337
    .local v0, "event":Lcom/facebook/react/bridge/WritableNativeMap;
    const-string v1, "nativeEvent"

    invoke-virtual {v0, v1, p1}, Lcom/facebook/react/bridge/WritableNativeMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 338
    const-string v1, "messagingModuleName"

    iget-object v2, p0, Lcom/reactnativecommunity/webview/RNCWebView;->messagingModuleName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v1, p0, Lcom/reactnativecommunity/webview/RNCWebView;->mMessagingJSModule:Lcom/reactnativecommunity/webview/RNCWebViewMessagingModule;

    invoke-interface {v1, v0}, Lcom/reactnativecommunity/webview/RNCWebViewMessagingModule;->onShouldStartLoadWithRequest(Lcom/facebook/react/bridge/WritableMap;)V

    .line 341
    const/4 v1, 0x1

    return v1
.end method

.method protected dispatchEvent(Landroid/webkit/WebView;Lcom/facebook/react/uimanager/events/Event;)V
    .locals 3
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "event"    # Lcom/facebook/react/uimanager/events/Event;

    .line 373
    invoke-virtual {p0}, Lcom/reactnativecommunity/webview/RNCWebView;->getThemedReactContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v0

    .line 374
    .local v0, "reactContext":Lcom/facebook/react/uimanager/ThemedReactContext;
    invoke-static {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getReactTagFromWebView(Landroid/webkit/WebView;)I

    move-result v1

    .line 375
    .local v1, "reactTag":I
    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 376
    return-void
.end method

.method protected evaluateJavascriptWithFallback(Ljava/lang/String;)V
    .locals 1
    .param p1, "script"    # Ljava/lang/String;

    .line 267
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/reactnativecommunity/webview/RNCWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 268
    return-void
.end method

.method public getMessagingEnabled()Z
    .locals 1

    .line 242
    iget-boolean v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->messagingEnabled:Z

    return v0
.end method

.method public getRNCWebViewClient()Lcom/reactnativecommunity/webview/RNCWebViewClient;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->mRNCWebViewClient:Lcom/reactnativecommunity/webview/RNCWebViewClient;

    return-object v0
.end method

.method public getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 1

    .line 396
    invoke-virtual {p0}, Lcom/reactnativecommunity/webview/RNCWebView;->getThemedReactContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/ThemedReactContext;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    return-object v0
.end method

.method public getThemedReactContext()Lcom/facebook/react/uimanager/ThemedReactContext;
    .locals 1

    .line 392
    invoke-virtual {p0}, Lcom/reactnativecommunity/webview/RNCWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/ThemedReactContext;

    return-object v0
.end method

.method public getWebChromeClient()Landroid/webkit/WebChromeClient;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    return-object v0
.end method

.method public onHostDestroy()V
    .locals 0

    .line 117
    invoke-virtual {p0}, Lcom/reactnativecommunity/webview/RNCWebView;->cleanupCallbacksAndDestroy()V

    .line 118
    return-void
.end method

.method public onHostPause()V
    .locals 0

    .line 113
    return-void
.end method

.method public onHostResume()V
    .locals 0

    .line 108
    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;

    .line 294
    invoke-virtual {p0}, Lcom/reactnativecommunity/webview/RNCWebView;->getThemedReactContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v0

    .line 295
    .local v0, "reactContext":Lcom/facebook/react/uimanager/ThemedReactContext;
    move-object v1, p0

    .line 297
    .local v1, "mWebView":Lcom/reactnativecommunity/webview/RNCWebView;
    iget-object v2, p0, Lcom/reactnativecommunity/webview/RNCWebView;->mRNCWebViewClient:Lcom/reactnativecommunity/webview/RNCWebViewClient;

    if-eqz v2, :cond_0

    .line 298
    move-object v2, p0

    .line 299
    .local v2, "webView":Landroid/webkit/WebView;
    new-instance v3, Lcom/reactnativecommunity/webview/RNCWebView$2;

    invoke-direct {v3, p0, v2, p1}, Lcom/reactnativecommunity/webview/RNCWebView$2;-><init>(Lcom/reactnativecommunity/webview/RNCWebView;Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    .line 315
    .end local v2    # "webView":Landroid/webkit/WebView;
    goto :goto_0

    .line 316
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    .line 317
    .local v2, "eventData":Lcom/facebook/react/bridge/WritableMap;
    const-string v3, "data"

    invoke-interface {v2, v3, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v3, p0, Lcom/reactnativecommunity/webview/RNCWebView;->mMessagingJSModule:Lcom/reactnativecommunity/webview/RNCWebViewMessagingModule;

    if-eqz v3, :cond_1

    .line 320
    invoke-virtual {p0, v2}, Lcom/reactnativecommunity/webview/RNCWebView;->dispatchDirectMessage(Lcom/facebook/react/bridge/WritableMap;)V

    goto :goto_0

    .line 322
    :cond_1
    new-instance v3, Lcom/reactnativecommunity/webview/events/TopMessageEvent;

    invoke-static {p0}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getReactTagFromWebView(Landroid/webkit/WebView;)I

    move-result v4

    invoke-direct {v3, v4, v2}, Lcom/reactnativecommunity/webview/events/TopMessageEvent;-><init>(ILcom/facebook/react/bridge/WritableMap;)V

    invoke-virtual {p0, p0, v3}, Lcom/reactnativecommunity/webview/RNCWebView;->dispatchEvent(Landroid/webkit/WebView;Lcom/facebook/react/uimanager/events/Event;)V

    .line 325
    .end local v2    # "eventData":Lcom/facebook/react/bridge/WritableMap;
    :goto_0
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 11
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "oldX"    # I
    .param p4, "oldY"    # I

    .line 345
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 347
    iget-boolean v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->hasScrollEvent:Z

    if-nez v0, :cond_0

    .line 348
    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->mOnScrollDispatchHelper:Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;

    if-nez v0, :cond_1

    .line 352
    new-instance v0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;

    invoke-direct {v0}, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;-><init>()V

    iput-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->mOnScrollDispatchHelper:Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;

    .line 355
    :cond_1
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->mOnScrollDispatchHelper:Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->onScrollChanged(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 356
    nop

    .line 357
    invoke-static {p0}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getReactTagFromWebView(Landroid/webkit/WebView;)I

    move-result v1

    sget-object v2, Lcom/facebook/react/views/scroll/ScrollEventType;->SCROLL:Lcom/facebook/react/views/scroll/ScrollEventType;

    int-to-float v3, p1

    int-to-float v4, p2

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->mOnScrollDispatchHelper:Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;

    .line 361
    invoke-virtual {v0}, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->getXFlingVelocity()F

    move-result v5

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->mOnScrollDispatchHelper:Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;

    .line 362
    invoke-virtual {v0}, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->getYFlingVelocity()F

    move-result v6

    .line 363
    invoke-virtual {p0}, Lcom/reactnativecommunity/webview/RNCWebView;->computeHorizontalScrollRange()I

    move-result v7

    .line 364
    invoke-virtual {p0}, Lcom/reactnativecommunity/webview/RNCWebView;->computeVerticalScrollRange()I

    move-result v8

    .line 365
    invoke-virtual {p0}, Lcom/reactnativecommunity/webview/RNCWebView;->getWidth()I

    move-result v9

    .line 366
    invoke-virtual {p0}, Lcom/reactnativecommunity/webview/RNCWebView;->getHeight()I

    move-result v10

    .line 356
    invoke-static/range {v1 .. v10}, Lcom/facebook/react/views/scroll/ScrollEvent;->obtain(ILcom/facebook/react/views/scroll/ScrollEventType;FFFFIIII)Lcom/facebook/react/views/scroll/ScrollEvent;

    move-result-object v0

    .line 368
    .local v0, "event":Lcom/facebook/react/views/scroll/ScrollEvent;
    invoke-virtual {p0, p0, v0}, Lcom/reactnativecommunity/webview/RNCWebView;->dispatchEvent(Landroid/webkit/WebView;Lcom/facebook/react/uimanager/events/Event;)V

    .line 370
    .end local v0    # "event":Lcom/facebook/react/views/scroll/ScrollEvent;
    :cond_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "ow"    # I
    .param p4, "oh"    # I

    .line 130
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onSizeChanged(IIII)V

    .line 132
    iget-boolean v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->sendContentSizeChangeEvents:Z

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Lcom/facebook/react/uimanager/events/ContentSizeChangeEvent;

    .line 136
    invoke-static {p0}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getReactTagFromWebView(Landroid/webkit/WebView;)I

    move-result v1

    invoke-direct {v0, v1, p1, p2}, Lcom/facebook/react/uimanager/events/ContentSizeChangeEvent;-><init>(III)V

    .line 133
    invoke-virtual {p0, p0, v0}, Lcom/reactnativecommunity/webview/RNCWebView;->dispatchEvent(Landroid/webkit/WebView;Lcom/facebook/react/uimanager/events/Event;)V

    .line 142
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 122
    iget-boolean v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->nestedScrollEnabled:Z

    if-eqz v0, :cond_0

    .line 123
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/reactnativecommunity/webview/RNCWebView;->requestDisallowInterceptTouchEvent(Z)V

    .line 125
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setBasicAuthCredential(Lcom/reactnativecommunity/webview/RNCBasicAuthCredential;)V
    .locals 1
    .param p1, "credential"    # Lcom/reactnativecommunity/webview/RNCBasicAuthCredential;

    .line 90
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->mRNCWebViewClient:Lcom/reactnativecommunity/webview/RNCWebViewClient;

    invoke-virtual {v0, p1}, Lcom/reactnativecommunity/webview/RNCWebViewClient;->setBasicAuthCredential(Lcom/reactnativecommunity/webview/RNCBasicAuthCredential;)V

    .line 91
    return-void
.end method

.method public setHasScrollEvent(Z)V
    .locals 0
    .param p1, "hasScrollEvent"    # Z

    .line 98
    iput-boolean p1, p0, Lcom/reactnativecommunity/webview/RNCWebView;->hasScrollEvent:Z

    .line 99
    return-void
.end method

.method public setIgnoreErrFailedForThisURL(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->mRNCWebViewClient:Lcom/reactnativecommunity/webview/RNCWebViewClient;

    invoke-virtual {v0, p1}, Lcom/reactnativecommunity/webview/RNCWebViewClient;->setIgnoreErrFailedForThisURL(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public setInjectedJavaScriptObject(Ljava/lang/String;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/String;

    .line 287
    invoke-virtual {p0}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {p0, p0}, Lcom/reactnativecommunity/webview/RNCWebView;->createRNCWebViewBridge(Lcom/reactnativecommunity/webview/RNCWebView;)Lcom/reactnativecommunity/webview/RNCWebView$RNCWebViewBridge;

    move-result-object v0

    .line 289
    .local v0, "b":Lcom/reactnativecommunity/webview/RNCWebView$RNCWebViewBridge;
    invoke-virtual {v0, p1}, Lcom/reactnativecommunity/webview/RNCWebView$RNCWebViewBridge;->setInjectedObjectJson(Ljava/lang/String;)V

    .line 291
    .end local v0    # "b":Lcom/reactnativecommunity/webview/RNCWebView$RNCWebViewBridge;
    :cond_0
    return-void
.end method

.method public setMenuCustomItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 148
    .local p1, "menuCustomItems":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    iput-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebView;->menuCustomItems:Ljava/util/List;

    .line 149
    return-void
.end method

.method public setMessagingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 255
    iget-boolean v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->messagingEnabled:Z

    if-ne v0, p1, :cond_0

    .line 256
    return-void

    .line 259
    :cond_0
    iput-boolean p1, p0, Lcom/reactnativecommunity/webview/RNCWebView;->messagingEnabled:Z

    .line 261
    if-eqz p1, :cond_1

    .line 262
    invoke-virtual {p0, p0}, Lcom/reactnativecommunity/webview/RNCWebView;->createRNCWebViewBridge(Lcom/reactnativecommunity/webview/RNCWebView;)Lcom/reactnativecommunity/webview/RNCWebView$RNCWebViewBridge;

    .line 264
    :cond_1
    return-void
.end method

.method public setNestedScrollEnabled(Z)V
    .locals 0
    .param p1, "nestedScrollEnabled"    # Z

    .line 102
    iput-boolean p1, p0, Lcom/reactnativecommunity/webview/RNCWebView;->nestedScrollEnabled:Z

    .line 103
    return-void
.end method

.method public setSendContentSizeChangeEvents(Z)V
    .locals 0
    .param p1, "sendContentSizeChangeEvents"    # Z

    .line 94
    iput-boolean p1, p0, Lcom/reactnativecommunity/webview/RNCWebView;->sendContentSizeChangeEvents:Z

    .line 95
    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 2
    .param p1, "client"    # Landroid/webkit/WebChromeClient;

    .line 225
    iput-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 226
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 227
    instance-of v0, p1, Lcom/reactnativecommunity/webview/RNCWebChromeClient;

    if-eqz v0, :cond_0

    .line 228
    move-object v0, p1

    check-cast v0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;

    iget-object v1, p0, Lcom/reactnativecommunity/webview/RNCWebView;->progressChangedFilter:Lcom/reactnativecommunity/webview/RNCWebView$ProgressChangedFilter;

    invoke-virtual {v0, v1}, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->setProgressChangedFilter(Lcom/reactnativecommunity/webview/RNCWebView$ProgressChangedFilter;)V

    .line 230
    :cond_0
    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 2
    .param p1, "client"    # Landroid/webkit/WebViewClient;

    .line 215
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 216
    instance-of v0, p1, Lcom/reactnativecommunity/webview/RNCWebViewClient;

    if-eqz v0, :cond_0

    .line 217
    move-object v0, p1

    check-cast v0, Lcom/reactnativecommunity/webview/RNCWebViewClient;

    iput-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->mRNCWebViewClient:Lcom/reactnativecommunity/webview/RNCWebViewClient;

    .line 218
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->mRNCWebViewClient:Lcom/reactnativecommunity/webview/RNCWebViewClient;

    iget-object v1, p0, Lcom/reactnativecommunity/webview/RNCWebView;->progressChangedFilter:Lcom/reactnativecommunity/webview/RNCWebView$ProgressChangedFilter;

    invoke-virtual {v0, v1}, Lcom/reactnativecommunity/webview/RNCWebViewClient;->setProgressChangedFilter(Lcom/reactnativecommunity/webview/RNCWebView$ProgressChangedFilter;)V

    .line 220
    :cond_0
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    .line 153
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebView;->menuCustomItems:Ljava/util/List;

    if-nez v0, :cond_0

    .line 154
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0

    .line 157
    :cond_0
    new-instance v0, Lcom/reactnativecommunity/webview/RNCWebView$1;

    invoke-direct {v0, p0, p1}, Lcom/reactnativecommunity/webview/RNCWebView$1;-><init>(Lcom/reactnativecommunity/webview/RNCWebView;Landroid/view/ActionMode$Callback;)V

    invoke-super {p0, v0, p2}, Landroid/webkit/WebView;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method
