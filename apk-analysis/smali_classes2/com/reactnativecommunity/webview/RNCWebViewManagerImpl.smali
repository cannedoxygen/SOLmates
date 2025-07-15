.class public final Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;
.super Ljava/lang/Object;
.source "RNCWebViewManagerImpl.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\"\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008>\u0018\u0000 \u0081\u00012\u00020\u0001:\u0002\u0081\u0001B\u000f\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u00100\u001a\u0002012\u0006\u00102\u001a\u000203J\u000e\u00104\u001a\u0002052\u0006\u00102\u001a\u000203J\u0016\u00104\u001a\u0002052\u0006\u00102\u001a\u0002032\u0006\u00106\u001a\u000201J\u0014\u00107\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0008\u0018\u000108J\n\u00109\u001a\u0004\u0018\u00010\u0006H\u0002J\n\u0010:\u001a\u0004\u0018\u00010\u0006H\u0002J\u001a\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u0002052\u0008\u0010>\u001a\u0004\u0018\u00010+H\u0002J\u000e\u0010?\u001a\u00020<2\u0006\u0010=\u001a\u000205J\u000e\u0010@\u001a\u00020<2\u0006\u0010=\u001a\u000205J\u001e\u0010A\u001a\u00020<2\u0006\u0010=\u001a\u0002052\u0006\u0010B\u001a\u00020\u00062\u0006\u0010C\u001a\u00020DJ\u0016\u0010E\u001a\u00020<2\u0006\u0010=\u001a\u0002052\u0006\u0010F\u001a\u00020\u0003J\u0016\u0010G\u001a\u00020<2\u0006\u0010=\u001a\u0002052\u0006\u0010H\u001a\u00020\u0003J\u0016\u0010I\u001a\u00020<2\u0006\u0010=\u001a\u0002052\u0006\u0010J\u001a\u00020\u0003J\u0016\u0010K\u001a\u00020<2\u0006\u0010=\u001a\u0002052\u0006\u0010H\u001a\u00020\u0003J\u0016\u0010L\u001a\u00020<2\u0006\u0010=\u001a\u0002052\u0006\u0010M\u001a\u00020\u0003J\u0018\u0010N\u001a\u00020<2\u0006\u0010=\u001a\u0002052\u0008\u0010O\u001a\u0004\u0018\u00010\u0006J\u0018\u0010P\u001a\u00020<2\u0006\u0010=\u001a\u0002052\u0008\u0010Q\u001a\u0004\u0018\u00010\u0006J\u0018\u0010R\u001a\u00020<2\u0006\u0010=\u001a\u0002052\u0008\u0010S\u001a\u0004\u0018\u00010+J\u0016\u0010T\u001a\u00020<2\u0006\u0010=\u001a\u0002052\u0006\u0010M\u001a\u00020\u0003J\u0018\u0010U\u001a\u00020<2\u0006\u0010=\u001a\u0002052\u0008\u0010V\u001a\u0004\u0018\u00010\u0006J\u0016\u0010W\u001a\u00020<2\u0006\u0010=\u001a\u0002052\u0006\u0010H\u001a\u00020\u0003J\u0010\u0010X\u001a\u00020<2\u0008\u0010H\u001a\u0004\u0018\u00010\u0006J\u0016\u0010Y\u001a\u00020<2\u0006\u0010=\u001a\u0002052\u0006\u0010M\u001a\u00020\u0003J\u0016\u0010Z\u001a\u00020<2\u0006\u0010=\u001a\u0002052\u0006\u0010H\u001a\u00020\u0003J\u0016\u0010[\u001a\u00020<2\u0006\u0010=\u001a\u0002052\u0006\u0010H\u001a\u00020\u0003J\u0016\u0010\\\u001a\u00020<2\u0006\u0010=\u001a\u0002052\u0006\u0010H\u001a\u00020\u0003J\u0016\u0010]\u001a\u00020<2\u0006\u0010=\u001a\u0002052\u0006\u0010M\u001a\u00020\u0003J\u0018\u0010^\u001a\u00020<2\u0006\u0010=\u001a\u0002052\u0008\u0010_\u001a\u0004\u0018\u00010\u0006J\u0018\u0010`\u001a\u00020<2\u0006\u0010=\u001a\u0002052\u0008\u0010H\u001a\u0004\u0018\u00010\u0006J\u0016\u0010a\u001a\u00020<2\u0006\u0010=\u001a\u0002052\u0006\u0010H\u001a\u00020\u0003J\u0016\u0010b\u001a\u00020<2\u0006\u0010=\u001a\u0002052\u0006\u0010H\u001a\u00020\u0003J\u0018\u0010c\u001a\u00020<2\u0006\u0010=\u001a\u0002052\u0008\u0010H\u001a\u0004\u0018\u00010\u0006J\u0016\u0010d\u001a\u00020<2\u0006\u0010=\u001a\u0002052\u0006\u0010H\u001a\u00020\u0003J\u0016\u0010e\u001a\u00020<2\u0006\u0010=\u001a\u0002052\u0006\u0010M\u001a\u00020\u0003J\u0010\u0010f\u001a\u00020<2\u0008\u0010H\u001a\u0004\u0018\u00010\u0006J\u0016\u0010g\u001a\u00020<2\u0006\u0010=\u001a\u0002052\u0006\u0010H\u001a\u00020\u0003J\u0018\u0010h\u001a\u00020<2\u0006\u0010=\u001a\u0002052\u0008\u0010H\u001a\u0004\u0018\u00010DJ\u0016\u0010i\u001a\u00020<2\u0006\u0010=\u001a\u0002052\u0006\u0010H\u001a\u00020\u0003J\u0018\u0010j\u001a\u00020<2\u0006\u0010=\u001a\u0002052\u0008\u0010H\u001a\u0004\u0018\u00010\u0006J\u0016\u0010k\u001a\u00020<2\u0006\u0010=\u001a\u0002052\u0006\u0010H\u001a\u00020\u0008J\u0018\u0010l\u001a\u00020<2\u0006\u0010=\u001a\u0002052\u0008\u0010m\u001a\u0004\u0018\u00010\u0006J\u0016\u0010n\u001a\u00020<2\u0006\u0010=\u001a\u0002052\u0006\u0010H\u001a\u00020\u0003J\u0018\u0010o\u001a\u00020<2\u0006\u0010=\u001a\u0002052\u0008\u0010p\u001a\u0004\u0018\u00010\u0006J\u0016\u0010q\u001a\u00020<2\u0006\u0010=\u001a\u0002052\u0006\u0010r\u001a\u00020\u0003J\u0016\u0010s\u001a\u00020<2\u0006\u0010=\u001a\u0002052\u0006\u0010H\u001a\u00020\u0003J\u0016\u0010t\u001a\u00020<2\u0006\u0010=\u001a\u0002052\u0006\u0010H\u001a\u00020\u0003J\u0016\u0010u\u001a\u00020<2\u0006\u0010=\u001a\u0002052\u0006\u0010H\u001a\u00020\u0003J\u0016\u0010v\u001a\u00020<2\u0006\u0010=\u001a\u0002052\u0006\u0010H\u001a\u00020\u0003J\u0016\u0010w\u001a\u00020<2\u0006\u0010=\u001a\u0002052\u0006\u0010H\u001a\u00020\u0003J\u0016\u0010x\u001a\u00020<2\u0006\u0010=\u001a\u0002052\u0006\u0010H\u001a\u00020\u0003J\u0018\u0010y\u001a\u00020<2\u0006\u0010=\u001a\u0002052\u0008\u0010>\u001a\u0004\u0018\u00010+J\u0016\u0010z\u001a\u00020<2\u0006\u0010=\u001a\u0002052\u0006\u0010H\u001a\u00020\u0008J\u0016\u0010{\u001a\u00020<2\u0006\u0010=\u001a\u0002052\u0006\u0010M\u001a\u00020\u0003J\u0018\u0010|\u001a\u00020<2\u0006\u0010=\u001a\u0002052\u0008\u0010}\u001a\u0004\u0018\u00010\u0006J\u0010\u0010~\u001a\u00020<2\u0006\u0010=\u001a\u000205H\u0002J\u0016\u0010\u007f\u001a\u00020<2\u0006\u0010=\u001a\u0002052\u0006\u0010M\u001a\u00020\u0003J\u0011\u0010\u0080\u0001\u001a\u00020<2\u0006\u00106\u001a\u000201H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u00020\u0008X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u0008X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\nR\u0014\u0010\r\u001a\u00020\u0008X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\nR\u0014\u0010\u000f\u001a\u00020\u0008X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\nR\u0014\u0010\u0011\u001a\u00020\u0008X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\nR\u0014\u0010\u0013\u001a\u00020\u0008X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\nR\u0014\u0010\u0015\u001a\u00020\u0008X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\nR\u0014\u0010\u0017\u001a\u00020\u0008X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\nR\u0014\u0010\u0019\u001a\u00020\u0008X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\nR\u0014\u0010\u001b\u001a\u00020\u0008X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\nR\u0014\u0010\u001d\u001a\u00020\u0008X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\nR\u000e\u0010\u001f\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\'\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010)\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010*\u001a\u0004\u0018\u00010+X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010,\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010-\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020/X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0082\u0001"
    }
    d2 = {
        "Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;",
        "",
        "newArch",
        "",
        "(Z)V",
        "BLANK_URL",
        "",
        "COMMAND_CLEAR_CACHE",
        "",
        "getCOMMAND_CLEAR_CACHE",
        "()I",
        "COMMAND_CLEAR_FORM_DATA",
        "getCOMMAND_CLEAR_FORM_DATA",
        "COMMAND_CLEAR_HISTORY",
        "getCOMMAND_CLEAR_HISTORY",
        "COMMAND_FOCUS",
        "getCOMMAND_FOCUS",
        "COMMAND_GO_BACK",
        "getCOMMAND_GO_BACK",
        "COMMAND_GO_FORWARD",
        "getCOMMAND_GO_FORWARD",
        "COMMAND_INJECT_JAVASCRIPT",
        "getCOMMAND_INJECT_JAVASCRIPT",
        "COMMAND_LOAD_URL",
        "getCOMMAND_LOAD_URL",
        "COMMAND_POST_MESSAGE",
        "getCOMMAND_POST_MESSAGE",
        "COMMAND_RELOAD",
        "getCOMMAND_RELOAD",
        "COMMAND_STOP_LOADING",
        "getCOMMAND_STOP_LOADING",
        "DEFAULT_DOWNLOADING_MESSAGE",
        "DEFAULT_LACK_PERMISSION_TO_DOWNLOAD_MESSAGE",
        "HTML_ENCODING",
        "HTML_MIME_TYPE",
        "HTTP_METHOD_POST",
        "TAG",
        "mAllowsFullscreenVideo",
        "mAllowsProtectedMedia",
        "mDownloadingMessage",
        "mHasOnOpenWindowEvent",
        "mLackPermissionToDownloadMessage",
        "mPendingSource",
        "Lcom/facebook/react/bridge/ReadableMap;",
        "mUserAgent",
        "mUserAgentWithApplicationName",
        "mWebViewConfig",
        "Lcom/reactnativecommunity/webview/RNCWebViewConfig;",
        "createRNCWebViewInstance",
        "Lcom/reactnativecommunity/webview/RNCWebView;",
        "context",
        "Lcom/facebook/react/uimanager/ThemedReactContext;",
        "createViewInstance",
        "Lcom/reactnativecommunity/webview/RNCWebViewWrapper;",
        "webView",
        "getCommandsMap",
        "",
        "getDownloadingMessageOrDefault",
        "getLackPermissionToDownloadMessageOrDefault",
        "loadSource",
        "",
        "viewWrapper",
        "source",
        "onAfterUpdateTransaction",
        "onDropViewInstance",
        "receiveCommand",
        "commandId",
        "args",
        "Lcom/facebook/react/bridge/ReadableArray;",
        "setAllowFileAccess",
        "allowFileAccess",
        "setAllowFileAccessFromFileURLs",
        "value",
        "setAllowUniversalAccessFromFileURLs",
        "allow",
        "setAllowsFullscreenVideo",
        "setAllowsProtectedMedia",
        "enabled",
        "setAndroidLayerType",
        "layerTypeString",
        "setApplicationNameForUserAgent",
        "applicationName",
        "setBasicAuthCredential",
        "credential",
        "setCacheEnabled",
        "setCacheMode",
        "cacheModeString",
        "setDomStorageEnabled",
        "setDownloadingMessage",
        "setForceDarkOn",
        "setGeolocationEnabled",
        "setHasOnOpenWindowEvent",
        "setHasOnScroll",
        "setIncognito",
        "setInjectedJavaScript",
        "injectedJavaScript",
        "setInjectedJavaScriptBeforeContentLoaded",
        "setInjectedJavaScriptBeforeContentLoadedForMainFrameOnly",
        "setInjectedJavaScriptForMainFrameOnly",
        "setInjectedJavaScriptObject",
        "setJavaScriptCanOpenWindowsAutomatically",
        "setJavaScriptEnabled",
        "setLackPermissionToDownloadMessage",
        "setMediaPlaybackRequiresUserAction",
        "setMenuCustomItems",
        "setMessagingEnabled",
        "setMessagingModuleName",
        "setMinimumFontSize",
        "setMixedContentMode",
        "mixedContentMode",
        "setNestedScrollEnabled",
        "setOverScrollMode",
        "overScrollModeString",
        "setSaveFormDataDisabled",
        "disabled",
        "setScalesPageToFit",
        "setSetBuiltInZoomControls",
        "setSetDisplayZoomControls",
        "setSetSupportMultipleWindows",
        "setShowsHorizontalScrollIndicator",
        "setShowsVerticalScrollIndicator",
        "setSource",
        "setTextZoom",
        "setThirdPartyCookiesEnabled",
        "setUserAgent",
        "userAgent",
        "setUserAgentString",
        "setWebviewDebuggingEnabled",
        "setupWebChromeClient",
        "Companion",
        "react-native-webview_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl$Companion;

.field public static final NAME:Ljava/lang/String; = "RNCWebView"


# instance fields
.field private final BLANK_URL:Ljava/lang/String;

.field private final COMMAND_CLEAR_CACHE:I

.field private final COMMAND_CLEAR_FORM_DATA:I

.field private final COMMAND_CLEAR_HISTORY:I

.field private final COMMAND_FOCUS:I

.field private final COMMAND_GO_BACK:I

.field private final COMMAND_GO_FORWARD:I

.field private final COMMAND_INJECT_JAVASCRIPT:I

.field private final COMMAND_LOAD_URL:I

.field private final COMMAND_POST_MESSAGE:I

.field private final COMMAND_RELOAD:I

.field private final COMMAND_STOP_LOADING:I

.field private final DEFAULT_DOWNLOADING_MESSAGE:Ljava/lang/String;

.field private final DEFAULT_LACK_PERMISSION_TO_DOWNLOAD_MESSAGE:Ljava/lang/String;

.field private final HTML_ENCODING:Ljava/lang/String;

.field private final HTML_MIME_TYPE:Ljava/lang/String;

.field private final HTTP_METHOD_POST:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mAllowsFullscreenVideo:Z

.field private mAllowsProtectedMedia:Z

.field private mDownloadingMessage:Ljava/lang/String;

.field private mHasOnOpenWindowEvent:Z

.field private mLackPermissionToDownloadMessage:Ljava/lang/String;

.field private mPendingSource:Lcom/facebook/react/bridge/ReadableMap;

.field private mUserAgent:Ljava/lang/String;

.field private mUserAgentWithApplicationName:Ljava/lang/String;

.field private mWebViewConfig:Lcom/reactnativecommunity/webview/RNCWebViewConfig;

.field private final newArch:Z


# direct methods
.method public static synthetic $r8$lambda$85p144IIcYjtJVgSw5CVGQwn3Fo(Lcom/reactnativecommunity/webview/RNCWebView;Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->createViewInstance$lambda$1(Lcom/reactnativecommunity/webview/RNCWebView;Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$tiPWnPhjqszV3v5tzFYe_7Uwo9w(Landroid/webkit/WebView;)V
    .locals 0

    invoke-static {p0}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->mWebViewConfig$lambda$0(Landroid/webkit/WebView;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->Companion:Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "newArch"    # Z

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->newArch:Z

    .line 39
    const-string v0, "RNCWebViewManagerImpl"

    iput-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->TAG:Ljava/lang/String;

    .line 40
    new-instance v0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->mWebViewConfig:Lcom/reactnativecommunity/webview/RNCWebViewConfig;

    .line 50
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->HTML_ENCODING:Ljava/lang/String;

    .line 51
    const-string v0, "text/html"

    iput-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->HTML_MIME_TYPE:Ljava/lang/String;

    .line 52
    const-string v0, "POST"

    iput-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->HTTP_METHOD_POST:Ljava/lang/String;

    .line 56
    const-string v0, "about:blank"

    iput-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->BLANK_URL:Ljava/lang/String;

    .line 58
    const-string v0, "Downloading"

    iput-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->DEFAULT_DOWNLOADING_MESSAGE:Ljava/lang/String;

    .line 60
    const-string v0, "Cannot download files as permission was denied. Please provide permission to write to storage, in order to download files."

    iput-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->DEFAULT_LACK_PERMISSION_TO_DOWNLOAD_MESSAGE:Ljava/lang/String;

    .line 286
    const/4 v0, 0x1

    iput v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_GO_BACK:I

    .line 287
    const/4 v0, 0x2

    iput v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_GO_FORWARD:I

    .line 288
    const/4 v0, 0x3

    iput v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_RELOAD:I

    .line 289
    const/4 v0, 0x4

    iput v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_STOP_LOADING:I

    .line 290
    const/4 v0, 0x5

    iput v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_POST_MESSAGE:I

    .line 291
    const/4 v0, 0x6

    iput v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_INJECT_JAVASCRIPT:I

    .line 292
    const/4 v0, 0x7

    iput v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_LOAD_URL:I

    .line 293
    const/16 v0, 0x8

    iput v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_FOCUS:I

    .line 296
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_CLEAR_FORM_DATA:I

    .line 297
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_CLEAR_CACHE:I

    .line 298
    const/16 v0, 0x3ea

    iput v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_CLEAR_HISTORY:I

    .line 34
    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 34
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;-><init>(Z)V

    .line 720
    return-void
.end method

.method private static final createViewInstance$lambda$1(Lcom/reactnativecommunity/webview/RNCWebView;Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 14
    .param p0, "$webView"    # Lcom/reactnativecommunity/webview/RNCWebView;
    .param p1, "this$0"    # Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "userAgent"    # Ljava/lang/String;
    .param p4, "contentDisposition"    # Ljava/lang/String;
    .param p5, "mimetype"    # Ljava/lang/String;
    .param p6, "contentLength"    # J

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    const-string v0, "$webView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0, v3}, Lcom/reactnativecommunity/webview/RNCWebView;->setIgnoreErrFailedForThisURL(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/reactnativecommunity/webview/RNCWebView;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-class v4, Lcom/reactnativecommunity/webview/RNCWebViewModule;

    invoke-virtual {v0, v4}, Lcom/facebook/react/bridge/ReactApplicationContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    check-cast v0, Lcom/reactnativecommunity/webview/RNCWebViewModule;

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v4, v0

    .line 97
    .local v4, "module":Lcom/reactnativecommunity/webview/RNCWebViewModule;
    nop

    .line 98
    :try_start_0
    new-instance v0, Landroid/app/DownloadManager$Request;

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 97
    move-object v5, v0

    .line 103
    .local v5, "request":Landroid/app/DownloadManager$Request;
    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-static {v3, v6, v7}, Lcom/reactnativecommunity/webview/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "fileName":Ljava/lang/String;
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v8, v0

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImplKt;->getInvalidCharRegex()Lkotlin/text/Regex;

    move-result-object v9

    const-string v10, "_"

    invoke-virtual {v9, v8, v10}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 108
    .end local v0    # "fileName":Ljava/lang/String;
    .local v8, "fileName":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Downloading "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 111
    .local v9, "downloadMessage":Ljava/lang/String;
    const/4 v10, 0x0

    .line 112
    .local v10, "urlObj":Ljava/net/URL;
    nop

    .line 113
    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v10, v0

    .line 114
    invoke-virtual {v10}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, "://"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "baseUrl":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 116
    .local v11, "cookie":Ljava/lang/String;
    const-string v12, "Cookie"

    invoke-virtual {v5, v12, v11}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 117
    .end local v0    # "baseUrl":Ljava/lang/String;
    .end local v11    # "cookie":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/net/MalformedURLException;
    iget-object v11, v2, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->TAG:Ljava/lang/String;

    const-string v12, "Error getting cookie for DownloadManager"

    move-object v13, v0

    check-cast v13, Ljava/lang/Throwable;

    invoke-static {v11, v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :goto_0
    const-string v0, "User-Agent"

    move-object/from16 v11, p3

    invoke-virtual {v5, v0, v11}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 123
    move-object v0, v8

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v5, v0}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 124
    move-object v0, v9

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v5, v0}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 125
    invoke-virtual {v5}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    .line 126
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 127
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v5, v0, v8}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 128
    invoke-virtual {v4, v5}, Lcom/reactnativecommunity/webview/RNCWebViewModule;->setDownloadRequest(Landroid/app/DownloadManager$Request;)V

    .line 129
    nop

    .line 130
    invoke-direct {p1}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->getDownloadingMessageOrDefault()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-direct {p1}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->getLackPermissionToDownloadMessageOrDefault()Ljava/lang/String;

    move-result-object v12

    .line 129
    invoke-virtual {v4, v0, v12}, Lcom/reactnativecommunity/webview/RNCWebViewModule;->grantFileDownloaderPermissions(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    nop

    .line 135
    invoke-direct {p1}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->getDownloadingMessageOrDefault()Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-virtual {v4, v0}, Lcom/reactnativecommunity/webview/RNCWebViewModule;->downloadFile(Ljava/lang/String;)V

    .line 138
    :cond_1
    return-void

    .line 99
    .end local v5    # "request":Landroid/app/DownloadManager$Request;
    .end local v8    # "fileName":Ljava/lang/String;
    .end local v9    # "downloadMessage":Ljava/lang/String;
    .end local v10    # "urlObj":Ljava/net/URL;
    :catch_1
    move-exception v0

    move-object/from16 v11, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    .line 100
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v5, v2, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->TAG:Ljava/lang/String;

    const-string v8, "Unsupported URI, aborting download"

    move-object v9, v0

    check-cast v9, Ljava/lang/Throwable;

    invoke-static {v5, v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    return-void
.end method

.method private final getDownloadingMessageOrDefault()Ljava/lang/String;
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->mDownloadingMessage:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->DEFAULT_DOWNLOADING_MESSAGE:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method private final getLackPermissionToDownloadMessageOrDefault()Ljava/lang/String;
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->mLackPermissionToDownloadMessage:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->DEFAULT_LACK_PERMISSION_TO_DOWNLOAD_MESSAGE:Ljava/lang/String;

    .line 380
    :cond_0
    return-object v0
.end method

.method private final loadSource(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 17
    .param p1, "viewWrapper"    # Lcom/reactnativecommunity/webview/RNCWebViewWrapper;
    .param p2, "source"    # Lcom/facebook/react/bridge/ReadableMap;

    .line 389
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v3, "getBytes(...)"

    invoke-virtual/range {p1 .. p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object v10

    .line 390
    .local v10, "view":Lcom/reactnativecommunity/webview/RNCWebView;
    if-eqz v2, :cond_d

    .line 391
    const-string v0, "html"

    invoke-interface {v2, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    const-string v5, ""

    if-eqz v4, :cond_1

    .line 392
    invoke-interface {v2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, "html":Ljava/lang/String;
    const-string v3, "baseUrl"

    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    .line 394
    .local v5, "baseUrl":Ljava/lang/String;
    :cond_0
    nop

    .line 395
    nop

    .line 396
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 397
    iget-object v7, v1, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->HTML_MIME_TYPE:Ljava/lang/String;

    .line 398
    iget-object v8, v1, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->HTML_ENCODING:Ljava/lang/String;

    .line 399
    nop

    .line 394
    const/4 v9, 0x0

    move-object v4, v10

    move-object v6, v0

    invoke-virtual/range {v4 .. v9}, Lcom/reactnativecommunity/webview/RNCWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    return-void

    .line 403
    .end local v0    # "html":Ljava/lang/String;
    .end local v5    # "baseUrl":Ljava/lang/String;
    :cond_1
    const-string v0, "uri"

    invoke-interface {v2, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 404
    invoke-interface {v2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 405
    .local v4, "url":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/reactnativecommunity/webview/RNCWebView;->getUrl()Ljava/lang/String;

    move-result-object v6

    .line 406
    .local v6, "previousUrl":Ljava/lang/String;
    if-eqz v6, :cond_2

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 407
    return-void

    .line 409
    :cond_2
    const-string v0, "method"

    invoke-interface {v2, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 410
    invoke-interface {v2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 411
    .local v7, "method":Ljava/lang/String;
    iget-object v0, v1, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->HTTP_METHOD_POST:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-static {v7, v0, v8}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 412
    const/4 v5, 0x0

    .line 413
    .local v5, "postData":[B
    const-string v0, "body"

    invoke-interface {v2, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 414
    invoke-interface {v2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 415
    .local v8, "body":Ljava/lang/String;
    nop

    .line 416
    :try_start_0
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v9, "forName(...)"

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 417
    :catch_0
    move-exception v0

    .line 418
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v9, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v9

    .line 415
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    move-object v5, v0

    .line 421
    .end local v8    # "body":Ljava/lang/String;
    :cond_3
    if-nez v5, :cond_4

    .line 422
    const/4 v0, 0x0

    new-array v5, v0, [B

    .line 424
    :cond_4
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v10, v4, v5}, Lcom/reactnativecommunity/webview/RNCWebView;->postUrl(Ljava/lang/String;[B)V

    .line 425
    return-void

    .line 428
    .end local v5    # "postData":[B
    .end local v7    # "method":Ljava/lang/String;
    :cond_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 429
    .local v0, "headerMap":Ljava/util/HashMap;
    const-string v3, "headers"

    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 430
    iget-boolean v7, v1, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->newArch:Z

    const-string v8, "toLowerCase(...)"

    const-string v9, "ENGLISH"

    const-string v11, "user-agent"

    if-eqz v7, :cond_a

    .line 431
    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v3

    .line 432
    .local v3, "headerArray":Lcom/facebook/react/bridge/ReadableArray;
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 433
    .local v12, "header":Ljava/lang/Object;
    const-string v13, "null cannot be cast to non-null type java.util.HashMap<kotlin.String, kotlin.String>{ kotlin.collections.TypeAliasesKt.HashMap<kotlin.String, kotlin.String> }"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v13, v12

    check-cast v13, Ljava/util/HashMap;

    .line 434
    .local v13, "headerCasted":Ljava/util/HashMap;
    const-string v14, "name"

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    if-nez v14, :cond_6

    move-object v14, v5

    .line 435
    .local v14, "name":Ljava/lang/String;
    :cond_6
    const-string v15, "value"

    invoke-virtual {v13, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    if-nez v15, :cond_7

    move-object v15, v5

    .line 436
    .local v15, "value":Ljava/lang/String;
    :cond_7
    move-object/from16 v16, v3

    .end local v3    # "headerArray":Lcom/facebook/react/bridge/ReadableArray;
    .local v16, "headerArray":Lcom/facebook/react/bridge/ReadableArray;
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 437
    invoke-virtual {v10}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v15}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    move-object/from16 v3, v16

    goto :goto_1

    .line 439
    :cond_8
    move-object v3, v0

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, v16

    goto :goto_1

    .line 432
    .end local v12    # "header":Ljava/lang/Object;
    .end local v13    # "headerCasted":Ljava/util/HashMap;
    .end local v14    # "name":Ljava/lang/String;
    .end local v15    # "value":Ljava/lang/String;
    .end local v16    # "headerArray":Lcom/facebook/react/bridge/ReadableArray;
    .restart local v3    # "headerArray":Lcom/facebook/react/bridge/ReadableArray;
    :cond_9
    move-object/from16 v16, v3

    .end local v3    # "headerArray":Lcom/facebook/react/bridge/ReadableArray;
    .restart local v16    # "headerArray":Lcom/facebook/react/bridge/ReadableArray;
    goto :goto_3

    .line 443
    .end local v16    # "headerArray":Lcom/facebook/react/bridge/ReadableArray;
    :cond_a
    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v3

    .line 444
    .local v3, "headers":Lcom/facebook/react/bridge/ReadableMap;
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v5

    .line 445
    .local v5, "iter":Lcom/facebook/react/bridge/ReadableMapKeySetIterator;
    :goto_2
    invoke-interface {v5}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 446
    invoke-interface {v5}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v7

    .line 447
    .local v7, "key":Ljava/lang/String;
    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v12, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 448
    invoke-virtual {v10}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v12

    invoke-interface {v3, v7}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto :goto_2

    .line 450
    :cond_b
    move-object v12, v0

    check-cast v12, Ljava/util/Map;

    invoke-interface {v3, v7}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v7, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 455
    .end local v3    # "headers":Lcom/facebook/react/bridge/ReadableMap;
    .end local v5    # "iter":Lcom/facebook/react/bridge/ReadableMapKeySetIterator;
    .end local v7    # "key":Ljava/lang/String;
    :cond_c
    :goto_3
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, v0

    check-cast v3, Ljava/util/Map;

    invoke-virtual {v10, v4, v3}, Lcom/reactnativecommunity/webview/RNCWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 456
    return-void

    .line 459
    .end local v0    # "headerMap":Ljava/util/HashMap;
    .end local v4    # "url":Ljava/lang/String;
    .end local v6    # "previousUrl":Ljava/lang/String;
    :cond_d
    iget-object v0, v1, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->BLANK_URL:Ljava/lang/String;

    invoke-virtual {v10, v0}, Lcom/reactnativecommunity/webview/RNCWebView;->loadUrl(Ljava/lang/String;)V

    .line 460
    return-void
.end method

.method private static final mWebViewConfig$lambda$0(Landroid/webkit/WebView;)V
    .locals 0
    .param p0, "webView"    # Landroid/webkit/WebView;

    .line 40
    return-void
.end method

.method private final setUserAgentString(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;)V
    .locals 3
    .param p1, "viewWrapper"    # Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    .line 246
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object v0

    .line 247
    .local v0, "view":Lcom/reactnativecommunity/webview/RNCWebView;
    nop

    .line 248
    iget-object v1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->mUserAgent:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 249
    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    iget-object v2, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto :goto_0

    .line 251
    :cond_0
    iget-object v1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->mUserAgentWithApplicationName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 252
    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    iget-object v2, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->mUserAgentWithApplicationName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto :goto_0

    .line 255
    :cond_1
    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 258
    :goto_0
    return-void
.end method

.method private final setupWebChromeClient(Lcom/reactnativecommunity/webview/RNCWebView;)V
    .locals 4
    .param p1, "webView"    # Lcom/reactnativecommunity/webview/RNCWebView;

    .line 145
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebView;->getThemedReactContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/ThemedReactContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 146
    .local v0, "activity":Landroid/app/Activity;
    iget-boolean v1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->mAllowsFullscreenVideo:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    .line 149
    .local v1, "initialRequestedOrientation":I
    new-instance v2, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl$setupWebChromeClient$webChromeClient$1;

    invoke-direct {v2, p1, v0, v1}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl$setupWebChromeClient$webChromeClient$1;-><init>(Lcom/reactnativecommunity/webview/RNCWebView;Landroid/app/Activity;I)V

    check-cast v2, Lcom/reactnativecommunity/webview/RNCWebChromeClient;

    .line 148
    nop

    .line 210
    .local v2, "webChromeClient":Lcom/reactnativecommunity/webview/RNCWebChromeClient;
    iget-boolean v3, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->mAllowsProtectedMedia:Z

    invoke-virtual {v2, v3}, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->setAllowsProtectedMedia(Z)V

    .line 211
    iget-boolean v3, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->mHasOnOpenWindowEvent:Z

    invoke-virtual {v2, v3}, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->setHasOnOpenWindowEvent(Z)V

    .line 212
    move-object v3, v2

    check-cast v3, Landroid/webkit/WebChromeClient;

    invoke-virtual {p1, v3}, Lcom/reactnativecommunity/webview/RNCWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .end local v1    # "initialRequestedOrientation":I
    .end local v2    # "webChromeClient":Lcom/reactnativecommunity/webview/RNCWebChromeClient;
    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebView;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v1

    check-cast v1, Lcom/reactnativecommunity/webview/RNCWebChromeClient;

    .line 215
    .local v1, "webChromeClient":Lcom/reactnativecommunity/webview/RNCWebChromeClient;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->onHideCustomView()V

    .line 216
    :cond_1
    new-instance v2, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl$setupWebChromeClient$1;

    invoke-direct {v2, p1}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl$setupWebChromeClient$1;-><init>(Lcom/reactnativecommunity/webview/RNCWebView;)V

    move-object v1, v2

    check-cast v1, Lcom/reactnativecommunity/webview/RNCWebChromeClient;

    .line 221
    move-object v2, v1

    check-cast v2, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl$setupWebChromeClient$1;

    iget-boolean v3, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->mAllowsProtectedMedia:Z

    invoke-virtual {v2, v3}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl$setupWebChromeClient$1;->setAllowsProtectedMedia(Z)V

    .line 222
    move-object v2, v1

    check-cast v2, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl$setupWebChromeClient$1;

    iget-boolean v3, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->mHasOnOpenWindowEvent:Z

    invoke-virtual {v2, v3}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl$setupWebChromeClient$1;->setHasOnOpenWindowEvent(Z)V

    .line 223
    move-object v2, v1

    check-cast v2, Landroid/webkit/WebChromeClient;

    invoke-virtual {p1, v2}, Lcom/reactnativecommunity/webview/RNCWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 225
    .end local v1    # "webChromeClient":Lcom/reactnativecommunity/webview/RNCWebChromeClient;
    :goto_0
    return-void
.end method


# virtual methods
.method public final createRNCWebViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/reactnativecommunity/webview/RNCWebView;
    .locals 1
    .param p1, "context"    # Lcom/facebook/react/uimanager/ThemedReactContext;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    new-instance v0, Lcom/reactnativecommunity/webview/RNCWebView;

    invoke-direct {v0, p1}, Lcom/reactnativecommunity/webview/RNCWebView;-><init>(Lcom/facebook/react/uimanager/ThemedReactContext;)V

    return-object v0
.end method

.method public final createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/reactnativecommunity/webview/RNCWebViewWrapper;
    .locals 2
    .param p1, "context"    # Lcom/facebook/react/uimanager/ThemedReactContext;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, p1}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->createRNCWebViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object v0

    .line 68
    .local v0, "webView":Lcom/reactnativecommunity/webview/RNCWebView;
    invoke-virtual {p0, p1, v0}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/reactnativecommunity/webview/RNCWebView;)Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    move-result-object v1

    return-object v1
.end method

.method public final createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/reactnativecommunity/webview/RNCWebView;)Lcom/reactnativecommunity/webview/RNCWebViewWrapper;
    .locals 4
    .param p1, "context"    # Lcom/facebook/react/uimanager/ThemedReactContext;
    .param p2, "webView"    # Lcom/reactnativecommunity/webview/RNCWebView;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-direct {p0, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setupWebChromeClient(Lcom/reactnativecommunity/webview/RNCWebView;)V

    .line 73
    move-object v0, p2

    check-cast v0, Lcom/facebook/react/bridge/LifecycleEventListener;

    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/ThemedReactContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 74
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->mWebViewConfig:Lcom/reactnativecommunity/webview/RNCWebViewConfig;

    move-object v1, p2

    check-cast v1, Landroid/webkit/WebView;

    invoke-interface {v0, v1}, Lcom/reactnativecommunity/webview/RNCWebViewConfig;->configWebView(Landroid/webkit/WebView;)V

    .line 75
    invoke-virtual {p2}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "getSettings(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .local v0, "settings":Landroid/webkit/WebSettings;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 77
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 78
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 79
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 80
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 81
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 82
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 83
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 84
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 87
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 88
    nop

    .line 89
    nop

    .line 87
    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v2}, Lcom/reactnativecommunity/webview/RNCWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    sget-boolean v2, Lcom/facebook/react/common/build/ReactBuildConfig;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 92
    invoke-static {v1}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 94
    :cond_0
    new-instance v1, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2, p0}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/reactnativecommunity/webview/RNCWebView;Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;)V

    invoke-virtual {p2, v1}, Lcom/reactnativecommunity/webview/RNCWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 139
    new-instance v1, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    move-object v2, p1

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2, p2}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;-><init>(Landroid/content/Context;Lcom/reactnativecommunity/webview/RNCWebView;)V

    return-object v1
.end method

.method public final getCOMMAND_CLEAR_CACHE()I
    .locals 1

    .line 297
    iget v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_CLEAR_CACHE:I

    return v0
.end method

.method public final getCOMMAND_CLEAR_FORM_DATA()I
    .locals 1

    .line 296
    iget v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_CLEAR_FORM_DATA:I

    return v0
.end method

.method public final getCOMMAND_CLEAR_HISTORY()I
    .locals 1

    .line 298
    iget v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_CLEAR_HISTORY:I

    return v0
.end method

.method public final getCOMMAND_FOCUS()I
    .locals 1

    .line 293
    iget v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_FOCUS:I

    return v0
.end method

.method public final getCOMMAND_GO_BACK()I
    .locals 1

    .line 286
    iget v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_GO_BACK:I

    return v0
.end method

.method public final getCOMMAND_GO_FORWARD()I
    .locals 1

    .line 287
    iget v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_GO_FORWARD:I

    return v0
.end method

.method public final getCOMMAND_INJECT_JAVASCRIPT()I
    .locals 1

    .line 291
    iget v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_INJECT_JAVASCRIPT:I

    return v0
.end method

.method public final getCOMMAND_LOAD_URL()I
    .locals 1

    .line 292
    iget v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_LOAD_URL:I

    return v0
.end method

.method public final getCOMMAND_POST_MESSAGE()I
    .locals 1

    .line 290
    iget v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_POST_MESSAGE:I

    return v0
.end method

.method public final getCOMMAND_RELOAD()I
    .locals 1

    .line 288
    iget v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_RELOAD:I

    return v0
.end method

.method public final getCOMMAND_STOP_LOADING()I
    .locals 1

    .line 289
    iget v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_STOP_LOADING:I

    return v0
.end method

.method public final getCommandsMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 301
    invoke-static {}, Lcom/facebook/react/common/MapBuilder;->builder()Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    .line 302
    iget v1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_GO_BACK:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "goBack"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    .line 303
    iget v1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_GO_FORWARD:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "goForward"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    .line 304
    iget v1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_RELOAD:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "reload"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    .line 305
    iget v1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_STOP_LOADING:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "stopLoading"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    .line 306
    iget v1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_POST_MESSAGE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "postMessage"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    .line 307
    iget v1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_INJECT_JAVASCRIPT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "injectJavaScript"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    .line 308
    iget v1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_LOAD_URL:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "loadUrl"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    .line 309
    iget v1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_FOCUS:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "requestFocus"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    .line 310
    iget v1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_CLEAR_FORM_DATA:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "clearFormData"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    .line 311
    iget v1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_CLEAR_CACHE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "clearCache"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    .line 312
    iget v1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->COMMAND_CLEAR_HISTORY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "clearHistory"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    .line 313
    invoke-virtual {v0}, Lcom/facebook/react/common/MapBuilder$Builder;->build()Ljava/util/Map;

    move-result-object v0

    .line 301
    return-object v0
.end method

.method public final onAfterUpdateTransaction(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;)V
    .locals 2
    .param p1, "viewWrapper"    # Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->mPendingSource:Lcom/facebook/react/bridge/ReadableMap;

    if-eqz v0, :cond_0

    .local v0, "source":Lcom/facebook/react/bridge/ReadableMap;
    const/4 v1, 0x0

    .line 274
    .local v1, "$i$a$-let-RNCWebViewManagerImpl$onAfterUpdateTransaction$1":I
    invoke-direct {p0, p1, v0}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->loadSource(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 275
    nop

    .line 273
    .end local v0    # "source":Lcom/facebook/react/bridge/ReadableMap;
    .end local v1    # "$i$a$-let-RNCWebViewManagerImpl$onAfterUpdateTransaction$1":I
    nop

    .line 276
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->mPendingSource:Lcom/facebook/react/bridge/ReadableMap;

    .line 277
    return-void
.end method

.method public final onDropViewInstance(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;)V
    .locals 3
    .param p1, "viewWrapper"    # Lcom/reactnativecommunity/webview/RNCWebViewWrapper;

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object v0

    .line 281
    .local v0, "webView":Lcom/reactnativecommunity/webview/RNCWebView;
    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebView;->getThemedReactContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Lcom/facebook/react/bridge/LifecycleEventListener;

    invoke-virtual {v1, v2}, Lcom/facebook/react/uimanager/ThemedReactContext;->removeLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 282
    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebView;->cleanupCallbacksAndDestroy()V

    .line 283
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/reactnativecommunity/webview/RNCWebView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 284
    return-void
.end method

.method public final receiveCommand(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 4
    .param p1, "viewWrapper"    # Lcom/reactnativecommunity/webview/RNCWebViewWrapper;
    .param p2, "commandId"    # Ljava/lang/String;
    .param p3, "args"    # Lcom/facebook/react/bridge/ReadableArray;

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commandId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object v0

    .line 318
    .local v0, "webView":Lcom/reactnativecommunity/webview/RNCWebView;
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_0

    :goto_0
    goto/16 :goto_1

    :sswitch_0
    const-string v1, "injectJavaScript"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 342
    :cond_0
    invoke-interface {p3, v2}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/reactnativecommunity/webview/RNCWebView;->evaluateJavascriptWithFallback(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 318
    :sswitch_1
    const-string v1, "postMessage"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 323
    :cond_1
    nop

    .line 324
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 325
    .local v1, "eventInitDict":Lorg/json/JSONObject;
    const-string v3, "data"

    invoke-interface {p3, v2}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 326
    nop

    .line 329
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(function () {var event;var data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";try {event = new MessageEvent(\'message\', data);} catch (e) {event = document.createEvent(\'MessageEvent\');event.initMessageEvent(\'message\', true, true, data.data, data.origin, data.lastEventId, data.source);}document.dispatchEvent(event);})();"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 326
    invoke-virtual {v0, v2}, Lcom/reactnativecommunity/webview/RNCWebView;->evaluateJavascriptWithFallback(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "eventInitDict":Lorg/json/JSONObject;
    goto/16 :goto_1

    .line 339
    :catch_0
    move-exception v1

    .line 340
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 318
    .end local v1    # "e":Lorg/json/JSONException;
    :sswitch_2
    const-string v1, "requestFocus"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 350
    :cond_2
    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebView;->requestFocus()Z

    goto/16 :goto_1

    .line 318
    :sswitch_3
    const-string v1, "clearHistory"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 356
    :cond_3
    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebView;->clearHistory()V

    goto/16 :goto_1

    .line 318
    :sswitch_4
    const-string v1, "loadUrl"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 344
    :cond_4
    nop

    .line 347
    iget-object v1, v0, Lcom/reactnativecommunity/webview/RNCWebView;->progressChangedFilter:Lcom/reactnativecommunity/webview/RNCWebView$ProgressChangedFilter;

    invoke-virtual {v1, v2}, Lcom/reactnativecommunity/webview/RNCWebView$ProgressChangedFilter;->setWaitingForCommandLoadUrl(Z)V

    .line 348
    invoke-interface {p3, v2}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/reactnativecommunity/webview/RNCWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 318
    :sswitch_5
    const-string v1, "clearFormData"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_0

    .line 351
    :cond_5
    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebView;->clearFormData()V

    goto :goto_1

    .line 318
    :sswitch_6
    const-string v1, "goForward"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_0

    .line 320
    :cond_6
    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebView;->goForward()V

    goto :goto_1

    .line 318
    :sswitch_7
    const-string v1, "clearCache"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_0

    .line 353
    :cond_7
    invoke-interface {p3, v2}, Lcom/facebook/react/bridge/ReadableArray;->getBoolean(I)Z

    move-result v1

    .line 354
    .local v1, "includeDiskFiles":Z
    invoke-virtual {v0, v1}, Lcom/reactnativecommunity/webview/RNCWebView;->clearCache(Z)V

    .end local v1    # "includeDiskFiles":Z
    goto :goto_1

    .line 318
    :sswitch_8
    const-string v1, "reload"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_0

    .line 321
    :cond_8
    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebView;->reload()V

    goto :goto_1

    .line 318
    :sswitch_9
    const-string v1, "stopLoading"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_0

    .line 322
    :cond_9
    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebView;->stopLoading()V

    goto :goto_1

    .line 318
    :sswitch_a
    const-string v1, "goBack"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_0

    .line 319
    :cond_a
    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebView;->goBack()V

    .line 358
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4a012e11 -> :sswitch_a
        -0x38833526 -> :sswitch_9
        -0x37b57e67 -> :sswitch_8
        -0x2d410ecb -> :sswitch_7
        -0x12f8b743 -> :sswitch_6
        -0xfcc1405 -> :sswitch_5
        0x141096a9 -> :sswitch_4
        0x35d48587 -> :sswitch_3
        0x4c4bb389 -> :sswitch_2
        0x58d00b47 -> :sswitch_1
        0x7d7149fe -> :sswitch_0
    .end sparse-switch
.end method

.method public final setAllowFileAccess(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 2
    .param p1, "viewWrapper"    # Lcom/reactnativecommunity/webview/RNCWebViewWrapper;
    .param p2, "allowFileAccess"    # Z

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 554
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object v0

    .line 555
    .local v0, "view":Lcom/reactnativecommunity/webview/RNCWebView;
    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 556
    return-void
.end method

.method public final setAllowFileAccessFromFileURLs(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 2
    .param p1, "viewWrapper"    # Lcom/reactnativecommunity/webview/RNCWebViewWrapper;
    .param p2, "value"    # Z

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 559
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object v0

    .line 560
    .local v0, "view":Lcom/reactnativecommunity/webview/RNCWebView;
    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 561
    return-void
.end method

.method public final setAllowUniversalAccessFromFileURLs(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .param p1, "viewWrapper"    # Lcom/reactnativecommunity/webview/RNCWebViewWrapper;
    .param p2, "allow"    # Z

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 373
    return-void
.end method

.method public final setAllowsFullscreenVideo(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .param p1, "viewWrapper"    # Lcom/reactnativecommunity/webview/RNCWebViewWrapper;
    .param p2, "value"    # Z

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 564
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object v0

    .line 565
    .local v0, "view":Lcom/reactnativecommunity/webview/RNCWebView;
    iput-boolean p2, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->mAllowsFullscreenVideo:Z

    .line 566
    invoke-direct {p0, v0}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setupWebChromeClient(Lcom/reactnativecommunity/webview/RNCWebView;)V

    .line 567
    return-void
.end method

.method public final setAllowsProtectedMedia(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 3
    .param p1, "viewWrapper"    # Lcom/reactnativecommunity/webview/RNCWebViewWrapper;
    .param p2, "enabled"    # Z

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 644
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object v0

    .line 648
    .local v0, "view":Lcom/reactnativecommunity/webview/RNCWebView;
    iput-boolean p2, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->mAllowsProtectedMedia:Z

    .line 649
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 650
    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebView;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v1

    .line 651
    .local v1, "client":Landroid/webkit/WebChromeClient;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/reactnativecommunity/webview/RNCWebChromeClient;

    if-eqz v2, :cond_0

    .line 652
    move-object v2, v1

    check-cast v2, Lcom/reactnativecommunity/webview/RNCWebChromeClient;

    invoke-virtual {v2, p2}, Lcom/reactnativecommunity/webview/RNCWebChromeClient;->setAllowsProtectedMedia(Z)V

    .line 655
    .end local v1    # "client":Landroid/webkit/WebChromeClient;
    :cond_0
    return-void
.end method

.method public final setAndroidLayerType(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V
    .locals 3
    .param p1, "viewWrapper"    # Lcom/reactnativecommunity/webview/RNCWebViewWrapper;
    .param p2, "layerTypeString"    # Ljava/lang/String;

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 570
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object v0

    .line 571
    .local v0, "view":Lcom/reactnativecommunity/webview/RNCWebView;
    nop

    .line 572
    const-string v1, "hardware"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    .line 573
    :cond_0
    const-string v1, "software"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 574
    :cond_1
    const/4 v1, 0x0

    .line 571
    :goto_0
    nop

    .line 576
    .local v1, "layerType":I
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/reactnativecommunity/webview/RNCWebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 577
    return-void
.end method

.method public final setApplicationNameForUserAgent(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V
    .locals 3
    .param p1, "viewWrapper"    # Lcom/reactnativecommunity/webview/RNCWebViewWrapper;
    .param p2, "applicationName"    # Ljava/lang/String;

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    nop

    .line 234
    if-eqz p2, :cond_0

    .line 235
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "defaultUserAgent":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->mUserAgentWithApplicationName:Ljava/lang/String;

    .end local v0    # "defaultUserAgent":Ljava/lang/String;
    goto :goto_0

    .line 239
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->mUserAgentWithApplicationName:Ljava/lang/String;

    .line 242
    :goto_0
    invoke-direct {p0, p1}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setUserAgentString(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;)V

    .line 243
    return-void
.end method

.method public final setBasicAuthCredential(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 4
    .param p1, "viewWrapper"    # Lcom/reactnativecommunity/webview/RNCWebViewWrapper;
    .param p2, "credential"    # Lcom/facebook/react/bridge/ReadableMap;

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    const/4 v0, 0x0

    .line 262
    .local v0, "basicAuthCredential":Lcom/reactnativecommunity/webview/RNCBasicAuthCredential;
    if-eqz p2, :cond_0

    .line 263
    const-string v1, "username"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "password"

    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 264
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, "username":Ljava/lang/String;
    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 266
    .local v2, "password":Ljava/lang/String;
    new-instance v3, Lcom/reactnativecommunity/webview/RNCBasicAuthCredential;

    invoke-direct {v3, v1, v2}, Lcom/reactnativecommunity/webview/RNCBasicAuthCredential;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    .line 269
    .end local v1    # "username":Ljava/lang/String;
    .end local v2    # "password":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/reactnativecommunity/webview/RNCWebView;->setBasicAuthCredential(Lcom/reactnativecommunity/webview/RNCBasicAuthCredential;)V

    .line 270
    return-void
.end method

.method public final setCacheEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 3
    .param p1, "viewWrapper"    # Lcom/reactnativecommunity/webview/RNCWebViewWrapper;
    .param p2, "enabled"    # Z

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 468
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object v0

    .line 469
    .local v0, "view":Lcom/reactnativecommunity/webview/RNCWebView;
    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    if-eqz p2, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 470
    return-void
.end method

.method public final setCacheMode(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V
    .locals 4
    .param p1, "viewWrapper"    # Lcom/reactnativecommunity/webview/RNCWebViewWrapper;
    .param p2, "cacheModeString"    # Ljava/lang/String;

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 580
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object v0

    .line 581
    .local v0, "view":Lcom/reactnativecommunity/webview/RNCWebView;
    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "LOAD_CACHE_ONLY"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 582
    :cond_0
    const/4 v2, 0x3

    goto :goto_1

    .line 581
    :sswitch_1
    const-string v3, "LOAD_CACHE_ELSE_NETWORK"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 583
    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    .line 581
    :sswitch_2
    const-string v3, "LOAD_DEFAULT"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 585
    :cond_2
    goto :goto_1

    .line 581
    :sswitch_3
    const-string v3, "LOAD_NO_CACHE"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 584
    :cond_3
    const/4 v2, 0x2

    goto :goto_1

    .line 586
    :cond_4
    :goto_0
    nop

    .line 581
    :goto_1
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 588
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7abc5963 -> :sswitch_3
        -0x486d8038 -> :sswitch_2
        -0x34165142 -> :sswitch_1
        0x5c4e1362 -> :sswitch_0
    .end sparse-switch
.end method

.method public final setDomStorageEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 2
    .param p1, "viewWrapper"    # Lcom/reactnativecommunity/webview/RNCWebViewWrapper;
    .param p2, "value"    # Z

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 591
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object v0

    .line 592
    .local v0, "view":Lcom/reactnativecommunity/webview/RNCWebView;
    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 593
    return-void
.end method

.method public final setDownloadingMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 596
    iput-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->mDownloadingMessage:Ljava/lang/String;

    .line 597
    return-void
.end method

.method public final setForceDarkOn(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 4
    .param p1, "viewWrapper"    # Lcom/reactnativecommunity/webview/RNCWebViewWrapper;
    .param p2, "enabled"    # Z

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 600
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object v0

    .line 602
    .local v0, "view":Lcom/reactnativecommunity/webview/RNCWebView;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-le v1, v2, :cond_2

    .line 603
    const-string v1, "FORCE_DARK"

    invoke-static {v1}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    .line 605
    if-eqz p2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 604
    :goto_0
    nop

    .line 606
    .local v1, "forceDarkMode":I
    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-static {v3, v1}, Landroidx/webkit/WebSettingsCompat;->setForceDark(Landroid/webkit/WebSettings;I)V

    .line 614
    .end local v1    # "forceDarkMode":I
    :cond_1
    if-eqz p2, :cond_2

    const-string v1, "FORCE_DARK_STRATEGY"

    invoke-static {v1}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 616
    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 617
    nop

    .line 615
    invoke-static {v1, v2}, Landroidx/webkit/WebSettingsCompat;->setForceDarkStrategy(Landroid/webkit/WebSettings;I)V

    .line 621
    :cond_2
    return-void
.end method

.method public final setGeolocationEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 2
    .param p1, "viewWrapper"    # Lcom/reactnativecommunity/webview/RNCWebViewWrapper;
    .param p2, "value"    # Z

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 624
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object v0

    .line 625
    .local v0, "view":Lcom/reactnativecommunity/webview/RNCWebView;
    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 626
    return-void
.end method

.method public final setHasOnOpenWindowEvent(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .param p1, "viewWrapper"    # Lcom/reactnativecommunity/webview/RNCWebViewWrapper;
    .param p2, "value"    # Z

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 633
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object v0

    .line 634
    .local v0, "view":Lcom/reactnativecommunity/webview/RNCWebView;
    iput-boolean p2, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->mHasOnOpenWindowEvent:Z

    .line 635
    invoke-direct {p0, v0}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setupWebChromeClient(Lcom/reactnativecommunity/webview/RNCWebView;)V

    .line 636
    return-void
.end method

.method public final setHasOnScroll(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .param p1, "viewWrapper"    # Lcom/reactnativecommunity/webview/RNCWebViewWrapper;
    .param p2, "value"    # Z

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 544
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object v0

    .line 545
    .local v0, "view":Lcom/reactnativecommunity/webview/RNCWebView;
    invoke-virtual {v0, p2}, Lcom/reactnativecommunity/webview/RNCWebView;->setHasScrollEvent(Z)V

    .line 546
    return-void
.end method

.method public final setIncognito(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 3
    .param p1, "viewWrapper"    # Lcom/reactnativecommunity/webview/RNCWebViewWrapper;
    .param p2, "enabled"    # Z

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 473
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object v0

    .line 475
    .local v0, "view":Lcom/reactnativecommunity/webview/RNCWebView;
    if-nez p2, :cond_0

    .line 476
    return-void

    .line 480
    :cond_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    .line 483
    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 484
    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebView;->clearHistory()V

    .line 485
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/reactnativecommunity/webview/RNCWebView;->clearCache(Z)V

    .line 488
    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebView;->clearFormData()V

    .line 489
    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 490
    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 491
    return-void
.end method

.method public final setInjectedJavaScript(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V
    .locals 1
    .param p1, "viewWrapper"    # Lcom/reactnativecommunity/webview/RNCWebViewWrapper;
    .param p2, "injectedJavaScript"    # Ljava/lang/String;

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 494
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object v0

    .line 495
    .local v0, "view":Lcom/reactnativecommunity/webview/RNCWebView;
    iput-object p2, v0, Lcom/reactnativecommunity/webview/RNCWebView;->injectedJS:Ljava/lang/String;

    .line 496
    return-void
.end method

.method public final setInjectedJavaScriptBeforeContentLoaded(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V
    .locals 1
    .param p1, "viewWrapper"    # Lcom/reactnativecommunity/webview/RNCWebViewWrapper;
    .param p2, "value"    # Ljava/lang/String;

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 499
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object v0

    .line 500
    .local v0, "view":Lcom/reactnativecommunity/webview/RNCWebView;
    iput-object p2, v0, Lcom/reactnativecommunity/webview/RNCWebView;->injectedJSBeforeContentLoaded:Ljava/lang/String;

    .line 501
    return-void
.end method

.method public final setInjectedJavaScriptBeforeContentLoadedForMainFrameOnly(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .param p1, "viewWrapper"    # Lcom/reactnativecommunity/webview/RNCWebViewWrapper;
    .param p2, "value"    # Z

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 509
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object v0

    .line 510
    .local v0, "view":Lcom/reactnativecommunity/webview/RNCWebView;
    iput-boolean p2, v0, Lcom/reactnativecommunity/webview/RNCWebView;->injectedJavaScriptBeforeContentLoadedForMainFrameOnly:Z

    .line 511
    return-void
.end method

.method public final setInjectedJavaScriptForMainFrameOnly(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .param p1, "viewWrapper"    # Lcom/reactnativecommunity/webview/RNCWebViewWrapper;
    .param p2, "value"    # Z

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 504
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object v0

    .line 505
    .local v0, "view":Lcom/reactnativecommunity/webview/RNCWebView;
    iput-boolean p2, v0, Lcom/reactnativecommunity/webview/RNCWebView;->injectedJavaScriptForMainFrameOnly:Z

    .line 506
    return-void
.end method

.method public final setInjectedJavaScriptObject(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V
    .locals 1
    .param p1, "viewWrapper"    # Lcom/reactnativecommunity/webview/RNCWebViewWrapper;
    .param p2, "value"    # Ljava/lang/String;

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 514
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object v0

    .line 515
    .local v0, "view":Lcom/reactnativecommunity/webview/RNCWebView;
    invoke-virtual {v0, p2}, Lcom/reactnativecommunity/webview/RNCWebView;->setInjectedJavaScriptObject(Ljava/lang/String;)V

    .line 516
    return-void
.end method

.method public final setJavaScriptCanOpenWindowsAutomatically(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 2
    .param p1, "viewWrapper"    # Lcom/reactnativecommunity/webview/RNCWebViewWrapper;
    .param p2, "value"    # Z

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 519
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object v0

    .line 520
    .local v0, "view":Lcom/reactnativecommunity/webview/RNCWebView;
    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 521
    return-void
.end method

.method public final setJavaScriptEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 2
    .param p1, "viewWrapper"    # Lcom/reactnativecommunity/webview/RNCWebViewWrapper;
    .param p2, "enabled"    # Z

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 549
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object v0

    .line 550
    .local v0, "view":Lcom/reactnativecommunity/webview/RNCWebView;
    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 551
    return-void
.end method

.method public final setLackPermissionToDownloadMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 629
    iput-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->mLackPermissionToDownloadMessage:Ljava/lang/String;

    .line 630
    return-void
.end method

.method public final setMediaPlaybackRequiresUserAction(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 2
    .param p1, "viewWrapper"    # Lcom/reactnativecommunity/webview/RNCWebViewWrapper;
    .param p2, "value"    # Z

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 539
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object v0

    .line 540
    .local v0, "view":Lcom/reactnativecommunity/webview/RNCWebView;
    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 541
    return-void
.end method

.method public final setMenuCustomItems(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 3
    .param p1, "viewWrapper"    # Lcom/reactnativecommunity/webview/RNCWebViewWrapper;
    .param p2, "value"    # Lcom/facebook/react/bridge/ReadableArray;

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 658
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object v0

    .line 659
    .local v0, "view":Lcom/reactnativecommunity/webview/RNCWebView;
    nop

    .line 660
    if-nez p2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/reactnativecommunity/webview/RNCWebView;->setMenuCustomItems(Ljava/util/List;)V

    goto :goto_0

    .line 661
    :cond_0
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.collections.List<kotlin.collections.Map<kotlin.String, kotlin.String>>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/reactnativecommunity/webview/RNCWebView;->setMenuCustomItems(Ljava/util/List;)V

    .line 663
    :goto_0
    return-void
.end method

.method public final setMessagingEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .param p1, "viewWrapper"    # Lcom/reactnativecommunity/webview/RNCWebViewWrapper;
    .param p2, "value"    # Z

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 534
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object v0

    .line 535
    .local v0, "view":Lcom/reactnativecommunity/webview/RNCWebView;
    invoke-virtual {v0, p2}, Lcom/reactnativecommunity/webview/RNCWebView;->setMessagingEnabled(Z)V

    .line 536
    return-void
.end method

.method public final setMessagingModuleName(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V
    .locals 1
    .param p1, "viewWrapper"    # Lcom/reactnativecommunity/webview/RNCWebViewWrapper;
    .param p2, "value"    # Ljava/lang/String;

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 463
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object v0

    .line 464
    .local v0, "view":Lcom/reactnativecommunity/webview/RNCWebView;
    iput-object p2, v0, Lcom/reactnativecommunity/webview/RNCWebView;->messagingModuleName:Ljava/lang/String;

    .line 465
    return-void
.end method

.method public final setMinimumFontSize(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;I)V
    .locals 2
    .param p1, "viewWrapper"    # Lcom/reactnativecommunity/webview/RNCWebViewWrapper;
    .param p2, "value"    # I

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 639
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object v0

    .line 640
    .local v0, "view":Lcom/reactnativecommunity/webview/RNCWebView;
    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 641
    return-void
.end method

.method public final setMixedContentMode(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V
    .locals 3
    .param p1, "viewWrapper"    # Lcom/reactnativecommunity/webview/RNCWebViewWrapper;
    .param p2, "mixedContentMode"    # Ljava/lang/String;

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object v0

    .line 362
    .local v0, "view":Lcom/reactnativecommunity/webview/RNCWebView;
    if-eqz p2, :cond_2

    const-string v1, "never"

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 364
    :cond_0
    const-string v1, "always"

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 365
    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    goto :goto_1

    .line 366
    :cond_1
    const-string v1, "compatibility"

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 367
    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    goto :goto_1

    .line 363
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 369
    :cond_3
    :goto_1
    return-void
.end method

.method public final setNestedScrollEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .param p1, "viewWrapper"    # Lcom/reactnativecommunity/webview/RNCWebViewWrapper;
    .param p2, "value"    # Z

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 666
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object v0

    .line 667
    .local v0, "view":Lcom/reactnativecommunity/webview/RNCWebView;
    iput-boolean p2, v0, Lcom/reactnativecommunity/webview/RNCWebView;->nestedScrollEnabled:Z

    .line 668
    return-void
.end method

.method public final setOverScrollMode(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V
    .locals 3
    .param p1, "viewWrapper"    # Lcom/reactnativecommunity/webview/RNCWebViewWrapper;
    .param p2, "overScrollModeString"    # Ljava/lang/String;

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 671
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object v0

    .line 672
    .local v0, "view":Lcom/reactnativecommunity/webview/RNCWebView;
    const/4 v1, 0x0

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "content"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 674
    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    .line 672
    :sswitch_1
    const-string v2, "never"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 673
    :cond_1
    const/4 v1, 0x2

    goto :goto_1

    .line 672
    :sswitch_2
    const-string v2, "always"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 675
    :cond_2
    goto :goto_1

    .line 676
    :cond_3
    :goto_0
    nop

    .line 672
    :goto_1
    invoke-virtual {v0, v1}, Lcom/reactnativecommunity/webview/RNCWebView;->setOverScrollMode(I)V

    .line 678
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x54506df1 -> :sswitch_2
        0x63dca8c -> :sswitch_1
        0x38b73479 -> :sswitch_0
    .end sparse-switch
.end method

.method public final setSaveFormDataDisabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 3
    .param p1, "viewWrapper"    # Lcom/reactnativecommunity/webview/RNCWebViewWrapper;
    .param p2, "disabled"    # Z

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 681
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object v0

    .line 682
    .local v0, "view":Lcom/reactnativecommunity/webview/RNCWebView;
    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    xor-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 683
    return-void
.end method

.method public final setScalesPageToFit(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 2
    .param p1, "viewWrapper"    # Lcom/reactnativecommunity/webview/RNCWebViewWrapper;
    .param p2, "value"    # Z

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 686
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object v0

    .line 687
    .local v0, "view":Lcom/reactnativecommunity/webview/RNCWebView;
    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 688
    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 689
    return-void
.end method

.method public final setSetBuiltInZoomControls(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 2
    .param p1, "viewWrapper"    # Lcom/reactnativecommunity/webview/RNCWebViewWrapper;
    .param p2, "value"    # Z

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 692
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object v0

    .line 693
    .local v0, "view":Lcom/reactnativecommunity/webview/RNCWebView;
    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 694
    return-void
.end method

.method public final setSetDisplayZoomControls(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 2
    .param p1, "viewWrapper"    # Lcom/reactnativecommunity/webview/RNCWebViewWrapper;
    .param p2, "value"    # Z

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 697
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object v0

    .line 698
    .local v0, "view":Lcom/reactnativecommunity/webview/RNCWebView;
    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 700
    return-void
.end method

.method public final setSetSupportMultipleWindows(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 2
    .param p1, "viewWrapper"    # Lcom/reactnativecommunity/webview/RNCWebViewWrapper;
    .param p2, "value"    # Z

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 703
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object v0

    .line 704
    .local v0, "view":Lcom/reactnativecommunity/webview/RNCWebView;
    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 705
    return-void
.end method

.method public final setShowsHorizontalScrollIndicator(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .param p1, "viewWrapper"    # Lcom/reactnativecommunity/webview/RNCWebViewWrapper;
    .param p2, "value"    # Z

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 529
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object v0

    .line 530
    .local v0, "view":Lcom/reactnativecommunity/webview/RNCWebView;
    invoke-virtual {v0, p2}, Lcom/reactnativecommunity/webview/RNCWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 531
    return-void
.end method

.method public final setShowsVerticalScrollIndicator(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .param p1, "viewWrapper"    # Lcom/reactnativecommunity/webview/RNCWebViewWrapper;
    .param p2, "value"    # Z

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 524
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object v0

    .line 525
    .local v0, "view":Lcom/reactnativecommunity/webview/RNCWebView;
    invoke-virtual {v0, p2}, Lcom/reactnativecommunity/webview/RNCWebView;->setVerticalScrollBarEnabled(Z)V

    .line 526
    return-void
.end method

.method public final setSource(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1
    .param p1, "viewWrapper"    # Lcom/reactnativecommunity/webview/RNCWebViewWrapper;
    .param p2, "source"    # Lcom/facebook/react/bridge/ReadableMap;

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    iput-object p2, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->mPendingSource:Lcom/facebook/react/bridge/ReadableMap;

    .line 386
    return-void
.end method

.method public final setTextZoom(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;I)V
    .locals 2
    .param p1, "viewWrapper"    # Lcom/reactnativecommunity/webview/RNCWebViewWrapper;
    .param p2, "value"    # I

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 708
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object v0

    .line 709
    .local v0, "view":Lcom/reactnativecommunity/webview/RNCWebView;
    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 710
    return-void
.end method

.method public final setThirdPartyCookiesEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 3
    .param p1, "viewWrapper"    # Lcom/reactnativecommunity/webview/RNCWebViewWrapper;
    .param p2, "enabled"    # Z

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 713
    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewWrapper;->getWebView()Lcom/reactnativecommunity/webview/RNCWebView;

    move-result-object v0

    .line 714
    .local v0, "view":Lcom/reactnativecommunity/webview/RNCWebView;
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Landroid/webkit/WebView;

    invoke-virtual {v1, v2, p2}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 715
    return-void
.end method

.method public final setUserAgent(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Ljava/lang/String;)V
    .locals 1
    .param p1, "viewWrapper"    # Lcom/reactnativecommunity/webview/RNCWebViewWrapper;
    .param p2, "userAgent"    # Ljava/lang/String;

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    iput-object p2, p0, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->mUserAgent:Ljava/lang/String;

    .line 229
    invoke-direct {p0, p1}, Lcom/reactnativecommunity/webview/RNCWebViewManagerImpl;->setUserAgentString(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;)V

    .line 230
    return-void
.end method

.method public final setWebviewDebuggingEnabled(Lcom/reactnativecommunity/webview/RNCWebViewWrapper;Z)V
    .locals 1
    .param p1, "viewWrapper"    # Lcom/reactnativecommunity/webview/RNCWebViewWrapper;
    .param p2, "enabled"    # Z

    const-string v0, "viewWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 718
    invoke-static {p2}, Lcom/reactnativecommunity/webview/RNCWebView;->setWebContentsDebuggingEnabled(Z)V

    .line 719
    return-void
.end method
