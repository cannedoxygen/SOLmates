.class Lcom/facebook/react/runtime/ReactInstance$1;
.super Ljava/lang/Object;
.source "ReactInstance.java"

# interfaces
.implements Lcom/facebook/react/bridge/JSBundleLoaderDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/runtime/ReactInstance;->loadJSBundle(Lcom/facebook/react/bridge/JSBundleLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/runtime/ReactInstance;


# direct methods
.method constructor <init>(Lcom/facebook/react/runtime/ReactInstance;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/react/runtime/ReactInstance;

    .line 349
    iput-object p1, p0, Lcom/facebook/react/runtime/ReactInstance$1;->this$0:Lcom/facebook/react/runtime/ReactInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadScriptFromAssets(Landroid/content/res/AssetManager;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "assetURL"    # Ljava/lang/String;
    .param p3, "loadSynchronously"    # Z

    .line 365
    iget-object v0, p0, Lcom/facebook/react/runtime/ReactInstance$1;->this$0:Lcom/facebook/react/runtime/ReactInstance;

    invoke-static {v0}, Lcom/facebook/react/runtime/ReactInstance;->-$$Nest$fgetmBridgelessReactContext(Lcom/facebook/react/runtime/ReactInstance;)Lcom/facebook/react/runtime/BridgelessReactContext;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/react/runtime/BridgelessReactContext;->setSourceURL(Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/facebook/react/runtime/ReactInstance$1;->this$0:Lcom/facebook/react/runtime/ReactInstance;

    invoke-static {v0, p1, p2}, Lcom/facebook/react/runtime/ReactInstance;->-$$Nest$mloadJSBundleFromAssets(Lcom/facebook/react/runtime/ReactInstance;Landroid/content/res/AssetManager;Ljava/lang/String;)V

    .line 367
    return-void
.end method

.method public loadScriptFromFile(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "sourceURL"    # Ljava/lang/String;
    .param p3, "loadSynchronously"    # Z

    .line 353
    iget-object v0, p0, Lcom/facebook/react/runtime/ReactInstance$1;->this$0:Lcom/facebook/react/runtime/ReactInstance;

    invoke-static {v0}, Lcom/facebook/react/runtime/ReactInstance;->-$$Nest$fgetmBridgelessReactContext(Lcom/facebook/react/runtime/ReactInstance;)Lcom/facebook/react/runtime/BridgelessReactContext;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/react/runtime/BridgelessReactContext;->setSourceURL(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/facebook/react/runtime/ReactInstance$1;->this$0:Lcom/facebook/react/runtime/ReactInstance;

    invoke-static {v0, p1, p2}, Lcom/facebook/react/runtime/ReactInstance;->-$$Nest$mloadJSBundleFromFile(Lcom/facebook/react/runtime/ReactInstance;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    return-void
.end method

.method public loadSplitBundleFromFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "sourceURL"    # Ljava/lang/String;

    .line 359
    iget-object v0, p0, Lcom/facebook/react/runtime/ReactInstance$1;->this$0:Lcom/facebook/react/runtime/ReactInstance;

    invoke-static {v0, p1, p2}, Lcom/facebook/react/runtime/ReactInstance;->-$$Nest$mloadJSBundleFromFile(Lcom/facebook/react/runtime/ReactInstance;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    return-void
.end method

.method public setSourceURLs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceURL"    # Ljava/lang/String;
    .param p2, "remoteURL"    # Ljava/lang/String;

    .line 371
    iget-object v0, p0, Lcom/facebook/react/runtime/ReactInstance$1;->this$0:Lcom/facebook/react/runtime/ReactInstance;

    invoke-static {v0}, Lcom/facebook/react/runtime/ReactInstance;->-$$Nest$fgetmBridgelessReactContext(Lcom/facebook/react/runtime/ReactInstance;)Lcom/facebook/react/runtime/BridgelessReactContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/react/runtime/BridgelessReactContext;->setSourceURL(Ljava/lang/String;)V

    .line 372
    return-void
.end method
