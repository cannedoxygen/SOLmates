.class public Lcom/reactnativecommunity/webview/RNCWebViewModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "RNCWebViewModule.java"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "RNCWebViewModule"
.end annotation


# instance fields
.field private final mRNCWebViewModuleImpl:Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 20
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 21
    new-instance v0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;

    invoke-direct {v0, p1}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    iput-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewModule;->mRNCWebViewModuleImpl:Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;

    .line 22
    return-void
.end method


# virtual methods
.method public downloadFile(Ljava/lang/String;)V
    .locals 1
    .param p1, "downloadingMessage"    # Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewModule;->mRNCWebViewModuleImpl:Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;

    invoke-virtual {v0, p1}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->downloadFile(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 57
    const-string v0, "RNCWebViewModule"

    return-object v0
.end method

.method public grantFileDownloaderPermissions(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "downloadingMessage"    # Ljava/lang/String;
    .param p2, "lackPermissionToDownloadMessage"    # Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewModule;->mRNCWebViewModuleImpl:Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->grantFileDownloaderPermissions(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isFileUploadSupported(Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .param p1, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewModule;->mRNCWebViewModuleImpl:Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;

    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->isFileUploadSupported()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 27
    return-void
.end method

.method public setDownloadRequest(Landroid/app/DownloadManager$Request;)V
    .locals 1
    .param p1, "request"    # Landroid/app/DownloadManager$Request;

    .line 43
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewModule;->mRNCWebViewModuleImpl:Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;

    invoke-virtual {v0, p1}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->setDownloadRequest(Landroid/app/DownloadManager$Request;)V

    .line 44
    return-void
.end method

.method public shouldStartLoadWithLockIdentifier(ZD)V
    .locals 1
    .param p1, "shouldStart"    # Z
    .param p2, "lockIdentifier"    # D
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewModule;->mRNCWebViewModuleImpl:Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->shouldStartLoadWithLockIdentifier(ZD)V

    .line 32
    return-void
.end method

.method public startPhotoPickerIntent(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 1
    .param p2, "acceptType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 35
    .local p1, "filePathCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewModule;->mRNCWebViewModuleImpl:Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;

    invoke-virtual {v0, p2, p1}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->startPhotoPickerIntent(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 36
    return-void
.end method

.method public startPhotoPickerIntent(Landroid/webkit/ValueCallback;[Ljava/lang/String;ZZ)Z
    .locals 1
    .param p2, "acceptTypes"    # [Ljava/lang/String;
    .param p3, "allowMultiple"    # Z
    .param p4, "isCaptureEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;[",
            "Ljava/lang/String;",
            "ZZ)Z"
        }
    .end annotation

    .line 39
    .local p1, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewModule;->mRNCWebViewModuleImpl:Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;

    invoke-virtual {v0, p2, p3, p1, p4}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->startPhotoPickerIntent([Ljava/lang/String;ZLandroid/webkit/ValueCallback;Z)Z

    move-result v0

    return v0
.end method
