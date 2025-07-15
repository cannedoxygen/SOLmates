.class public Lcom/reactnativecommunity/webview/RNCWebView$RNCWebViewBridge;
.super Ljava/lang/Object;
.source "RNCWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reactnativecommunity/webview/RNCWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RNCWebViewBridge"
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field injectedObjectJson:Ljava/lang/String;

.field mWebView:Lcom/reactnativecommunity/webview/RNCWebView;

.field final synthetic this$0:Lcom/reactnativecommunity/webview/RNCWebView;


# direct methods
.method constructor <init>(Lcom/reactnativecommunity/webview/RNCWebView;Lcom/reactnativecommunity/webview/RNCWebView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/reactnativecommunity/webview/RNCWebView;
    .param p2, "c"    # Lcom/reactnativecommunity/webview/RNCWebView;

    .line 404
    iput-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebView$RNCWebViewBridge;->this$0:Lcom/reactnativecommunity/webview/RNCWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    const-string v0, "RNCWebViewBridge"

    iput-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebView$RNCWebViewBridge;->TAG:Ljava/lang/String;

    .line 405
    iput-object p2, p0, Lcom/reactnativecommunity/webview/RNCWebView$RNCWebViewBridge;->mWebView:Lcom/reactnativecommunity/webview/RNCWebView;

    .line 406
    return-void
.end method


# virtual methods
.method public injectedObjectJson()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 426
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebView$RNCWebViewBridge;->injectedObjectJson:Ljava/lang/String;

    return-object v0
.end method

.method public postMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 418
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebView$RNCWebViewBridge;->mWebView:Lcom/reactnativecommunity/webview/RNCWebView;

    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebView;->getMessagingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebView$RNCWebViewBridge;->mWebView:Lcom/reactnativecommunity/webview/RNCWebView;

    invoke-virtual {v0, p1}, Lcom/reactnativecommunity/webview/RNCWebView;->onMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebView$RNCWebViewBridge;->TAG:Ljava/lang/String;

    const-string v1, "ReactNativeWebView.postMessage method was called but messaging is disabled. Pass an onMessage handler to the WebView."

    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :goto_0
    return-void
.end method

.method public setInjectedObjectJson(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 409
    iput-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebView$RNCWebViewBridge;->injectedObjectJson:Ljava/lang/String;

    .line 410
    return-void
.end method
