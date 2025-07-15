.class public Lcom/reactnativecommunity/webview/RNCWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "RNCWebChromeClient.java"

# interfaces
.implements Lcom/facebook/react/bridge/LifecycleEventListener;


# static fields
.field protected static final COMMON_PERMISSION_REQUEST:I = 0x3

.field protected static final FULLSCREEN_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

.field protected static final FULLSCREEN_SYSTEM_UI_VISIBILITY:I = 0x1f06


# instance fields
.field protected geolocationPermissionCallback:Landroid/webkit/GeolocationPermissions$Callback;

.field protected geolocationPermissionOrigin:Ljava/lang/String;

.field protected grantedPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mAllowsProtectedMedia:Z

.field protected mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field protected mHasOnOpenWindowEvent:Z

.field protected mVideoView:Landroid/view/View;

.field protected mWebView:Lcom/reactnativecommunity/webview/RNCWebView;

.field protected pendingPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected permissionRequest:Landroid/webkit/PermissionRequest;

.field protected permissionsRequestShown:Z

.field protected progressChangedFilter:Lcom/reactnativecommunity/webview/RNCWebView$ProgressChangedFilter;

.field private webviewPermissionsListener:Lcom/facebook/react/modules/core/PermissionListener;


# direct methods
.method public static synthetic $r8$lambda$oj8923O5vQamhjIATROOxzifkXQ(Lcom/reactnativecommunity/webview/RNCWebChromeClient;I[Ljava/lang/String;[I)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->lambda$new$0(I[Ljava/lang/String;[I)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 40
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/16 v2, 0x11

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    sput-object v0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->FULLSCREEN_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Lcom/reactnativecommunity/webview/RNCWebView;)V
    .locals 2
    .param p1, "webView"    # Lcom/reactnativecommunity/webview/RNCWebView;

    .line 84
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->permissionsRequestShown:Z

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->pendingPermissions:Ljava/util/List;

    .line 79
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->progressChangedFilter:Lcom/reactnativecommunity/webview/RNCWebView$ProgressChangedFilter;

    .line 80
    iput-boolean v0, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->mAllowsProtectedMedia:Z

    .line 82
    iput-boolean v0, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->mHasOnOpenWindowEvent:Z

    .line 252
    new-instance v0, Lcom/reactnativecommunity/webview/RNCWebChromeClient$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/reactnativecommunity/webview/RNCWebChromeClient$$ExternalSyntheticLambda0;-><init>(Lcom/reactnativecommunity/webview/RNCWebChromeClient;)V

    iput-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->webviewPermissionsListener:Lcom/facebook/react/modules/core/PermissionListener;

    .line 85
    iput-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->mWebView:Lcom/reactnativecommunity/webview/RNCWebView;

    .line 86
    return-void
.end method

.method private getPermissionAwareActivity()Lcom/facebook/react/modules/core/PermissionAwareActivity;
    .locals 3

    .line 216
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->mWebView:Lcom/reactnativecommunity/webview/RNCWebView;

    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebView;->getThemedReactContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/ThemedReactContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 217
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 219
    instance-of v1, v0, Lcom/facebook/react/modules/core/PermissionAwareActivity;

    if-eqz v1, :cond_0

    .line 222
    move-object v1, v0

    check-cast v1, Lcom/facebook/react/modules/core/PermissionAwareActivity;

    return-object v1

    .line 220
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Tried to use permissions API but the host Activity doesn\'t implement PermissionAwareActivity."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 218
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Tried to use permissions API while not attached to an Activity."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private synthetic lambda$new$0(I[Ljava/lang/String;[I)Z
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->permissionsRequestShown:Z

    .line 260
    const/4 v1, 0x0

    .line 262
    .local v1, "shouldAnswerToPermissionRequest":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v2, v3, :cond_9

    .line 264
    aget-object v3, p2, v2

    .line 265
    .local v3, "permission":Ljava/lang/String;
    aget v6, p3, v2

    if-nez v6, :cond_0

    move v6, v5

    goto :goto_1

    :cond_0
    move v6, v0

    .line 267
    .local v6, "granted":Z
    :goto_1
    const-string v7, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->geolocationPermissionCallback:Landroid/webkit/GeolocationPermissions$Callback;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->geolocationPermissionOrigin:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 271
    if-eqz v6, :cond_1

    .line 272
    iget-object v7, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->geolocationPermissionCallback:Landroid/webkit/GeolocationPermissions$Callback;

    iget-object v8, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->geolocationPermissionOrigin:Ljava/lang/String;

    invoke-interface {v7, v8, v5, v0}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    goto :goto_2

    .line 274
    :cond_1
    iget-object v5, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->geolocationPermissionCallback:Landroid/webkit/GeolocationPermissions$Callback;

    iget-object v7, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->geolocationPermissionOrigin:Ljava/lang/String;

    invoke-interface {v5, v7, v0, v0}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 277
    :goto_2
    iput-object v4, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->geolocationPermissionCallback:Landroid/webkit/GeolocationPermissions$Callback;

    .line 278
    iput-object v4, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->geolocationPermissionOrigin:Ljava/lang/String;

    .line 281
    :cond_2
    const-string v4, "android.permission.RECORD_AUDIO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 282
    if-eqz v6, :cond_3

    iget-object v4, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->grantedPermissions:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 283
    iget-object v4, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->grantedPermissions:Ljava/util/List;

    const-string v5, "android.webkit.resource.AUDIO_CAPTURE"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    :cond_3
    const/4 v1, 0x1

    .line 288
    :cond_4
    const-string v4, "android.permission.CAMERA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 289
    if-eqz v6, :cond_5

    iget-object v4, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->grantedPermissions:Ljava/util/List;

    if-eqz v4, :cond_5

    .line 290
    iget-object v4, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->grantedPermissions:Ljava/util/List;

    const-string v5, "android.webkit.resource.VIDEO_CAPTURE"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    :cond_5
    const/4 v1, 0x1

    .line 295
    :cond_6
    const-string v4, "android.webkit.resource.PROTECTED_MEDIA_ID"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 296
    if-eqz v6, :cond_7

    iget-object v5, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->grantedPermissions:Ljava/util/List;

    if-eqz v5, :cond_7

    .line 297
    iget-object v5, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->grantedPermissions:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    :cond_7
    const/4 v1, 0x1

    .line 262
    .end local v3    # "permission":Ljava/lang/String;
    .end local v6    # "granted":Z
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 303
    .end local v2    # "i":I
    :cond_9
    if-eqz v1, :cond_a

    iget-object v2, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->permissionRequest:Landroid/webkit/PermissionRequest;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->grantedPermissions:Ljava/util/List;

    if-eqz v2, :cond_a

    .line 306
    iget-object v2, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->permissionRequest:Landroid/webkit/PermissionRequest;

    iget-object v3, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->grantedPermissions:Ljava/util/List;

    new-array v6, v0, [Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/webkit/PermissionRequest;->grant([Ljava/lang/String;)V

    .line 307
    iput-object v4, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->permissionRequest:Landroid/webkit/PermissionRequest;

    .line 308
    iput-object v4, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->grantedPermissions:Ljava/util/List;

    .line 311
    :cond_a
    iget-object v2, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->pendingPermissions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    .line 312
    iget-object v2, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->pendingPermissions:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->requestPermissions(Ljava/util/List;)V

    .line 313
    return v0

    .line 316
    :cond_b
    return v5
.end method

.method private declared-synchronized requestPermissions(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    .line 233
    :try_start_0
    iget-boolean v0, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->permissionsRequestShown:Z

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->pendingPermissions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    monitor-exit p0

    return-void

    .line 238
    .end local p0    # "this":Lcom/reactnativecommunity/webview/RNCWebChromeClient;
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->getPermissionAwareActivity()Lcom/facebook/react/modules/core/PermissionAwareActivity;

    move-result-object v0

    .line 239
    .local v0, "activity":Lcom/facebook/react/modules/core/PermissionAwareActivity;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->permissionsRequestShown:Z

    .line 241
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 242
    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->webviewPermissionsListener:Lcom/facebook/react/modules/core/PermissionListener;

    .line 241
    const/4 v3, 0x3

    invoke-interface {v0, v1, v3, v2}, Lcom/facebook/react/modules/core/PermissionAwareActivity;->requestPermissions([Ljava/lang/String;ILcom/facebook/react/modules/core/PermissionListener;)V

    .line 248
    iget-object v1, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->pendingPermissions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    monitor-exit p0

    return-void

    .line 232
    .end local v0    # "activity":Lcom/facebook/react/modules/core/PermissionAwareActivity;
    .end local p1    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method


# virtual methods
.method protected getRootView()Landroid/view/ViewGroup;
    .locals 2

    .line 353
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->mWebView:Lcom/reactnativecommunity/webview/RNCWebView;

    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebView;->getThemedReactContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/ThemedReactContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1
    .param p1, "message"    # Landroid/webkit/ConsoleMessage;

    .line 119
    sget-boolean v0, Lcom/facebook/react/common/build/ReactBuildConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 120
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    return v0

    .line 123
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "isDialog"    # Z
    .param p3, "isUserGesture"    # Z
    .param p4, "resultMsg"    # Landroid/os/Message;

    .line 91
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 93
    .local v0, "newWebView":Landroid/webkit/WebView;
    iget-boolean v1, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->mHasOnOpenWindowEvent:Z

    if-eqz v1, :cond_0

    .line 94
    new-instance v1, Lcom/reactnativecommunity/webview/RNCWebChromeClient$1;

    invoke-direct {v1, p0, p1}, Lcom/reactnativecommunity/webview/RNCWebChromeClient$1;-><init>(Lcom/reactnativecommunity/webview/RNCWebChromeClient;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 110
    :cond_0
    iget-object v1, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/webkit/WebView$WebViewTransport;

    .line 111
    .local v1, "transport":Landroid/webkit/WebView$WebViewTransport;
    invoke-virtual {v1, v0}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 112
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 114
    const/4 v2, 0x1

    return v2
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/webkit/GeolocationPermissions$Callback;

    .line 199
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->mWebView:Lcom/reactnativecommunity/webview/RNCWebView;

    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebView;->getThemedReactContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iput-object p2, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->geolocationPermissionCallback:Landroid/webkit/GeolocationPermissions$Callback;

    .line 206
    iput-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->geolocationPermissionOrigin:Ljava/lang/String;

    .line 208
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->requestPermissions(Ljava/util/List;)V

    goto :goto_0

    .line 211
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 213
    :goto_0
    return-void
.end method

.method public onHostDestroy()V
    .locals 0

    .line 350
    return-void
.end method

.method public onHostPause()V
    .locals 0

    .line 347
    return-void
.end method

.method public onHostResume()V
    .locals 2

    .line 341
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->mVideoView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->mVideoView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    const/16 v1, 0x1f06

    if-eq v0, v1, :cond_0

    .line 342
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->mVideoView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 344
    :cond_0
    return-void
.end method

.method public onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .locals 8
    .param p1, "request"    # Landroid/webkit/PermissionRequest;

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->grantedPermissions:Ljava/util/List;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v0, "requestedAndroidPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_6

    aget-object v5, v1, v4

    .line 152
    .local v5, "requestedResource":Ljava/lang/String;
    const/4 v6, 0x0

    .line 154
    .local v6, "androidPermission":Ljava/lang/String;
    const-string v7, "android.webkit.resource.AUDIO_CAPTURE"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 155
    const-string v6, "android.permission.RECORD_AUDIO"

    goto :goto_1

    .line 156
    :cond_0
    const-string v7, "android.webkit.resource.VIDEO_CAPTURE"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 157
    const-string v6, "android.permission.CAMERA"

    goto :goto_1

    .line 158
    :cond_1
    const-string v7, "android.webkit.resource.PROTECTED_MEDIA_ID"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 159
    iget-boolean v7, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->mAllowsProtectedMedia:Z

    if-eqz v7, :cond_2

    .line 160
    iget-object v7, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->grantedPermissions:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 169
    :cond_2
    const-string v6, "android.webkit.resource.PROTECTED_MEDIA_ID"

    .line 172
    :cond_3
    :goto_1
    if-eqz v6, :cond_5

    .line 173
    iget-object v7, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->mWebView:Lcom/reactnativecommunity/webview/RNCWebView;

    invoke-virtual {v7}, Lcom/reactnativecommunity/webview/RNCWebView;->getThemedReactContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v7

    invoke-static {v7, v6}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_4

    .line 174
    iget-object v7, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->grantedPermissions:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 176
    :cond_4
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    .end local v5    # "requestedResource":Ljava/lang/String;
    .end local v6    # "androidPermission":Ljava/lang/String;
    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 182
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 183
    iget-object v1, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->grantedPermissions:Ljava/util/List;

    new-array v2, v3, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/webkit/PermissionRequest;->grant([Ljava/lang/String;)V

    .line 184
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->grantedPermissions:Ljava/util/List;

    .line 185
    return-void

    .line 190
    :cond_7
    iput-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->permissionRequest:Landroid/webkit/PermissionRequest;

    .line 192
    invoke-direct {p0, v0}, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->requestPermissions(Ljava/util/List;)V

    .line 193
    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 6
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .line 128
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 129
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->progressChangedFilter:Lcom/reactnativecommunity/webview/RNCWebView$ProgressChangedFilter;

    invoke-virtual {v1}, Lcom/reactnativecommunity/webview/RNCWebView$ProgressChangedFilter;->isWaitingForCommandLoadUrl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    return-void

    .line 133
    :cond_0
    invoke-static {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getReactTagFromWebView(Landroid/webkit/WebView;)I

    move-result v1

    .line 134
    .local v1, "reactTag":I
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    .line 135
    .local v2, "event":Lcom/facebook/react/bridge/WritableMap;
    const-string v3, "target"

    int-to-double v4, v1

    invoke-interface {v2, v3, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 136
    const-string v3, "title"

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v3, "url"

    invoke-interface {v2, v3, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v3, "canGoBack"

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 139
    const-string v3, "canGoForward"

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 140
    int-to-float v3, p2

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    float-to-double v3, v3

    const-string v5, "progress"

    invoke-interface {v2, v5, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 142
    iget-object v3, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->mWebView:Lcom/reactnativecommunity/webview/RNCWebView;

    invoke-virtual {v3}, Lcom/reactnativecommunity/webview/RNCWebView;->getThemedReactContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v3

    new-instance v4, Lcom/reactnativecommunity/webview/events/TopLoadingProgressEvent;

    invoke-direct {v4, v1, v2}, Lcom/reactnativecommunity/webview/events/TopLoadingProgressEvent;-><init>(ILcom/facebook/react/bridge/WritableMap;)V

    invoke-interface {v3, v4}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 143
    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 4
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p3, "fileChooserParams"    # Landroid/webkit/WebChromeClient$FileChooserParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 333
    .local p2, "filePathCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Landroid/net/Uri;>;"
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "acceptTypes":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v1, v2

    .line 336
    .local v1, "allowMultiple":Z
    iget-object v2, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->mWebView:Lcom/reactnativecommunity/webview/RNCWebView;

    invoke-virtual {v2}, Lcom/reactnativecommunity/webview/RNCWebView;->getThemedReactContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v2

    const-class v3, Lcom/reactnativecommunity/webview/RNCWebViewModule;

    invoke-virtual {v2, v3}, Lcom/facebook/react/uimanager/ThemedReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v2

    check-cast v2, Lcom/reactnativecommunity/webview/RNCWebViewModule;

    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->isCaptureEnabled()Z

    move-result v3

    invoke-virtual {v2, p2, v0, v1, v3}, Lcom/reactnativecommunity/webview/RNCWebViewModule;->startPhotoPickerIntent(Landroid/webkit/ValueCallback;[Ljava/lang/String;ZZ)Z

    move-result v2

    return v2
.end method

.method protected openFileChooser(Landroid/webkit/ValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 324
    .local p1, "filePathCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->mWebView:Lcom/reactnativecommunity/webview/RNCWebView;

    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebView;->getThemedReactContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v0

    const-class v1, Lcom/reactnativecommunity/webview/RNCWebViewModule;

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/ThemedReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    check-cast v0, Lcom/reactnativecommunity/webview/RNCWebViewModule;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/reactnativecommunity/webview/RNCWebViewModule;->startPhotoPickerIntent(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    .line 325
    return-void
.end method

.method protected openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 2
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

    .line 320
    .local p1, "filePathCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->mWebView:Lcom/reactnativecommunity/webview/RNCWebView;

    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebView;->getThemedReactContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v0

    const-class v1, Lcom/reactnativecommunity/webview/RNCWebViewModule;

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/ThemedReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    check-cast v0, Lcom/reactnativecommunity/webview/RNCWebViewModule;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewModule;->startPhotoPickerIntent(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method protected openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2, "acceptType"    # Ljava/lang/String;
    .param p3, "capture"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 328
    .local p1, "filePathCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->mWebView:Lcom/reactnativecommunity/webview/RNCWebView;

    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebView;->getThemedReactContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v0

    const-class v1, Lcom/reactnativecommunity/webview/RNCWebViewModule;

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/ThemedReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    check-cast v0, Lcom/reactnativecommunity/webview/RNCWebViewModule;

    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewModule;->startPhotoPickerIntent(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    .line 329
    return-void
.end method

.method public setAllowsProtectedMedia(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 366
    iput-boolean p1, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->mAllowsProtectedMedia:Z

    .line 367
    return-void
.end method

.method public setHasOnOpenWindowEvent(Z)V
    .locals 0
    .param p1, "hasEvent"    # Z

    .line 370
    iput-boolean p1, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->mHasOnOpenWindowEvent:Z

    .line 371
    return-void
.end method

.method public setProgressChangedFilter(Lcom/reactnativecommunity/webview/RNCWebView$ProgressChangedFilter;)V
    .locals 0
    .param p1, "filter"    # Lcom/reactnativecommunity/webview/RNCWebView$ProgressChangedFilter;

    .line 357
    iput-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->progressChangedFilter:Lcom/reactnativecommunity/webview/RNCWebView$ProgressChangedFilter;

    .line 358
    return-void
.end method
