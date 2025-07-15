.class public Lcom/reactnativecommunity/webview/RNCWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "RNCWebViewClient.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field protected static final SHOULD_OVERRIDE_URL_LOADING_TIMEOUT:I = 0xfa

.field private static TAG:Ljava/lang/String;


# instance fields
.field protected basicAuthCredential:Lcom/reactnativecommunity/webview/RNCBasicAuthCredential;

.field protected ignoreErrFailedForThisURL:Ljava/lang/String;

.field protected mLastLoadFailed:Z

.field protected progressChangedFilter:Lcom/reactnativecommunity/webview/RNCWebView$ProgressChangedFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    nop

    .line 40
    const-string v0, "RNCWebViewClient"

    sput-object v0, Lcom/reactnativecommunity/webview/RNCWebViewClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewClient;->mLastLoadFailed:Z

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewClient;->progressChangedFilter:Lcom/reactnativecommunity/webview/RNCWebView$ProgressChangedFilter;

    .line 45
    iput-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewClient;->ignoreErrFailedForThisURL:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewClient;->basicAuthCredential:Lcom/reactnativecommunity/webview/RNCBasicAuthCredential;

    return-void
.end method


# virtual methods
.method protected createWebViewEvent(Landroid/webkit/WebView;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;
    .locals 4
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 313
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 314
    .local v0, "event":Lcom/facebook/react/bridge/WritableMap;
    invoke-static {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getReactTagFromWebView(Landroid/webkit/WebView;)I

    move-result v1

    int-to-double v1, v1

    const-string v3, "target"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 317
    const-string v1, "url"

    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-boolean v1, p0, Lcom/reactnativecommunity/webview/RNCWebViewClient;->mLastLoadFailed:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getProgress()I

    move-result v1

    const/16 v2, 0x64

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "loading"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 319
    const-string v1, "title"

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v1, "canGoBack"

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 321
    const-string v1, "canGoForward"

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 322
    return-object v0
.end method

.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "isReload"    # Z

    .line 79
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 81
    move-object v0, p1

    check-cast v0, Lcom/reactnativecommunity/webview/RNCWebView;

    new-instance v1, Lcom/reactnativecommunity/webview/events/TopLoadingStartEvent;

    .line 84
    invoke-static {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getReactTagFromWebView(Landroid/webkit/WebView;)I

    move-result v2

    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewClient;->createWebViewEvent(Landroid/webkit/WebView;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/reactnativecommunity/webview/events/TopLoadingStartEvent;-><init>(ILcom/facebook/react/bridge/WritableMap;)V

    .line 81
    invoke-virtual {v0, p1, v1}, Lcom/reactnativecommunity/webview/RNCWebView;->dispatchEvent(Landroid/webkit/WebView;Lcom/facebook/react/uimanager/events/Event;)V

    .line 86
    return-void
.end method

.method protected emitFinishEvent(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 308
    invoke-static {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getReactTagFromWebView(Landroid/webkit/WebView;)I

    move-result v0

    .line 309
    .local v0, "reactTag":I
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/ReactContext;

    invoke-static {v1, v0}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v1

    new-instance v2, Lcom/reactnativecommunity/webview/events/TopLoadingFinishEvent;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewClient;->createWebViewEvent(Landroid/webkit/WebView;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/reactnativecommunity/webview/events/TopLoadingFinishEvent;-><init>(ILcom/facebook/react/bridge/WritableMap;)V

    invoke-interface {v1, v2}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 310
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 58
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 59
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "cookies":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 61
    nop

    .line 62
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->flush()V

    .line 68
    :cond_0
    iget-boolean v1, p0, Lcom/reactnativecommunity/webview/RNCWebViewClient;->mLastLoadFailed:Z

    if-nez v1, :cond_1

    .line 69
    move-object v1, p1

    check-cast v1, Lcom/reactnativecommunity/webview/RNCWebView;

    .line 71
    .local v1, "reactWebView":Lcom/reactnativecommunity/webview/RNCWebView;
    invoke-virtual {v1}, Lcom/reactnativecommunity/webview/RNCWebView;->callInjectedJavaScript()V

    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewClient;->emitFinishEvent(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 75
    .end local v1    # "reactWebView":Lcom/reactnativecommunity/webview/RNCWebView;
    :cond_1
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .line 90
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewClient;->mLastLoadFailed:Z

    .line 93
    move-object v0, p1

    check-cast v0, Lcom/reactnativecommunity/webview/RNCWebView;

    .line 94
    .local v0, "reactWebView":Lcom/reactnativecommunity/webview/RNCWebView;
    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebView;->callInjectedJavaScriptBeforeContentLoaded()V

    .line 95
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .line 228
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewClient;->ignoreErrFailedForThisURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewClient;->ignoreErrFailedForThisURL:Ljava/lang/String;

    .line 229
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 231
    const-string v0, "net::ERR_FAILED"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/reactnativecommunity/webview/RNCWebViewClient;->setIgnoreErrFailedForThisURL(Ljava/lang/String;)V

    .line 239
    return-void

    .line 242
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewClient;->mLastLoadFailed:Z

    .line 247
    invoke-virtual {p0, p1, p4}, Lcom/reactnativecommunity/webview/RNCWebViewClient;->emitFinishEvent(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0, p1, p4}, Lcom/reactnativecommunity/webview/RNCWebViewClient;->createWebViewEvent(Landroid/webkit/WebView;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 250
    .local v0, "eventData":Lcom/facebook/react/bridge/WritableMap;
    const-string v1, "code"

    int-to-double v2, p2

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 251
    const-string v1, "description"

    invoke-interface {v0, v1, p3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-static {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getReactTagFromWebView(Landroid/webkit/WebView;)I

    move-result v1

    .line 254
    .local v1, "reactTag":I
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/bridge/ReactContext;

    invoke-static {v2, v1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v2

    new-instance v3, Lcom/reactnativecommunity/webview/events/TopLoadingErrorEvent;

    invoke-direct {v3, v1, v0}, Lcom/reactnativecommunity/webview/events/TopLoadingErrorEvent;-><init>(ILcom/facebook/react/bridge/WritableMap;)V

    invoke-interface {v2, v3}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 255
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/HttpAuthHandler;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "realm"    # Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewClient;->basicAuthCredential:Lcom/reactnativecommunity/webview/RNCBasicAuthCredential;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewClient;->basicAuthCredential:Lcom/reactnativecommunity/webview/RNCBasicAuthCredential;

    iget-object v0, v0, Lcom/reactnativecommunity/webview/RNCBasicAuthCredential;->username:Ljava/lang/String;

    iget-object v1, p0, Lcom/reactnativecommunity/webview/RNCWebViewClient;->basicAuthCredential:Lcom/reactnativecommunity/webview/RNCBasicAuthCredential;

    iget-object v1, v1, Lcom/reactnativecommunity/webview/RNCBasicAuthCredential;->password:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void

    .line 159
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 4
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .param p3, "errorResponse"    # Landroid/webkit/WebResourceResponse;

    .line 263
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 265
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/reactnativecommunity/webview/RNCWebViewClient;->createWebViewEvent(Landroid/webkit/WebView;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 267
    .local v0, "eventData":Lcom/facebook/react/bridge/WritableMap;
    const-string v1, "statusCode"

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 268
    const-string v1, "description"

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-static {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getReactTagFromWebView(Landroid/webkit/WebView;)I

    move-result v1

    .line 271
    .local v1, "reactTag":I
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/bridge/ReactContext;

    invoke-static {v2, v1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v2

    new-instance v3, Lcom/reactnativecommunity/webview/events/TopHttpErrorEvent;

    invoke-direct {v3, v1, v0}, Lcom/reactnativecommunity/webview/events/TopHttpErrorEvent;-><init>(ILcom/facebook/react/bridge/WritableMap;)V

    invoke-interface {v2, v3}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 273
    .end local v0    # "eventData":Lcom/facebook/react/bridge/WritableMap;
    .end local v1    # "reactTag":I
    :cond_0
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 6
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .line 168
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "topWindowUrl":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "failingUrl":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 178
    sget-object v2, Lcom/reactnativecommunity/webview/RNCWebViewClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource blocked from loading due to SSL error. Blocked URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void

    .line 182
    :cond_0
    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v2

    .line 183
    .local v2, "code":I
    const-string v3, ""

    .line 184
    .local v3, "description":Ljava/lang/String;
    const-string v4, "SSL error: "

    .line 187
    .local v4, "descriptionPrefix":Ljava/lang/String;
    packed-switch v2, :pswitch_data_0

    .line 207
    const-string v3, "Unknown SSL Error"

    goto :goto_0

    .line 198
    :pswitch_0
    const-string v3, "A generic error occurred"

    .line 199
    goto :goto_0

    .line 189
    :pswitch_1
    const-string v3, "The date of the certificate is invalid"

    .line 190
    goto :goto_0

    .line 204
    :pswitch_2
    const-string v3, "The certificate authority is not trusted"

    .line 205
    goto :goto_0

    .line 195
    :pswitch_3
    const-string v3, "Hostname mismatch"

    .line 196
    goto :goto_0

    .line 192
    :pswitch_4
    const-string v3, "The certificate has expired"

    .line 193
    goto :goto_0

    .line 201
    :pswitch_5
    const-string v3, "The certificate is not yet valid"

    .line 202
    nop

    .line 211
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 213
    invoke-virtual {p0, p1, v2, v3, v1}, Lcom/reactnativecommunity/webview/RNCWebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 219
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 5
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "detail"    # Landroid/webkit/RenderProcessGoneDetail;

    .line 279
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 280
    const/4 v0, 0x0

    return v0

    .line 282
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z

    .line 284
    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->didCrash()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    sget-object v0, Lcom/reactnativecommunity/webview/RNCWebViewClient;->TAG:Ljava/lang/String;

    const-string v1, "The WebView rendering process crashed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 288
    :cond_1
    sget-object v0, Lcom/reactnativecommunity/webview/RNCWebViewClient;->TAG:Ljava/lang/String;

    const-string v1, "The WebView rendering process was killed by the system."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :goto_0
    const/4 v0, 0x1

    if-nez p1, :cond_2

    .line 295
    return v0

    .line 298
    :cond_2
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/reactnativecommunity/webview/RNCWebViewClient;->createWebViewEvent(Landroid/webkit/WebView;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 299
    .local v1, "event":Lcom/facebook/react/bridge/WritableMap;
    const-string v2, "didCrash"

    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->didCrash()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 300
    invoke-static {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getReactTagFromWebView(Landroid/webkit/WebView;)I

    move-result v2

    .line 301
    .local v2, "reactTag":I
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/bridge/ReactContext;

    invoke-static {v3, v2}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v3

    new-instance v4, Lcom/reactnativecommunity/webview/events/TopRenderProcessGoneEvent;

    invoke-direct {v4, v2, v1}, Lcom/reactnativecommunity/webview/events/TopRenderProcessGoneEvent;-><init>(ILcom/facebook/react/bridge/WritableMap;)V

    invoke-interface {v3, v4}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 304
    return v0
.end method

.method public setBasicAuthCredential(Lcom/reactnativecommunity/webview/RNCBasicAuthCredential;)V
    .locals 0
    .param p1, "credential"    # Lcom/reactnativecommunity/webview/RNCBasicAuthCredential;

    .line 53
    iput-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebViewClient;->basicAuthCredential:Lcom/reactnativecommunity/webview/RNCBasicAuthCredential;

    .line 54
    return-void
.end method

.method public setIgnoreErrFailedForThisURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebViewClient;->ignoreErrFailedForThisURL:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setProgressChangedFilter(Lcom/reactnativecommunity/webview/RNCWebView$ProgressChangedFilter;)V
    .locals 0
    .param p1, "filter"    # Lcom/reactnativecommunity/webview/RNCWebView$ProgressChangedFilter;

    .line 326
    iput-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebViewClient;->progressChangedFilter:Lcom/reactnativecommunity/webview/RNCWebView$ProgressChangedFilter;

    .line 327
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;

    .line 149
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "url":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/reactnativecommunity/webview/RNCWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 16
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 99
    move-object/from16 v1, p1

    check-cast v1, Lcom/reactnativecommunity/webview/RNCWebView;

    .line 100
    .local v1, "rncWebView":Lcom/reactnativecommunity/webview/RNCWebView;
    invoke-virtual {v1}, Lcom/reactnativecommunity/webview/RNCWebView;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJavaScriptContextHolder()Lcom/facebook/react/bridge/JavaScriptContextHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/JavaScriptContextHolder;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    move v4, v0

    .line 102
    .local v4, "isJsDebugging":Z
    if-nez v4, :cond_5

    iget-object v0, v1, Lcom/reactnativecommunity/webview/RNCWebView;->mMessagingJSModule:Lcom/reactnativecommunity/webview/RNCWebViewMessagingModule;

    if-eqz v0, :cond_5

    .line 103
    sget-object v0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->shouldOverrideUrlLoadingLock:Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$ShouldOverrideUrlLoadingLock;

    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$ShouldOverrideUrlLoadingLock;->getNewLock()Landroidx/core/util/Pair;

    move-result-object v5

    .line 104
    .local v5, "lock":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Ljava/lang/Double;Ljava/util/concurrent/atomic/AtomicReference<Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$ShouldOverrideUrlLoadingLock$ShouldOverrideCallbackState;>;>;"
    iget-object v0, v5, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 105
    .local v6, "lockIdentifier":D
    iget-object v0, v5, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Ljava/util/concurrent/atomic/AtomicReference;

    .line 107
    .local v8, "lockObject":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$ShouldOverrideUrlLoadingLock$ShouldOverrideCallbackState;>;"
    invoke-virtual/range {p0 .. p2}, Lcom/reactnativecommunity/webview/RNCWebViewClient;->createWebViewEvent(Landroid/webkit/WebView;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v9

    .line 108
    .local v9, "event":Lcom/facebook/react/bridge/WritableMap;
    const-string v0, "lockIdentifier"

    invoke-interface {v9, v0, v6, v7}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 109
    invoke-virtual {v1, v9}, Lcom/reactnativecommunity/webview/RNCWebView;->dispatchDirectShouldStartLoadWithRequest(Lcom/facebook/react/bridge/WritableMap;)Z

    .line 112
    if-eqz v8, :cond_4

    .line 113
    :try_start_0
    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 115
    .local v10, "startTime":J
    :goto_1
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v12, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$ShouldOverrideUrlLoadingLock$ShouldOverrideCallbackState;->UNDECIDED:Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$ShouldOverrideUrlLoadingLock$ShouldOverrideCallbackState;

    if-ne v0, v12, :cond_2

    .line 116
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long/2addr v12, v10

    const-wide/16 v14, 0xfa

    cmp-long v0, v12, v14

    if-lez v0, :cond_1

    .line 117
    sget-object v0, Lcom/reactnativecommunity/webview/RNCWebViewClient;->TAG:Ljava/lang/String;

    const-string v2, "Did not receive response to shouldOverrideUrlLoading in time, defaulting to allow loading."

    invoke-static {v0, v2}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    sget-object v0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->shouldOverrideUrlLoadingLock:Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$ShouldOverrideUrlLoadingLock;

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$ShouldOverrideUrlLoadingLock;->removeLock(Ljava/lang/Double;)V

    .line 119
    monitor-exit v8

    return v3

    .line 121
    :cond_1
    invoke-virtual {v8, v14, v15}, Ljava/lang/Object;->wait(J)V

    goto :goto_1

    .line 123
    .end local v10    # "startTime":J
    :cond_2
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    nop

    .line 130
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v10, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$ShouldOverrideUrlLoadingLock$ShouldOverrideCallbackState;->SHOULD_OVERRIDE:Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$ShouldOverrideUrlLoadingLock$ShouldOverrideCallbackState;

    if-ne v0, v10, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    move v0, v2

    .line 131
    .local v0, "shouldOverride":Z
    sget-object v2, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->shouldOverrideUrlLoadingLock:Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$ShouldOverrideUrlLoadingLock;

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$ShouldOverrideUrlLoadingLock;->removeLock(Ljava/lang/Double;)V

    .line 133
    return v0

    .line 123
    .end local v0    # "shouldOverride":Z
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v1    # "rncWebView":Lcom/reactnativecommunity/webview/RNCWebView;
    .end local v4    # "isJsDebugging":Z
    .end local v5    # "lock":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Ljava/lang/Double;Ljava/util/concurrent/atomic/AtomicReference<Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$ShouldOverrideUrlLoadingLock$ShouldOverrideCallbackState;>;>;"
    .end local v6    # "lockIdentifier":D
    .end local v8    # "lockObject":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$ShouldOverrideUrlLoadingLock$ShouldOverrideCallbackState;>;"
    .end local v9    # "event":Lcom/facebook/react/bridge/WritableMap;
    .end local p1    # "view":Landroid/webkit/WebView;
    .end local p2    # "url":Ljava/lang/String;
    :try_start_3
    throw v0

    .line 124
    .restart local v1    # "rncWebView":Lcom/reactnativecommunity/webview/RNCWebView;
    .restart local v4    # "isJsDebugging":Z
    .restart local v5    # "lock":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Ljava/lang/Double;Ljava/util/concurrent/atomic/AtomicReference<Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$ShouldOverrideUrlLoadingLock$ShouldOverrideCallbackState;>;>;"
    .restart local v6    # "lockIdentifier":D
    .restart local v8    # "lockObject":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$ShouldOverrideUrlLoadingLock$ShouldOverrideCallbackState;>;"
    .restart local v9    # "event":Lcom/facebook/react/bridge/WritableMap;
    .restart local p1    # "view":Landroid/webkit/WebView;
    .restart local p2    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_3

    .line 112
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local v1    # "rncWebView":Lcom/reactnativecommunity/webview/RNCWebView;
    .end local v4    # "isJsDebugging":Z
    .end local v5    # "lock":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Ljava/lang/Double;Ljava/util/concurrent/atomic/AtomicReference<Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$ShouldOverrideUrlLoadingLock$ShouldOverrideCallbackState;>;>;"
    .end local v6    # "lockIdentifier":D
    .end local v8    # "lockObject":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$ShouldOverrideUrlLoadingLock$ShouldOverrideCallbackState;>;"
    .end local v9    # "event":Lcom/facebook/react/bridge/WritableMap;
    .end local p1    # "view":Landroid/webkit/WebView;
    .end local p2    # "url":Ljava/lang/String;
    throw v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 125
    .local v0, "e":Ljava/lang/InterruptedException;
    .restart local v1    # "rncWebView":Lcom/reactnativecommunity/webview/RNCWebView;
    .restart local v4    # "isJsDebugging":Z
    .restart local v5    # "lock":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Ljava/lang/Double;Ljava/util/concurrent/atomic/AtomicReference<Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$ShouldOverrideUrlLoadingLock$ShouldOverrideCallbackState;>;>;"
    .restart local v6    # "lockIdentifier":D
    .restart local v8    # "lockObject":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$ShouldOverrideUrlLoadingLock$ShouldOverrideCallbackState;>;"
    .restart local v9    # "event":Lcom/facebook/react/bridge/WritableMap;
    .restart local p1    # "view":Landroid/webkit/WebView;
    .restart local p2    # "url":Ljava/lang/String;
    :goto_3
    sget-object v2, Lcom/reactnativecommunity/webview/RNCWebViewClient;->TAG:Ljava/lang/String;

    const-string v10, "shouldOverrideUrlLoading was interrupted while waiting for result."

    invoke-static {v2, v10, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    sget-object v2, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->shouldOverrideUrlLoadingLock:Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$ShouldOverrideUrlLoadingLock;

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$ShouldOverrideUrlLoadingLock;->removeLock(Ljava/lang/Double;)V

    .line 127
    return v3

    .line 135
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v5    # "lock":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Ljava/lang/Double;Ljava/util/concurrent/atomic/AtomicReference<Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$ShouldOverrideUrlLoadingLock$ShouldOverrideCallbackState;>;>;"
    .end local v6    # "lockIdentifier":D
    .end local v8    # "lockObject":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$ShouldOverrideUrlLoadingLock$ShouldOverrideCallbackState;>;"
    .end local v9    # "event":Lcom/facebook/react/bridge/WritableMap;
    :cond_5
    sget-object v0, Lcom/reactnativecommunity/webview/RNCWebViewClient;->TAG:Ljava/lang/String;

    const-string v3, "Couldn\'t use blocking synchronous call for onShouldStartLoadWithRequest due to debugging or missing Catalyst instance, falling back to old event-and-load."

    invoke-static {v0, v3}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    move-object/from16 v3, p0

    iget-object v0, v3, Lcom/reactnativecommunity/webview/RNCWebViewClient;->progressChangedFilter:Lcom/reactnativecommunity/webview/RNCWebView$ProgressChangedFilter;

    invoke-virtual {v0, v2}, Lcom/reactnativecommunity/webview/RNCWebView$ProgressChangedFilter;->setWaitingForCommandLoadUrl(Z)V

    .line 138
    invoke-static/range {p1 .. p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getReactTagFromWebView(Landroid/webkit/WebView;)I

    move-result v0

    .line 139
    .local v0, "reactTag":I
    invoke-virtual/range {p1 .. p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/facebook/react/bridge/ReactContext;

    invoke-static {v5, v0}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v5

    new-instance v6, Lcom/reactnativecommunity/webview/events/TopShouldStartLoadWithRequestEvent;

    .line 141
    invoke-virtual/range {p0 .. p2}, Lcom/reactnativecommunity/webview/RNCWebViewClient;->createWebViewEvent(Landroid/webkit/WebView;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Lcom/reactnativecommunity/webview/events/TopShouldStartLoadWithRequestEvent;-><init>(ILcom/facebook/react/bridge/WritableMap;)V

    .line 139
    invoke-interface {v5, v6}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 142
    return v2
.end method
