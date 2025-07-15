.class Lcom/reactnativecommunity/webview/RNCWebChromeClient$1;
.super Landroid/webkit/WebViewClient;
.source "RNCWebChromeClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/reactnativecommunity/webview/RNCWebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/reactnativecommunity/webview/RNCWebChromeClient;

.field final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/reactnativecommunity/webview/RNCWebChromeClient;Landroid/webkit/WebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/reactnativecommunity/webview/RNCWebChromeClient;

    .line 94
    iput-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient$1;->this$0:Lcom/reactnativecommunity/webview/RNCWebChromeClient;

    iput-object p2, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient$1;->val$view:Landroid/webkit/WebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .param p1, "subview"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 97
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 98
    .local v0, "event":Lcom/facebook/react/bridge/WritableMap;
    const-string v1, "targetUrl"

    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient$1;->val$view:Landroid/webkit/WebView;

    check-cast v1, Lcom/reactnativecommunity/webview/RNCWebView;

    iget-object v2, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient$1;->val$view:Landroid/webkit/WebView;

    new-instance v3, Lcom/reactnativecommunity/webview/events/TopOpenWindowEvent;

    iget-object v4, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient$1;->val$view:Landroid/webkit/WebView;

    .line 102
    invoke-static {v4}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getReactTagFromWebView(Landroid/webkit/WebView;)I

    move-result v4

    invoke-direct {v3, v4, v0}, Lcom/reactnativecommunity/webview/events/TopOpenWindowEvent;-><init>(ILcom/facebook/react/bridge/WritableMap;)V

    .line 100
    invoke-virtual {v1, v2, v3}, Lcom/reactnativecommunity/webview/RNCWebView;->dispatchEvent(Landroid/webkit/WebView;Lcom/facebook/react/uimanager/events/Event;)V

    .line 105
    const/4 v1, 0x1

    return v1
.end method
