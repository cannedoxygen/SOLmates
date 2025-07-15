.class Lcom/reactnativecommunity/webview/RNCWebView$1;
.super Landroid/view/ActionMode$Callback2;
.source "RNCWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/reactnativecommunity/webview/RNCWebView;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/reactnativecommunity/webview/RNCWebView;

.field final synthetic val$callback:Landroid/view/ActionMode$Callback;


# direct methods
.method constructor <init>(Lcom/reactnativecommunity/webview/RNCWebView;Landroid/view/ActionMode$Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/reactnativecommunity/webview/RNCWebView;

    .line 157
    iput-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebView$1;->this$0:Lcom/reactnativecommunity/webview/RNCWebView;

    iput-object p2, p0, Lcom/reactnativecommunity/webview/RNCWebView$1;->val$callback:Landroid/view/ActionMode$Callback;

    invoke-direct {p0}, Landroid/view/ActionMode$Callback2;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 173
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 174
    .local v0, "wMap":Lcom/facebook/react/bridge/WritableMap;
    iget-object v1, p0, Lcom/reactnativecommunity/webview/RNCWebView$1;->this$0:Lcom/reactnativecommunity/webview/RNCWebView;

    new-instance v2, Lcom/reactnativecommunity/webview/RNCWebView$1$1;

    invoke-direct {v2, p0, p2, v0, p1}, Lcom/reactnativecommunity/webview/RNCWebView$1$1;-><init>(Lcom/reactnativecommunity/webview/RNCWebView$1;Landroid/view/MenuItem;Lcom/facebook/react/bridge/WritableMap;Landroid/view/ActionMode;)V

    const-string v3, "(function(){return {selection: window.getSelection().toString()} })()"

    invoke-virtual {v1, v3, v2}, Lcom/reactnativecommunity/webview/RNCWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 192
    const/4 v1, 0x1

    return v1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .line 160
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/reactnativecommunity/webview/RNCWebView$1;->this$0:Lcom/reactnativecommunity/webview/RNCWebView;

    iget-object v1, v1, Lcom/reactnativecommunity/webview/RNCWebView;->menuCustomItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/reactnativecommunity/webview/RNCWebView$1;->this$0:Lcom/reactnativecommunity/webview/RNCWebView;

    iget-object v1, v1, Lcom/reactnativecommunity/webview/RNCWebView;->menuCustomItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "label"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-interface {p2, v2, v0, v0, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 197
    const/4 p1, 0x0

    .line 198
    return-void
.end method

.method public onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "outRect"    # Landroid/graphics/Rect;

    .line 204
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebView$1;->val$callback:Landroid/view/ActionMode$Callback;

    instance-of v0, v0, Landroid/view/ActionMode$Callback2;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebView$1;->val$callback:Landroid/view/ActionMode$Callback;

    check-cast v0, Landroid/view/ActionMode$Callback2;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ActionMode$Callback2;->onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 207
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ActionMode$Callback2;->onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 209
    :goto_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "actionMode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .line 168
    const/4 v0, 0x0

    return v0
.end method
