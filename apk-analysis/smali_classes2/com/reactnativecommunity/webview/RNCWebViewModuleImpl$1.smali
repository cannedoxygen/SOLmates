.class Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$1;
.super Ljava/lang/Object;
.source "RNCWebViewModuleImpl.java"

# interfaces
.implements Lcom/facebook/react/modules/core/PermissionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->getWebviewFileDownloaderPermissionListener(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/modules/core/PermissionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;

.field final synthetic val$downloadingMessage:Ljava/lang/String;

.field final synthetic val$lackPermissionToDownloadMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 179
    iput-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$1;->this$0:Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;

    iput-object p2, p0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$1;->val$downloadingMessage:Ljava/lang/String;

    iput-object p3, p0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$1;->val$lackPermissionToDownloadMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 182
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 195
    return v0

    .line 185
    :pswitch_0
    array-length v1, p3

    const/4 v2, 0x1

    if-lez v1, :cond_0

    aget v0, p3, v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$1;->this$0:Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;

    invoke-static {v0}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->-$$Nest$fgetmDownloadRequest(Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;)Landroid/app/DownloadManager$Request;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$1;->this$0:Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;

    iget-object v1, p0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$1;->val$downloadingMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->downloadFile(Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$1;->this$0:Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;

    invoke-static {v0}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->-$$Nest$fgetmContext(Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$1;->val$lackPermissionToDownloadMessage:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 192
    :cond_1
    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
